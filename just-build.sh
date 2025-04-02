CURRENT_PWD=`pwd`
J23_JAVA='j23/java'
J23_KOTLIN='j23/kotlin'
J8_JAVA='j8/java'
J8_KOTLIN='j8/kotlin'

echo $CURRENT_PWD

#j23-java.yml:      
cd $J23_JAVA &&  mvn -B package --file pom.xml
cd $CURRENT_PWD
#j23-kotlin.yml:      run
cd $J23_KOTLIN && mvn -B package --file pom.xml
cd $CURRENT_PWD
#j8-java.yml:      run:
cd $J8_JAVA && mvn -B package --file pom.xml
cd $CURRENT_PWD
#j8-kotlin.yml:      run:
cd $J8_KOTLIN && mvn -B package --file pom.xml
cd $CURRENT_PWD