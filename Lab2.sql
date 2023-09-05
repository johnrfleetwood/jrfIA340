-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS professor
(
    p_email VARCHAR(50) NOT NULL,
    p_name VARCHAR(100),
    office VARCHAR(50) UNIQUE,
    PRIMARY KEY(p_email)
);

CREATE TABLE IF NOT EXISTS course
(
    c_number VARCHAR(50) NOT NULL,
    c_name VARCHAR(100),
    room VARCHAR(10),
    p_email VARCHAR(50),
    PRIMARY KEY(c_number)
);

CREATE TABLE IF NOT EXISTS enroll
(
    s_email VARCHAR(50) NOT NULL,
    c_number VARCHAR(50) NOT NULL,
    PRIMARY KEY(s_email, c_number)
);

CREATE TABLE IF NOT EXISTS student
(
    s_email VARCHAR(50) NOT NULL,
    s_name VARCHAR(100),
    major VARCHAR(10) NOT NULL,
    PRIMARY KEY(s_email)
);


-- Create FKs
ALTER TABLE enroll
    ADD    FOREIGN KEY (s_email)
    REFERENCES student(s_email)
    MATCH SIMPLE
;
    
ALTER TABLE enroll
    ADD    FOREIGN KEY (c_number)
    REFERENCES course(c_number)
    MATCH SIMPLE
;
    
ALTER TABLE course
    ADD    FOREIGN KEY (p_email)
    REFERENCES professor(p_email)
    MATCH SIMPLE
;
    

-- Create Indexes

