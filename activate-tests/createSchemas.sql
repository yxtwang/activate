-- MYSQL
DROP TABLE ACTIVATETESTENTITY;
CREATE TABLE ACTIVATETESTENTITY (
	ID VARCHAR(200) PRIMARY KEY,
	DUMMY BOOLEAN,
	INTVALUE INTEGER,
	BOOLEANVALUE BOOLEAN,
	CHARVALUE CHAR,
	STRINGVALUE VARCHAR(200),
	FLOATVALUE DOUBLE,
	DOUBLEVALUE DOUBLE,
	BIGDECIMALVALUE DECIMAL,
	DATEVALUE LONG,
	JODAINSTANTVALUE LONG,
	CALENDARVALUE LONG,
	BYTEARRAYVALUE BLOB,
	ENTITYVALUE VARCHAR(200) REFERENCES ACTIVATETESTENTITY(ID),
	TRAITVALUE1 VARCHAR(200),
	TRAITVALUE2 VARCHAR(200),
	LAZYVALUE VARCHAR(200),
	ENUMERATIONVALUE VARCHAR(200)
);

DROP TABLE TRAITATTRIBUTE1;
CREATE TABLE TRAITATTRIBUTE1 (
	ID VARCHAR(200) PRIMARY KEY,
	ATTRIBUTE VARCHAR(200)
);

DROP TABLE TRAITATTRIBUTE2;
CREATE TABLE TRAITATTRIBUTE2 (
	ID VARCHAR(200) PRIMARY KEY,
	ATTRIBUTE VARCHAR(200)
);


DROP TABLE CONCRETESUBCLASSENTITY;
DROP TABLE ABSTRACTENTITY;
DROP TABLE LOOPENTITY;
DROP TABLE LOOPENTITY2;
DROP TABLE CONCRETEENTITY;


CREATE TABLE LOOPENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  LOOPENTITY VARCHAR(200) REFERENCES LOOPENTITY(ID)
);

SELECT * FROM LOOPENTITY2;
CREATE TABLE LOOPENTITY2(
  ID VARCHAR(200) PRIMARY KEY,
  LOOPENTITY VARCHAR(200) REFERENCES LOOPENTITY(ID)
);

SELECT * FROM ABSTRACTENTITY;
CREATE TABLE ABSTRACTENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  COMPLEXTRAIT VARCHAR(200),
  LOOPENTITY VARCHAR(200) REFERENCES LOOPENTITY(ID),
  STRING1 VARCHAR(200),
  STRING2 VARCHAR(200),
  STRING3 VARCHAR(200)
);

SELECT * FROM CONCRETEENTITY;
CREATE TABLE CONCRETEENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  COMPLEXTRAIT VARCHAR(200),
  LOOPENTITY VARCHAR(200) REFERENCES LOOPENTITY(ID),
  STRING1 VARCHAR(200),
  STRING2 VARCHAR(200),
  STRING3 VARCHAR(200),
  STRING4 VARCHAR(200),
  STRING5 VARCHAR(200)
);
SELECT * FROM CONCRETESUBCLASSENTITY;
CREATE TABLE CONCRETESUBCLASSENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  COMPLEXTRAIT VARCHAR(200),
  LOOPENTITY VARCHAR(200) REFERENCES LOOPENTITY(ID),
  STRING1 VARCHAR(200),
  STRING2 VARCHAR(200),
  STRING3 VARCHAR(200),
  STRING4 VARCHAR(200),
  STRING5 VARCHAR(200)
);


-- ORACLE
DROP TABLE ACTIVATETESTENTITY;
CREATE TABLE ACTIVATETESTENTITY (
	ID VARCHAR(200) PRIMARY KEY,
	DUMMY NUMBER(1),
	INTVALUE INTEGER,
	BOOLEANVALUE NUMBER(1),
	CHARVALUE CHAR,
	STRINGVALUE VARCHAR(200),
	FLOATVALUE REAL,
	DOUBLEVALUE DOUBLE PRECISION,
	BIGDECIMALVALUE DECIMAL,
	DATEVALUE TIMESTAMP,
	CALENDARVALUE TIMESTAMP,
	BYTEARRAYVALUE BLOB,
	ENTITYVALUE VARCHAR(200),-- REFERENCES ACTIVATETESTENTITY(ID),
	TRAITVALUE1 VARCHAR(200),
	TRAITVALUE2 VARCHAR(200),
	LAZYVALUE VARCHAR(200),
	JODAINSTANTVALUE TIMESTAMP,
	ENUMERATIONVALUE VARCHAR(200)
);

DROP TABLE TRAITATTRIBUTE1;
CREATE TABLE TRAITATTRIBUTE1 (
	ID VARCHAR(200) PRIMARY KEY,
	ATTRIBUTE VARCHAR(200)
);

DROP TABLE TRAITATTRIBUTE2;
CREATE TABLE TRAITATTRIBUTE2 (
	ID VARCHAR(200) PRIMARY KEY,
	ATTRIBUTE VARCHAR(200)
);

DROP TABLE CONCRETESUBCLASSENTITY;
DROP TABLE ABSTRACTENTITY;
DROP TABLE LOOPENTITY;
DROP TABLE LOOPENTITY2;
DROP TABLE CONCRETEENTITY;


CREATE TABLE LOOPENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  LOOPENTITY VARCHAR(200)-- REFERENCES LOOPENTITY(ID)
);

SELECT * FROM LOOPENTITY2;
CREATE TABLE LOOPENTITY2(
  ID VARCHAR(200) PRIMARY KEY,
  LOOPENTITY VARCHAR(200)-- REFERENCES LOOPENTITY(ID)
);

SELECT * FROM ABSTRACTENTITY;
CREATE TABLE ABSTRACTENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  COMPLEXTRAIT VARCHAR(200),
  LOOPENTITY VARCHAR(200),-- REFERENCES LOOPENTITY(ID),
  STRING1 VARCHAR(200),
  STRING2 VARCHAR(200),
  STRING3 VARCHAR(200)
);

SELECT * FROM CONCRETEENTITY;
CREATE TABLE CONCRETEENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  COMPLEXTRAIT VARCHAR(200),
  LOOPENTITY VARCHAR(200),-- REFERENCES LOOPENTITY(ID),
  STRING1 VARCHAR(200),
  STRING2 VARCHAR(200),
  STRING3 VARCHAR(200),
  STRING4 VARCHAR(200),
  STRING5 VARCHAR(200)
);
SELECT * FROM CONCRETESUBCLASSENTITY;
CREATE TABLE CONCRETESUBCLASSENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  COMPLEXTRAIT VARCHAR(200),
  LOOPENTITY VARCHAR(200),-- REFERENCES LOOPENTITY(ID),
  STRING1 VARCHAR(200),
  STRING2 VARCHAR(200),
  STRING3 VARCHAR(200),
  STRING4 VARCHAR(200),
  STRING5 VARCHAR(200)
);