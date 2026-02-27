# Main Tiltfile that runs all services
print("🚀 Starting Kasir Microservices...")

# Database
docker_compose('docker-compose.yml')

# Clone repositories if not exists
local('scripts/clone-all.sh')

# Services
load('ext://git_resource', 'git_checkout')

# Auth Service
git_checkout('https://github.com/yourorg/kasir-auth-service.git', 'main')
docker_build('kasir-auth-service', 'kasir-auth-service')
k8s_yaml('kasir-auth-service/k8s/deployment.yaml')
k8s_resource('kasir-auth-service', port_forwards=3001)

# Menu Service
git_checkout('https://github.com/yourorg/kasir-menu-service.git', 'main')
docker_build('kasir-menu-service', 'kasir-menu-service')
k8s_yaml('kasir-menu-service/k8s/deployment.yaml')
k8s_resource('kasir-menu-service', port_forwards=3002)

# Report Service
git_checkout('https://github.com/yourorg/kasir-report-service.git', 'main')
docker_build('kasir-report-service', 'kasir-report-service')
k8s_yaml('kasir-report-service/k8s/deployment.yaml')
k8s_resource('kasir-report-service', port_forwards=3003)