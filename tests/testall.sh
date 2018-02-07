#!/usr/bin/env bash

set -e

ROOT=$(pwd)

$ROOT/tests/test.sh $ROOT/classic
$ROOT/tests/test.sh $ROOT/modern
$ROOT/tests/test.sh $ROOT/two_column
$ROOT/tests/test.sh $ROOT/infographics

echo 'all tests passed'
exit 0
