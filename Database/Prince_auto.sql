create database prince_auto_SAV

use prince_auto_SAV

---------------------------------------
create table vehicule
(
num_chassie varchar (50) not null primary key,
matricule varchar(20) not null,
marque varchar(20) not null,
modéle varchar(20) not null,
date_v date not null

)


----------------------------------------
create table client
(
code int not null primary key, 
nom varchar (50) not null,
prenom varchar (20) not null,
civilité varchar(20) ,
ville varchar(20),
c_p varchar(30),
tele1 varchar (15) ,
email varchar(20),
tele2 varchar (15) ,
)

---------------------------------------
create table servise_av
(
id int  not null,
code int not null,
num_chassie varchar(50),
commentaire varchar (200),
date_rdv date,
heure varchar(5),

) 
create table cnt
(
login_1 varchar(20),
pass varchar(40)

)
------------------------------------------------------------------

 create proc cnx @a varchar(50), @b varchar(50)
 as begin 
 
 select login_1,pass from cnt 
 where login_1=@a
 and pass=@b
 end
---------------------------------------------
select * from cnt


------------------------------------------------Client----------------------------------------------------------------
create proc aa 
as begin 
select nom from client
end
----------------------------------

alter proc  da 
as begin
select Code_Client,Nom,Prenom,Civilité,Ville,C_P,Email,Tele1,Tele2,Domicile from client 

end 
---------------------------------------------
alter proc x1 @a varchar(50)
as begin

select Code_Client,Nom,Prenom,Civilité,Ville,C_P,Email,Tele1,Tele2,Domicile from client where Nom=@a

end 
-----------------------------------------------
alter proc x2 @a varchar(50)
as begin

select Code_Client,Nom,Prenom,Civilité,Ville,C_P,Email,Tele1,Tele2,Domicile from client where Prenom=@a

end 
--------------------------------------------------
alter proc x3 @a varchar(50)
as begin

select Code_Client,Nom,Prenom,Civilité,Ville,C_P,Email,Tele1,Tele2,Domicile from client where Code_Client=@a

end
-------------------------------------------


create proc x4 @a varchar(50)
as begin 

delete from client where Code_Client=@a

end
---------------------------------------------
alter proc z7 @a varchar(50),@b varchar(50),@c varchar(50),@d varchar(50),@e varchar(50),@f varchar(50),@g varchar(50),@h varchar(50),@i varchar(50),@j varchar(50)
 as begin 
 
 update client
 
 set  nom=@b,Prenom=@c,Civilité=@d,Ville=@e,C_P=@f,Email=@g,Tele1=@h,Tele2=@i,Domicile=@j
 where Code_Client=@a
 
 end
 ---------------------------------------------------
 
create proc sendd @a varchar(50)
as begin

select Code_Client,Nom,Prenom,Civilité,Ville,C_P,Email,Tele1,Tele2,Domicile from client where Code_Client=@a

end
----------------------------------------------------

alter proc cl @a varchar(50),@b varchar(50),@c varchar(50),@d varchar(50),@e varchar(50),@f varchar(50),@g varchar(50),@h varchar(50),@i varchar(50),@j varchar(50)
as begin 

insert into client values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j)

end
--------------------------------------------------------
alter proc clr @a varchar(50)
as begin 
select prenom,Code_Client,civilité,Ville,C_P,Email,Tele1 from client
 where Nom=@a
end

-------------------------------------------------------RDV---------------------------------------------------------


alter proc z 
 as begin 
 
 select s.id_RDV,s.code_Client,c.Nom,s.num_chassie,v.marque,s.date_rdv,s.heure,s.compagnon,s.date_restitution,s.heure_resrestitution,s.duree_intervention,s.commentaire from servise_av s , client c,vehicule v where c.Code_Client=s.code_Client and s.num_chassie=v.num_chassie
 
 end
 -------------------------------------
 create proc z1 @a int
 as begin 
 delete from servise_av  where id_RDV=@a
 
 
 end
 -----------------------------------
alter proc z3 @a varchar(50)
 as begin 
 
 select s.id_RDV,s.code_Client,c.Nom,s.num_chassie,v.marque,s.date_rdv,s.heure,s.compagnon,s.date_restitution,s.heure_resrestitution,s.duree_intervention,s.commentaire from servise_av s , client c,vehicule v where c.Code_Client=s.code_Client and s.num_chassie=v.num_chassie
 and s.id_RDV=@a
 
 end
 -----------------------------------
  alter proc z4 @a varchar(50)
 as begin 
 
 select s.id_RDV,s.code_Client,c.Nom,s.num_chassie,v.marque,s.date_rdv,s.heure,s.compagnon,s.date_restitution,s.heure_resrestitution,s.duree_intervention,s.commentaire from servise_av s , client c,vehicule v where c.Code_Client=s.code_Client and s.num_chassie=v.num_chassie
 and s.num_chassie=@a
 
 end
 -------------------------------------
  alter proc z5 @a varchar(50)
 as begin 
 
 select s.id_RDV,s.code_Client,c.Nom,s.num_chassie,v.marque,s.date_rdv,s.heure,s.compagnon,s.date_restitution,s.heure_resrestitution,s.duree_intervention,s.commentaire from servise_av s , client c,vehicule v where c.Code_Client=s.code_Client and s.num_chassie=v.num_chassie
 and c.Nom=@a
 
 end
 --------------------------------------
   alter proc z6 @a varchar(20)
 as begin 
 
 select s.id_RDV,s.code_Client,c.Nom,s.num_chassie,v.marque,s.date_rdv,s.heure,s.compagnon,s.date_restitution,s.heure_resrestitution,s.duree_intervention,s.commentaire from servise_av s , client c,vehicule v where c.Code_Client=s.code_Client and s.num_chassie=v.num_chassie and v.marque=@a
 
 end
 ---------------------------------------------------
create proc r1 @a varchar(50),@b varchar(50),@c varchar(50),@d varchar(50),@e varchar(50),@f varchar(50),@g varchar(50),@h varchar(50),@i varchar(50),@j varchar(50)
as begin 

select s.id_RDV,s.code_Client,c.Nom,s.num_chassie,v.marque,s.date_rdv,s.heure,s.compagnon,s.date_restitution,s.heure_resrestitution,s.duree_intervention,s.commentaire from servise_av s , client c,vehicule v 
where c.Code_Client=s.code_Client
 and s.num_chassie=v.num_chassie 
and v.marque=@a


end
----------------------------------------------------
create proc r2 @a varchar(50),@b varchar(50),@c varchar(50),@d varchar(200),@e date,@f varchar(5),@g varchar(50),@h date,@i varchar(5),@j varchar(50)
as begin 

insert into servise_av values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j)

end
-------------------------------------------------------------
create proc r3 @a varchar(50),@b varchar(50),@c varchar(50),@d varchar(200),@e date,@f varchar(5),@g varchar(50),@h date,@i varchar(5),@j varchar(50)
as begin 

update servise_av
set code_Client=@b,num_chassie=@c,commentaire=@d,date_rdv=@e,heure=@f,compagnon=@g,date_restitution=@h,heure_resrestitution=@i,duree_intervention=@j
where id_RDV=@a

end
---------------------------------------------------------------
alter proc z4 @a varchar(50)
as begin

select s.id_RDV,c.Nom,s.num_chassie,s.date_rdv,s.heure,s.compagnon,s.date_restitution,s.heure_resrestitution,s.duree_intervention,s.commentaire from servise_av s , client c,vehicule v 
where c.Code_Client=s.code_Client
 and s.num_chassie=v.num_chassie 
and id_RDV=@a

end
----------------------------------------------------------------
create proc auj @a date
 as begin 
 
 select s.id_RDV,s.code_Client,c.Nom,s.num_chassie,v.marque,s.date_rdv,s.heure,s.compagnon,s.date_restitution,s.heure_resrestitution,s.duree_intervention,s.commentaire from servise_av s , client c,vehicule v where c.Code_Client=s.code_Client and s.num_chassie=v.num_chassie
 and s.date_rdv=@a
 end
 --------------------------------------
 create proc re 
 as begin 
 select count(id_RDV) from servise_av
 end
 ---------------------------------------
 create proc z100 @a varchar(50)
 as begin 
 
 select s.id_RDV,c.Nom,s.num_chassie,s.date_rdv,s.heure,s.compagnon,s.date_restitution,s.heure_resrestitution,s.duree_intervention,s.commentaire from servise_av s , client c,vehicule v where c.Code_Client=s.code_Client and s.num_chassie=v.num_chassie
 and s.id_RDV=@a
 
 end
----------------------------------------------------VEHICULE---------------------------------------------------------------
create proc xx 
as begin 
select num_chassie from vehicule
end
---------------------------------------
alter proc v1 @a varchar(100)
as begin 

select immatriculation,Vin,marque,modéle,date_v,Kilométrage from vehicule 
where num_chassie=@a

end
----------------------------------------
create proc v2 @a varchar(50),@b varchar(50) , @c varchar(50),@d varchar(50), @e varchar(50),@f varchar(50),@g int
as begin 

insert into vehicule values(@a,@b,@c,@d,@e,@f,@g)

end
-----------------------------------------
create proc v3 @a varchar(50)
as begin 

delete from vehicule where num_chassie=@a

end
--------------------------------------------
create proc aff 
as begin 
select num_chassie,immatriculation,Vin,modéle,date_v,Kilométrage from vehicule where  marque='audi' and marque='Audi'
end
--------------------------------------------
create proc v4 @a varchar(50)
as begin 
select num_chassie,immatriculation,Vin,modéle,date_v,Kilométrage from vehicule 
where  marque='audi' and marque='Audi'
and num_chassie=@a
end
--------------------------------------------
create proc v5 @a varchar(50)
as begin 
select num_chassie,immatriculation,Vin,modéle,date_v,Kilométrage from vehicule 
where  marque='audi' and marque='Audi'
and immatriculation=@a
end
-------------------------------------------
create proc v6 @a varchar(50)
as begin 
select num_chassie,immatriculation,Vin,modéle,date_v,Kilométrage from vehicule 
where  marque='audi' and marque='Audi'
and modéle=@a
end 
-----------------------------------------
create proc s 
as begin 
select num_chassie,immatriculation,Vin,modéle,date_v,Kilométrage,marque from vehicule where  marque='skoda' and marque='Skoda'
end
------------------------------------------
create proc s1 @a varchar(50)
as begin 
select num_chassie,immatriculation,Vin,modéle,date_v,Kilométrage from vehicule 
where  marque='skoda' and marque='Skoda'
and num_chassie=@a
end
--------------------------------------------
create proc s11 @a varchar(50)
as begin 
select num_chassie,immatriculation,Vin,modéle,date_v,Kilométrage from vehicule 
where  marque='skoda' and marque='Skoda'
and immatriculation=@a
end
-------------------------------------------
create proc s111 @a varchar(50)
as begin 
select num_chassie,immatriculation,Vin,modéle,date_v,Kilométrage from vehicule 
where  marque='skoda' and marque='Skoda'
and modéle=@a
end
----------------------------------------------
create proc vo 
as begin 
select num_chassie,immatriculation,Vin,modéle,date_v,Kilométrage,marque from vehicule where  marque='volkswagen' and marque='Volkswagen'
end
------------------------------------------
create proc vo1 @a varchar(50)
as begin 
select num_chassie,immatriculation,Vin,modéle,date_v,Kilométrage from vehicule 
where  marque='volkswagen' and marque='Volkswagen'
and num_chassie=@a
end
--------------------------------------------
create proc vo2 @a varchar(50)
as begin 
select num_chassie,immatriculation,Vin,modéle,date_v,Kilométrage from vehicule 
where  marque='volkswagen' and marque='Volkswagen'
and immatriculation=@a
end
-------------------------------------------
create proc vo3 @a varchar(50)
as begin 
select num_chassie,immatriculation,Vin,modéle,date_v,Kilométrage,marque from vehicule 
where  marque='volkswagen' and marque='Volkswagen'
and modéle=@a
end
-------------------------------------------
create proc s10 @a varchar(50)
as begin 

delete  from vehicule where num_chassie=@a

end
-------------------------------------------
create proc s12 @a varchar(50)
as begin 
select num_chassie,immatriculation,Vin,marque,modéle,date_v,Kilométrage from vehicule
where num_chassie=@a

end
------------------------------------------
create proc s13 @a varchar(50),@b varchar(50) , @c varchar(50),@d varchar(50), @e varchar(50),@f varchar(50),@g int
as begin 

update vehicule
set immatriculation=@b,Vin=@c,marque=@d,Modéle=@e,date_v=@f,Kilométrage=@g
where num_chassie=@a

end


select * from cnt