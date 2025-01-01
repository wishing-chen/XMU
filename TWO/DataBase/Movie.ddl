-- 生成者Oracle SQL Developer Data Modeler 17.2.0.188.1059
--   时间:        2024-05-19 21:11:31 CST
--   站点:      Oracle Database 12c
--   类型:      Oracle Database 12c



CREATE TABLE acted (
    film_title             VARCHAR2(50) NOT NULL,
    film_year_of_release   SMALLINT NOT NULL,
    actor_name             VARCHAR2(10) NOT NULL,
    actor_data_of_birth    DATE NOT NULL,
    role                   VARCHAR2(10)
);

ALTER TABLE acted
    ADD CONSTRAINT acted_pk PRIMARY KEY ( film_title,film_year_of_release,actor_name,actor_data_of_birth );

CREATE TABLE actor (
    name            VARCHAR2(10) NOT NULL,
    data_of_birth   DATE NOT NULL
);

ALTER TABLE actor ADD CONSTRAINT actor_pk PRIMARY KEY ( name,data_of_birth );

CREATE TABLE belong (
    genre_genre            VARCHAR2(10) NOT NULL,
    film_title             VARCHAR2(50) NOT NULL,
    film_year_of_release   SMALLINT NOT NULL
);

ALTER TABLE belong
    ADD CONSTRAINT belong_pk PRIMARY KEY ( genre_genre,film_title,film_year_of_release );

CREATE TABLE direct (
    film_title               VARCHAR2(50) NOT NULL,
    film_year_of_release     SMALLINT NOT NULL,
    director_name            VARCHAR2(10) NOT NULL,
    director_data_of_birth   DATE NOT NULL
);

ALTER TABLE direct
    ADD CONSTRAINT direct_pk PRIMARY KEY ( film_title,film_year_of_release,director_name,director_data_of_birth );

CREATE TABLE director (
    name            VARCHAR2(10) NOT NULL,
    data_of_birth   DATE NOT NULL
);

ALTER TABLE director ADD CONSTRAINT director_pk PRIMARY KEY ( name,data_of_birth );

CREATE TABLE film (
    title                     VARCHAR2(50) NOT NULL,
    year_of_release           SMALLINT NOT NULL,
    length                    NUMBER(3) NOT NULL,
    plot                      VARCHAR2(100) NOT NULL,
    production_company_name   VARCHAR2(20) NOT NULL
);

ALTER TABLE film ADD CONSTRAINT film_pk PRIMARY KEY ( title,year_of_release );

CREATE TABLE genre (
    genre   VARCHAR2(10) NOT NULL
);

ALTER TABLE genre ADD CONSTRAINT genre_pk PRIMARY KEY ( genre );

CREATE TABLE production_company (
    name      VARCHAR2(20) NOT NULL,
    address   VARCHAR2(50) NOT NULL
);

ALTER TABLE production_company ADD CONSTRAINT production_company_pk PRIMARY KEY ( name );

CREATE TABLE quote (
    quote                  VARCHAR2(50) NOT NULL,
    film_title             VARCHAR2(50) NOT NULL,
    film_year_of_release   SMALLINT NOT NULL,
    actor_name             VARCHAR2(10) NOT NULL,
    actor_data_of_birth    DATE NOT NULL
);

ALTER TABLE quote ADD CONSTRAINT quote_pk PRIMARY KEY ( quote );

ALTER TABLE acted
    ADD CONSTRAINT acted_actor_fk FOREIGN KEY ( actor_name,actor_data_of_birth )
        REFERENCES actor ( name,data_of_birth );

ALTER TABLE acted
    ADD CONSTRAINT acted_film_fk FOREIGN KEY ( film_title,film_year_of_release )
        REFERENCES film ( title,year_of_release );

ALTER TABLE belong
    ADD CONSTRAINT belong_film_fk FOREIGN KEY ( film_title,film_year_of_release )
        REFERENCES film ( title,year_of_release );

ALTER TABLE belong
    ADD CONSTRAINT belong_genre_fk FOREIGN KEY ( genre_genre )
        REFERENCES genre ( genre );

ALTER TABLE direct
    ADD CONSTRAINT direct_director_fk FOREIGN KEY ( director_name,director_data_of_birth )
        REFERENCES director ( name,data_of_birth );

ALTER TABLE direct
    ADD CONSTRAINT direct_film_fk FOREIGN KEY ( film_title,film_year_of_release )
        REFERENCES film ( title,year_of_release );

ALTER TABLE film
    ADD CONSTRAINT film_production_company_fk FOREIGN KEY ( production_company_name )
        REFERENCES production_company ( name );

ALTER TABLE quote
    ADD CONSTRAINT quote_actor_fk FOREIGN KEY ( actor_name,actor_data_of_birth )
        REFERENCES actor ( name,data_of_birth );

ALTER TABLE quote
    ADD CONSTRAINT quote_film_fk FOREIGN KEY ( film_title,film_year_of_release )
        REFERENCES film ( title,year_of_release );



-- Oracle SQL Developer Data Modeler 概要报告: 
-- 
-- CREATE TABLE                             9
-- CREATE INDEX                             0
-- ALTER TABLE                             18
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- TSDP POLICY                              0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
