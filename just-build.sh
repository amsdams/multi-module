CURRENT_PWD=`pwd`
J24_JAVA='j24/java'
J24_KOTLIN='j24/kotlin'
J23_JAVA='j23/java'
J23_KOTLIN='j23/kotlin'
J8_JAVA='j8/java'
J8_KOTLIN='j8/kotlin'

echo $CURRENT_PWD

#j24-java.yml:
cd $J24_JAVA &&  mvn -B package --file pom.xml
cd $CURRENT_PWD
#j24-kotlin.yml:      run
cd $J24_KOTLIN && mvn -B package --file pom.xml
cd $CURRENT_PWD

#j21-java.yml:
cd $J23_JAVA &&  mvn -B package --file pom.xml
cd $CURRENT_PWD
#j21-kotlin.yml:      run
cd $J23_KOTLIN && mvn -B package --file pom.xml
cd $CURRENT_PWD
#j8-java.yml:      run:
cd $J8_JAVA && mvn -B package --file pom.xml
cd $CURRENT_PWD
#j8-kotlin.yml:      run:
cd $J8_KOTLIN && mvn -B package --file pom.xml
cd $CURRENT_PWD