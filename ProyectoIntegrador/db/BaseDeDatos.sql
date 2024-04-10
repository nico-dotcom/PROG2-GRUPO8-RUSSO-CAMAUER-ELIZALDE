CREATE SCHEMA Prog2;

USE Prog2;

CREATE TABLE usuarios (
	id_usuario			INT 				UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	email 				VARCHAR(250) 		NOT NULL,
    contrasenas 		VARCHAR(250)		NOT NULL, 
    fecha 				DATE 				NOT NULL,
    DNI 				INT 				NOT NULL,
    foto 				VARCHAR(250) 		NOT NULL,
    createdAt 			TIMESTAMP 			DEFAULT CURRENT_TIMESTAMP,
    updatedAt 			TIMESTAMP 			DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedAt 			TIMESTAMP 			DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE productos (
	id_producto			INT 				UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    id_usuario 			INT 				UNSIGNED,
	imagenProducto 		VARCHAR(250) 		NOT NULL,
    nombreProducto 		VARCHAR(250)		NOT NULL, 
    descripcion 		VARCHAR(400) 		NOT NULL,
    createdAt 			TIMESTAMP 			DEFAULT CURRENT_TIMESTAMP,
    updatedAt 			TIMESTAMP 			DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedAt 			TIMESTAMP 			DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    FOREIGN KEY(id_usuario) REFERENCES usuarios(id_usuario)

    
);

CREATE TABLE comentarios (
	id_comentario		INT 				UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    id_usuario 			INT					UNSIGNED,
	id_producto			INT					UNSIGNED,
    comentario 		  	VARCHAR(350)		NOT NULL, 
    createdAt 			TIMESTAMP 			DEFAULT CURRENT_TIMESTAMP,
    updatedAt 			TIMESTAMP 			DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedAt 			TIMESTAMP 			DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   
    FOREIGN KEY(id_usuario) REFERENCES usuarios(id_usuario),
	FOREIGN KEY(id_producto) REFERENCES productos(id_producto)
    
);


INSERT INTO usuarios (id_usuario, email, contrasenas, fecha, DNI,foto,createdAt,updatedAt,deletedAt)
VALUES 			(DEFAULT, "velizalde@udesa.edu.ar", "VickyLaMasLinda24", "2004-10-01", 46213843, "perfilvelizalde.png", DEFAULT,DEFAULT,DEFAULT);

INSERT INTO usuarios (id_usuario, email, contrasenas, fecha, DNI,foto,createdAt,updatedAt,deletedAt)
VALUES 			(DEFAULT, "nicolasrusso@udesa.edu.ar", "NicoLaMasLinda24", "2004-02-10", 45421961, "perfilnicolasrusso.png", DEFAULT,DEFAULT,DEFAULT);

INSERT INTO usuarios (id_usuario, email, contrasenas, fecha, DNI, foto,createdAt,updatedAt,deletedAt)
VALUES 			(DEFAULT, "bcamauer@udesa.edu.ar", "BerniLaMasLinda24", "2004-05-03", 46649858, "perfilbcamauer.png", DEFAULT,DEFAULT,DEFAULT);

INSERT INTO usuarios (id_usuario, email, contrasenas, fecha, DNI, foto,createdAt,updatedAt,deletedAt)
VALUES 			(DEFAULT, "tefa@udesa.edu.ar", "tefaLaMasLinda24", "2004-05-06", 42219122, "perfiltefa.png", DEFAULT,DEFAULT,DEFAULT);

INSERT INTO usuarios (id_usuario, email, contrasenas, fecha, DNI,foto,createdAt,updatedAt,deletedAt)
VALUES 			(DEFAULT, "sofi@udesa.edu.ar", "sofiLaMasLinda24", "2004-04-10", 41929222, "perfilbcamauer.png", DEFAULT,DEFAULT,DEFAULT);






