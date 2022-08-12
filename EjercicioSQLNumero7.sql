-- Se usa base de datos llamada ejemplo
use ejemplo;

-- Se crea tabla Dueno
CREATE TABLE Dueno(DNI INT NOT NULL,
					Nombre VARCHAR(30),
                    Apellido VARCHAR(30),
                    Telefono BIGINT,
                    Direccion VARCHAR(30),
                    CONSTRAINT pk_cDNI PRIMARY KEY(DNI));
                    
-- Se crea tabla Perro                    
CREATE TABLE Perro(ID_Perro INT NOT NULL AUTO_INCREMENT,
					Nombre VARCHAR(30),
                    Fecha_nac DATE,
                    Sexo VARCHAR(15),
                    DNI_dueno INT,
                    CONSTRAINT pk_cIDPerro PRIMARY KEY(ID_Perro),
                    CONSTRAINT fk_fcDNIDueno FOREIGN KEY(DNI_dueno) REFERENCES Dueno (DNI)
                    );

-- Se crea tabla Historial
CREATE TABLE Historial(ID_Historial INT NOT NULL AUTO_INCREMENT,
                    Fecha DATE,
                    Perro INT,
                    Descripcion VARCHAR(300),
                    Monto FLOAT,
                    CONSTRAINT pk_cIDHistorial PRIMARY KEY(ID_Historial),
                    CONSTRAINT fk_fcPerro FOREIGN KEY(Perro) REFERENCES Perro (ID_Perro)
                    );
                    
-- Agregar Dueño
INSERT INTO Dueno VALUES(11350249, "Juan", "Martinez", 3511354123, "San Marcos 123");

-- Agrego Perro y lo asocio al Dueño
INSERT INTO Perro VALUES(0,"Colita", "2005-10-30", "Masculino", 11350248);

-- Ejercicio Número 7

-- Primero agrego 3 registros al historial en el mes de julio
INSERT INTO Historial VALUES(0, "2022-07-01", 2, "Se repara patita derecha trasera", 100.00);
INSERT INTO Historial VALUES(0, "2022-07-02", 2, "Se repara patita izquierta trasera", 100.00);
INSERT INTO Historial VALUES(0, "2022-07-03", 2, "Se repara patita derecha frente", 200.00);

-- Se realiza la busqueda y sumatoria de los registros
SELECT SUM(Monto) AS INGRESOS_JULIO FROM Historial WHERE Fecha BETWEEN CAST('2022-07-01' AS DATE) AND CAST('2022-07-31' AS DATE);

