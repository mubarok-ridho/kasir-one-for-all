#!/bin/bash

echo "Cloning all kasir microservices..."

REPOS=(
    "kasir-auth-service"
    "kasir-menu-service" 
    "kasir-report-service"
)

BASE_URL="https://github.com/yourorg"

for REPO in "${REPOS[@]}"; do
    if [ ! -d "$REPO" ]; then
        echo "Cloning $REPO..."
        git clone "$BASE_URL/$REPO.git"
    else
        echo "$REPO already exists, pulling latest..."
        cd "$REPO" && git pull && cd ..
    fi
done

echo "✅ All repositories cloned!"