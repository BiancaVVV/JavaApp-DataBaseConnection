
/*creare tabele + modificari, adaugare constrangeri*/

CREATE TABLE "parfum_categorie"(
    "id" BIGINT NOT NULL,
    "idProdus" BIGINT NOT NULL,
    "idCategorie" BIGINT NOT NULL
);
ALTER TABLE
    "parfum_categorie" ADD PRIMARY KEY("id");
ALTER TABLE
    "parfum_categorie" ADD CONSTRAINT "parfum_categorie_idprodus_unique" UNIQUE("idProdus");
ALTER TABLE
    "parfum_categorie" ADD CONSTRAINT "parfum_categorie_idcategorie_unique" UNIQUE("idCategorie");
CREATE TABLE "categorie"(
    "id" BIGINT NOT NULL,
    "nume" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "categorie" ADD PRIMARY KEY("id");
CREATE TABLE "recenzie"(
    "id" BIGINT NOT NULL,
    "id_client" BIGINT NOT NULL,
    "rating" BIGINT NOT NULL,
    "id_parfum" BIGINT NOT NULL
);
ALTER TABLE
    "recenzie" ADD PRIMARY KEY("id");
ALTER TABLE
    "recenzie" ADD CONSTRAINT "recenzie_id_client_unique" UNIQUE("id_client");
ALTER TABLE
    "recenzie" ADD CONSTRAINT "recenzie_id_parfum_unique" UNIQUE("id_parfum");
CREATE TABLE "parfum"(
    "cod" BIGINT NOT NULL,
    "idcategorie" BIGINT NOT NULL,
    "denumire" VARCHAR(255) NOT NULL,
    "id_producator" BIGINT NOT NULL
);
ALTER TABLE
    "parfum" ADD PRIMARY KEY("cod");
ALTER TABLE
    "parfum" ADD CONSTRAINT "parfum_idcategorie_unique" UNIQUE("idcategorie");
ALTER TABLE
    "parfum" ADD CONSTRAINT "parfum_id_producator_unique" UNIQUE("id_producator");
CREATE TABLE "factura"(
    "NrFactura" BIGINT NOT NULL,
    "Data" VARCHAR(255) NOT NULL,
    "id_angajat" BIGINT NOT NULL,
    "id_client" BIGINT NOT NULL
);
ALTER TABLE
    "factura" ADD PRIMARY KEY("NrFactura");
ALTER TABLE
    "factura" ADD CONSTRAINT "factura_id_angajat_unique" UNIQUE("id_angajat");
ALTER TABLE
    "factura" ADD CONSTRAINT "factura_id_client_unique" UNIQUE("id_client");
CREATE TABLE "producator"(
    "id" BIGINT NOT NULL,
    "denumire" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "producator" ADD PRIMARY KEY("id");
CREATE TABLE "produs_factura"(
    "id" BIGINT NOT NULL,
    "idProdus" BIGINT NOT NULL,
    "codFactura" BIGINT NOT NULL
);
ALTER TABLE
    "produs_factura" ADD PRIMARY KEY("id");
ALTER TABLE
    "produs_factura" ADD CONSTRAINT "produs_factura_idprodus_unique" UNIQUE("idProdus");
ALTER TABLE
    "produs_factura" ADD CONSTRAINT "produs_factura_codfactura_unique" UNIQUE("codFactura");
CREATE TABLE "client"(
    "id" BIGINT NOT NULL,
    "Nume" VARCHAR(255) NOT NULL,
    "Prenume" VARCHAR(255) NOT NULL,
    "Adresa" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "client" ADD PRIMARY KEY("id");
CREATE TABLE "angajat"(
    "id" BIGINT NOT NULL,
    "nume" VARCHAR(255) NOT NULL,
    "prenume" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "angajat" ADD PRIMARY KEY("id");
ALTER TABLE
    "produs_factura" ADD CONSTRAINT "produs_factura_codfactura_foreign" FOREIGN KEY("codFactura") REFERENCES "factura"("NrFactura");
ALTER TABLE
    "produs_factura" ADD CONSTRAINT "produs_factura_idprodus_foreign" FOREIGN KEY("idProdus") REFERENCES "parfum"("cod");
ALTER TABLE
    "factura" ADD CONSTRAINT "factura_id_angajat_foreign" FOREIGN KEY("id_angajat") REFERENCES "angajat"("id");
ALTER TABLE
    "parfum_categorie" ADD CONSTRAINT "parfum_categorie_idcategorie_foreign" FOREIGN KEY("idCategorie") REFERENCES "categorie"("id");
ALTER TABLE
    "parfum" ADD CONSTRAINT "parfum_id_producator_foreign" FOREIGN KEY("id_producator") REFERENCES "producator"("id");
ALTER TABLE
    "recenzie" ADD CONSTRAINT "recenzie_id_client_foreign" FOREIGN KEY("id_client") REFERENCES "client"("id");
ALTER TABLE
    "recenzie" ADD CONSTRAINT "recenzie_id_parfum_foreign" FOREIGN KEY("id_parfum") REFERENCES "parfum"("cod");
ALTER TABLE
    "factura" ADD CONSTRAINT "factura_id_client_foreign" FOREIGN KEY("id_client") REFERENCES "client"("id");
ALTER TABLE
    "parfum_categorie" ADD CONSTRAINT "parfum_categorie_idprodus_foreign" FOREIGN KEY("idProdus") REFERENCES "parfum"("cod");





/*inserari*/
insert into angajat values (
1234,
'Popescu',
'Ion'
);

insert into angajat values (
1235,
'Marinescu',
'Alexandra'
);

insert into angajat values (
1236,
'Andronache',
'Claudia'
);
insert into angajat values (
1237,
'Alexandru',
'Maria'
);

insert into angajat values (
1238,
'Amza',
'Andrei'
);



insert into categorie values (
1331,
'floral'
);

insert into categorie values (
1332,
'fructat'
);

insert into categorie values (
1333,
'oriental'
);

insert into categorie values (
1334,
'lemnos'
);

insert into categorie values (
1335,
'citric'
);

insert into client values (
1221,
'Popescu',
'Adina',
'Strada Florilor Bucuresti'
);

insert into client values (
1222,
'Popescu',
'Marcel',
'Strada Eroilor Pitesti'
);


insert into client values (
1223,
'Iovan',
'Valentina',
'Strada Eroilor Arges'
);

insert into client values (
1224,
'Ivanescu',
'Andrei',
'Strada 12 Craiova'
);

insert into client values (
1225,
'Basarab',
'Ioana',
'Strada Petuniilor Craiova'
);

insert into factura values (
1661,
'21.03.2022',
1237,
1225
);

insert into factura values (
1662,
'21.05.2022',
1238,
1223
);
insert into factura values (
1666,
1238,
1225,
'2023-12-12'
);

insert into factura values (
1663,
'28.01.2023',
1235,
1222
);

insert into factura values (
1664,
'21.09.2023',
1234,
1221
);

insert into factura values (
1665,
'10.06.2023',
1236,
1224
);

insert into producator values (
8880,
'Victoria Secret'
);

insert into producator values (
8881,
'Coco Chanel'
);

insert into producator values (
8882,
'Oriental Dream'
);


insert into producator values (
8883,
'Givenchy'
);

insert into producator values (
8884,
'Dolce&Gabbana'
);

insert into parfum values (
9990,
1331,
'Bare Vanilla',
8880
);

insert into parfum values (
9991,
1334,
'Coco Mademoiselle',
8881
);


insert into parfum values (
9992,
1333,
'Damask',
8882
);

insert into parfum values (
9993,
1335,
'Interdit',
8883
);

insert into parfum values (
9994,
1332,
'Devotion',
8884
);


insert into recenzie values (
6660,
1221,
5,
9990
);

insert into recenzie values (
6661,
1222,
4,
9991
);


insert into recenzie values (
6662,
1223,
5,
9992
);

insert into recenzie values (
6663,
1224,
3,
9993
);


insert into recenzie values (
6664,
1225,
4,
9994
);
/*operatii*/

delete from angajat where id='1237';
delete from categorie where id='1335';
delete from factura where id_angajat='1237';
update angajat set prenume='Ana' where id=1234;
update recenzie set rating=3 where id=6661;
update recenzie set rating=5 where id=6664;
update recenzie set rating=3 where rating=(select max(rating) from recenzie);
update recenzie set rating=4 where rating=(select min(rating) from recenzie);
update recenzie set rating=5 where id_parfum=(select cod from parfum where denumire='Bare Vanilla');


/*a-inner join/outer join*/
select denumire from (parfum INNER JOIN categorie on idcategorie=id)
where idcategorie=1334;
select idcategorie from (parfum INNER JOIN producator on id_producator=id)
where id_producator=8884;
select cod from (parfum INNER JOIN producator on id_producator=id)
where id_producator=8883;
select parfum.cod,parfum.denumire from (parfum left OUTER JOIN categorie on parfum.idcategorie=categorie.id)
where parfum.idcategorie=1333;

/*b-agregare si group*/
select count(*) from parfum ;
select avg(rating) as medie from recenzie group by id;
select min(rating) as minim from recenzie;
select nume from categorie where length(nume)>6;

SELECT id_angajat, COUNT("NrFactura") AS Numar_Facturi
FROM factura GROUP BY id_angajat;

/*c-(IN , ANY, Exists,*/
select * from parfum as p
where exists (select  from categorie
			 where p.idcategorie=1334)
			 and
			 exists
			 (select  from producator where
			 p.id_producator=8881);




       select * from factura as f
       where exists (select  from angajat
       			 where f.id_angajat=1235)
       			 and
       			 exists
       			 (select  from client where
       			 f.id_client=1222);



             select * from recenzie as r
              where exists (select  from client
              			 where r.id_client=1223)
              			 and
              			 exists
              			 (select  from parfum where
              			 r.id_parfum=9992);



                     select cod from parfum
         where cod =any(select id_parfum from recenzie where rating=5);

         select * from parfum
 where cod =any(select id_parfum from recenzie where rating>2)
 and id_producator=any(select id from producator where denumire='Victoria Secret');
 ;



 d
 select denumire from parfum where length(denumire)>7;
 select upper(denumire) from parfum where length(denumire)>7;
 SELECT
     *,
     CASE
         WHEN rating =5 THEN 'High'
         WHEN rating =3 THEN 'Medium'
         ELSE 'Low'
     END AS RatingCategory
 FROM
     recenzie;


     SELECT
       "Id_programare",
       "Data",
       TO_CHAR("Data", 'DD-MM-YYYY') AS "Data_Formatata",
       EXTRACT(YEAR FROM "Data") AS "Anul"
     FROM
       "Programare";

       SELECT
         "NrFactura",
         "Data_factura",
         EXTRACT(DAY FROM AGE("Data_factura", CURRENT_DATE)) AS "Diferenta_in_Zile"
       FROM
         factura;


     vederi
1.     create view floralv as
select * from parfum
where idcategorie=1333

select * from floralv


2. create view facturav as
select * from factura
where id_angajat=1238

select * from facturav


3. create view ratingv as
SELECT
    *
FROM
    recenzie
ORDER BY
    rating ASC;
select * from ratingv


--operatie permisa pe o vedere---
create view producatorparfum as
select id,denumire
from producator

insert into producatorparfum values(8885,'Gucci');

--operatie nepermisa---
create view angajatv as
  select id,nume,prenume from angajat

insert into angajatv(1239,'Marinescu','Ion')


  --creare index--
  CREATE INDEX idx_id_nume
ON categorie (id, nume);
-- Testarea indexului
EXPLAIN
SELECT *
FROM categorie
WHERE id = 1331 AND nume = 'floral';
