# Kasir Microservices - Tiltfile (Docker Compose mode)
print("🚀 Starting Kasir Microservices...")

# Load semua service dari docker-compose
docker_compose('docker-compose.yml')

# Auth Service - live update saat ada perubahan Go files
dc_resource('auth-service',
  labels=["services"],
  trigger_mode=TRIGGER_MODE_AUTO
)

# Menu Service
dc_resource('menu-service',
  labels=["services"],
  trigger_mode=TRIGGER_MODE_AUTO
)

# Report Service
dc_resource('report-service',
  labels=["services"],
  trigger_mode=TRIGGER_MODE_AUTO
)

# Database
dc_resource('postgres',
  labels=["infra"]
)

# RabbitMQ
dc_resource('rabbitmq',
  labels=["infra"],
  links=["http://localhost:15672"] # Management UI
)
