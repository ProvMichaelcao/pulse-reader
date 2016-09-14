/* Autogenerated with kurento-module-creator */

#include "PulseReader.hpp"
#include <mutex>

namespace kurento
{
namespace module
{
namespace pulsereader
{

static std::vector<std::string> hierarchyPulseReader;
std::once_flag initFlagPulseReader;

static void
initHierarchy ()
{
  hierarchyPulseReader.push_back("kurento.OpenCVFilter");
  hierarchyPulseReader.push_back("kurento.Filter");
  hierarchyPulseReader.push_back("kurento.MediaElement");
  hierarchyPulseReader.push_back("kurento.MediaObject");
}

const std::vector<std::string> &
PulseReader::getHierarchy () const
{
  std::call_once (initFlagPulseReader,initHierarchy);
  return hierarchyPulseReader;
}

const std::string&
PulseReader::getType () const {
  static std::string typeName = "PulseReader";

  return typeName;
}

const std::string&
PulseReader::getQualifiedType () const {
  static std::string qualifiedTypeName = getModule() + "." + getType();

  return qualifiedTypeName;
}

const std::string&
PulseReader::getModule () const {
  static std::string moduleName =  "pulsereader";

  return moduleName;
}

} /* pulsereader */
} /* module */
} /* kurento */
