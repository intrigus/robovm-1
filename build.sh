#/bin/sh
set -e
env OPENSSL_ia32cap=0x16980010
#cd compiler/libimobiledevice
#./build.sh
#cd ../..
mvn clean install
mvn -f plugins/idea/pom.xml clean install -Didea.home=$HOME/idea-15
mvn -f plugins/eclipse/pom.xml clean install
./plugins/gradle/gradlew -b plugins/gradle/build.gradle clean assemble install
