DROP SCHEMA "mod1" CASCADE;

CREATE SCHEMA "mod1" AUTHORIZATION postgres;
GRANT ALL ON SCHEMA "mod1" TO postgres;

/*Entidad principal USUARIO*/
CREATE TABLE "mod1".USUARIO(
	NombreUsuario VARCHAR(100) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	USBID VARCHAR(30) NOT NULL,
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
  situacion VARCHAR(5000) NOT NULL,
  procedencia integer NOT NULL,
  documento integer,
  clausula VARCHAR(30),
  requisito VARCHAR(5000),
  declaracion VARCHAR(5000),
  codigo VARCHAR(30),
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
	USBID VARCHAR(30) NOT NULL,
	CONSTRAINT PK_Conforma PRIMARY KEY (registroGrupo, USBID)
)
WITH (
OIDS = FALSE
);

CREATE TABLE "mod1".PUBLICACION(
	Titulo VARCHAR(200) NOT NULL,
	Contenido VARCHAR(5000) NOT NULL,
	CONSTRAINT PK_PUBLICACION PRIMARY KEY (Titulo)
)
WITH (
OIDS = FALSE
);

CREATE TABLE "mod1".Publica(
	USBID VARCHAR(20) NOT NULL,
	Titulo VARCHAR(100) NOT NULL,
	Contenido VARCHAR(5000) NOT NULL,
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
INSERT INTO "mod1".USUARIO VALUES ('Militza Macías', 'ulab-calidad@usb.ve', 'ulab-calidad');
INSERT INTO "mod1".USUARIO VALUES ('Susana Ferreira', 'ferreira@sub.ve', 'ferreira' );
INSERT INTO "mod1".USUARIO VALUES ('Yetzana Sánchez', 'sanchezy@usb.ve', 'sanchezy');
INSERT INTO "mod1".USUARIO VALUES ('Adelis Lucinchi', 'alucinchi@usb.ve', 'alucinchi');
INSERT INTO "mod1".USUARIO VALUES ('Luis Alvarez', 'lualvare@usb.ve', 'lualvare');
INSERT INTO "mod1".USUARIO VALUES ('José Gregorio Ruiz', 'jgruiz@usb.ve', 'jgruiz');
INSERT INTO "mod1".USUARIO VALUES ('Ana Guadalupe Ramos', 'aramos@usb.ve', 'aramos');
INSERT INTO "mod1".USUARIO VALUES ('Wilfrido Gonzalez', 'wgonzal@usb.ve', 'wgonzal');
INSERT INTO "mod1".USUARIO VALUES ('Héctor Rojas', 'hrojas@usb.ve', 'hrojas');
INSERT INTO "mod1".USUARIO VALUES ('José Salazar', 'jarriojas@usb.ve', 'jarriojas');
