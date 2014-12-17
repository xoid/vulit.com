CREATE table IF NOT EXISTS post 
(
	id MEDIUMINT NOT NULL AUTO_INCREMENT,
	parent_id MEDIUMINT,
	date		TIMESTAMP,
	title		VARCHAR(1024),
	text		VARCHAR(6000),
	PRIMARY KEY (id)
);
ALTER TABLE post ADD parent_id MEDIUMINT ;
REPLACE INTO post VALUES (1, '2014-09-11', 'First post about sex', 'Sex is great');

CREATE TABLE IF NOT EXISTS tag 
(
	id MEDIUMINT NOT NULL AUTO_INCREMENT,
	name	VARCHAR(256),
	PRIMARY KEY (id)
);

REPLACE INTO tag  VALUES (1, 'sexy');

CREATE TABLE IF NOT EXISTS post_tag_link
(
	post_id MEDIUMINT,
	tag_id	MEDIUMINT,
	PRIMARY KEY (post_id)
);

REPLACE INTO post_tag_link  VALUES (1,1);


