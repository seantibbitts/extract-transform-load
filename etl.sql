create database gun_db;

use gun_db;

drop table if exists gun_violence;
drop table if exists rep_gun_donations;
drop table if exists rep_district;

create table gun_violence (
	incident_id int primary key,
	incident_date date,
 	state varchar(50),
    state_abbr varchar(10),
 	city_or_county varchar(50),
 	address text,
 	n_killed int,
 	n_injured int,
 	incident_url text,
 	source_url text,
 	incident_url_fields_missing boolean,
 	congressional_district int,
 	gun_stolen text,
 	gun_type text,
 	incident_characteristics text,
 	latitude decimal(7,4),
 	location_description text,
 	longitude decimal(8,4),
 	n_guns_involved int,
 	notes text,
 	participant_age text,
 	participant_age_group text,
 	participant_gender text,
 	participant_name text,
 	participant_relationship text,
 	participant_status text,
 	participant_type text,
 	sources text,
 	state_house_district int,
 	state_senate_district int
);

create table rep_gun_donations (
	rep_id int primary key,
	rep_last_name varchar(50),
	rep_first_name varchar(50),
	rep_party varchar(10),
    rep_state varchar(10),
	Amount float
);

create table rep_district (	
	rep_id int,
	state_abbr varchar(10),
	congressional_district int,
	rep_first_name varchar(50),
	rep_last_name varchar(50),
	primary key (state_abbr, congressional_district)
);