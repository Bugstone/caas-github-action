echo "Downloading jacov-maven-plugin.jar"
wget https://kr.object.ncloudstorage.com/caas-dev-bucket/download/jacov-maven-plugin.jar
echo "Complete download. (jacov-maven-plugin)"
echo "Downloading java-runtime.jar"
wget https://kr.object.ncloudstorage.com/caas-dev-bucket/download/java-runtime.jar
echo "Complete download. (java-runtime)"

echo "Install maven plugins (jacov-maven-plugin)"
mvn install:install-file -Dfile="jacov-maven-plugin.jar" -DgroupId=com.qualityscroll.caas -DartifactId=jacov-maven-plugin -Dpackaging="jar" -Dversion="1.0.0-SNAPSHOT"
echo "Complete installation. (jacov-maven-plugin)"
echo "Install java runtime (java-runtime)"
mvn install:install-file -Dfile="jacov-runtime.jar" -DgroupId=com.qualityscroll.caas -DartifactId=jacov-runtime -Dpackaging="jar" -Dversion="1.0.0-SNAPSHOT"
echo "Complete installation. (java-runtime)"
