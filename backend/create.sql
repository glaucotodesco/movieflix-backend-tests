create table tb_genre (id int8 generated by default as identity, name varchar(255), primary key (id));
create table tb_movie (id int8 generated by default as identity, img_url varchar(255), sub_title varchar(255), synoposis TEXT, title varchar(255), year int4, id_genre int8, primary key (id));
create table tb_review (id int8 generated by default as identity, text TEXT, movie_id int8, user_id int8, primary key (id));
create table tb_role (id int8 generated by default as identity, authority varchar(255), primary key (id));
create table tb_user (id int8 generated by default as identity, email varchar(255), name varchar(255), passaword varchar(255), role_id int8, primary key (id));
alter table if exists tb_user add constraint UK_4vih17mube9j7cqyjlfbcrk4m unique (email);
alter table if exists tb_movie add constraint FK2kyqa52dj9bx3bdq6xi7qpkqr foreign key (id_genre) references tb_genre;
alter table if exists tb_review add constraint FKmnmhbadmg8ugakn8q89rh5k3l foreign key (movie_id) references tb_movie;
alter table if exists tb_review add constraint FKqeh83gbufxg1ft0ubwn7w0tty foreign key (user_id) references tb_user;
alter table if exists tb_user add constraint FKrfmat6i7yc88kv6aqusrqiv6e foreign key (role_id) references tb_role;
