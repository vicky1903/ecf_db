---inserer les technos
insert into t_technos (cd_techno, nom_fr, nom_en) values
    ('CD_01', 'java', 'java'), 
    ('CD_02', 'JS', 'JS'),
    ('CD_03', 'Python', 'Python'), 
    ('CD_04', 'SQL', 'SQL');
    
--insertion des devs
insert into t_devs (nom_dev, prenom, date_naissance, date_entree, matricule, techno_prefere) values
--creation du 1er dev
	('nom A', 'prenom A', TO_DATE('24/09/1999','DD/MM/YYYY'), TO_DATE('23/09/2002','DD/MM/YYYY'), 'az02756', (
		select t.id_techno from t_technos t where t.cd_techno = 'CD_01')),
--creation du 2er dev
        ('nom B', 'prenom B', TO_DATE('24/09/2002','DD/MM/YYYY'), TO_DATE('23/09/2004','DD/MM/YYYY'), 'az03589', (
		select t.id_techno from t_technos t where t.cd_techno = 'CD_02')),
--creation du 3er dev        
        ('nom C', 'prenom C', TO_DATE('24/09/1995','DD/MM/YYYY'), TO_DATE('23/09/2005','DD/MM/YYYY'), 'az02987', (
		select t.id_techno from t_technos t where t.cd_techno = 'CD_03'));

--insere les appentissage pour chaque dev
insert into apprendre (id_dev, id_techno) values 
	((select d.id_dev from t_devs d where d.matricule = 'az02756'), (select t.id_techno from t_technos t where t.cd_techno = 'CD_02')),
        ((select d.id_dev from t_devs d where d.matricule = 'az02756'), (select t.id_techno from t_technos t where t.cd_techno = 'CD_03')),
        ((select d.id_dev from t_devs d where d.matricule = 'az02987'), (select t.id_techno from t_technos t where t.cd_techno = 'CD_02')),
        ((select d.id_dev from t_devs d where d.matricule = 'az02987'), (select t.id_techno from t_technos t where t.cd_techno = 'CD_01')),
        ((select d.id_dev from t_devs d where d.matricule = 'az02987'), (select t.id_techno from t_technos t where t.cd_techno = 'CD_04'));