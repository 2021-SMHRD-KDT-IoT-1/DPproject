DROP TABLE member;
DROP TABLE product;
DROP TABLE exit;
DROP TABLE checklist;
DROP TABLE report;
DROP TABLE contact;

DROP SEQUENCE report_num;
DROP SEQUENCE check_num;
DROP SEQUENCE contact_num;

CREATE TABLE member (
	id	varchar2(50)		NOT NULL,
	pw	varchar2(50)		NOT NULL,
	name	varchar2(50)		NOT NULL,
	tel	varchar2(50)		NOT NULL,
	address	varchar2(200)		NOT NULL
);

CREATE TABLE product (
	product_id	varchar2(50)		NOT NULL,
	building_id	varchar2(50)		NOT NULL,
	id		varchar2(50)		NOT NULL,
	product_location	varchar2(50)		NOT NULL
);

CREATE TABLE exit (
	exit_id		varchar2(50)		NOT NULL,
	product_id	varchar2(50)		NOT NULL,
	building_id	varchar2(50)		NOT NULL,
	route		varchar2(200)		NOT NULL
);

CREATE TABLE checklist (
	check_num	varchar2(50)		NOT NULL,
	product_id	varchar2(50)		NOT NULL,
	building_id	varchar2(50)		NOT NULL,
	check_date	date			NOT NULL,
	state		varchar2(50)		NOT NULL,
	battery		date			NOT NULL,
	remarks		varchar2(500)		NULL
);

CREATE TABLE report (
	report_num	number		NOT NULL,
	report_name	varchar2(50)		NOT NULL,
	report_tel	varchar2(50)		NOT NULL,
	report_filename varchar2(200)	NOT NULL,
	report_title	varchar2(100)		NOT NULL,
	report_content	varchar2(1000)		NOT NULL,
	datetime		date		NOT NULL
);

CREATE TABLE contact (
	contact_num	number		NOT NULL,
	contact_name	varchar2(50)		NOT NULL,
	contact_tel	varchar2(50)		NOT NULL,
	contact_filename varchar2(50)	NOT NULL,
	contact_title	varchar2(100)		NOT NULL,
	contact_content	varchar2(1000)		NOT NULL,
	datetime		date		NOT NULL
);

ALTER TABLE member ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	id
);

ALTER TABLE product ADD CONSTRAINT "PK_PRODUCT" PRIMARY KEY (
	product_id,
	building_id
);

ALTER TABLE exit ADD CONSTRAINT "PK_EXIT" PRIMARY KEY (
	exit_id
);

ALTER TABLE checklist ADD CONSTRAINT "PK_CHECK" PRIMARY KEY (
	check_num
);

ALTER TABLE report ADD CONSTRAINT "PK_REPORT" PRIMARY KEY (
	report_num
);

ALTER TABLE contact ADD CONSTRAINT "PK_CONTACT" PRIMARY KEY (
	contact_num
);

ALTER TABLE product ADD CONSTRAINT "FK_member_TO_product_1" FOREIGN KEY (
	id
)
REFERENCES member (
	id
);

ALTER TABLE exit ADD CONSTRAINT "FK_product_TO_exit_1" FOREIGN KEY (
	product_id,
	building_id
)
REFERENCES product (
	product_id,
	building_id
);

ALTER TABLE checklist ADD CONSTRAINT "FK_product_TO_check_1" FOREIGN KEY (
	product_id,
	building_id
)
REFERENCES product (
	product_id,
	building_id
);

CREATE SEQUENCE report_num
INCREMENT BY 1
START WITH 1
MINVALUE 1;

CREATE SEQUENCE contact_num
INCREMENT BY 1
START WITH 1
MINVALUE 1;

CREATE SEQUENCE check_num
INCREMENT BY 1
START WITH 1
MINVALUE 1;