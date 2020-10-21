--creer la table techno

CREATE TABLE t_technos (
    id_techno       SERIAL PRIMARY KEY,
    cd_techno       varchar(10) NOT NULL,
    nom_fr          varchar(255) NOT NULL,
    nom_en          varchar(255) NOT NULL
);

--creer la table dev

CREATE TABLE t_devs (
    id_dev          SERIAL PRIMARY KEY,
    nom_dev         varchar(255) NOT NULL,
    prenom          varchar(255) NOT NULL,
    date_naissance  date NOT NULL,
    date_entree     date NOT NULL,
    matricule       varchar(10) NOT NULL,
    techno_prefere  integer NOT NULL REFERENCES t_techno
);

--creer la table de jonction apprendre
CREATE TABLE apprendre (
    id_techno integer REFERENCES t_technos,
    id_dev integer REFERENCES t_devs
);