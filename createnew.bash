#!/bin/bash
# vim: set sw=2 ts=2 et si ai:

function create_new() {
  local fname=$1
  local old=$2
  local new=$3

  echo "sed \"s/$old/$new/\" < ${fname}${old}.sty > ${fname}${new}.sty"
  sed "s/$old/$new/" < ${fname}${old}.sty > ${fname}${new}.sty
} # create_new()

function usage() {
  local prog=$1
  echo "Usage: $prog 'new_theme_name'" 1>&2
  exit 1
} # usage()

function main() {
  local new=$1

  [ -z "$new" ] && usage $0

  create_new beamertheme texsx $new
  create_new beamercolortheme texsx $new
  create_new beamerinnertheme texsx $new
  create_new beameroutertheme texsx $new
  cat <<EOT

  Now go ahead.
  Change theme in example.tex to '$new" and develop your new theme.

EOT
} # main()

main "$@"
