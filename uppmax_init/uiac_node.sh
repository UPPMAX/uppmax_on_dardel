#!/bin/bash

#set -e
#set -x
#trap read debug

#  ___                                   _               _    
# |_ _|_ __ ___   __ _  __ _  ___    ___| |__   ___  ___| | __
#  | || '_ ` _ \ / _` |/ _` |/ _ \  / __| '_ \ / _ \/ __| |/ /
#  | || | | | | | (_| | (_| |  __/ | (__| | | |  __/ (__|   < 
# |___|_| |_| |_|\__,_|\__, |\___|  \___|_| |_|\___|\___|_|\_\
#                      |___/                                  
# Image check


default_image_name="uod.sif"

print_usage() {
  usage="""
  $(basename $0)
  -------------------------------------
  A wraper to start the UPPMAX container.

  Usage:
  bash $(basename $0) [-i <image file> -msud -e \"<extra options>\" -p <path to mount point dir> -n <uppmax username> -k <path to ssh key> -c \"<command to execute in the container>\"]

  Options:
  -i    Path to the Singularity image file (default: $default_image_name=)
  -e	Extra Singularity options to be passed, e.g. additional --bind
  -m	Mount the sshfs shares only, don't start the container.
  -s	Start the container only, don't mount the sshfs shars.
  -u	Unmount sshfs shares only, don't start the container.
  -d	Disable host fingerprint check (Not recommended).
  -k    Path to the ssh key you want to use to login to uppmax with sshfs.
  -c    Command to run in the container (will start container with exec instead of shell).
  -q    Run quietly, only printing error messages.

"""
  printf "$usage" >&2

}

# check arguments
while getopts ':i:e:msuhp:dn:k:c:q' flag; do
  case "${flag}" in
    i) image="${OPTARG}" ;;
    e) extra_options="${OPTARG}" ;;
    m) mount_only=1 ;;
    s) start_only=1 ;;
    u) unmount_only=1 ;;
    d) disable_fingerprint=",StrictHostKeyChecking=no" ;;
    k) key_file=",IdentityFile=${OPTARG}" ;;
    c) cmd="${OPTARG}" ;;
    q) quiet=1 ;;
    *) print_usage
       exit 1 ;;
  esac
done

### Sanity check

# make sure only one flag is given
if (( (mount_only+start_only+unmount_only) > 1 )) 
then
    printf "ERROR: -m, -s and -u are mutually exclusive, only specify one of them.\n" >&2
    exit 1
fi

### make sure image is specified if it is set to start
# if image will be started
if [[ -z "$mount_only" ]] && [[ -z "$unmount_only" ]]
then
    # if image not specified
    if [[ -z "$image" ]]
    then
        # check if there is a file with the default name and use that
        if [[ -f "$default_image_name" ]] || [[ -L "$default_image_name" ]]
        then
            [[ -n $quiet ]] || printf "INFO: Image file not specified (-i), using ./$default_image_name since it exists.\n\n"
            image="$default_image_name"
        else
            printf "ERROR: Image file not specified (-i)\n\n" >&2
            print_usage
            exit 1
        fi
    fi
fi




#  ____  _             _                     _      
# / ___|| |_ __ _ _ __| |_   _ __   ___   __| | ___ 
# \___ \| __/ _` | '__| __| | '_ \ / _ \ / _` |/ _ \
#  ___) | || (_| | |  | |_  | | | | (_) | (_| |  __/
# |____/ \__\__,_|_|   \__| |_| |_|\___/ \__,_|\___|
#                                                   
# Start node

# feel free to try to make this into a single line.. darn auto-adding quotes..
# if the user want to run a command in the container instead of opening an interactive shell

sw_dir="/pdc/software/uppmax_legacy"
proj_dir="/cfs/klemming/projects/snic"


# Add mode and cmd if needed in the singularity command
if [[ -n "$cmd" ]]
then
    mode="exec"
    cmd="bash -c \"$cmd\""
else
    mode="shell"
fi

    singularity $mode --contain --bind ${sw_dir}:/sw,${proj_dir}:/proj,${proj_dir}:/crex/proj $extra_options "$image" $cmd


