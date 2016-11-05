CREATE TABLE shopdb.users
(
    user_id MEDIUMINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(20) DEFAULT '' NOT NULL,
    user_lastname VARCHAR(20) DEFAULT '' NOT NULL,
    user_email VARCHAR(20) NOT NULL,
    user_password VARCHAR(20) NOT NULL,
    user_country VARCHAR(20) DEFAULT 'Russia' NOT NULL,
    user_gender VARCHAR(1) NOT NULL,
    user_phone BIGINT,
    user_regdata DATE NOT NULL
);