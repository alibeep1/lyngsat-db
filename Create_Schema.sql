-- CREATE DATABASE Lyngsat;
use Lyngsat;


CREATE TABLE `CHANNEL`(
	`Name`		VARCHAR(24)			NOT NULL PRIMARY KEY,
    Country		VARCHAR(24)			
	
);

CREATE TABLE NETWORK (
	`Name`			VARCHAR(24)			NOT NULL PRIMARY KEY,
     Website 		VARCHAR(30)			
);

CREATE TABLE `USER` (
	Email			VARCHAR(40)			NOT NULL PRIMARY KEY,
	Username 		VARCHAR(32)			NOT NULL,
    Gender			CHAR				NOT NULL,
    Birthdate		DATE				NOT NULL,
    Location		VARCHAR(30)			,
    Region			VARCHAR(24)			NOT NULL
);



CREATE TABLE SATELLITE (
	`Name`			VARCHAR(36)		NOT NULL PRIMARY KEY,
    Region			VARCHAR(12)		NOT NULL,
    Position_Long	DECIMAL(3,1)	NOT NULL,
    Position_Dir	CHAR			NOT NULL,
    Launch_Date		DATE			NOT NULL
    
    );
    
CREATE TABLE CHANNEL_INSTANCE (
	Channel_name		VARCHAR(24)		NOT NULL,
    Satellite_name		VARCHAR(36)		NOT NULL,
    Frequency			VARCHAR(8)		NOT NULL,
    Beam				VARCHAR(14),
    SR					MEDIUMINT,
    FEC					VARCHAR(6),
    Video_Encoding		VARCHAR(2)		NOT NULL,
    EIRP				VARCHAR(8),
    Package				VARCHAR(32),
    
    PRIMARY KEY(Channel_name, Satellite_name, Frequency),
    FOREIGN KEY (Channel_name) REFERENCES `CHANNEL`(`name`)
		ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Satellite_name) REFERENCES SATELLITE(`name`)
		ON DELETE CASCADE ON UPDATE CASCADE	
);

CREATE TABLE CHANNEL_INSTANCE_ENCRYPTION (
	Channel_name		VARCHAR(24)		NOT NULL,
    Satellite_name		VARCHAR(36)		NOT NULL,
    Frequency			VARCHAR(8)		NOT NULL,
    `Encryption`		VARCHAR(16)		NOT NULL,
    
    PRIMARY KEY (Channel_name, Satellite_name, Frequency, `Encryption`),	
    FOREIGN KEY (Channel_name, Satellite_name, Frequency) REFERENCES CHANNEL_INSTANCE(Channel_name, Satellite_name, Frequency)
		ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE CHANNEL_INSTANCE_LANGUAGE(
	Channel_name		VARCHAR(24)		NOT NULL,
    Satellite_name		VARCHAR(36)		NOT NULL,
    Frequency			VARCHAR(8)		NOT NULL,
    `Language`			CHAR(3)			NOT NULL,
    
	PRIMARY KEY (Channel_name, Satellite_name, Frequency, `Language`),
	FOREIGN KEY (Channel_name, Satellite_name, Frequency) REFERENCES CHANNEL_INSTANCE(Channel_name, Satellite_name, Frequency)
		ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE USER_CHANNEL_FAVOURITES (
	User_email			VARCHAR(40)		NOT NULL,
    Channel_name		VARCHAR(24)		NOT NULL,
    Satellite_name		VARCHAR(36)		NOT NULL,
    Frequency			VARCHAR(8)		NOT NULL,
    
    PRIMARY KEY(User_email, Channel_name, Satellite_name, Frequency),
    FOREIGN KEY (User_email) REFERENCES `USER`(email)
		ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Channel_name, Satellite_name, Frequency) REFERENCES CHANNEL_INSTANCE(Channel_name, Satellite_name, Frequency)
		ON DELETE CASCADE ON UPDATE CASCADE
);
















