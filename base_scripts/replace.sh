#!/bin/bash

sudo sed -i -e 's/'"$2"'.*/'"$2"' = '"$3"'/' "$1"
