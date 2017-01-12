#!/bin/bash

# TODO: will not work as is
# need to figure out how to get existing image's UUID dynamically before doing --startvm

echo --Starting virtual machine--
VirtualBox --startvm {3b639566-0b61-4fb7-8569-3daca1ae448e} --debug --start-running
