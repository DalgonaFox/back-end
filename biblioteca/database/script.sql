use biblioteca;

alter table usuario
add column senha int not null;

desc usuario;