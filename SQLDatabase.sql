/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2017                    */
/* Created on:     2021.12.14 14:54:45                          */
/*==============================================================*/


if exists (select 1
          from sysobjects
          where id = object_id('CLR_TRIGGER_DETALE')
          and type = 'TR')
   drop trigger CLR_TRIGGER_DETALE
go

if exists (select 1
          from sysobjects
          where id = object_id('TD_DETALE')
          and type = 'TR')
   drop trigger TD_DETALE
go

if exists (select 1
          from sysobjects
          where id = object_id('TU_DETALE')
          and type = 'TR')
   drop trigger TU_DETALE
go

if exists (select 1
          from sysobjects
          where id = object_id('CLR_TRIGGER_KURJERIS')
          and type = 'TR')
   drop trigger CLR_TRIGGER_KURJERIS
go

if exists (select 1
          from sysobjects
          where id = object_id('TD_KURJERIS')
          and type = 'TR')
   drop trigger TD_KURJERIS
go

if exists (select 1
          from sysobjects
          where id = object_id('TU_KURJERIS')
          and type = 'TR')
   drop trigger TU_KURJERIS
go

if exists (select 1
          from sysobjects
          where id = object_id('CLR_TRIGGER_PASIRINKTOS_DETALES')
          and type = 'TR')
   drop trigger CLR_TRIGGER_PASIRINKTOS_DETALES
go

if exists (select 1
          from sysobjects
          where id = object_id('TI_PASIRINKTOS_DETALES')
          and type = 'TR')
   drop trigger TI_PASIRINKTOS_DETALES
go

if exists (select 1
          from sysobjects
          where id = object_id('TU_PASIRINKTOS_DETALES')
          and type = 'TR')
   drop trigger TU_PASIRINKTOS_DETALES
go

if exists (select 1
          from sysobjects
          where id = object_id('CLR_TRIGGER_PIRKEJAS')
          and type = 'TR')
   drop trigger CLR_TRIGGER_PIRKEJAS
go

if exists (select 1
          from sysobjects
          where id = object_id('TD_PIRKEJAS')
          and type = 'TR')
   drop trigger TD_PIRKEJAS
go

if exists (select 1
          from sysobjects
          where id = object_id('TU_PIRKEJAS')
          and type = 'TR')
   drop trigger TU_PIRKEJAS
go

if exists (select 1
          from sysobjects
          where id = object_id('CLR_TRIGGER_SURINKEJAS')
          and type = 'TR')
   drop trigger CLR_TRIGGER_SURINKEJAS
go

if exists (select 1
          from sysobjects
          where id = object_id('TD_SURINKEJAS')
          and type = 'TR')
   drop trigger TD_SURINKEJAS
go

if exists (select 1
          from sysobjects
          where id = object_id('TU_SURINKEJAS')
          and type = 'TR')
   drop trigger TU_SURINKEJAS
go

if exists (select 1
          from sysobjects
          where id = object_id('CLR_TRIGGER_UZSAKYMAS')
          and type = 'TR')
   drop trigger CLR_TRIGGER_UZSAKYMAS
go

if exists (select 1
          from sysobjects
          where id = object_id('TD_UZSAKYMAS')
          and type = 'TR')
   drop trigger TD_UZSAKYMAS
go

if exists (select 1
          from sysobjects
          where id = object_id('TI_UZSAKYMAS')
          and type = 'TR')
   drop trigger TI_UZSAKYMAS
go

if exists (select 1
          from sysobjects
          where id = object_id('TU_UZSAKYMAS')
          and type = 'TR')
   drop trigger TU_UZSAKYMAS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DETALE')
            and   name  = 'TIPAS'
            and   indid > 0
            and   indid < 255)
   drop index DETALE.TIPAS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DETALE')
            and   type = 'U')
   drop table DETALE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KURJERIS')
            and   name  = 'KURJERIO_TEL'
            and   indid > 0
            and   indid < 255)
   drop index KURJERIS.KURJERIO_TEL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KURJERIS')
            and   type = 'U')
   drop table KURJERIS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PASIRINKTOS_DETALES')
            and   name  = 'UZSAKYMO_DETALES_FK'
            and   indid > 0
            and   indid < 255)
   drop index PASIRINKTOS_DETALES.UZSAKYMO_DETALES_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PASIRINKTOS_DETALES')
            and   name  = 'PASIRINKTOS_DETALES_FK'
            and   indid > 0
            and   indid < 255)
   drop index PASIRINKTOS_DETALES.PASIRINKTOS_DETALES_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PASIRINKTOS_DETALES')
            and   type = 'U')
   drop table PASIRINKTOS_DETALES
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PIRKEJAS')
            and   name  = 'TELEFONAS'
            and   indid > 0
            and   indid < 255)
   drop index PIRKEJAS.TELEFONAS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PIRKEJAS')
            and   name  = 'ADRESAS'
            and   indid > 0
            and   indid < 255)
   drop index PIRKEJAS.ADRESAS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PIRKEJAS')
            and   type = 'U')
   drop table PIRKEJAS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SURINKEJAS')
            and   name  = 'SURINKEJO_TEL'
            and   indid > 0
            and   indid < 255)
   drop index SURINKEJAS.SURINKEJO_TEL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SURINKEJAS')
            and   type = 'U')
   drop table SURINKEJAS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('UZSAKYMAS')
            and   name  = 'DATA'
            and   indid > 0
            and   indid < 255)
   drop index UZSAKYMAS.DATA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('UZSAKYMAS')
            and   name  = 'PRISKIRIAMAS_KURJERIS_FK'
            and   indid > 0
            and   indid < 255)
   drop index UZSAKYMAS.PRISKIRIAMAS_KURJERIS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('UZSAKYMAS')
            and   name  = 'PRISKIRIAMAS_SURINKEJAS_FK'
            and   indid > 0
            and   indid < 255)
   drop index UZSAKYMAS.PRISKIRIAMAS_SURINKEJAS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('UZSAKYMAS')
            and   name  = 'UZSAKYMAS_FK'
            and   indid > 0
            and   indid < 255)
   drop index UZSAKYMAS.UZSAKYMAS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('UZSAKYMAS')
            and   type = 'U')
   drop table UZSAKYMAS
go

if exists(select 1 from systypes where name='KAINA')
   drop type KAINA
go

if exists(select 1 from systypes where name='PAVARDE')
   drop type PAVARDE
go

if exists(select 1 from systypes where name='TELEFONAI')
   drop type TELEFONAI
go

if exists(select 1 from systypes where name='VARDAS')
   drop type VARDAS
go

/*==============================================================*/
/* Domain: KAINA                                                */
/*==============================================================*/
create type KAINA
   from money
go

/*==============================================================*/
/* Domain: PAVARDE                                              */
/*==============================================================*/
create type PAVARDE
   from varchar(30)
go

/*==============================================================*/
/* Domain: TELEFONAI                                            */
/*==============================================================*/
create type TELEFONAI
   from varchar(9)
go

/*==============================================================*/
/* Domain: VARDAS                                               */
/*==============================================================*/
create type VARDAS
   from varchar(30)
go

/*==============================================================*/
/* Table: DETALE                                                */
/*==============================================================*/
create table DETALE (
   PAVADINIMAS          varchar(50)          not null,
   APRASAS              varchar(300)         not null,
   KAINA                KAINA                not null 
      constraint CKC_KAINA_DETALE check (KAINA >= 0.01),
   KIEKIS_SANDELYJE     int                  not null,
   TIPAS                varchar(11)          not null 
      constraint CKC_TIPAS_DETALE check (TIPAS in ('privaloma','neprivaloma')),
   DETALES_ID           numeric(5)           identity,
   constraint PK_DETALE primary key (DETALES_ID),
   constraint AK_PAVADINIMAS_DETALE unique (PAVADINIMAS)
)
go

/*==============================================================*/
/* Index: TIPAS                                                 */
/*==============================================================*/




create nonclustered index TIPAS on DETALE (TIPAS ASC)
go

/*==============================================================*/
/* Table: KURJERIS                                              */
/*==============================================================*/
create table KURJERIS (
   KURJERIO_VARDAS      VARDAS               not null,
   KURJERIO_PAVARDE     PAVARDE              not null,
   KURJERIO_NR          numeric(5)           identity,
   KURJERIO_TELEFONAS   TELEFONAI            not null,
   KURJERIO_KAINA       KAINA                not null 
      constraint CKC_KURJERIO_KAINA_KURJERIS check (KURJERIO_KAINA >= 0.01),
   constraint PK_KURJERIS primary key (KURJERIO_NR),
   constraint AK_K_PAVARDE_VARDAS_KURJERIS unique (KURJERIO_PAVARDE, KURJERIO_VARDAS)
)
go

/*==============================================================*/
/* Index: KURJERIO_TEL                                          */
/*==============================================================*/




create unique nonclustered index KURJERIO_TEL on KURJERIS (KURJERIO_TELEFONAS ASC)
go

/*==============================================================*/
/* Table: PASIRINKTOS_DETALES                                   */
/*==============================================================*/
create table PASIRINKTOS_DETALES (
   KIEKIS               int                  not null,
   PASIRINKTOS_DETALES_ID numeric(5)           identity,
   DETALES_ID           numeric(5)           not null,
   UZSAKYMO_NR          numeric(5)           not null,
   SURINKIMAS           varchar(20)          null,
   constraint PK_PASIRINKTOS_DETALES primary key (PASIRINKTOS_DETALES_ID)
)
go

/*==============================================================*/
/* Index: PASIRINKTOS_DETALES_FK                                */
/*==============================================================*/




create nonclustered index PASIRINKTOS_DETALES_FK on PASIRINKTOS_DETALES (DETALES_ID ASC)
go

/*==============================================================*/
/* Index: UZSAKYMO_DETALES_FK                                   */
/*==============================================================*/




create nonclustered index UZSAKYMO_DETALES_FK on PASIRINKTOS_DETALES (UZSAKYMO_NR ASC)
go

/*==============================================================*/
/* Table: PIRKEJAS                                              */
/*==============================================================*/
create table PIRKEJAS (
   REGISTRACIJOS_NR     numeric(5)           identity,
   VARDAS               VARDAS               not null,
   PAVARDE              PAVARDE              not null,
   GIMIMO_DATA          datetime             null,
   SASKAITOS_NR         varchar(20)          not null,
   TELEFONO_NR          TELEFONAI            not null,
   ADRESAS              varchar(40)          not null,
   constraint PK_PIRKEJAS primary key (REGISTRACIJOS_NR),
   constraint AK_SASKAITOS_NR_PIRKEJAS unique (SASKAITOS_NR),
   constraint AK_PAVARDE_VARDAS_PIRKEJAS unique (PAVARDE, VARDAS)
)
go

/*==============================================================*/
/* Index: ADRESAS                                               */
/*==============================================================*/




create unique nonclustered index ADRESAS on PIRKEJAS (ADRESAS ASC)
go

/*==============================================================*/
/* Index: TELEFONAS                                             */
/*==============================================================*/




create unique nonclustered index TELEFONAS on PIRKEJAS (TELEFONO_NR ASC)
go

/*==============================================================*/
/* Table: SURINKEJAS                                            */
/*==============================================================*/
create table SURINKEJAS (
   SURINKEJO_NR         numeric(5)           identity,
   SURINKEJO_VARDAS     VARDAS               not null,
   SURINKEJO_PAVARDE    PAVARDE              not null,
   SURINKEJO_TELEFONAS  TELEFONAI            not null,
   SURINKEJO_APRASYMAS  varchar(300)         null,
   SURINKEJO_KAINA      KAINA                not null 
      constraint CKC_SURINKEJO_KAINA_SURINKEJ check (SURINKEJO_KAINA >= 0.01),
   constraint PK_SURINKEJAS primary key (SURINKEJO_NR),
   constraint AK_S_PAVARDE_VARDAS_SURINKEJ unique (SURINKEJO_PAVARDE, SURINKEJO_VARDAS)
)
go

/*==============================================================*/
/* Index: SURINKEJO_TEL                                         */
/*==============================================================*/




create unique nonclustered index SURINKEJO_TEL on SURINKEJAS (SURINKEJO_TELEFONAS ASC)
go

/*==============================================================*/
/* Table: UZSAKYMAS                                             */
/*==============================================================*/
create table UZSAKYMAS (
   UZSAKYMO_NR          numeric(5)           identity,
   KURJERIO_NR          numeric(5)           not null,
   SURINKEJO_NR         numeric(5)           not null,
   REGISTRACIJOS_NR     numeric(5)           not null,
   DATA_IKI             datetime             not null,
   constraint PK_UZSAKYMAS primary key (UZSAKYMO_NR)
)
go

/*==============================================================*/
/* Index: UZSAKYMAS_FK                                          */
/*==============================================================*/




create nonclustered index UZSAKYMAS_FK on UZSAKYMAS (REGISTRACIJOS_NR ASC)
go

/*==============================================================*/
/* Index: PRISKIRIAMAS_SURINKEJAS_FK                            */
/*==============================================================*/




create nonclustered index PRISKIRIAMAS_SURINKEJAS_FK on UZSAKYMAS (SURINKEJO_NR ASC)
go

/*==============================================================*/
/* Index: PRISKIRIAMAS_KURJERIS_FK                              */
/*==============================================================*/




create nonclustered index PRISKIRIAMAS_KURJERIS_FK on UZSAKYMAS (KURJERIO_NR ASC)
go

/*==============================================================*/
/* Index: DATA                                                  */
/*==============================================================*/




create nonclustered index DATA on UZSAKYMAS (DATA_IKI ASC)
go


create trigger CLR_TRIGGER_DETALE on DETALE  insert as
external name %Assembly.GeneratedName%.
go


create trigger TD_DETALE on DETALE for delete as
begin
    declare
       @numrows  int,
       @errno    int,
       @errmsg   varchar(255)

    select  @numrows = @@rowcount
    if @numrows = 0
       return

    /*  Cannot delete parent "DETALE" if children still exist in "PASIRINKTOS_DETALES"  */
    if exists (select 1
               from   PASIRINKTOS_DETALES t2, deleted t1
               where  t2.DETALES_ID = t1.DETALES_ID)
       begin
          select @errno  = 50006,
                 @errmsg = 'Children still exist in "PASIRINKTOS_DETALES". Cannot delete parent "DETALE".'
          goto error
       end


    return

/*  Errors handling  */
error:
    raiserror @errno @errmsg
    rollback  transaction
end
go


create trigger TU_DETALE on DETALE for update as
begin
   declare
      @numrows  int,
      @numnull  int,
      @errno    int,
      @errmsg   varchar(255)

      select  @numrows = @@rowcount
      if @numrows = 0
         return

      /*  Cannot modify parent code in "DETALE" if children still exist in "PASIRINKTOS_DETALES"  */
      if update(DETALES_ID)
      begin
         if exists (select 1
                    from   PASIRINKTOS_DETALES t2, inserted i1, deleted d1
                    where  t2.DETALES_ID = d1.DETALES_ID
                     and  (i1.DETALES_ID != d1.DETALES_ID))
            begin
               select @errno  = 50005,
                      @errmsg = 'Children still exist in "PASIRINKTOS_DETALES". Cannot modify parent code in "DETALE".'
               goto error
            end
      end


      return

/*  Errors handling  */
error:
    raiserror @errno @errmsg
    rollback  transaction
end
go


create trigger CLR_TRIGGER_KURJERIS on KURJERIS  insert as
external name %Assembly.GeneratedName%.
go


create trigger TD_KURJERIS on KURJERIS for delete as
begin
    declare
       @numrows  int,
       @errno    int,
       @errmsg   varchar(255)

    select  @numrows = @@rowcount
    if @numrows = 0
       return

    /*  Cannot delete parent "KURJERIS" if children still exist in "UZSAKYMAS"  */
    if exists (select 1
               from   UZSAKYMAS t2, deleted t1
               where  t2.KURJERIO_NR = t1.KURJERIO_NR)
       begin
          select @errno  = 50006,
                 @errmsg = 'Children still exist in "UZSAKYMAS". Cannot delete parent "KURJERIS".'
          goto error
       end


    return

/*  Errors handling  */
error:
    raiserror @errno @errmsg
    rollback  transaction
end
go


create trigger TU_KURJERIS on KURJERIS for update as
begin
   declare
      @numrows  int,
      @numnull  int,
      @errno    int,
      @errmsg   varchar(255)

      select  @numrows = @@rowcount
      if @numrows = 0
         return

      /*  Cannot modify parent code in "KURJERIS" if children still exist in "UZSAKYMAS"  */
      if update(KURJERIO_NR)
      begin
         if exists (select 1
                    from   UZSAKYMAS t2, inserted i1, deleted d1
                    where  t2.KURJERIO_NR = d1.KURJERIO_NR
                     and  (i1.KURJERIO_NR != d1.KURJERIO_NR))
            begin
               select @errno  = 50005,
                      @errmsg = 'Children still exist in "UZSAKYMAS". Cannot modify parent code in "KURJERIS".'
               goto error
            end
      end


      return

/*  Errors handling  */
error:
    raiserror @errno @errmsg
    rollback  transaction
end
go


create trigger CLR_TRIGGER_PASIRINKTOS_DETALES on PASIRINKTOS_DETALES  insert as
external name %Assembly.GeneratedName%.
go


create trigger TI_PASIRINKTOS_DETALES on PASIRINKTOS_DETALES for insert as
begin
    declare
       @numrows  int,
       @numnull  int,
       @errno    int,
       @errmsg   varchar(255)

    select  @numrows = @@rowcount
    if @numrows = 0
       return

    /*  Parent "DETALE" must exist when inserting a child in "PASIRINKTOS_DETALES"  */
    if update(DETALES_ID)
    begin
       if (select count(*)
           from   DETALE t1, inserted t2
           where  t1.DETALES_ID = t2.DETALES_ID) != @numrows
          begin
             select @errno  = 50002,
                    @errmsg = 'Parent does not exist in "DETALE". Cannot create child in "PASIRINKTOS_DETALES".'
             goto error
          end
    end
    /*  Parent "UZSAKYMAS" must exist when inserting a child in "PASIRINKTOS_DETALES"  */
    if update(UZSAKYMO_NR)
    begin
       if (select count(*)
           from   UZSAKYMAS t1, inserted t2
           where  t1.UZSAKYMO_NR = t2.UZSAKYMO_NR) != @numrows
          begin
             select @errno  = 50002,
                    @errmsg = 'Parent does not exist in "UZSAKYMAS". Cannot create child in "PASIRINKTOS_DETALES".'
             goto error
          end
    end

    return

/*  Errors handling  */
error:
    raiserror @errno @errmsg
    rollback  transaction
end
go


create trigger TU_PASIRINKTOS_DETALES on PASIRINKTOS_DETALES for update as
begin
   declare
      @numrows  int,
      @numnull  int,
      @errno    int,
      @errmsg   varchar(255)

      select  @numrows = @@rowcount
      if @numrows = 0
         return

      /*  Parent "DETALE" must exist when updating a child in "PASIRINKTOS_DETALES"  */
      if update(DETALES_ID)
      begin
         if (select count(*)
             from   DETALE t1, inserted t2
             where  t1.DETALES_ID = t2.DETALES_ID) != @numrows
            begin
               select @errno  = 50003,
                      @errmsg = 'DETALE" does not exist. Cannot modify child in "PASIRINKTOS_DETALES".'
               goto error
            end
      end
      /*  Parent "UZSAKYMAS" must exist when updating a child in "PASIRINKTOS_DETALES"  */
      if update(UZSAKYMO_NR)
      begin
         if (select count(*)
             from   UZSAKYMAS t1, inserted t2
             where  t1.UZSAKYMO_NR = t2.UZSAKYMO_NR) != @numrows
            begin
               select @errno  = 50003,
                      @errmsg = 'UZSAKYMAS" does not exist. Cannot modify child in "PASIRINKTOS_DETALES".'
               goto error
            end
      end

      return

/*  Errors handling  */
error:
    raiserror @errno @errmsg
    rollback  transaction
end
go


create trigger CLR_TRIGGER_PIRKEJAS on PIRKEJAS  insert as
external name %Assembly.GeneratedName%.
go


create trigger TD_PIRKEJAS on PIRKEJAS for delete as
begin
    declare
       @numrows  int,
       @errno    int,
       @errmsg   varchar(255)

    select  @numrows = @@rowcount
    if @numrows = 0
       return

    /*  Cannot delete parent "PIRKEJAS" if children still exist in "UZSAKYMAS"  */
    if exists (select 1
               from   UZSAKYMAS t2, deleted t1
               where  t2.REGISTRACIJOS_NR = t1.REGISTRACIJOS_NR)
       begin
          select @errno  = 50006,
                 @errmsg = 'Children still exist in "UZSAKYMAS". Cannot delete parent "PIRKEJAS".'
          goto error
       end


    return

/*  Errors handling  */
error:
    raiserror @errno @errmsg
    rollback  transaction
end
go


create trigger TU_PIRKEJAS on PIRKEJAS for update as
begin
   declare
      @numrows  int,
      @numnull  int,
      @errno    int,
      @errmsg   varchar(255)

      select  @numrows = @@rowcount
      if @numrows = 0
         return

      /*  Cannot modify parent code in "PIRKEJAS" if children still exist in "UZSAKYMAS"  */
      if update(REGISTRACIJOS_NR)
      begin
         if exists (select 1
                    from   UZSAKYMAS t2, inserted i1, deleted d1
                    where  t2.REGISTRACIJOS_NR = d1.REGISTRACIJOS_NR
                     and  (i1.REGISTRACIJOS_NR != d1.REGISTRACIJOS_NR))
            begin
               select @errno  = 50005,
                      @errmsg = 'Children still exist in "UZSAKYMAS". Cannot modify parent code in "PIRKEJAS".'
               goto error
            end
      end


      return

/*  Errors handling  */
error:
    raiserror @errno @errmsg
    rollback  transaction
end
go


create trigger CLR_TRIGGER_SURINKEJAS on SURINKEJAS  insert as
external name %Assembly.GeneratedName%.
go


create trigger TD_SURINKEJAS on SURINKEJAS for delete as
begin
    declare
       @numrows  int,
       @errno    int,
       @errmsg   varchar(255)

    select  @numrows = @@rowcount
    if @numrows = 0
       return

    /*  Cannot delete parent "SURINKEJAS" if children still exist in "UZSAKYMAS"  */
    if exists (select 1
               from   UZSAKYMAS t2, deleted t1
               where  t2.SURINKEJO_NR = t1.SURINKEJO_NR)
       begin
          select @errno  = 50006,
                 @errmsg = 'Children still exist in "UZSAKYMAS". Cannot delete parent "SURINKEJAS".'
          goto error
       end


    return

/*  Errors handling  */
error:
    raiserror @errno @errmsg
    rollback  transaction
end
go


create trigger TU_SURINKEJAS on SURINKEJAS for update as
begin
   declare
      @numrows  int,
      @numnull  int,
      @errno    int,
      @errmsg   varchar(255)

      select  @numrows = @@rowcount
      if @numrows = 0
         return

      /*  Cannot modify parent code in "SURINKEJAS" if children still exist in "UZSAKYMAS"  */
      if update(SURINKEJO_NR)
      begin
         if exists (select 1
                    from   UZSAKYMAS t2, inserted i1, deleted d1
                    where  t2.SURINKEJO_NR = d1.SURINKEJO_NR
                     and  (i1.SURINKEJO_NR != d1.SURINKEJO_NR))
            begin
               select @errno  = 50005,
                      @errmsg = 'Children still exist in "UZSAKYMAS". Cannot modify parent code in "SURINKEJAS".'
               goto error
            end
      end


      return

/*  Errors handling  */
error:
    raiserror @errno @errmsg
    rollback  transaction
end
go


create trigger CLR_TRIGGER_UZSAKYMAS on UZSAKYMAS  insert as
external name %Assembly.GeneratedName%.
go


create trigger TD_UZSAKYMAS on UZSAKYMAS for delete as
begin
    declare
       @numrows  int,
       @errno    int,
       @errmsg   varchar(255)

    select  @numrows = @@rowcount
    if @numrows = 0
       return

    /*  Delete all children in "PASIRINKTOS_DETALES"  */
    delete PASIRINKTOS_DETALES
    from   PASIRINKTOS_DETALES t2, deleted t1
    where  t2.UZSAKYMO_NR = t1.UZSAKYMO_NR


    return

/*  Errors handling  */
error:
    raiserror @errno @errmsg
    rollback  transaction
end
go


create trigger TI_UZSAKYMAS on UZSAKYMAS for insert as
begin
    declare
       @numrows  int,
       @numnull  int,
       @errno    int,
       @errmsg   varchar(255)

    select  @numrows = @@rowcount
    if @numrows = 0
       return

    /*  Parent "PIRKEJAS" must exist when inserting a child in "UZSAKYMAS"  */
    if update(REGISTRACIJOS_NR)
    begin
       if (select count(*)
           from   PIRKEJAS t1, inserted t2
           where  t1.REGISTRACIJOS_NR = t2.REGISTRACIJOS_NR) != @numrows
          begin
             select @errno  = 50002,
                    @errmsg = 'Parent does not exist in "PIRKEJAS". Cannot create child in "UZSAKYMAS".'
             goto error
          end
    end
    /*  Parent "SURINKEJAS" must exist when inserting a child in "UZSAKYMAS"  */
    if update(SURINKEJO_NR)
    begin
       if (select count(*)
           from   SURINKEJAS t1, inserted t2
           where  t1.SURINKEJO_NR = t2.SURINKEJO_NR) != @numrows
          begin
             select @errno  = 50002,
                    @errmsg = 'Parent does not exist in "SURINKEJAS". Cannot create child in "UZSAKYMAS".'
             goto error
          end
    end
    /*  Parent "KURJERIS" must exist when inserting a child in "UZSAKYMAS"  */
    if update(KURJERIO_NR)
    begin
       if (select count(*)
           from   KURJERIS t1, inserted t2
           where  t1.KURJERIO_NR = t2.KURJERIO_NR) != @numrows
          begin
             select @errno  = 50002,
                    @errmsg = 'Parent does not exist in "KURJERIS". Cannot create child in "UZSAKYMAS".'
             goto error
          end
    end

    return

/*  Errors handling  */
error:
    raiserror @errno @errmsg
    rollback  transaction
end
go


create trigger TU_UZSAKYMAS on UZSAKYMAS for update as
begin
   declare
      @ins_UZSAKYMO_NR numeric(5),
      @del_UZSAKYMO_NR numeric(5),
      @numrows  int,
      @numnull  int,
      @errno    int,
      @errmsg   varchar(255)

      select  @numrows = @@rowcount
      if @numrows = 0
         return

      /*  Parent "PIRKEJAS" must exist when updating a child in "UZSAKYMAS"  */
      if update(REGISTRACIJOS_NR)
      begin
         if (select count(*)
             from   PIRKEJAS t1, inserted t2
             where  t1.REGISTRACIJOS_NR = t2.REGISTRACIJOS_NR) != @numrows
            begin
               select @errno  = 50003,
                      @errmsg = 'PIRKEJAS" does not exist. Cannot modify child in "UZSAKYMAS".'
               goto error
            end
      end
      /*  Parent "SURINKEJAS" must exist when updating a child in "UZSAKYMAS"  */
      if update(SURINKEJO_NR)
      begin
         if (select count(*)
             from   SURINKEJAS t1, inserted t2
             where  t1.SURINKEJO_NR = t2.SURINKEJO_NR) != @numrows
            begin
               select @errno  = 50003,
                      @errmsg = 'SURINKEJAS" does not exist. Cannot modify child in "UZSAKYMAS".'
               goto error
            end
      end
      /*  Parent "KURJERIS" must exist when updating a child in "UZSAKYMAS"  */
      if update(KURJERIO_NR)
      begin
         if (select count(*)
             from   KURJERIS t1, inserted t2
             where  t1.KURJERIO_NR = t2.KURJERIO_NR) != @numrows
            begin
               select @errno  = 50003,
                      @errmsg = 'KURJERIS" does not exist. Cannot modify child in "UZSAKYMAS".'
               goto error
            end
      end
      declare cIns cursor local for select 
              UZSAKYMO_NR
          from inserted
      declare cDel cursor local for select 
              UZSAKYMO_NR
          from deleted

      /*  Modify parent code of "UZSAKYMAS" for all children in "PASIRINKTOS_DETALES"  */
      if update(UZSAKYMO_NR)
      begin
         if @@rowcount = 1
            update PASIRINKTOS_DETALES
               set   UZSAKYMO_NR = i1.UZSAKYMO_NR
            from   PASIRINKTOS_DETALES t2, inserted i1, deleted d1
               where  t2.UZSAKYMO_NR = d1.UZSAKYMO_NR
                and  (i1.UZSAKYMO_NR != d1.UZSAKYMO_NR)
         else
         begin
            open cIns
            open cDel
            fetch cIns into @ins_UZSAKYMO_NR
            fetch cDel into @del_UZSAKYMO_NR

            while (@@fetch_status = 0)
            begin
               update PASIRINKTOS_DETALES
                  set   UZSAKYMO_NR = @ins_UZSAKYMO_NR
               where  UZSAKYMO_NR = @del_UZSAKYMO_NR
               fetch cIns into @ins_UZSAKYMO_NR
               fetch cDel into @del_UZSAKYMO_NR
            end
            close cIns
            close cDel
         end
      end

      return

/*  Errors handling  */
error:
    raiserror @errno @errmsg
    rollback  transaction
end
go

