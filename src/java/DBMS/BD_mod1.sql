DROP SCHEMA "mod1" CASCADE;

CREATE SCHEMA "mod1" AUTHORIZATION postgres;
GRANT ALL ON SCHEMA "mod1" TO postgres;

/*Entidad principal USUARIO*/
CREATE TABLE "mod1".USUARIO(
	NombreUsuario VARCHAR(50) NOT NULL,
	Email VARCHAR(30) NOT NULL,
	USBID VARCHAR(20) NOT NULL,
	CONSTRAINT PK_USUARIO PRIMARY KEY (USBID)
)
WITH (
OIDS = FALSE
);

CREATE TABLE "mod1".GRUPO(
	registroGrupo VARCHAR(30) NOT NULL,
	CONSTRAINT PK_GRUPO PRIMARY KEY (registroGrupo)
)
WITH (
OIDS = FALSE
);

CREATE TABLE mod1.noconformidad(
  fecha timestamp with time zone NOT NULL DEFAULT ('now'::text)::timestamp(2) with time zone,
  registro VARCHAR(20) NOT NULL,
  situacion VARCHAR(300) NOT NULL,
  procedencia integer NOT NULL,
  documento integer,
  clausula VARCHAR(15),
  requisito VARCHAR(100),
  declaracion VARCHAR(100),
  codigo VARCHAR(100),
  CONSTRAINT pk_noconformidad PRIMARY KEY (registro )
)
WITH (
OIDS = FALSE
);

CREATE TABLE "mod1".Trabaja(
	registroGrupo VARCHAR(30) NOT NULL,
	registro VARCHAR(20) NOT NULL,
	CONSTRAINT PK_Trabaja PRIMARY KEY (registroGrupo, registro)
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
	Titulo VARCHAR(200) NOT NULL,
	Contenido VARCHAR(2000) NOT NULL,
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

ALTER TABLE "mod1".Trabaja ADD
  CONSTRAINT FK_Trabaja_GRUPO FOREIGN KEY (registroGrupo)
    REFERENCES "mod1".GRUPO(registroGrupo);

ALTER TABLE "mod1".Trabaja ADD
  CONSTRAINT FK_Trabaja_NOCONFORMIDAD FOREIGN KEY (registro)
    REFERENCES "mod1".NOCONFORMIDAD(registro);

------------------------ Inserts Temporales ------------------------
INSERT INTO "mod1".USUARIO VALUES ( 'Militza Macías','ulab-calidad@usb.ve', '09-10337');
INSERT INTO "mod1".USUARIO VALUES ( 'Carlos Corrales','ccorrale@usb.ve', '07-29381');
INSERT INTO "mod1".USUARIO VALUES ( 'Usuario 1','usuario1@usb.ve', '07-29380');
INSERT INTO "mod1".USUARIO VALUES ( 'Usuario 2','usuario2@usb.ve', '07-29382');
INSERT INTO "mod1".USUARIO VALUES ( 'Usuario 3','usuario3@usb.ve', '07-29383');
INSERT INTO "mod1".USUARIO VALUES ( 'Usuario 4','usuario4@usb.ve', '07-29384');
INSERT INTO "mod1".USUARIO VALUES ( 'Usuario 5','usuario5@usb.ve', '07-29385');
INSERT INTO "mod1".USUARIO VALUES ( 'Usuario 6','usuario6@usb.ve', '07-29386');
