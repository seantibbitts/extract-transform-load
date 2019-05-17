create database gun_db;

use gun_db;

create table gun_violence (
	incident_id int primary key,
	incident_date date,
 	state varchar(50),
 	city_or_county varchar(50),
 	address varchar(255),
 	n_killed int,
 	n_injured int,
 	incident_url varchar(255),
 	source_url varchar(255),
 	incident_url_fields_missing boolean,
 	congressional_district int,
 	gun_stolen varchar(255),
 	gun_type varchar(255),
 	incident_characteristics varchar(1000),
 	latitude decimal(7,4),
 	location_description varchar(255),
 	longitude decimal(8,4),
 	n_guns_involved int,
 	notes varchar(1000),
 	participant_age varchar(255),
 	participant_age_group varchar(255),
 	participant_gender varchar(255),
 	participant_name varchar(255),
 	participant_relationship varchar(255),
 	participant_status varchar(255),
 	participant_type varchar(255),
 	sources varchar(1000),
 	state_house_district int,
 	state_senate_district int
);

create table rep_gun_donations (
	rep_id int primary key,
	rep_last_name varchar(50),
	rep_first_name varchar(50),
	rep_party varchar(10),
	Amount float
);

create table rep_district (
	rep_id int,
	state_abbr varchar(10),
	congressional_district int,
	rep_first_name varchar(50),
	rep_last_name varchar(50),
	primary key (state_abbr, congressional_district),
	foreign key (rep_id) references rep_gun_donations(rep_id)
);