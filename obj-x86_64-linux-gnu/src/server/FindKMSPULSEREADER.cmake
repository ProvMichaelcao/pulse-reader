# - Try to find KMSPULSEREADER library

#=============================================================================
# Copyright 2014 Kurento
#
#=============================================================================

set(PACKAGE_VERSION "0.0.1~1.ga84ed5a")
set(KMSPULSEREADER_VERSION ${PACKAGE_VERSION})

message (STATUS "Looking for KMSPULSEREADER: 0.0.1~1.ga84ed5a")

include (GenericFind)

generic_find (
  REQUIRED
  LIBNAME KMSCORE
  VERSION ^6.0.0
)

generic_find (
  REQUIRED
  LIBNAME KMSELEMENTS
  VERSION ^6.0.0
)

generic_find (
  REQUIRED
  LIBNAME KMSFILTERS
  VERSION ^6.0.0
)

set (REQUIRED_VARS
  KMSPULSEREADER_VERSION
  KMSPULSEREADER_INCLUDE_DIRS
  KMSPULSEREADER_LIBRARY
  KMSPULSEREADER_LIBRARIES
)

set(KMSPULSEREADER_INCLUDE_DIRS
  ${KMSCORE_INCLUDE_DIRS}
  ${KMSELEMENTS_INCLUDE_DIRS}
  ${KMSFILTERS_INCLUDE_DIRS}
)

if (NOT "PulseReader.hpp PulseDetected.hpp PulseUndetected.hpp FrameData.hpp PulseReaderInternal.hpp" STREQUAL " ")
  find_path(KMSPULSEREADER_INTERFACE_INCLUDE_DIR
    NAMES
      PulseReader.hpp PulseDetected.hpp PulseUndetected.hpp FrameData.hpp
      PulseReaderInternal.hpp
    PATH_SUFFIXES
      build/src/server/interface/generated-cpp
      kurento/modules/pulsereader
  )

  list (APPEND KMSPULSEREADER_INCLUDE_DIRS ${KMSPULSEREADER_INTERFACE_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSPULSEREADER_INTERFACE_INCLUDE_DIR)
endif ()

if (NOT "PulseReaderImplFactory.hpp" STREQUAL "")
  find_path(KMSPULSEREADER_IMPLEMENTATION_INTERNAL_INCLUDE_DIR
    NAMES
      PulseReaderImplFactory.hpp
    PATH_SUFFIXES
      build/src/server/implementation/generated-cpp
      kurento/modules/pulsereader
  )

  list (APPEND KMSPULSEREADER_INCLUDE_DIRS ${KMSPULSEREADER_IMPLEMENTATION_INTERNAL_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSPULSEREADER_IMPLEMENTATION_INTERNAL_INCLUDE_DIR)
endif ()

if (NOT "PulseReaderOpenCVImpl.hpp PulseReaderImpl.hpp" STREQUAL "")
  find_path(KMSPULSEREADER_IMPLEMENTATION_GENERATED_INCLUDE_DIR
    NAMES
      PulseReaderOpenCVImpl.hpp PulseReaderImpl.hpp
    PATH_SUFFIXES
      src/server/implementation/objects
      kurento/modules/pulsereader
  )

  list (APPEND KMSPULSEREADER_INCLUDE_DIRS ${KMSPULSEREADER_IMPLEMENTATION_GENERATED_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSPULSEREADER_IMPLEMENTATION_GENERATED_INCLUDE_DIR)
endif()

if (NOT "" STREQUAL "")
  find_path(KMSPULSEREADER_IMPLEMENTATION_EXTRA_INCLUDE_DIR
    NAMES
      
    PATH_SUFFIXES
      
      kurento/modules/pulsereader
  )

  list (APPEND KMSPULSEREADER_INCLUDE_DIRS ${KMSPULSEREADER_IMPLEMENTATION_EXTRA_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSPULSEREADER_IMPLEMENTATION_EXTRA_INCLUDE_DIR)
endif ()

if (NOT "" STREQUAL "")
  find_path(KMSPULSEREADER_INTERFACE_EXTRA_INCLUDE_DIR
    NAMES
      
    PATH_SUFFIXES
      
      kurento/modules/pulsereader
  )

  list (APPEND KMSPULSEREADER_INCLUDE_DIRS ${KMSPULSEREADER_INTERFACE_EXTRA_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSPULSEREADER_INTERFACE_EXTRA_INCLUDE_DIR)
endif ()

find_library (KMSPULSEREADER_LIBRARY
  NAMES
    kmspulsereaderimpl
  PATH_SUFFIXES
    build/src/server
)

set (REQUIRED_LIBS "")
foreach (LIB ${REQUIRED_LIBS})
  string(FIND ${LIB} " " POS)

  if (${POS} GREATER 0)
    string(REPLACE " " ";" REQUIRED_LIB_LIST ${LIB})
    include (CMakeParseArguments)
    cmake_parse_arguments("PARAM" "" "LIBNAME" "" ${REQUIRED_LIB_LIST})

    if (DEFINED PARAM_LIBNAME)
      generic_find (${REQUIRED_LIB_LIST} REQUIRED)
      set (LIB_NAME ${PARAM_LIBNAME})
    else()
      string (SUBSTRING ${LIB} 0 ${POS} LIB_NAME)
      string (SUBSTRING ${LIB} ${POS} -1 LIB_VERSION)
      string (STRIP ${LIB_NAME} LIB_NAME)
      string (STRIP ${LIB_VERSION} LIB_VERSION)
      generic_find (LIBNAME ${LIB_NAME} REQUIRED VERSION "${LIB_VERSION}")
    endif()
  else ()
    string (STRIP ${LIB} LIB_NAME)
    generic_find (LIBNAME ${LIB_NAME} REQUIRED)
  endif ()
  list (APPEND REQUIRED_LIBRARIES ${${LIB_NAME}_LIBRARIES})
  list (APPEND KMSPULSEREADER_INCLUDE_DIRS ${${LIB_NAME}_INCLUDE_DIRS})

endforeach()

set(KMSPULSEREADER_INCLUDE_DIRS
  ${KMSPULSEREADER_INCLUDE_DIRS}
  CACHE INTERNAL "Include directories for KMSPULSEREADER library"
)

set (KMSPULSEREADER_LIBRARIES
  ${KMSPULSEREADER_LIBRARY}
  ${KMSCORE_LIBRARIES}
  ${KMSELEMENTS_LIBRARIES}
  ${KMSFILTERS_LIBRARIES}
  ${REQUIRED_LIBRARIES}
  CACHE INTERNAL "Libraries for KMSPULSEREADER"
)

include (FindPackageHandleStandardArgs)

find_package_handle_standard_args(KMSPULSEREADER
  FOUND_VAR
    KMSPULSEREADER_FOUND
  REQUIRED_VARS
    ${REQUIRED_VARS}
  VERSION_VAR
    KMSPULSEREADER_VERSION
)

mark_as_advanced(
  KMSPULSEREADER_FOUND
  KMSPULSEREADER_VERSION
  KMSPULSEREADER_INTERFACE_INCLUDE_DIR
  KMSPULSEREADER_IMPLEMENTATION_INTERNAL_INCLUDE_DIR
  KMSPULSEREADER_IMPLEMENTATION_GENERATED_INCLUDE_DIR
  KMSPULSEREADER_IMPLEMENTATION_EXTRA_INCLUDE_DIR
  KMSPULSEREADER_INTERFACE_EXTRA_INCLUDE_DIR
  KMSPULSEREADER_INCLUDE_DIRS
  KMSPULSEREADER_LIBRARY
  KMSPULSEREADER_LIBRARIES
)