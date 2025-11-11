# Eureka Server - Intranet Microservices

**Service Discovery** para la plataforma de intranet corporativa.  
Este microservicio se encarga de registrar y gestionar otros servicios dentro del ecosistema de microservicios.

---

## Características

- Registro automático de microservicios.
- Dashboard web para monitoreo.
- Health checks integrados vía Spring Boot Actuator.

---

## Configuración

- **Puerto por defecto**: `8761`  
- **Dashboard**: [http://localhost:8761](http://localhost:8761)  
- **Health Check**: [http://localhost:8761/actuator/health](http://localhost:8761/actuator/health)

> Asegúrate de que los microservicios que deseas registrar estén configurados con Eureka Client y apunten a este servidor.

---

## Servicios Registrados (Ejemplo)

Durante el desarrollo, los siguientes servicios pueden registrarse automáticamente:

| Servicio         | Puerto |
|-----------------|--------|
| `auth-service`   | 8081   |
| `user-service`   | 8082   |
| `api-gateway`    | 8080   |

> Nota: Esta tabla es solo un ejemplo. Los servicios activos dependerán del entorno de despliegue.

---

## Ejecutar localmente

### Con Maven

```bash
mvn spring-boot:run
