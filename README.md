# Eureka Server - Intranet Microservices

![Maven](https://img.shields.io/badge/Maven-3.9.6-blue)
![Java](https://img.shields.io/badge/Java-21-brightgreen)
![Docker](https://img.shields.io/badge/Docker-ready-blue)
![Status](https://img.shields.io/badge/Status-Development-orange)

**Service Discovery** para la plataforma de intranet corporativa.  
Este microservicio se encarga de **registrar y monitorear otros servicios** dentro del ecosistema de microservicios.

---

## Características

- Registro automático de microservicios.
- Dashboard web para monitoreo.
- Health checks integrados vía Spring Boot Actuator.
- Contenerizable con Docker para despliegue rápido.

---

## Configuración

- **Puerto por defecto**: `8761`  
- **Dashboard**: [http://localhost:8761](http://localhost:8761)  
- **Health Check**: [http://localhost:8761/actuator/health](http://localhost:8761/actuator/health)

> Todos los microservicios que se quieran registrar deben tener **Eureka Client** configurado apuntando a este servidor.

---

## 📝 Servicios Registrados

| Servicio         | Puerto |
|-----------------|--------|
| `api-gateway`   | 8080  |
| `auth-service`   | 8081   |
| `user-service`    | 8082  |
| `academy-service`    | 8083  |


---

## 💻 Ejecutar localmente

### Con Maven

```bash
mvn spring-boot:run
