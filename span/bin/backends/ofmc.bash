#!/bin/bash

# PROCESS THE INPUT ARGUMENTS

# FIRST ARGUMENT

case "$1" in
    # Usage: avispa --ofmc --help
    --help | -help | -h)
        echo
	cat << EOF 
OFMC 1.4 (C) 2005 ETH Zuerich
usage: 
ofmc <IF File> [-sessco] [-untyped] [-d <DEPTH>] [-p <PATH>]

where -sessco performs an executability check and session compilation.
      -untyped ignores all type-declarations
      <DEPTH> (int) is the maximum search depth
      <PATH>  (white-space separated list of ints)
              is a path in the search tree to visit
              by the indices of the successors to follow.
EOF
	echo
	exit 0
	;;
    # Usage: avispa --ofmc --version
    --version | -version | -v)
	cat << EOF

OFMC v. 1.4

Copyright (C) 2005 ETH Zuerich

This tool is distributed WITHOUT ANY WARRANTY. See the file
LICENSE for more details.
EOF
	exit 0
	;;
esac

_if_file=$1
_other_options="--classic"
shift 1

for _parm in "$@" ; do
  case $_parm in
  --typed_model=*)
    _typed_model=`echo $_parm | cut -d '=' -f 2`
    case "$_typed_model" in
      yes)
       _untyped=""
       ;;
      no)
       _untyped="-untyped"
       ;;
      strongly)
       echo "SUMMARY"
       echo "  NOT_SUPPORTED"
       echo
       echo "COMMENTS"
       echo "  OFMC cannot analyse the protocol under the strongly-typed model."
       exit 0
       ;;
      *)
       echo "Unknown typed_model value: $_typed_model"
       exit 1
       ;;
    esac
    ;;

  --output=*)
    :
    ;;
  *)
    _other_options="$_other_options $_parm"
##    echo "Unknown parameter: $_parm"
##    exit 1
    ;;

  esac
# fi
done # for parm in ...

# START TOOL ON THE INPUT PROBLEM
pushd $AVISPA_PACKAGE/bin/backends >/dev/null
./ofmc/ofmc $_if_file $_untyped $_other_options
popd >/dev/null
