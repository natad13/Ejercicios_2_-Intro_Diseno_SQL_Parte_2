
/* Tabla Clientes*/
CREATE TABLE clientes (
DNI INT NOT NULL PRIMARY KEY,
first_name VARCHAR(150) NOT NULL,
last_name VARCHAR(150) NOT NULL,
);
/* Tabla Asuntos*/
CREATE TABLE asuntos (
expediente SERIAL PRIMARY KEY,
fecha_inicio DATE NOT NULL,
fecha_inicio DATE NOT NULL,
estado VARCHAR(150) NOT NULL,
dni_cliente INT NOT NULL,
FOREIGN KEY (dni_cliente) REFERENCES
clientes(DNI)
);

/* Tabla PROCURADORES*/

CREATE TABLE procuradores (
DNI INT PRIMARY KEY,
first_name VARCHAR(150) NOT NULL,
last_name VARCHAR(150) NOT NULL,
);

/* Tabla ASIGNACIONES*/

CREATE TABLE asignaciones (
expediente int NOT NULL,
dni_procurador int NOT NULL,
FOREIGN KEY(expediente) REFERENCES 
asuntos(expediente),
FOREIGN KEY(dni_procurador) REFERENCES 
procuradores(DNI),
PRIMARY KEY(pet_id, veterinarian_id) 
/* Composite Primary Key */
);
