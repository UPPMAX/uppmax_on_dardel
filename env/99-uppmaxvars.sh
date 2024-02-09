# variables
export LC_ALL=C
export LMOD_CACHED_LOADS=yes
export LMOD_CMD=/usr/share/lmod/lmod/libexec/lmod
export LMOD_DEFAULT_MODULEPATH=/pdc/software/uppmax_legacy/mf/rackham/applications:/pdc/software/uppmax_legacy/mf/rackham/build-tools:/pdc/software/uppmax_legacy/mf/rackham/compilers:/pdc/software/uppmax_legacy/mf/rackham/data:/pdc/software/uppmax_legacy/mf/rackham/environment:/pdc/software/uppmax_legacy/mf/rackham/libraries:/pdc/software/uppmax_legacy/mf/rackham/parallel

export LMOD_DIR=/usr/share/lmod/lmod/libexec
export LMOD_PKG=/usr/share/lmod/lmod
export LMOD_RC=/cfs/klemming/home/b/bjovik/git/uppmax_on_dardel/lmodrc.lua
export LMOD_SETTARG_FULL_SUPPORT=no
export LOADEDMODULES=uppmax
export MODULEPATH=/cfs/klemming/pdc/software/dardel/uppmax_legacy/mf/rackham/applications:/cfs/klemming/pdc/software/dardel/uppmax_legacy/mf/rackham/build-tools:/cfs/klemming/pdc/software/dardel/uppmax_legacy/mf/rackham/compilers:/cfs/klemming/pdc/software/dardel/uppmax_legacy/mf/rackham/data:/cfs/klemming/pdc/software/dardel/uppmax_legacy/mf/rackham/environment:/cfs/klemming/pdc/software/dardel/uppmax_legacy/mf/rackham/libraries:/cfs/klemming/pdc/software/dardel/uppmax_legacy/mf/rackham/parallel
export MODULEPATH_ROOT=/pdc/software/uppmax_legacy/mf/rackham/
export MODULESHOME=/usr/share/lmod/lmod
export MODULES_CLUSTER=rackham
export MODULES_MACH=x86_64
export MODULE_INCLUDE=/pdc/software/uppmax_legacy/mf/common/includes
export MODULE_MACH=x86_64
export MODULE_VERSION=lmod
export TERM=xterm
export modules_shell=bash


# custom PS1
export PS1='\[$(tput bold)\][\t] \u@uppmax_on_dardel \w \\$ \[$(tput sgr0)\]'

# add the scripts to the path
export PATH=$PATH:/uppmax_init/

# set the correct user name in places
export USER=$UIAC_USER
export HOME=/home/$USER
export LOGNAME=$USER
export MAIL=/var/spool/mail/$USER
export USERNAME=$USER

# only load the modules if the container is being launced through the script, when the mount points are up
#if [[ -n "$UIAC_USER" ]]
#then
#    # module function
#    module() { eval `/usr/local/Modules/$MODULE_VERSION/bin/modulecmd $modules_shell $*`; }
#    export -f module
#fi

module ()
{  
        eval "$($LMOD_CMD $LMOD_SHELL_PRGM "$@")" && eval "$(${LMOD_SETTARG_CMD:-:} -s sh)";
}


# Remove __LMOD__stuff. Don't look at paths that doesn't exist. Speeds up the module system from 1 minute to 1 second.
for envvar in $(env)
do
    if [[ $envvar == "__LMOD"* ]]
    then
        envvarname=$(echo $envvar | cut -d "=" -f 1)
        export $envvarname=''
    fi
done
# The cluster variable is not set by the module load..
export CLUSTER=$SNIC_RESOURCE


shopt -s expand_aliases
alias l='ls -lh --group-directories-first --color'
