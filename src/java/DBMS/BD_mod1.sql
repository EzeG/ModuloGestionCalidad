DROP SCHEMA "mod1" CASCADE;

CREATE SCHEMA "mod1" AUTHORIZATION postgres;
GRANT ALL ON SCHEMA "mod1" TO postgres;

/*Entidad principal USUARIO*/
CREATE TABLE "mod1".USUARIO(
	NombreUsuario VARCHAR(20) NOT NULL,
	Email VARCHAR(30) NOT NULL,
	USBID VARCHAR(20) NOT NULL,
	CONSTRAINT PK_USUARIO PRIMARY KEY (USBID)
)
WITH (
OIDS = FALSE
);

CREATE TABLE "mod1".GRUPO(
	registroGrupo VARCHAR(30) NOT NULL
	CONSTRAINT PK_Gupo PRIMARY KEY (registroGrupo)
)
WITH (
OIDS = FALSE
);

CREATE TABLE "mod1".Conforma(
	registroGrupo VARCHAR(30) NOT NULL,
	USBID VARCHAR(20) NOT NULL,
	CONSTRAINT PK_Conforma PRIMARY KEY (registroGrupo, USBID)
)
WITH (
OIDS = FALSE
);

CREATE TABLE "mod1".PUBLICACION(
	Titulo VARCHAR(60) NOT NULL,
	Fecha timestamp with time zone NOT NULL default CURRENT_TIMESTAMP(2),
	Estatico INT NOT NULL,
	Contenido VARCHAR(100) NOT NULL,
	CONSTRAINT PK_PUBLICACION PRIMARY KEY (Titulo, Contenido)
)
WITH (
OIDS = FALSE
);

CREATE TABLE "mod1".Publica(
	USBID VARCHAR(20) NOT NULL,
	Titulo VARCHAR(60) NOT NULL,
	Contenido VARCHAR(100) NOT NULL,
	CONSTRAINT PK_Publica PRIMARY KEY (Titulo, Contenido, USBID)
)
WITH (
OIDS = FALSE
);

---------------------------- Foreign Keys --------------------------

ALTER TABLE "mod1".Conforma ADD
  CONSTRAINT FK_Conforma_GRUPO FOREIGN KEY (registroGrupo)
    REFERENCES "mod1".GRUPO(registroGrupo);

ALTER TABLE "mod1".Conforma ADD
  CONSTRAINT FK_Conforma_USUARIO FOREIGN KEY (USBID)
    REFERENCES "mod1".USUARIO(USBID);

ALTER TABLE "mod1".Publica ADD
  CONSTRAINT FK_Publica_PUBLICACION FOREIGN KEY (Titulo, Contenido)
    REFERENCES "mod1".PUBLICACION;

ALTER TABLE "mod1".Publica ADD
  CONSTRAINT FK_Publica_USUARIO FOREIGN KEY (USBID)
    REFERENCES "mod1".USUARIO(USBID);

------------------------ Inserts Temporales ------------------------
INSERT INTO "mod1".USUARIO VALUES ( 'Militza Macías','ulab-calidad@usb.ve', '09-10337');
INSERT INTO "mod1".USUARIO VALUES ( 'Carlos Corrales','ccorrale@usb.ve', '07-29381');