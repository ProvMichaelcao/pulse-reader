  execute_process (COMMAND /usr/bin/kurento-module-creator -r /home/parallels/src/modules/pulsereader/pulse-reader/src/server/interface -dr /usr/share/kurento/modules -o /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server/)

  file (READ /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server/pulsereader.kmd.json KMD_DATA)

  string (REGEX REPLACE "\n *" "" KMD_DATA ${KMD_DATA})
  string (REPLACE "\"" "\\\"" KMD_DATA ${KMD_DATA})
  string (REPLACE "\\n" "\\\\n" KMD_DATA ${KMD_DATA})
  set (KMD_DATA "\"${KMD_DATA}\"")

  file (WRITE /home/parallels/src/modules/pulsereader/pulse-reader/obj-x86_64-linux-gnu/src/server/pulsereader.kmd.json ${KMD_DATA})
