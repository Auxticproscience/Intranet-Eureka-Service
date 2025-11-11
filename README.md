# Eureka Server - Intranet Microservices

Service Discovery server para la plataforma de intranet corporativa.

## Configuración

- **Puerto**: 8761
- **Dashboard**: http://localhost:8761
- **Health Check**: http://localhost:8761/actuator/health

## Servicios Registrados

Los siguientes microservicios se registrarán automáticamente:

- `auth-service` (Puerto: 8081)
- `user-service` (Puerto: 8082)
- `api-gateway` (Puerto: 8080)

## Ejecutar
```bash
mvn spring-boot:run
