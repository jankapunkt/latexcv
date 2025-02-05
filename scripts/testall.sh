#!/usr/bin/env bash

set -e

./scripts/test.sh ./classic
./scripts/test.sh ./modern
./scripts/test.sh ./two_column
./scripts/test.sh ./infographics
./scripts/test.sh ./rows
./scripts/test.sh ./sidebar
./scripts/test.sh ./sidebarleft
./scripts/test.sh ./minimalistic

echo 'all tests passed'
exit 0
