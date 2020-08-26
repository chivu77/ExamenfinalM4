create table "GREETING"(
GREETINGID INTEGER PRIMARY KEY,
"DESCRIPTION" VARCHAR(255),
"PRICE" INTEGER,
TYPEID INTEGER,
CATEGORYID INTEGER
);

ALTER TABLE "GREETING"
ADD FOREIGN KEY (TYPEID) REFERENCES "TYPE"(TYPEID);

ALTER TABLE "GREETING"
ADD FOREIGN KEY (CATEGORYID) REFERENCES "CATEGORY"(CATEGORYID);


create table "CATEGORY"(
CATEGORYID INTEGER PRIMARY KEY,
NAMECATEGORY VARCHAR(255)
);

create table "TYPE"(
"TYPEID" INTEGER PRIMARY KEY,
"TYPENAME" VARCHAR(255)
);


insert into "TYPE"(TYPEID, TYPENAME) values (1, 'FIZICA');
insert into "TYPE"(TYPEID, TYPENAME) values (2, 'ELECTRONICA');

insert into "CATEGORY" (CATEGORYID, NAMECATEGORY) values (1, 'Aniversare');
insert into "CATEGORY" (CATEGORYID, NAMECATEGORY) values (2, 'Craciun');
insert into "CATEGORY" (CATEGORYID, NAMECATEGORY) values (3, 'Paste');
insert into "CATEGORY" (CATEGORYID, NAMECATEGORY) values (4, 'Ziua mamei');
insert into "CATEGORY" (CATEGORYID, NAMECATEGORY) values (5, 'Absolvire');

insert into "GREETING" (GREETINGID, "DESCRIPTION",PRICE,typeid,categoryid) values (1, 'FELIC1',20,1,1);
insert into "GREETING" (GREETINGID, "DESCRIPTION",PRICE,typeid,categoryid) values (2, 'FELIC2',25,1,2);
insert into "GREETING" (GREETINGID, "DESCRIPTION",PRICE,typeid,categoryid) values (3, 'FELIC3',30,1,3);
insert into "GREETING" (GREETINGID, "DESCRIPTION",PRICE,typeid,categoryid) values (4, 'FELIC4',35,2,4);
insert into "GREETING" (GREETINGID, "DESCRIPTION",PRICE,typeid,categoryid) values (5, 'FELIC5',40,2,5);
insert into "GREETING" (GREETINGID, "DESCRIPTION",PRICE,typeid,categoryid) values (6, 'FELIC6',45,2,2);

