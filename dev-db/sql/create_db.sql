create user dev password 'dev';

create database dev with owner dev;

\c dev 

create extension if not exists "uuid-ossp";
