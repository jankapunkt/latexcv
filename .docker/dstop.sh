#!/bin/sh
exec docker container stop latex_daemon
exec docker container rm latex_daemon
