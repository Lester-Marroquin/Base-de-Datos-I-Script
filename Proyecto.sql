
/*==============================================================*/
/* Table: ANUNCIO                                               */
/*==============================================================*/
create table ANUNCIO (
   COD_ANUNCIO          NUMBER(15)            not null,
   ANUNCIO              Varchar2(300)         not null,
   FECHA_INICIO         DATE                  not null,
   FECHA_FIN            DATE                  not null,
   constraint PK_ANUNCIO primary key (COD_ANUNCIO)
);

CREATE SEQUENCE SQC_ANUNCIO
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1
CACHE 20;

/*==============================================================*/
/* Table: ASIGNAR_ROL                                           */
/*==============================================================*/
create table ASIGNAR_ROL (
   COD_ROL              NUMBER(3)             not null,
   COD_DEPARTAMENTO     NUMBER(3)             not null,
   COD_MUNICIPIO        NUMBER(3)             not null,
   COD_SUCURSAL         NUMBER(3)             not null,
   COD_EMPLEADO         NUMBER(10)            not null,
   constraint PK_ASIGNAR_ROL primary key (COD_ROL, COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL, COD_EMPLEADO)
);

CREATE SEQUENCE SQC_ROL
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1
CACHE 20;

/*==============================================================*/
/* Table: ASIGNAR_TURNO                                         */
/*==============================================================*/
create table ASIGNAR_TURNO (
   COD_TURNO            NUMBER(1)             not null,
   COD_DEPARTAMENTO     NUMBER(3)             not null,
   COD_MUNICIPIO        NUMBER(3)             not null,
   COD_SUCURSAL         NUMBER(3)             not null,
   COD_EMPLEADO         NUMBER(10)            not null,
   constraint PK_ASIGNAR_TURNO primary key (COD_TURNO, COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL, COD_EMPLEADO)
);

/*==============================================================*/
/* Table: CATEGORIA_COMBUSTIBLE                                 */
/*==============================================================*/
create table CATEGORIA_COMBUSTIBLE (
   COD_COMBUSTIBLE      NUMBER(3)             not null,
   COMBUSTIBLE          VARCHAR2(200)         not null,
   constraint PK_CATEGORIA_COMBUSTIBLE primary key (COD_COMBUSTIBLE)
);

CREATE SEQUENCE SQC_CATEGORIA_COMBUSTIBLE
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1
CACHE 20;

/*==============================================================*/
/* Table: CATEGORIA_LUBRICANTES                                 */
/*==============================================================*/
create table CATEGORIA_LUBRICANTES (
   COD_LUBRICANTE       NUMBER(3)             not null,
   LUBRICANTE           varchar2(200)         not null,
   constraint PK_CATEGORIA_LUBRICANTES primary key (COD_LUBRICANTE)
);

CREATE SEQUENCE SQC_CATEGORIA_LUBRICANTES
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1
CACHE 20;

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   COD_CLIENTE          NUMBER(15)            not null,
   COD_PERSONA          NUMBER(15)            not null,
   constraint PK_CLIENTE primary key (COD_CLIENTE)
);

CREATE SEQUENCE SQC_CLIENTE
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1
CACHE 20;

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO (
   COD_DEPARTAMENTO     NUMBER(3)             not null,
   DEPARTAMENTO         Varchar2(100)         not null,
   constraint PK_DEPARTAMENTO primary key (COD_DEPARTAMENTO)
);

CREATE SEQUENCE SQC_DEPARTAMENTO
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1
CACHE 20;

/*==============================================================*/
/* Table: DETALLE_FACTURA                                       */
/*==============================================================*/
create table DETALLE_FACTURA (
   NO_FACTURA           NUMBER(99)            not null,
   SERIE                varchar2(50)          not null,
   COD_LUBRICANTE       NUMBER(3),
   COD_UNIDAD_MEDIDA    NUMBER(3),
   COD_COMBUSTIBLE      NUMBER(3),
   COD_DEPARTAMENTO     NUMBER(3),
   COD_MUNICIPIO        NUMBER(3),
   COD_SUCURSAL         NUMBER(3),
   CANTIDAD             NUMBER(10)            not null,
   PRECIO               NUMBER(10,2)          not null,
   constraint PK_DETALLE_FACTURA primary key (NO_FACTURA)
);

/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create table DIRECCION (
   COD_PERSONA          NUMBER(15)            not null,
   DIRECCION            Varchar2(500),
   constraint PK_DIRECCION primary key (COD_PERSONA)
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   COD_EMPLEADO         NUMBER(10)            not null,
   COD_PERSONA          NUMBER(15)            not null,
   COD_DEPARTAMENTO     NUMBER(3)             not null,
   COD_MUNICIPIO        NUMBER(3)             not null,
   COD_SUCURSAL         NUMBER(3)             not null,
   FECHA_INGRESO        DATE                  not null,
   constraint PK_EMPLEADO primary key (COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL, COD_EMPLEADO)
);

CREATE SEQUENCE SQC_EMPLEADO
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1
CACHE 20;

/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
   COD_ESTADO           NUMBER(1)             not null,
   ESTADO               varchar2(50)          not null,
   constraint PK_ESTADO primary key (COD_ESTADO)
);

CREATE SEQUENCE SQC_ESTADO
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1
CACHE 20;

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   NO_FACTURA           NUMBER(99)            not null,
   SERIE                varchar2(50)          not null,
   COD_CLIENTE          NUMBER(15)            not null,
   COD_DEPARTAMENTO     NUMBER(3)             not null,
   COD_MUNICIPIO        NUMBER(3)             not null,
   COD_SUCURSAL         NUMBER(3)             not null,
   COD_EMPLEADO         NUMBER(10)            not null,
   FECHA_EMISION        DATE                  not null,
   constraint PK_FACTURA primary key (NO_FACTURA, SERIE)
);

CREATE SEQUENCE SQC_FACTURA
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1
CACHE 20;

/*==============================================================*/
/* Table: GENERO                                                */
/*==============================================================*/
create table GENERO (
   COD_GENERO           NUMBER(1)             not null,
   GENERO               varchar2(15)          not null,
   constraint PK_GENERO primary key (COD_GENERO)
);

CREATE SEQUENCE SQC_GENERO
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1
CACHE 20;

/*==============================================================*/
/* Table: INVENTARIO                                            */
/*==============================================================*/
create table INVENTARIO (
   COD_LUBRICANTE       NUMBER(3)             not null,
   COD_UNIDAD_MEDIDA    NUMBER(3)             not null,
   COD_COMBUSTIBLE      NUMBER(3)             not null,
   COD_DEPARTAMENTO     NUMBER(3)             not null,
   COD_MUNICIPIO        NUMBER(3)             not null,
   COD_SUCURSAL         NUMBER(3)             not null,
   COD_ESTADO           NUMBER(1)             not null,
   CANTIDAD             NUMBER(5,2)           not null,
   PRECIO               NUMBER(6,2)           not null,
   constraint PK_INVENTARIO primary key (COD_LUBRICANTE, COD_UNIDAD_MEDIDA, COD_COMBUSTIBLE, COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL)
);

/*==============================================================*/
/* Table: MUNICIPIO                                             */
/*==============================================================*/
create table MUNICIPIO (
   COD_DEPARTAMENTO     NUMBER(3)             not null,
   COD_MUNICIPIO        NUMBER(3)             not null,
   MUNICIPO             Varchar2(200)         not null,
   constraint PK_MUNICIPIO primary key (COD_DEPARTAMENTO, COD_MUNICIPIO)
);

CREATE SEQUENCE SQC_MUNICIPIO
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1
CACHE 20;

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   COD_PERSONA          NUMBER(15)            not null,
   COD_SEXO             NUMBER(3)             not null,
   COD_GENERO           NUMBER(1)             not null,
   NOMBRE_1             varchar2(75)          not null,
   NOMBRE_2             varchar2(75)          not null,
   APELLIDO_1           varchar2(75)          not null,
   APELLIDO_2           varchar2(75)          not null,
   APELLIDO_CASADA      varchar2(75)          not null,
   FECHA_NACIMIENTO     DATE                  not null,
   constraint PK_PERSONA primary key (COD_PERSONA)
);

CREATE SEQUENCE SQC_PERSONA
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1
CACHE 20;

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL (
   COD_ROL              NUMBER(3)             not null,
   ROL                  Varchar2(100)         not null,
   constraint PK_ROL primary key (COD_ROL)
);

CREATE SEQUENCE SQC_ROL
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1
CACHE 20;

/*==============================================================*/
/* Table: SEXO                                                  */
/*==============================================================*/
create table SEXO (
   COD_SEXO             NUMBER(3)             not null,
   SEXO                 varchar2(100)         not null,
   constraint PK_SEXO primary key (COD_SEXO)
);

CREATE SEQUENCE SQC_SEXO
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1
CACHE 20;

/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL (
   COD_SUCURSAL         NUMBER(3)             not null,
   COD_MUNICIPIO        NUMBER(3)             not null,
   NOMBRE_SUCURSAL      VARCHAR2(200)         not null,
   COD_DEPARTAMENTO     NUMBER(3)             not null,
   constraint PK_SUCURSAL primary key (COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL)
);

CREATE SEQUENCE SQC_SUCURSAL
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1
CACHE 20;

/*==============================================================*/
/* Table: TELEFONO                                              */
/*==============================================================*/
create table TELEFONO (
   COD_PERSONA          NUMBER(15)            not null,
   TELEFONO             Varchar2(15),
   constraint PK_TELEFONO primary key (COD_PERSONA)
);

/*==============================================================*/
/* Table: TURNO                                                 */
/*==============================================================*/
create table TURNO (
   COD_TURNO            NUMBER(1)             not null,
   TURNO                varchar2(20)          not null,
   constraint PK_TURNO primary key (COD_TURNO)
);

CREATE SEQUENCE SQC_TURNO
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1
CACHE 20;

/*==============================================================*/
/* Table: UNIDAD_MEDIDA                                         */
/*==============================================================*/
create table UNIDAD_MEDIDA (
   COD_UNIDAD_MEDIDA    NUMBER(3)             not null,
   UNIDAD_MEDIDA        Varchar2(100)         not null,
   constraint PK_UNIDAD_MEDIDA primary key (COD_UNIDAD_MEDIDA)
);

/*==============================================================*/
/* ALTER en tablas                                              */
/*==============================================================*/

alter table ASIGNAR_ROL
   add constraint FK_ASIGNAR_EMPLEADO foreign key (COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL, COD_EMPLEADO)
      references EMPLEADO (COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL, COD_EMPLEADO);

alter table ASIGNAR_ROL
   add constraint FK_ASIGNAR_ROL foreign key (COD_ROL)
      references ROL (COD_ROL);

alter table ASIGNAR_TURNO
   add constraint FK_ASIGNAR_EMPLEADO foreign key (COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL, COD_EMPLEADO)
      references EMPLEADO (COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL, COD_EMPLEADO);

alter table ASIGNAR_TURNO
   add constraint FK_ASIGNAR_TURNO foreign key (COD_TURNO)
      references TURNO (COD_TURNO);

alter table CLIENTE
   add constraint FK_CLIENTE_PERSONA foreign key (COD_PERSONA)
      references PERSONA (COD_PERSONA);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE_FACTURA foreign key (NO_FACTURA, SERIE)
      references FACTURA (NO_FACTURA, SERIE);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE_INVENTAR foreign key (COD_LUBRICANTE, COD_UNIDAD_MEDIDA, COD_COMBUSTIBLE, COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL)
      references INVENTARIO (COD_LUBRICANTE, COD_UNIDAD_MEDIDA, COD_COMBUSTIBLE, COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL);

alter table DIRECCION
   add constraint FK_DIRECCIO_PERSONA foreign key (COD_PERSONA)
      references PERSONA (COD_PERSONA);

alter table EMPLEADO
   add constraint FK_EMPLEADO_SUCURSAL foreign key (COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL)
      references SUCURSAL (COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL);

alter table EMPLEADO
   add constraint FK_EMPLEADO_PERSONA foreign key (COD_PERSONA)
      references PERSONA (COD_PERSONA);

alter table FACTURA
   add constraint FK_FACTURA_CLIENTE foreign key (COD_CLIENTE)
      references CLIENTE (COD_CLIENTE);

alter table FACTURA
   add constraint FK_FACTURA_EMPLEADO foreign key (COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL, COD_EMPLEADO)
      references EMPLEADO (COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL, COD_EMPLEADO);

alter table INVENTARIO
   add constraint FK_INVENTAR_ESTADO foreign key (COD_ESTADO)
      references ESTADO (COD_ESTADO);

alter table INVENTARIO
   add constraint FK_INVENTAR_CATEGORI foreign key (COD_COMBUSTIBLE)
      references CATEGORIA_COMBUSTIBLE (COD_COMBUSTIBLE);

alter table INVENTARIO
   add constraint FK_INVENTAR_UNIDAD_M foreign key (COD_UNIDAD_MEDIDA)
      references UNIDAD_MEDIDA (COD_UNIDAD_MEDIDA);

alter table INVENTARIO
   add constraint FK_INVENTAR_CATEGORI foreign key (COD_LUBRICANTE)
      references CATEGORIA_LUBRICANTES (COD_LUBRICANTE);

alter table INVENTARIO
   add constraint FK_INVENTAR_SUCURSAL foreign key (COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL)
      references SUCURSAL (COD_DEPARTAMENTO, COD_MUNICIPIO, COD_SUCURSAL);

alter table MUNICIPIO
   add constraint FK_MUNICIPI_DEPARTAM foreign key (COD_DEPARTAMENTO)
      references DEPARTAMENTO (COD_DEPARTAMENTO);

alter table PERSONA
   add constraint FK_PERSONA_SEXO foreign key (COD_SEXO)
      references SEXO (COD_SEXO);

alter table PERSONA
   add constraint FK_PERSONA_GENERO foreign key (COD_GENERO)
      references GENERO (COD_GENERO);

alter table SUCURSAL
   add constraint FK_SUCURSAL_MUNICIPI foreign key (COD_DEPARTAMENTO, COD_MUNICIPIO)
      references MUNICIPIO (COD_DEPARTAMENTO, COD_MUNICIPIO);

alter table TELEFONO
   add constraint FK_TELEFONO_PERSONA foreign key (COD_PERSONA)
      references PERSONA (COD_PERSONA);


/*==============================================================*/
/* Insercion de datos manual                                    */
/*==============================================================*/
