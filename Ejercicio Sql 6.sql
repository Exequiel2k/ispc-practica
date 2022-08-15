

-- Se crea una tabla llamada dueno 


CREATE TABLE Dueno(
					DNI INT NOT NULL,
					Nombre VARCHAR(50),
                    Apellido VARCHAR(50),
                    Telefono BIGINT,
                    Direccion VARCHAR(30),
                    PRIMARY KEY(DNI)
                    );
                    
-- Se crea tabla de Perro                    
CREATE TABLE Perro(
					ID_Perro INT NOT NULL AUTO_INCREMENT,
					Nombre VARCHAR(50),
                    Fecha_nac DATE,
                    Sexo VARCHAR(35),
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
INSERT INTO Dueno VALUES(39234554, "Pedro", "Diaz", 3518938840, "pedernera 1082");

-- Agrego Perro y lo asocio al Dueño
INSERT INTO Perro VALUES(0,"colitas", "2012-08-21", "femenino", 39234554 );


-- Ejercicio Numero 5

SELECT Nombre FROM Perro WHERE DNI_dueno = (SELECT DNI FROM Dueno WHERE Nombre = "Pedro")