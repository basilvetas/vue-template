#!/usr/bin/env bash
set -eo pipefail

case $1 in
  start)
    yarn start | cat
    ;;
  build)
    yarn build
    ;;
  dev)
    yarn dev $@
    ;;
  *)
    exec "$@"
    ;;
esac
