#!/bin/bash

set -e ;

registryName=\$(az acr list -o table | grep 'acr' | awk '{print \$1}' | cut -d "T" -f1)

registryUrl=\$(az acr list -o table | grep 'acr' | awk '{print \$5}' | cut -d "T" -f1)

echo "$registryName"
echo "$registryUrl"
