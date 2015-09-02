# !/bin/bash

echo "[Info] Using Jetty plugin to run project."

set MAVEN_OPTS=%MAVEN_OPTS% -Xms256m -Xmx512m -XX:PermSize=128m -XX:MaxPermSize=256m

mvn clean jetty:run
