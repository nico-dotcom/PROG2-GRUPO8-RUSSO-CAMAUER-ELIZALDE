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
