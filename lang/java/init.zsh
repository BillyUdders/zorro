#######################
# Maven
if which mvn >/dev/null 2>&1; then
   mvnrun () {
     echo  mvn $@
     eval  mvn $@
     echo  mvn $@
   }  

   alias mci='mvnrun clean install'
   alias mjr='mvnrun jetty:run'
   alias mcist='mvnrun clean install -Dmaven.test.skip=true $@'
   alias mcisd='mcist -DskipDockerBuild'
   alias mt='mvnrun test $@'
   alias mc='mvnrun clean $@'
   alias mct='mvnrun clean test $@'
fi


