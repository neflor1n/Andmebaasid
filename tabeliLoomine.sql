create TABLE toiduained (
    toiduained_id int PRIMARY KEY AUTO_INCREMENT,
    toiduaine_nimi varchar(100));
   
CREATE table yhik (
  	yhik_id int PRIMARY KEY AUTO_INCREMENT,
    yhik_nimi varchar(100));
    
CREATE table koostis (
  	koostis_id int PRIMARY KEY AUTO_INCREMENT,
    kogus int,
    retsept_retsept_id int,
    toiduaine_id int,
    yhik_id int,
    foreign key (toiduaine_id) REFERENCES toiduained(toiduained_id),
    foreign key (yhik_id) REFERENCES yhik(yhik_id));


create table kasutaja (
  kasutaja_id int primary key auto_increment,
  eesnimi varchar(50),
  perenimi varchar(50),
  email varchar(150));


create table kategooria (
  kategooria_id int primary key auto_increment,
  kategooria_nimi varchar(50));


create table retsept(
  retsept_id int primary key auto_increment,
  retsepti_nimi varchar(100),
  kirjeldus varchar(200),
  juhendus text,
  sisestatud_kp date,
  kasutaja_id int,
  kategooria_id int,
  foreign key (kasutaja_id) references kasutaja(kasutaja_id)
  foreign key (kategooria_id) references kategooria(kategooria_id)
  alter table koostis add FOREIGN key (retsept_retsept_id) REFERENCES retsept(retsept_id)



create table tehtud (
    tehtud_id int PRIMARY KEY AUTO_INCREMENT,
    tehtud_kp date,
    retsept_id int,
    FOREIGN KEY (retsept_id) REFERENCES retsept(retsept_id));
