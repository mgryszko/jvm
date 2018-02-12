#!/usr/bin/env zsh

java_home='/usr/libexec/java_home'

jvm() {
  case "$1" in
    list) $java_home -V ;;
    use) use_jvm $2 ;;
    *) print_usage ;;
  esac
}


use_jvm() {
  local requested_java_home=`$java_home -v $1`
  export JAVA_HOME=$requested_java_home
}

print_usage() {
  echo "list | use"
}

