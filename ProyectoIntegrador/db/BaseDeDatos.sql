CREATE SCHEMA Prog2;


USE Prog2;


CREATE TABLE usuarios (
    id_usuario          INT                 UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre_usuario      VARCHAR(250)        NOT NULL,
    email               VARCHAR(250)        NOT NULL,
    contrasenas         VARCHAR(250)        NOT NULL,
    fecha               DATE                NOT NULL,
    dni                 INT                 NOT NULL,
    foto                VARCHAR(250)        NOT NULL,
    created_at          TIMESTAMP           DEFAULT CURRENT_TIMESTAMP,
    updated_at          TIMESTAMP           DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at          TIMESTAMP           NULL
);


CREATE TABLE productos (
    id_producto         INT                 UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    id_usuario          INT                 UNSIGNED,
    imagen_producto     VARCHAR(250)        NOT NULL,
    nombre_producto     VARCHAR(250)        NOT NULL,
    descripcion         VARCHAR(400)        NOT NULL,
    created_at          TIMESTAMP           DEFAULT CURRENT_TIMESTAMP,
    updated_at          TIMESTAMP           DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at          TIMESTAMP           NULL,
   
    FOREIGN KEY(id_usuario) REFERENCES usuarios(id_usuario)
   
);


CREATE TABLE comentarios (
    id_comentario       INT                 UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    id_usuario          INT                 UNSIGNED,
    id_producto         INT                 UNSIGNED,
    comentario          VARCHAR(350)        NOT NULL,
    created_at          TIMESTAMP           DEFAULT CURRENT_TIMESTAMP,
    updated_at          TIMESTAMP           DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at          TIMESTAMP           NULL,
   
    FOREIGN KEY(id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY(id_producto) REFERENCES productos(id_producto)


);


INSERT INTO usuarios (id_usuario, email, contrasenas, fecha, dni,foto,created_at,updated_at,deleted_at)
VALUES          (DEFAULT, "velizalde@udesa.edu.ar", "VickyLaMasLinda24", "2004-10-01", 46213843, "perfilvelizalde.png", DEFAULT,DEFAULT,DEFAULT);


INSERT INTO usuarios (id_usuario, email, contrasenas, fecha, dni,foto,created_at,updated_at,deleted_at)
VALUES          (DEFAULT, "nicolasrusso@udesa.edu.ar", "NicoLaMasLinda24", "2004-02-10", 45421961, "perfilnicolasrusso.png", DEFAULT,DEFAULT,DEFAULT);


INSERT INTO usuarios (id_usuario, email, contrasenas, fecha, dni, foto,created_at,updated_at,deleted_at)
VALUES          (DEFAULT, "bcamauer@udesa.edu.ar", "BerniLaMasLinda24", "2004-05-03", 46649858, "perfilbcamauer.png", DEFAULT,DEFAULT,DEFAULT);


INSERT INTO usuarios (id_usuario, email, contrasenas, fecha, dni, foto,created_at,updated_at,deleted_at)
VALUES          (DEFAULT, "tefa@udesa.edu.ar", "tefaLaMasLinda24", "2004-05-06", 42219122, "perfiltefa.png", DEFAULT,DEFAULT,DEFAULT);


INSERT INTO usuarios (id_usuario, email, contrasenas, fecha, dni,foto,created_at,updated_at,deleted_at)
VALUES          (DEFAULT, "sofi@udesa.edu.ar", "sofiLaMasLinda24", "2004-04-10", 41929222, "perfilbcamauer.png", DEFAULT,DEFAULT,DEFAULT);


INSERT INTO productos (id_producto, id_usuario, imagen_producto, nombre_producto, descripcion,created_at,updated_at,deleted_at)
VALUES          (DEFAULT, 1 , "/images/products/producto1.png" , "Producto 1", "Descripción del producto 1" , DEFAULT, DEFAULT,DEFAULT);


INSERT INTO productos (id_producto, id_usuario, imagen_producto, nombre_producto, descripcion,created_at,updated_at,deleted_at)
VALUES          (DEFAULT, 1, "/images/products/producto2.png" , "Producto 2", "Descripción del producto 2" , DEFAULT, DEFAULT,DEFAULT);


INSERT INTO productos (id_producto, id_usuario, imagen_producto, nombre_producto, descripcion,created_at,updated_at,deleted_at)
VALUES          (DEFAULT, 2 , "/images/products/producto3.png" , "Producto 3", "Descripción del producto 3" , DEFAULT, DEFAULT,DEFAULT);


INSERT INTO productos (id_producto, id_usuario, imagen_producto, nombre_producto, descripcion,created_at,updated_at,deleted_at)
VALUES          (DEFAULT, 2 , "/images/products/producto4.png" , "Producto 4", "Descripción del producto 4" , DEFAULT, DEFAULT,DEFAULT);


INSERT INTO productos (id_producto, id_usuario, imagen_producto, nombre_producto, descripcion,created_at,updated_at,deleted_at)
VALUES          (DEFAULT, 3 , "/images/products/producto5.png" , "Producto 5", "Descripción del producto 5" , DEFAULT, DEFAULT,DEFAULT);


INSERT INTO productos (id_producto, id_usuario, imagen_producto, nombre_producto, descripcion,created_at,updated_at,deleted_at)
VALUES          (DEFAULT, 3 , "/images/products/producto6.png" , "Producto 6", "Descripción del producto 6" , DEFAULT, DEFAULT,DEFAULT);


INSERT INTO productos (id_producto, id_usuario, imagen_producto, nombre_producto, descripcion,created_at,updated_at,deleted_at)
VALUES          (DEFAULT, 5 , "/images/products/producto7.png" , "Producto 7", "Descripción del producto 7" , DEFAULT, DEFAULT,DEFAULT);


INSERT INTO productos (id_producto, id_usuario, imagen_producto, nombre_producto, descripcion,created_at,updated_at,deleted_at)
VALUES          (DEFAULT, 5 , "/images/products/producto8.png" , "Producto 8", "Descripción del producto 8" , DEFAULT, DEFAULT,DEFAULT);


INSERT INTO productos (id_producto, id_usuario, imagen_producto, nombre_producto, descripcion,created_at,updated_at,deleted_at)
VALUES          (DEFAULT, 4 , "/images/products/producto9.png" , "Producto 9", "Descripción del producto 9" , DEFAULT, DEFAULT,DEFAULT);


INSERT INTO productos (id_producto, id_usuario, imagen_producto, nombre_producto, descripcion,created_at,updated_at,deleted_at)
VALUES          (DEFAULT, 4 , "/images/products/producto10.png" , "Producto 10", "Descripción del producto 10" , DEFAULT, DEFAULT,DEFAULT);


/*Producto 1 comentarios */
INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 4 , 1 , "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 4 , 1, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 4 , 1, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


/*Producto 2 comentarios */


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 1 , 2 , "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 1, 2 , "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 1 , 2 , "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


/*Producto 3 comentarios */


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 2 , 3, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 2, 3, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 2, 3, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


/*Producto 4 comentarios */


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 4 , 4 , "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 4 , 4, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 4 , 4, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


/*Producto 5 comentarios */


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 5 , 5, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 5, 5, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 5 , 5, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);




/*Producto 6 comentarios */


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 1 , 6, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 1 , 6 , "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 1 , 6 , "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


/*Producto 7 comentarios */


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 2 , 7, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 2 , 7 , "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 2 , 7, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


/*Producto 8 comentarios */


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 4 , 8, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 4 , 8, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 4 , 8, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


/*Producto 9 comentarios */


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 3 , 9, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 3 , 9 , "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 3 , 9 , "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


/*Producto 10 comentarios */


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 4 , 10 , "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 4 , 10 , "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);


INSERT INTO comentarios (id_comentario, id_usuario, id_producto, comentario, created_at, updated_at, deleted_at)
VALUES                  (DEFAULT, 4 , 10, "¡Me encanta este producto!", DEFAULT, DEFAULT,DEFAULT);



