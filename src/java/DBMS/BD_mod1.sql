DROP SCHEMA "mod1" CASCADE;

CREATE SCHEMA "mod1" AUTHORIZATION postgres;
GRANT ALL ON SCHEMA "mod1" TO postgres;

/*Entidad principal USUARIO*/
CREATE TABLE "mod1".USUARIO(
	NombreUsuario VARCHAR(100) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	USBID VARCHAR(30) NOT NULL,
        Password VARCHAR(30) NOT NULL,
        Cargo  Integer NOT NULL,
	CONSTRAINT PK_USUARIO PRIMARY KEY (USBID)
)
WITH (
OIDS = FALSE
);

CREATE TABLE "mod1".GRUPO(
	registroGrupo VARCHAR(30) NOT NULL,
        estado VARCHAR(30) NOT NULL DEFAULT('activo'),
	CONSTRAINT PK_GRUPO PRIMARY KEY (registroGrupo)
)
WITH (
OIDS = FALSE
);

CREATE TABLE mod1.noconformidad(
  fecha timestamp NOT NULL DEFAULT ('now'::text)::timestamp(2),
  registro VARCHAR(20) NOT NULL,
  situacion VARCHAR(5000) NOT NULL,
  procedencia integer NOT NULL,
  clausula1 VARCHAR(30),
  requisito1 VARCHAR(5000),
  declaracion1 VARCHAR(5000),
  codigo1 VARCHAR(30),
  clausula2 VARCHAR(30),
  requisito2 VARCHAR(5000),
  declaracion2 VARCHAR(5000),
  codigo2 VARCHAR(30),
  estado VARCHAR(30) NOT NULL DEFAULT ('activa'), 
  registrod VARCHAR(30),
  CONSTRAINT pk_noconformidad PRIMARY KEY (registro)
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
        cargo integer NOT NULL,
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
	Titulo VARCHAR(100) REFERENCES "mod1".PUBLICACION(Titulo) NOT NULL,
	Contenido VARCHAR(5000) NOT NULL,
	CONSTRAINT PK_Publica PRIMARY KEY (Titulo, Contenido, USBID)
)
WITH (
OIDS = FALSE
);

CREATE TABLE "mod1".Acciones
(
   Registronc character varying(30), 
   Accion character varying(100), 
   Tipo character varying(11), 
   Prioridad integer, 
   Proceso character varying(100), 
   Responsable character varying(100), 
   Recursos character varying(200),
   estado VARCHAR(30) NOT NULL DEFAULT('activa'),
   FechaI date NOT NULL DEFAULT ('now'::text)::timestamp(2), 
   FechaF date NOT NULL DEFAULT ('now'::text)::timestamp(2), 
   PRIMARY KEY (Registronc, Accion) 

) 
WITH (
  OIDS = FALSE
)
;

CREATE TABLE "mod1".Quejas
(
    registro serial,
    empresa character varying(90), 
    telefono character varying(17),
    fax character varying(17), 
    celular character varying(17),  
    direccion character varying(500), 
    contacto character varying(50), 
    vinculo character varying(20),
    email character varying(50), 
    contrato character varying(15),
    exposicion character varying(5000), 
    acciones character varying(5000), 
    leido boolean, 
    registronc character varying(20),
    fecha timestamp NOT NULL DEFAULT ('now'::text)::timestamp(2),
	CONSTRAINT PK_QUEJAS PRIMARY KEY (registro)
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
  CONSTRAINT FK_Publica_USUARIO FOREIGN KEY (USBID)
    REFERENCES "mod1".USUARIO(USBID);

ALTER TABLE "mod1".Trabaja ADD
  CONSTRAINT FK_Trabaja_GRUPO FOREIGN KEY (registroGrupo)
    REFERENCES "mod1".GRUPO(registroGrupo);

ALTER TABLE "mod1".Trabaja ADD
  CONSTRAINT FK_Trabaja_NOCONFORMIDAD FOREIGN KEY (registro)
    REFERENCES "mod1".NOCONFORMIDAD(registro);

ALTER TABLE "mod1".Acciones ADD
  CONSTRAINT FK_Acciones_NOCONFORMIDAD FOREIGN KEY (Registronc)
    REFERENCES "mod1".NOCONFORMIDAD(registro);



------------------------ Inserts Temporales ------------------------
INSERT INTO "mod1".USUARIO VALUES ('admin', 'admin@usb.ve', 'admin', 'admin', 0);
INSERT INTO "mod1".USUARIO VALUES ('Militza Macías', 'ulab-calidad@usb.ve', 'ulab-calidad', 'member', 0);
INSERT INTO "mod1".USUARIO VALUES ('Susana Ferreira', 'anna.gomez.op@gmail.com', 'ferreira','member', 0);
INSERT INTO "mod1".USUARIO VALUES ('Yetzana Sánchez', 'ulab-calidad@usb.ve', 'sanchezy', 'member', 0);
INSERT INTO "mod1".USUARIO VALUES ('Adelis Lucinchi', 'alucinchi@usb.ve', 'alucinchi', 'member', 1);
INSERT INTO "mod1".USUARIO VALUES ('Luis Alvarez', 'lualvare@usb.ve', 'lualvare', 'member', 1);
INSERT INTO "mod1".USUARIO VALUES ('José Gregorio Ruiz', 'jgruiz@usb.ve', 'jgruiz', 'member', 1);
INSERT INTO "mod1".USUARIO VALUES ('Ana Guadalupe Ramos', 'aramos@usb.ve', 'aramos', 'member', 1);
INSERT INTO "mod1".USUARIO VALUES ('Wilfrido Gonzalez', 'wgonzal@usb.ve', 'wgonzal', 'member', 1);
INSERT INTO "mod1".USUARIO VALUES ('Héctor Rojas', 'anna.gomez.op@gmail.com', 'hrojas', 'member', 1);
INSERT INTO "mod1".USUARIO VALUES ('José Salazar', 'jarriojas@usb.ve', 'jarriojas', 'member', 1);

------------------------ Inserts Temporales Grupo ------ferreira@sub.ve'---------sanchezy@usb.ve---------
--- Nombre del grupo ---
INSERT INTO "mod1".GRUPO VALUES ('Laboratorio E');
--- Encargado del grupo ---
INSERT INTO "mod1".Conforma VALUES ('Laboratorio E', 'wgonzal', '0');
--- Usuarios del grupo ---
INSERT INTO mod1.conforma (registrogrupo, usbid, cargo) 
	VALUES ('Laboratorio E', 'jgruiz', 1);
INSERT INTO mod1.conforma (registrogrupo, usbid, cargo) 
	VALUES ('Laboratorio E', 'aramos', 1);
INSERT INTO mod1.conforma (registrogrupo, usbid, cargo) 
	VALUES ('Laboratorio E', 'hrojas', 1);
--- No Conformidad del grupo ---
INSERT INTO mod1.noconformidad (fecha, registro, situacion, procedencia, clausula1, requisito1, declaracion1, codigo1, clausula2, requisito2, declaracion2, codigo2) 
	VALUES ('2013-12-29 21:52:01.82', 'UL04/13213', 'Inconformidad del cliente en cuanto al producto entregado por prestación de servicio a la empresa TurboCare, C.A., según queja registrada como UL04/13-230', 1, '7.2.2', 'La organización debe revisar los requisitos relacionados con el producto () antes de que se comprometa a proporcionar un producto al cliente. () Deben mantenerse registros de los resultados de la revisión y de las acciones originadas por la misma', 'El laboratorio no mantiene registros que evidencien que se hayan revisado los requisitos relacionados con el producto solicitado antes que se comprometiera a proporcionarlo, lo que contraviene lo establecido en la cláusula 7.2.2 de la norma ISO 9001:2008', 'NC131111a', '4.1.1 a)', 'Las políticas y los procedimientos para las revisiones de los pedidos, las ofertas y los contratos, que den por resultado un contrato para la realización de un ensayo o una calibración, deben asegurar que: a) los requisitos, incluidos los métodos a utilizar, están adecuadamente definidos, documentados y entendidos', 'Las políticas y los procedimientos para las revisiones de los pedidos, las ofertas y los contratos, que den por resultado un contrato para la realización de un ensayo o una calibración, deben asegurar que: a) los requisitos, incluidos los métodos a utilizar, están adecuadamente definidos, documentados y entendidos', 'NC131111b');
--- Asociar grupo con no conformidad ---
INSERT INTO "mod1".trabaja VALUES ('Laboratorio E', 'UL04/13213');
--- Acciones asociadas a la No Conformidad ---
INSERT INTO mod1.acciones (registronc, accion, tipo, prioridad, proceso, responsable, recursos, fechai, fechaf) 
	VALUES ('UL04/13213', 'Repetir el Ensayo de Microscopia Electrónica', 'Correctiva', 1, 'Microscopía Electrónica', 'jgruiz', 'Microsocopio Electrónico e insumos', '11-11-1111', '11-11-1111');
INSERT INTO mod1.acciones (registronc, accion, tipo, prioridad, proceso, responsable, recursos, fechai, fechaf) 
	VALUES ('UL04/13213', 'Elaborar el informe técnico del ensayo', 'Correctiva', 2, 'Microscopía electrónica', 'jgruiz', 'Microscopio Electrónico e Insumos', '12-12-1999', '12-12-1999');
INSERT INTO mod1.acciones (registronc, accion, tipo, prioridad, proceso, responsable, recursos, fechai, fechaf) 
	VALUES ('UL04/13213', 'Modificar el procedimiento de revisión de pedidos, ofertas y contratos', 'Correctiva', 3, 'Coord. de Calidad Lab E', 'hrojas', 'Computadora', '12-12-1111', '12-12-1222');
INSERT INTO mod1.acciones (registronc, accion, tipo, prioridad, proceso, responsable, recursos, fechai, fechaf) 
	VALUES ('UL04/13213', 'Seguimiento a los cambios realizados en el punto anterior', 'Correctiva', 4, 'Coord. de Calidad Lab E', 'hrojas', 'Computadora', '12-12-1111', '12-12-1111');
INSERT INTO mod1.acciones (registronc, accion, tipo, prioridad, proceso, responsable, recursos, fechai, fechaf) 
	VALUES ('UL04/13213', 'Elaborar un listado de ensayos comunes y su alcance para Microscopía  Electrónica', 'Preventiva', 5, 'Microscopía Electrónica', 'aramos', 'Computadora', '11-11-1111', '11-11-1111');

------------------------ Inserts Temporales Publicacion ------------------------

INSERT INTO mod1.publicacion (titulo, contenido) 
	VALUES ('Invitación - Visita a SENCAMER', 'Ante todo un cordial saludo y sirva la presente para invitarlos a participar de la visita a los laboratorios de SENCAMER - Maracay, pautada para el día Jueves doce (12) de Diciembre del presente año. El propósito de la misma, es intercambiar información sobre las capacidades tanto de la USB como de SENCAMER para la prestación de servicios de laboratorios, evaluando la posibilidad de restablecer vínculos de cooperación entre ambas instituciones. 

La hora de salida es a las 8:00 a.m.; el sitio de reunión es en la Unidad de Laboratorios, en el Edificio de Energética, planta baja. Nuestros teléfonos: 0212-9063708 al 11.

Agradecemos la confirmación de su asistencia a través del correo ulab-calidad@usb.ve.

Atentamente,

Coordinación de la Calidad 
Unidad de Laboratorios');

INSERT INTO mod1.publicacion (titulo, contenido) 
	VALUES ('Unidad de Laboratorios retira desechos químicos del Pabellón 3', 'Unidad de Laboratorios retira desechos químicos del Pabellón 3

La Unidad de Laboratorios conjuntamente con la Dirección de Planta
Física, Mantenimiento Ambiental, Bomberos Metropolitanos y Bomberos
Voluntarios de la USB, y el apoyo del Vicerrectorado Administrativo,
retiró los materiales peligrosos que se encontraban en el Pabellón 3,
estructura que fue demolida recientemente debido a las condiciones de
infraestructura que presentaba.
Yumaiti Ortega, gestor de Desechos de la Unidad de Laboratorios informó
que los materiales removidos (reactivos vencidos y otras mezclas) que se
encontraban en esa área fueron trasladados al almacén temporal de
desechos, ubicado en el área de servicios.
Ortega también explicó que el almacén temporal quedó en su máxima
capacidad, por lo tanto la Universidad está en la búsqueda de recursos y
de empresas certificadas por el Ministerio del Ambiente para la
disposición final de esas sustancias.
A pesar de que la mayoría de los nuevos desechos se están tratando
adecuadamente y se han disminuido las cantidades, la Unidad de
Laboratorios tiene dificultades financieras para atender las necesidades
de la universidad en materia de sustancias químicas, refirió Ortega, y
que el problema más grave siegue siendo los pasivos ambientales.
http://usbnoticias.info/post/29915');
