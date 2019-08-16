#!/usr/bin/env bash

set -e

ROOT=$(pwd)

$ROOT/tests/test.sh $ROOT/templates/classic
$ROOT/tests/test.sh $ROOT/templates/infographics
$ROOT/tests/test.sh $ROOT/templates/modern
$ROOT/tests/test.sh $ROOT/templates/rows
$ROOT/tests/test.sh $ROOT/templates/sidebar
$ROOT/tests/test.sh $ROOT/templates/two_column

echo 'all tests passed'
exit 0
