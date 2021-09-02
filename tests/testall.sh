#!/usr/bin/env bash

set -e

ROOT=$(pwd)

$ROOT/tests/test.sh $ROOT/classic
$ROOT/tests/test.sh $ROOT/modern
$ROOT/tests/test.sh $ROOT/two_column
$ROOT/tests/test.sh $ROOT/infographics
$ROOT/tests/test.sh $ROOT/rows
$ROOT/tests/test.sh $ROOT/sidebar
$ROOT/tests/test.sh $ROOT/sidebarleft

echo 'all tests passed'
exit 0
