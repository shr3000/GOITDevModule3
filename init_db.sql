CREATE TABLE WORKER (
	ID INTEGER DEFAULT 1 NOT NULL AUTO_INCREMENT,
	NAME VARCHAR(1000) NOT NULL,
	BIRTHDAY DATE,
	LEVEL VARCHAR(7) NOT NULL DEFAULT 'Trainee',
	SALARY INTEGER NOT NULL,
	CONSTRAINT check_birtday_minValue CHECK(BIRTHDAY > '1900-01-01'),
	CONSTRAINT check_level_allowed_values CHECK(LEVEL IN ('Trainee', 'Junior', 'Middle', 'Senior')),
	CONSTRAINT check_salary_value CHECK(SALARY > 99 AND SALARY <= 100000),
	CONSTRAINT WORKER_PK PRIMARY KEY (ID)
);

CREATE TABLE CLIENT (
	ID INTEGER DEFAULT 1 NOT NULL AUTO_INCREMENT,
	NAME VARCHAR(1000) NOT NULL,
	CONSTRAINT check_client_value CHECK(CHAR_LENGTH(NAME) > 1 AND CHAR_LENGTH(NAME) <= 1000),
	CONSTRAINT CLIENT_PK PRIMARY KEY (ID)
);

CREATE TABLE PROJECT(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	CLIENT_ID INT NOT NULL,
	START_DATE DATE,
	FINISH_DATE DATE
);

CREATE TABLE project_worker(
	PROJECT_ID INT,
	WORKER_ID INT,
	CONSTRAINT frk_project_id FOREIGN KEY (PROJECT_ID) REFERENCES PROJECT(ID),
	CONSTRAINT frk_worker_id FOREIGN KEY (WORKER_ID) REFERENCES WORKER(ID),
	CONSTRAINT prj_primary_key PRIMARY KEY (PROJECT_ID, WORKER_ID)
);
