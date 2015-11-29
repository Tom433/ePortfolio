DROP TABLE IF EXISTS `eportfolio`.`users`;
CREATE TABLE `eportfolio`.`users`
(
  `MatNr` INT NOT NULL ,
  `name` VARCHAR(255) NOT NULL ,
  `email` VARCHAR(255) NOT NULL ,
  PRIMARY KEY (`MatNr`)
) ENGINE = InnoDB;

INSERT INTO USERS (MatNr, name, email) VALUES ('55984957', 'XVCAOCXF URBMFD', 'URBMFD.XVCAOCXF@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('51797157', 'OEIZZWQJ PRYNZK', 'PRYNZK.OEIZZWQJ@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('77631412', 'KMLDMDHU PZCGYB', 'PZCGYB.KMLDMDHU@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('11521975', 'ZRDZRKAM LFMBIM', 'LFMBIM.ZRDZRKAM@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('84645818', 'MBZGCUHP DICPSE', 'DICPSE.MBZGCUHP@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('93875823', 'FLNHDZYK PDXIWA', 'PDXIWA.FLNHDZYK@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('58856912', 'YLLDEWCF WUGPRF', 'WUGPRF.YLLDEWCF@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('43872894', 'SGITTZNU VGMEOL', 'VGMEOL.SGITTZNU@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('16897398', 'SQKTBUCL KUZFPK', 'KUZFPK.SQKTBUCL@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('45654184', 'SXIJFUKM SPAJAL', 'SPAJAL.SXIJFUKM@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('43139527', 'TCEIMOHH JEEDLY', 'JEEDLY.TCEIMOHH@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('93925553', 'DOZCCIUE NODQQF', 'NODQQF.DOZCCIUE@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('28335991', 'CFRDJSHA HNBKHO', 'HNBKHO.CFRDJSHA@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('36934638', 'RWWWXWLB XEUNFX', 'XEUNFX.RWWWXWLB@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('33471976', 'WLGGMPXQ UDVGSK', 'UDVGSK.WLGGMPXQ@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('22914817', 'PSSERRGN UNYJOD', 'UNYJOD.PSSERRGN@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('37552668', 'PDCUEMNP GZFTWI', 'GZFTWI.PDCUEMNP@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('98447982', 'QWUVBHAI CIIZIM', 'CIIZIM.QWUVBHAI@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('69397512', 'PBDLAKQK BYFUEJ', 'BYFUEJ.PBDLAKQK@dhbw-karlsruhe.de');
INSERT INTO USERS (MatNr, name, email) VALUES ('83134483', 'UCBGJZGD AHPZSL', 'AHPZSL.UCBGJZGD@dhbw-karlsruhe.de');

DROP TABLE IF EXISTS `eportfolio`.`Courses`;
CREATE TABLE `eportfolio`.`Courses`
(
  `CoursNr` INT NOT NULL ,
  `name` VARCHAR(255) NOT NULL,
  `room` VARCHAR(255) NOT NULL,
  PRIMARY KEY(`CoursNr`)
) ENGINE = InnoDB;

INSERT INTO Courses (CoursNr, name, room) VALUES ('1', 'Software Engineering', 'D209');
INSERT INTO Courses (CoursNr, name, room) VALUES ('2', 'Datenbanken', 'A213');
INSERT INTO Courses (CoursNr, name, room) VALUES ('3', 'Technische Informatik', 'E432');
INSERT INTO Courses (CoursNr, name, room) VALUES ('4', 'Rechnerarchitektur', 'C123');
INSERT INTO Courses (CoursNr, name, room) VALUES ('5', 'Programmieren', 'F128');
INSERT INTO Courses (CoursNr, name, room) VALUES ('6', 'Formale Sprachen', 'D209');
INSERT INTO Courses (CoursNr, name, room) VALUES ('7', 'Theoretische Informatik', 'B333');
INSERT INTO Courses (CoursNr, name, room) VALUES ('8', 'H&ouml;here Mathematik', 'D208');
INSERT INTO Courses (CoursNr, name, room) VALUES ('9', 'Compilerbau', 'D209');
INSERT INTO Courses (CoursNr, name, room) VALUES ('10', 'Betriebswirtschaftslehre', 'D209');

DROP TABLE IF EXISTS `eportfolio`.`MatCours`;
CREATE TABLE `eportfolio`.`MatCours`
(
  `MatNr` INT NOT NULL ,
  `CoursNr` INT NOT NULL,
  PRIMARY KEY(`MatNr`,`CoursNr`)
) ENGINE = InnoDB;

INSERT INTO MatCours (MatNr, CoursNr) VALUES ('11521975', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('16897398', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('22914817', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('28335991', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('33471976', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('36934638', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('37552668', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('43139527', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('43872894', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('45654184', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('51797157', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('55984957', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('58856912', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('69397512', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('77631412', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('83134483', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('84645818', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('93875823', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('93925553', '1');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('98447982', '1');

INSERT INTO MatCours (MatNr, CoursNr) VALUES ('11521975', '2');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('16897398', '2');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('22914817', '2');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('28335991', '2');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('33471976', '2');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('36934638', '2');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('37552668', '2');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('43139527', '2');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('43872894', '2');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('45654184', '2');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('51797157', '2');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('55984957', '2');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('58856912', '2');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('69397512', '2');

INSERT INTO MatCours (MatNr, CoursNr) VALUES ('11521975', '3');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('16897398', '3');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('22914817', '3');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('28335991', '3');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('33471976', '3');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('36934638', '3');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('37552668', '3');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('43139527', '3');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('69397512', '3');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('77631412', '3');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('83134483', '3');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('84645818', '3');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('93875823', '3');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('93925553', '3');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('98447982', '3');

INSERT INTO MatCours (MatNr, CoursNr) VALUES ('43872894', '4');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('45654184', '4');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('51797157', '4');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('55984957', '4');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('58856912', '4');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('69397512', '4');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('77631412', '4');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('83134483', '4');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('84645818', '4');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('93875823', '4');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('93925553', '4');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('98447982', '4');

INSERT INTO MatCours (MatNr, CoursNr) VALUES ('28335991', '5');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('33471976', '5');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('36934638', '5');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('37552668', '5');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('43139527', '5');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('55984957', '5');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('58856912', '5');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('84645818', '5');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('98447982', '5');

INSERT INTO MatCours (MatNr, CoursNr) VALUES ('28335991', '6');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('43139527', '6');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('55984957', '6');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('58856912', '6');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('84645818', '6');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('93875823', '6');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('98447982', '6');

INSERT INTO MatCours (MatNr, CoursNr) VALUES ('11521975', '7');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('16897398', '7');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('22914817', '7');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('28335991', '7');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('93925553', '7');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('98447982', '7');

INSERT INTO MatCours (MatNr, CoursNr) VALUES ('33471976', '8');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('36934638', '8');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('37552668', '8');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('51797157', '8');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('55984957', '8');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('93925553', '8');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('98447982', '8');

INSERT INTO MatCours (MatNr, CoursNr) VALUES ('11521975', '9');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('33471976', '9');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('36934638', '9');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('37552668', '9');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('43139527', '9');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('43872894', '9');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('55984957', '9');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('58856912', '9');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('69397512', '9');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('83134483', '9');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('84645818', '9');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('93925553', '9');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('98447982', '9');

INSERT INTO MatCours (MatNr, CoursNr) VALUES ('11521975', '10');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('16897398', '10');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('22914817', '10');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('28335991', '10');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('33471976', '10');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('36934638', '10');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('37552668', '10');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('43872894', '10');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('45654184', '10');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('51797157', '10');
INSERT INTO MatCours (MatNr, CoursNr) VALUES ('93875823', '10');






