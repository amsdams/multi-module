CURRENT_PWD=`pwd`
J24_JAVA='j24/java'
J24_KOTLIN='j24/kotlin'
J23_JAVA='j23/java'
J23_KOTLIN='j23/kotlin'
J8_JAVA='j8/java'
J8_KOTLIN='j8/kotlin'

echo $CURRENT_PWD
#j24-java-adum.yml:
cd $J24_JAVA
mvn versions:update-parent -DgenerateBackupPoms=false
mvn versions:use-latest-versions -DgenerateBackupPoms=false
mvn versions:use-latest-releases -DgenerateBackupPoms=false
mvn versions:update-properties -DgenerateBackupPoms=false
mvn clean verify
mvn -B package --file pom.xml

 echo `pwd`
 cd $CURRENT_PWD
 echo `pwd`

#j24-kotlin-adum.yml:      run:
cd $J24_KOTLIN
mvn versions:update-parent -DgenerateBackupPoms=false
mvn versions:use-latest-versions -DgenerateBackupPoms=false
mvn versions:use-latest-releases -DgenerateBackupPoms=false
mvn versions:update-properties -DgenerateBackupPoms=false
mvn clean verify
mvn -B package --file pom.xml

echo `pwd`
 cd $CURRENT_PWD
 echo `pwd`
#j23-java-adum.yml:
cd $J23_JAVA
mvn versions:update-parent -DgenerateBackupPoms=false
mvn versions:use-latest-versions -DgenerateBackupPoms=false
mvn versions:use-latest-releases -DgenerateBackupPoms=false
mvn versions:update-properties -DgenerateBackupPoms=false
mvn clean verify
mvn -B package --file pom.xml

 echo `pwd`
 cd $CURRENT_PWD
 echo `pwd`

#j23-kotlin-adum.yml:      run:
cd $J23_KOTLIN
mvn versions:update-parent -DgenerateBackupPoms=false
mvn versions:use-latest-versions -DgenerateBackupPoms=false
mvn versions:use-latest-releases -DgenerateBackupPoms=false
mvn versions:update-properties -DgenerateBackupPoms=false
mvn clean verify
mvn -B package --file pom.xml

echo `pwd`
 cd $CURRENT_PWD
 echo `pwd`

#j8-java-adum.yml:      run:
cd $J8_JAVA
mvn versions:update-parent -DgenerateBackupPoms=false
mvn versions:use-latest-versions -DgenerateBackupPoms=false
mvn versions:use-latest-releases -DgenerateBackupPoms=false
mvn versions:update-properties -DgenerateBackupPoms=false
mvn clean verify
mvn -B package --file pom.xml

echo `pwd`
 cd $CURRENT_PWD
 echo `pwd`

cd $CURRENT_PWD
#j8-kotlin-adum.yml:      run:
cd $J8_KOTLIN
mvn versions:update-parent -DgenerateBackupPoms=false
mvn versions:use-latest-versions -DgenerateBackupPoms=false
mvn versions:use-latest-releases -DgenerateBackupPoms=false
mvn versions:update-properties -DgenerateBackupPoms=false
mvn clean verify
mvn -B package --file pom.xml

echo `pwd`
 cd $CURRENT_PWD
 echo `pwd`