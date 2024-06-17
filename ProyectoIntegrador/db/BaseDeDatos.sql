CREATE SCHEMA Prog2;

USE Prog2;

CREATE TABLE usuarios (
    id_usuario          INT                 UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre_usuario      VARCHAR(250)        NOT NULL,
    email               VARCHAR(250)        NOT NULL,
    contrasenas         VARCHAR(400)        NOT NULL,
    fecha               DATE                NOT NULL,
    dni                 INT                 NOT NULL,
    foto                VARCHAR(250)        NOT NULL,
    created_at          TIMESTAMP           DEFAULT CURRENT_TIMESTAMP,
    updated_at          TIMESTAMP           DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at          TIMESTAMP           NULL
);

-- Insert usuarios
INSERT INTO usuarios (id_usuario, nombre_usuario, email, contrasenas, fecha, dni, foto, created_at, updated_at, deleted_at)
VALUES (DEFAULT, "Victoria", "victoria@udesa.edu.ar", "$2a$10$MjQmeuJDurfkqG/.WCkiVe6LisEdpgQ8cMPy55IPPBQlUgGeNW8vm", "2004-10-01", 46213843, "/images/users/perfil_victoria.jpg", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO usuarios (id_usuario, nombre_usuario, email, contrasenas, fecha, dni, foto, created_at, updated_at, deleted_at)
VALUES (DEFAULT, "Nicolas Russo", "nicolas@udesa.edu.ar", "$2a$10$MjQmeuJDurfkqG/.WCkiVe6LisEdpgQ8cMPy55IPPBQlUgGeNW8vm", "2004-02-10", 45421961, "/images/users/perfil_nicolas.jpg", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO usuarios (id_usuario, nombre_usuario, email, contrasenas, fecha, dni, foto, created_at, updated_at, deleted_at)
VALUES (DEFAULT, "Bernarda", "bernarda@udesa.edu.ar", "$2a$10$MjQmeuJDurfkqG/.WCkiVe6LisEdpgQ8cMPy55IPPBQlUgGeNW8vm", "2004-05-03", 46649858, "/images/users/perfil_bernarda.jpg", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO usuarios (id_usuario, nombre_usuario, email, contrasenas, fecha, dni, foto, created_at, updated_at, deleted_at)
VALUES (DEFAULT, "Stefano", "stefano@udesa.edu.ar", "$2a$10$MjQmeuJDurfkqG/.WCkiVe6LisEdpgQ8cMPy55IPPBQlUgGeNW8vm", "2004-05-06", 42219122, "/images/users/perfil_stefano.jpg", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO usuarios (id_usuario, nombre_usuario, email, contrasenas, fecha, dni, foto, created_at, updated_at, deleted_at)
VALUES (DEFAULT, "Sofia", "sofia@udesa.edu.ar", "$2a$10$MjQmeuJDurfkqG/.WCkiVe6LisEdpgQ8cMPy55IPPBQlUgGeNW8vm", "2004-04-10", 41929222, "/images/users/perfil_sofia.jpg", DEFAULT, DEFAULT, DEFAULT);


CREATE TABLE productos (
    id_producto           INT               UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    id_usuario            INT               UNSIGNED,
    imagen_producto       VARCHAR(250)      NOT NULL,
    nombre_producto       VARCHAR(250)      NOT NULL,
    descripcion           VARCHAR(900)      NOT NULL,
    created_at            TIMESTAMP         DEFAULT CURRENT_TIMESTAMP,
    updated_at            TIMESTAMP         DEFAULT
    CURRENT_TIMESTAMP     ON UPDATE         CURRENT_TIMESTAMP,
    deleted_at            TIMESTAMP         NULL,

    FOREIGN KEY(id_usuario) REFERENCES usuarios(id_usuario)
);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 1, "/images/products/producto1.png", "Toyota
Corolla", "Un sedán compacto con un diseño elegante. Conocido por
su fiabilidad y eficiencia de combustible.", DEFAULT, DEFAULT,
DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 1, "/images/products/producto2.png", "Honda
Civic", "Un sedán compacto con un diseño deportivo. Popular por su
rendimiento y tecnología avanzada.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 2, "/images/products/producto3.png", "Ford
Mustang", "Un muscle car icónico con un diseño robusto y deportivo.
Famoso por su potencia y desempeño.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 2, "/images/products/producto4.png", "Chevrolet
Camaro", "Un deportivo con un diseño imponente. Conocido por su
potencia y estilo audaz.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 3, "/images/products/producto5.png", "BMW Serie
3", "Un sedán de lujo con un diseño elegante. Destacado por su
desempeño y tecnología de punta.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 3, "/images/products/producto6.png",
"Mercedes-Benz Clase C", "Un sedán de lujo con un diseño
sofisticado. Reconocido por su confort y elegancia.", DEFAULT,
DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 4, "/images/products/producto7.png", "Audi A4",
"Un sedán de lujo con un diseño moderno. Conocido por su tracción y
tecnología avanzada.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 4, "/images/products/producto8.png", "Volkswagen
Golf", "Un hatchback compacto con un diseño funcional. Famoso por
su versatilidad y eficiencia.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 5, "/images/products/producto9.png", "Nissan
Altima", "Un sedán mediano con un diseño elegante. Conocido por su
comodidad y tecnología.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 5, "/images/products/producto10.png", "Hyundai
Elantra", "Un sedán compacto con un diseño moderno. Popular por su
valor y características avanzadas.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 1, "/images/products/producto11.png", "Kia
Optima", "Un sedán mediano con un diseño elegante. Reconocido por
su estilo y tecnología.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 1, "/images/products/producto12.png", "Subaru
Impreza", "Un sedán compacto con un diseño robusto. Famoso por su
tracción en todas las ruedas y seguridad.", DEFAULT, DEFAULT,
DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 2, "/images/products/producto13.png", "Mazda3",
"Un sedán compacto con un diseño deportivo. Destacado por su manejo
y eficiencia.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 2, "/images/products/producto14.png", "Tesla Model
3", "Un sedán eléctrico con un diseño minimalista. Conocido por su
autonomía y tecnología avanzada.", DEFAULT, DEFAULT, DEFAULT);

INSERT INTO productos (id_producto, id_usuario, imagen_producto,
nombre_producto, descripcion, created_at, updated_at, deleted_at)
VALUES (DEFAULT, 3, "/images/products/producto15.png", "Volvo S60",
"Un sedán de lujo con un diseño escandinavo. Reconocido por su
seguridad y confort.", DEFAULT, DEFAULT, DEFAULT);
