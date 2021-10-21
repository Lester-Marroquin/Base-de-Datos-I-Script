
/*==============================================================*/
/* Table: ANUNCIO                                               */
/*==============================================================*/
create table ANUNCIO (
   COD_ANUNCIO          NUMBER(15)            not null,
   ANUNCIO              varchar2(300)         not null,
   FECHA_INICIO         DATE                  not null,
   FECHA_FIN            DATE                  not null,
   constraint PK_ANUNCIO primary key (COD_ANUNCIO)
);

Create Sequence SQC_ANUNCIO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: ASIGNAR_ROL                                           */
/*==============================================================*/
create table ASIGNAR_ROL (
   COD_ROL              NUMBER(3)             not null,
   COD_EMPLEADO         NUMBER(10)            not null,
   constraint PK_ASIGNAR_ROL primary key (COD_ROL, COD_EMPLEADO)
);

/*==============================================================*/
/* Table: ASIGNAR_TURNO                                         */
/*==============================================================*/
create table ASIGNAR_TURNO (
   COD_TURNO            NUMBER(1)             not null,
   COD_EMPLEADO         NUMBER(10)            not null,
   constraint PK_ASIGNAR_TURNO primary key (COD_TURNO, COD_EMPLEADO)
);

/*==============================================================*/
/* Table: CATEGORIA_COMBUSTIBLE                                 */
/*==============================================================*/
create table CATEGORIA_COMBUSTIBLE (
   COD_COMBUSTIBLE      NUMBER(3)             not null,
   COMBUSTIBLE          VARCHAR2(200)         not null,
   constraint PK_CATEGORIA_COMBUSTIBLE primary key (COD_COMBUSTIBLE)
);

Create Sequence SQC_CATEGORIA_COMBUSTIBLE
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: CATEGORIA_LUBRICANTE                                  */
/*==============================================================*/
create table CATEGORIA_LUBRICANTE (
   COD_LUBRICANTE       NUMBER(3)             not null,
   LUBRICANTE           varchar2(200)         not null,
   constraint PK_CATEGORIA_LUBRICANTE primary key (COD_LUBRICANTE)
);

Create Sequence SQC_CATEGORIA_LUBRICANTE
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   COD_CLIENTE          NUMBER(15)            not null,
   COD_PERSONA          NUMBER(15)            not null,
   constraint PK_CLIENTE primary key (COD_CLIENTE)
);

Create Sequence SQC_CLIENTE
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO (
   COD_DEPARTAMENTO     NUMBER(3)             not null,
   DEPARTAMENTO         varchar2(100          not null,
   constraint PK_DEPARTAMENTO primary key (COD_DEPARTAMENTO)
);

Create Sequence SQC_DEPARTAMENTO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: DETALLE_FACTURA                                       */
/*==============================================================*/
create table DETALLE_FACTURA (
   NO_FACTURA           NUMBER(99)            not null,
   COD_LUBRICANTE       NUMBER(3),
   COD_UNIDAD_MEDIDA    NUMBER(3)             not null,
   COD_COMBUSTIBLE      NUMBER(3),
   CANTIDAD             NUMBER(10)            not null,
   PRECIO               NUMBER(10,2)          not null
);

/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create table DIRECCION (
   COD_PERSONA          NUMBER(15)            not null,
   DIRECCION            varchar2(500)         not null
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   COD_EMPLEADO         NUMBER(10)            not null,
   COD_PERSONA          NUMBER(15)            not null,
   COD_SUCURSAL         NUMBER(3)             not null,
   FECHA_INGRESO        DATE                  not null,
   COD_EMP_EMPLEADO     NUMBER(10),
   constraint PK_EMPLEADO primary key (COD_EMPLEADO) Enable
);

Create Sequence SQC_EMPLEADO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
   COD_ESTADO           NUMBER(1)             not null,
   ESTADO               Varchar2(50)          not null,
   constraint PK_ESTADO primary key (COD_ESTADO)
);

Create Sequence SQC_ESTADO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   NO_FACTURA           NUMBER(99)            not null,
   SERIE                varchar2(50)          not null,
   COD_CLIENTE          NUMBER(15)            not null,
   COD_EMPLEADO         NUMBER(10)            not null,
   FECHA_EMISION        DATE                  not null,
   constraint PK_FACTURA primary key (NO_FACTURA)
);

Create Sequence SQC_FACTURA
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: GENERO                                                */
/*==============================================================*/
create table GENERO (
   COD_GENERO           NUMBER(1)             not null,
   GENERO               varchar2(15)          not null,
   constraint PK_GENERO primary key (COD_GENERO)
);

Create Sequence SQC_GENERO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: INVENTARIO                                            */
/*==============================================================*/
create table INVENTARIO (
   COD_LUBRICANTE       NUMBER(3)             not null,
   COD_UNIDAD_MEDIDA    NUMBER(3)             not null,
   COD_COMBUSTIBLE      NUMBER(3)             not null,
   COD_SUCURSAL         NUMBER(3)             not null,
   COD_ESTADO           NUMBER(1)             not null,
   CANTIDAD             NUMBER(5,2)           not null,
   PRECIO               NUMBER(6,2)           not null,
   constraint PK_INVENTARIO primary key (COD_LUBRICANTE, COD_UNIDAD_MEDIDA, COD_COMBUSTIBLE)
);

/*==============================================================*/
/* Table: MUNICIPIO                                             */
/*==============================================================*/
create table MUNICIPIO (
   COD_MUNICIPIO        NUMBER(3)             not null,
   DEPARTAMENTO         varchar2(100)         not null,
   constraint PK_MUNICIPIO primary key (COD_MUNICIPIO)
);

Create Sequence SQC_MUNICIPIO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   COD_PERSONA          NUMBER(15)            not null,
   COD_SEXO             NUMBER(3)             not null,
   COD_GENERO           NUMBER(1)             not null,
   NOMBRE_1             varchar2(75)          not null,
   NOMBRE_2             varchar2(75),
   APELLIDO_1           varchar2(75)          not null,
   APELLIDO_2           varchar2(75),
   APELLIDO_CASADA      varchar2(75),
   FECHA_NACIMIENTO     DATE                  not null,
   constraint PK_PERSONA primary key (COD_PERSONA)
);

Create Sequence SQC_PERSONA
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL (
   COD_ROL              NUMBER(3)             not null,
   ROL                  varchar2(100)         not null,
   constraint PK_ROL primary key (COD_ROL)
);

Create Sequence SQC_ROL
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: SEXO                                                  */
/*==============================================================*/
create table SEXO (
   COD_SEXO             NUMBER(3)             not null,
   SEXO                 varchar2(100)         not null,
   constraint PK_SEXO primary key (COD_SEXO)
);

Create Sequence SQC_SEXO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL (
   COD_SUCURSAL         NUMBER(3)             not null,
   COD_DEPARTAMENTO     NUMBER(3)             not null,
   COD_MUNICIPIO        NUMBER(3)             not null,
   NOMBRE_SUCURSAL      VARCHAR2(200)         not null,
   constraint PK_SUCURSAL primary key (COD_SUCURSAL)
);

Create Sequence SQC_SUCURSAL
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: TELEFONO                                              */
/*==============================================================*/
create table TELEFONO (
   COD_PERSONA          NUMBER(15)            not null,
   TELEFONO             varchar2(15)          not null
);

/*==============================================================*/
/* Table: TURNO                                                 */
/*==============================================================*/
create table TURNO (
   COD_TURNO            NUMBER(1)             not null,
   TURNO                varchar2(20)          not null,
   constraint PK_TURNO primary key (COD_TURNO)
);

Create Sequence SQC_TURNO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: UNIDAD_MEDIDA                                         */
/*==============================================================*/
create table UNIDAD_MEDIDA (
   COD_UNIDAD_MEDIDA    NUMBER(3)             not null,
   UNIDAD_MEDIDA        varchar2(100)         not null,
   constraint PK_UNIDAD_MEDIDA primary key (COD_UNIDAD_MEDIDA)
);

Create Sequence SQC_UNIDAD_MEDIDA
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* ALTERS:                                                      */
/*==============================================================*/

alter table EMPLEADO
   add constraint FK_EMPLEADO_EMPLEADO foreign key (COD_EMP_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO) Enable; 

alter table ASIGNAR_ROL
   add constraint FK_ASIGNAR_EMPLEADO foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO);

alter table ASIGNAR_ROL
   add constraint FK_ASIGNAR_ROL foreign key (COD_ROL)
      references ROL (COD_ROL);

alter table ASIGNAR_TURNO
   add constraint FK_ASIGNAR_EMPLEADO foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO);

alter table ASIGNAR_TURNO
   add constraint FK_ASIGNAR_TURNO foreign key (COD_TURNO)
      references TURNO (COD_TURNO);

alter table CLIENTE
   add constraint FK_CLIENTE_PERSONA foreign key (COD_PERSONA)
      references PERSONA (COD_PERSONA);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE_FACTURA foreign key (NO_FACTURA)
      references FACTURA (NO_FACTURA);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE_INVENTAR foreign key (COD_LUBRICANTE, COD_UNIDAD_MEDIDA, COD_COMBUSTIBLE)
      references INVENTARIO (COD_LUBRICANTE, COD_UNIDAD_MEDIDA, COD_COMBUSTIBLE);

alter table DIRECCION
   add constraint FK_DIRECCIO_PERSONA foreign key (COD_PERSONA)
      references PERSONA (COD_PERSONA);

alter table EMPLEADO
   add constraint FK_EMPLEADO_SUCURSAL foreign key (COD_SUCURSAL)
      references SUCURSAL (COD_SUCURSAL);

alter table EMPLEADO
   add constraint FK_EMPLEADO_PERSONA foreign key (COD_PERSONA)
      references PERSONA (COD_PERSONA);

alter table FACTURA
   add constraint FK_FACTURA_CLIENTE foreign key (COD_CLIENTE)
      references CLIENTE (COD_CLIENTE);

alter table FACTURA
   add constraint FK_FACTURA_EMPLEADO foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO);

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
      references CATEGORIA_LUBRICANTE (COD_LUBRICANTE);

alter table INVENTARIO
   add constraint FK_INVENTAR_SUCURSAL foreign key (COD_SUCURSAL)
      references SUCURSAL (COD_SUCURSAL);

alter table PERSONA
   add constraint FK_PERSONA_SEXO foreign key (COD_SEXO)
      references SEXO (COD_SEXO);

alter table PERSONA
   add constraint FK_PERSONA_GENERO foreign key (COD_GENERO)
      references GENERO (COD_GENERO);

alter table SUCURSAL
   add constraint FK_SUCURSAL_MUNICIPI foreign key (COD_MUNICIPIO)
      references MUNICIPIO (COD_MUNICIPIO);

alter table SUCURSAL
   add constraint FK_SUCURSAL_DEPARTAM foreign key (COD_DEPARTAMENTO)
      references DEPARTAMENTO (COD_DEPARTAMENTO);

alter table TELEFONO
   add constraint FK_TELEFONO_PERSONA foreign key (COD_PERSONA)
      references PERSONA (COD_PERSONA);
   


/*==============================================================*/
/* Insercion de datos manual                                    */
/*==============================================================*/


insert into CATEGORIA_COMBUSTIBLE (COD_COMBUSTIBLE, COMBUSTIBLE) values (SQC_CATEGORIA_COMBUSTIBLE.Nextval, 'Super');
insert into CATEGORIA_COMBUSTIBLE (COD_COMBUSTIBLE, COMBUSTIBLE) values (SQC_CATEGORIA_COMBUSTIBLE.Nextval, 'Regular');
insert into CATEGORIA_COMBUSTIBLE (COD_COMBUSTIBLE, COMBUSTIBLE) values (SQC_CATEGORIA_COMBUSTIBLE.Nextval, 'Diesel');
insert into CATEGORIA_COMBUSTIBLE (COD_COMBUSTIBLE, COMBUSTIBLE) values (SQC_CATEGORIA_COMBUSTIBLE.Nextval, 'V-Power');

--insert into CATEGORIA_LUBRICANTE (COD_LUBRICANTE, LUBRICANTE) values (SQC_CATEGORIA_LUBRICANTE.Nextval, '');

insert into ANUNCIO (COD_ANUNCIO, ANUNCIO, FECHA_INICIO, FECHA_FIN) values (SQC_ANUNCIO.Nextval, 'Primer anuncio de proyecto', Sysdate, to_date ('01-01-2021','dd-mm-yy'));
