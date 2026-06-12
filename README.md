# API Automation Framework - Karate

## Descripción

Este proyecto contiene la automatización de pruebas API utilizando Karate Framework para validar los servicios REST de Restful Booker.

El objetivo principal es garantizar el correcto funcionamiento de las operaciones sobre recursos de Booking mediante pruebas automatizadas que validan respuestas, códigos de estado y estructura de datos.

## Tecnologías Utilizadas

* Java 11
* Karate Framework 1.5.0
* Maven
* JUnit 5
* REST API Testing

## Arquitectura del Proyecto

El proyecto está estructurado siguiendo las buenas prácticas recomendadas por Karate Framework.

```text
src
└── test
    └── java
        └── examples
            └── herokuapp
                ├── Auth
                │   └── Auth.feature
                │
                ├── GetBooking
                │   └── GetBooking.feature
                │
                ├── UpdateBooking
                │   └── UpdateBooking.feature
                │
                ├── karate-config.js
                │
                └── runners
                    └── TestRunner.java
```

## Características Implementadas

### Autenticación

Obtención automática de token mediante consumo del endpoint de autenticación.

### Consulta de Booking

Obtención de información de reservas existentes para reutilizar datos dinámicos durante las pruebas.

### Actualización de Booking

Validación del proceso de actualización de reservas mediante el método HTTP PUT.

### Validaciones Negativas

Cobertura de escenarios de error para garantizar el correcto manejo de solicitudes inválidas.

---

## Escenarios Automatizados

### Actualización Exitosa de Booking

Validaciones realizadas:

* Código HTTP 200.
* Nombre del cliente.
* Apellido del cliente.
* Precio total.
* Estado del depósito.
* Fechas de check-in y check-out.
* Necesidades adicionales.

### Actualización con Error

Validaciones realizadas:

* Código HTTP 400 Bad Request.
* Manejo adecuado de identificadores inválidos.

---

## Configuración del Proyecto

### Prerrequisitos

Instalar:

* Java JDK 11 o superior
* Maven 3.8+
* IntelliJ IDEA (Opcional)

Verificar instalación:

```bash
java -version
mvn -version
```

---

## Instalación

Clonar el repositorio:

```bash
git clone <url-repositorio>
```

Ingresar al proyecto:

```bash
cd Demo
```

Descargar dependencias:

```bash
mvn clean install
```

---

## Ejecución de Pruebas

### Ejecutar todas las pruebas

```bash
mvn test
```

### Ejecutar por Tag

Ejecutar únicamente pruebas de actualización:

```bash
mvn test -Dkarate.options="--tags @UpdateBooking"
```

### Ejecutar un Feature específico

```bash
mvn test -Dtest=TestRunner
```

---

## Escenario de Actualización

```gherkin
@UpdateBooking
Scenario Outline: Actualizar Obtener Booking

  Given path "booking/" + <ID>
  And request {...}
  When method put
  Then status 200
```

---

## Validaciones Implementadas

* Status Code Validation
* Schema Validation
* Data Validation
* Response Body Validation
* Authentication Validation

---

## Reportes

Karate genera reportes automáticos en:

```text
target/karate-reports/
```

Reporte principal:

```text
target/karate-reports/karate-summary.html
```

---

## Dependencias

| Dependencia      | Versión |
| ---------------- | ------- |
| Karate Framework | 1.5.0   |
| Java             | 11      |
| Maven Surefire   | 3.0.0   |
| Maven Compiler   | 3.11.0  |

---

## Buenas Prácticas Implementadas

* Reutilización de Features mediante `call read()`.
* Uso de variables globales.
* Separación de responsabilidades.
* Escenarios positivos y negativos.
* Uso de Scenario Outline para pruebas parametrizadas.
* Validación completa de respuestas JSON.
* Configuración centralizada mediante `karate-config.js`.

---

## Autor

Luis Campos

QA Automation Engineer

Especializado en Automatización de Pruebas API, Web y Mobile.
