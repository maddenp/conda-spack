for x in $(declare -F | cut -d" " -f3 | grep ^_*spack); do unset $x; done
for x in $(env | grep ^SPACK_ | sed 's/=.*//'); do unset -v $x; done
unset _bash_completion_spack
