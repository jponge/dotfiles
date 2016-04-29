# Simply switch among Java versions

function switch-to-java7 {
  export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
}

function switch-to-java8 {
  export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
}

function switch-to-java9 {
  export JAVA_HOME=`/usr/libexec/java_home -v 9`
}

switch-to-java8
