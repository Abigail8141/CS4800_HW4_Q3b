CREATE TABLE ADDRESS (
                address_ID INTEGER NOT NULL,
                number INTEGER NOT NULL,
                street_1 VARCHAR(100) NOT NULL,
                city VARCHAR(100) NOT NULL,
                street_2 VARCHAR(100),
                state VARCHAR(100) NOT NULL,
                telephone VARCHAR(10) NOT NULL,
                zip_code INTEGER NOT NULL,
                CONSTRAINT ADDRESS_pk PRIMARY KEY (address_ID)
);
COMMENT ON COLUMN ADDRESS.telephone IS 'Taking string as telephone';


CREATE TABLE MUSICIAN (
                ssn INTEGER NOT NULL,
                address_ID INTEGER NOT NULL,
                INSTRUMENT_name VARCHAR NOT NULL,
                name VARCHAR(100) NOT NULL,
                CONSTRAINT MUSICIAN_pk PRIMARY KEY (ssn, address_ID, INSTRUMENT_name)
);


CREATE TABLE ALBUM (
                album_ID INTEGER NOT NULL,
                ssn INTEGER NOT NULL,
                address_ID INTEGER NOT NULL,
                INSTRUMENT_name VARCHAR NOT NULL,
                title VARCHAR(100) NOT NULL,
                realease_date DATE NOT NULL,
                format VARCHAR NOT NULL,
                age INTEGER NOT NULL,
                CONSTRAINT ALBUM_pk PRIMARY KEY (album_ID, ssn, address_ID, INSTRUMENT_name)
);


CREATE TABLE SONG (
                title VARCHAR(100) NOT NULL,
                ssn INTEGER NOT NULL,
                address_ID INTEGER NOT NULL,
                INSTRUMENT_name VARCHAR NOT NULL,
                length VARCHAR(100) NOT NULL,
                CONSTRAINT SONG_pk PRIMARY KEY (title, ssn, address_ID, INSTRUMENT_name)
);


CREATE TABLE INSTRUMENT (
                name VARCHAR NOT NULL,
                title VARCHAR(100) NOT NULL,
                pitch VARCHAR(100) NOT NULL,
                CONSTRAINT INSTRUMENT_pk PRIMARY KEY (name, title)
);


ALTER TABLE MUSICIAN ADD CONSTRAINT ADDRESS_MUSICIAN_fk
FOREIGN KEY (address_ID)
REFERENCES ADDRESS (address_ID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE SONG ADD CONSTRAINT MUSICIAN_SONG_fk
FOREIGN KEY (INSTRUMENT_name, address_ID, ssn)
REFERENCES MUSICIAN (INSTRUMENT_name, address_ID, ssn)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE ALBUM ADD CONSTRAINT MUSICIAN_ALBUM_fk
FOREIGN KEY (INSTRUMENT_name, address_ID, ssn)
REFERENCES MUSICIAN (INSTRUMENT_name, address_ID, ssn)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE INSTRUMENT ADD CONSTRAINT SONG_INSTRUMENT_fk
FOREIGN KEY (title)
REFERENCES SONG (title)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE MUSICIAN ADD CONSTRAINT INSTRUMENT_MUSICIAN_fk
FOREIGN KEY (INSTRUMENT_name)
REFERENCES INSTRUMENT (name)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;