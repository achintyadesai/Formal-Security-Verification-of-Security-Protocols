#!/bin/bash

# Usage  :  cl-atse [options] [file]
# 
#   [file]  Name of the IF file to process (default is stdin)
#   -nb n   Maximum number of role iterations (or loops, default is 3)
#   -light  Use light unification (no partial associativity for pair)
#   -notype Do not take term types into account
#   -td     Perform depth-first search (default, less memory)
#   -lr     Perform breath-first search (minimal attack)
#   -out    Write the attack to file.atk
#   -dir d  Output directory to use with "-out" (default is .)
#   -ns     Do not simplify the IF file (complete trace)
#   -tab    Write the correspondence table (debug)
#   -par    Write the parser output (debug)
#   -v      Print more output informations
#   -noexec Do not search for attacks (debug)
#   -debug  Write debuging informations for Read.ml
#   -help  Display this list of options
#   --help  Display this list of options


# PROCESS THE INPUT ARGUMENTS
# _if_file=$1
_unknown=""

for _parm in "$@" ; do
# if test "$_parm" = "$_if_file" ; then
#   :
# else
  case "$_parm" in
 
  --typed_model=*)
    # Choose if the model is typed or not. Strongly typed models are not supported.
    _typed_model=`echo $_parm | cut -d '=' -f 2`
    case "$_typed_model" in
      yes)
       _unknown="$_unknown"
#      _untyped=""
       ;;
      no)
       _unknown="$_unknown -notype"
#      _untyped="-notype"
       ;;
      strongly)
       echo "SUMMARY"
       echo "  NOT_SUPPORTED"
       echo
       echo "COMMENTS"
       echo "  Cl-AtSe cannot analyse the protocol under the strongly-typed model."
       exit 0
       ;;
      *)
       echo "Unknown typed_model value: $_typed_model"
       exit 1
       ;;
    esac
    ;;

  --output=*)
    # Choose a directory to write the text output to.
    _output=`echo $_parm | cut -d '=' -f 2`
    _unknown="$_unknown -dir $_output"
    :
    ;;
    
  --max=*)
    # Number of loops to analyse. Useless if no loops in the protocol.
    _max_nb=`echo $_parm | cut -d '=' -f 2`
    _unknown="$_unknown -nb $_max_nb"
    ;;
    
  --atk_kind=*)
    # Choice of attack to display preferably.
    _atk_kind=`echo $_parm | cut -d '=' -f 2`
    case "$_atk_kind" in
      first)
        # Default : Output the first attack found.
	_unknown="$_unknown -td"
	;;
      shortest)
        # Output one of the shortest attacks found.
	_unknown="$_unknown -lr"
	;;
      *)
        echo "Unknown atk_kind value: $_atk_kind"
        exit 1
        ;;
    esac
    ;;
      
  --no_simpl)
    # Shortcut the protocol simplification in cl-atse
    _unknown="$_unknown -ns"
    ;;
    
  --no_exec)
    # Shortcut the search for attacks. Always output "SAFE".
    # Usefull with --no_simpl to see the initial prot. specif.
    _unknown="$_unknown -noexec"
    ;;
    
  --verbose)
    # Output detailed informations, like the analysed protocol
    # specification and more informations in the attack trace.
    _unknown="$_unknown -v"
    ;;

  --cl-atse_help)
    # Print command line help.
    # This script accepts all cl-atse options depicted in this help.
    _unknown="$_unknown --help"
    ;;
    
  *)
    _unknown="$_unknown $_parm"
    ;;

  esac
# fi
done # for parm in ...

# START TOOL ON THE INPUT PROBLEM
pushd $AVISPA_PACKAGE/bin/backends >/dev/null
./cl/cl-atse $_unknown 
# $_if_file 
popd >/dev/null
