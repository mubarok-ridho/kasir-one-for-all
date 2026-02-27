#!/bin/bash

echo "========================================="
echo "  Deploying Casheer Microservices"
echo "========================================="
echo ""

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Cek Docker
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed"
    exit 1
fi

# Build semua service
SERVICES=("casheer-auth-service" "casheer-menu-service" "casheer-report-service")

for SERVICE in "${SERVICES[@]}"; do
    if [ -d "$SERVICE" ]; then
        echo -e "${YELLOW}Building $SERVICE...${NC}"
        cd "$SERVICE"
        
        # Build Docker image
        docker build -t "mubarok-ridho/$SERVICE:latest" .
        
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}✅ Built $SERVICE successfully${NC}"
        else
            echo -e "❌ Failed to build $SERVICE"
        fi
        
        cd ..
    else
        echo -e "❌ $SERVICE directory not found"
    fi
done

echo ""
echo -e "${GREEN}✅ All services built successfully!${NC}"