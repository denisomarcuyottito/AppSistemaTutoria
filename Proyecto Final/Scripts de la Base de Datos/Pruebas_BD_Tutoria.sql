/* **************************************************************************************************
   **************************** DML (LENGUAJE DE MANIPULACION DE DATOS) *****************************
   ************************************************************************************************** */
USE db_a7878d_BDSistemaTutoria
GO

-- Escuela Profesional
insert into TEscuela_Profesional VALUES('IN','INGENIERÍA INFORMÁTICA Y DE SISTEMAS');
insert into TEscuela_Profesional VALUES('IL','INGENIERÍA ELECTRÓNICA');
insert into TEscuela_Profesional VALUES('IC','INGENIERÍA CIVIL');
insert into TEscuela_Profesional VALUES('CO','CONTABILIDAD');
insert into TEscuela_Profesional VALUES('PS','PSICOLOGÍA');
insert into TEscuela_Profesional VALUES('IQ','INGENIERÍA QUÍMICA');
GO

-- Docentes:
EXEC DBO.spuInsertarDocente NULL,'12342','CUSIHUAMAN','PHOCCO','ROGER MARIO','12342@unsaac.edu.pe','AV. SOL 231','943214535','CONTRATADO','A1','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'15313','SEGUNDO','CARPIO','LISETH URPY','15313@unsaac.edu.pe','AV. PERU 132','943565434','NOMBRADO','ASOCIADO','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'16200','SONCCO','ALVAREZ','JOSE LUIS','16200@unsaac.edu.pe','AV. CUSCO 234','986473485','CONTRATADO','A1','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'18456','UGARTE','ROJAS','HECTOR EDUARDO','18456@unsaac.edu.pe','AV. BOLOGNESI 54','927458392','CONTRATADO','A1','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'23635','VILLAFUERTE','SERNA','RONY','23635@unsaac.edu.pe','AV. SAN JOSE 51','997640345','NOMBRADO','ASOCIADO','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'34024','CHULLO','LLAVE','BORIS','34024@unsaac.edu.pe','CALLE HUAYRA 18','905439234','CONTRATADO','B1','TIEMPO PARCIAL','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'54235','QUISPE','ONOFRE','CARLOS RAMON','54235@unsaac.edu.pe','CALLE PUQUIN 10','984325712','CONTRATADO','A1','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'74224','CANDIA','OVIEDO','DENNIS IVAN','74224@unsaac.edu.pe','AV. SUCRE 34','985493452','NOMBRADO','ASOCIADO','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'12341','GAMARRA','SALDIVAR','ENRIQUE','12341@unsaac.edu.pe','AV. VALDEZ 87','994543245','NOMBRADO','PRINCIPAL','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'32403','FLORES','PACHECO','LINO PRISCILIANO','32403@unsaac.edu.pe','CALLE PERA 46','932432187','NOMBRADO','PRINCIPAL','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'51410','MEDRANO','VALENCIA','IVAN CESAR','51410@unsaac.edu.pe','CALLE QUERA 39','990768321','NOMBRADO','ASOCIADO','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'95234','ROZAS','HUACHO','JAVIER ARTURO','95234@unsaac.edu.pe','AV. TACNA 17','944356782','NOMBRADO','PRINCIPAL','DEDICACIÓN EXCLUSIVA','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'13432','CHAVEZ','CENTENO','JAVIER DAVID','13432@unsaac.edu.pe','AV. MANCO CAPAC 210','974358922','NOMBRADO','AUXILIAR','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'10134','MEDINA','MIRANDA','KARELIA','10134@unsaac.edu.pe','AV. ANTA 12','955784357','NOMBRADO','ASOCIADO','TIEMPO PARCIAL','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'14233','ENCISO','RODAS','LAURO','14233@unsaac.edu.pe','JR. ESPINAR 134','937892354','NOMBRADO','PRINCIPAL','DEDICACIÓN EXCLUSIVA','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'43241','BACA','CARDENAS','LINO AQUILES','43241@unsaac.edu.pe','JR. LIBERTAD 23','990323444','NOMBRADO','AUXILIAR','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'14235','PALMA','TTITO','LUIS BELTRAN','14235@unsaac.edu.pe','CALLE ARICA 43','975382948','NOMBRADO','ASOCIADO','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'53466','VENEGAS','VERGARA','MARIA DEL PILAR','53466@unsaac.edu.pe','AV. ARGUEDAS 88','910234294','CONTRATADO','A1','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'16536','IRPANOCCA','CUSIMAYTA','MARITZA KATHERINE','16536@unsaac.edu.pe','CALLE CEDROS 75','986593560','CONTRATADO','A2','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'17453','ACURIO','USCA','NILA ZONIA','17453@unsaac.edu.pe','AV. COLINA 40','951235879','NOMBRADO','PRINCIPAL','DEDICACIÓN EXCLUSIVA','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'65475','ALZAMORA','PAREDES','ROBERT','65475@unsaac.edu.pe','JR. SAUCES 21','935789040','NOMBRADO','ASOCIADO','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'76745','QUINTANILLA','PORTUGAL','ROXANA LISETTE','76745@unsaac.edu.pe','AV. AMERICAS 318','945678912','CONTRATADO','A1','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'54543','SOSA','JAUREGUI','VICTOR DARIO','54543@unsaac.edu.pe','AV. CHIMU 27','912323453','CONTRATADO','A1','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'18439','ORMEÑO','AYALA','YESHICA ISELA','18435@unsaac.edu.pe','JR. GARCILASO 65','972138900','NOMBRADO','ASOCIADO','DEDICACIÓN EXCLUSIVA','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'63321','TICONA','PARI','GUZMAN','63321@unsaac.edu.pe','AV. BOLIVAR 211','984589033','NOMBRADO','ASOCIADO','DEDICACIÓN EXCLUSIVA','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'43242','PALOMINO','OLIVERA','EMILIO','43242@unsaac.edu.pe','AV. SUCRE 45','984590098','NOMBRADO','PRINCIPAL','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'18435','ZAMALLOA','PARO','WILLIAN','18435@unsaac.edu.pe','JR. GAMARRA 24','953224639','CONTRATADO','B1','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'13144','CARRASCO','POBLETE','EDWIN','13144@unsaac.edu.pe','CALLE ARICA 38','989032429','NOMBRADO','PRINCIPAL','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'54323','IBARRA','ZAMBRANO','WALDO ELLIO','54323@unsaac.edu.pe','CALLE PALMERAS 27','975849302','NOMBRADO','AUXILIAR','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'62322','PILLCO','QUISPE','JOSE MAURO','62322@unsaac.edu.pe','AV. SAN LUIS 11','993203245','NOMBRADO','AUXILIAR','TIEMPO COMPLETO','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'12345','CARBAJAL','LUNA','JULIO CESAR','12345@unsaac.edu.pe','JR. GRAU 43','951234566','NOMBRADO','PRINCIPAL','DEDICACIÓN EXCLUSIVA','IN','DISPONIBLE'
EXEC DBO.spuInsertarDocente NULL,'16341','PEÑALOZA','FIGUEROA','MANUEL AURELIO','16341@unsaac.edu.pe','AV. 2 DE MAYO 123','995049596','NOMBRADO','ASOCIADO','TIEMPO PARCIAL','IN','DISPONIBLE'
GO

-- Estudiantes
EXEC DBO.spuInsertarEstudiante NULL,'170115','PAZ','GUERRA','ANA','170115@unsaac.edu.pe','AV. TUPAC AMARU 23','954345698','IN','PAPA','954345698',NULL
EXEC DBO.spuInsertarEstudiante NULL,'170225','ARCE','ANDIA','ANGEL','170225@unsaac.edu.pe','CALLE URCOS 32','934675322','IN','PAPA','934675322',NULL
EXEC DBO.spuInsertarEstudiante NULL,'171347','BUENO','BUENDIA','BENITO','171347@unsaac.edu.pe','JR. LINERTAD 4','956784320','IN','PAPA','956784320',NULL
EXEC DBO.spuInsertarEstudiante NULL,'170231','CUSI','COSIO','CARLOTA','170231@unsaac.edu.pe','AV COSTANERA 34','945389056','IN','PAPA','945389056',NULL
EXEC DBO.spuInsertarEstudiante NULL,'171121','DUEÑAS','DAVILA','DAVID','171121@unsaac.edu.pe','JR. CALCA 57','945389056','IN','PAPA','945389056',NULL
EXEC DBO.spuInsertarEstudiante NULL,'170335','ESCOBAR','ESTRADA','ERNESTO','170335@unsaac.edu.pe','AV. SOL 73','945389056','IN','PAPA','945389056',NULL
EXEC DBO.spuInsertarEstudiante NULL,'170255','FARFAN','FLORES','FABIOLA','170255@unsaac.edu.pe','AV INDUSTRIAL 423','990987896','IN','PAPA','990987896',NULL
EXEC DBO.spuInsertarEstudiante NULL,'181371','GARCIA','GUDIEL','GABRIELA','181371@unsaac.edu.pe','CALLE COMERCIO 76','954325644','IN','PAPA','954325644',NULL
EXEC DBO.spuInsertarEstudiante NULL,'180219','HURTADO','HUILLCA','HUMBERTO','180219@unsaac.edu.pe','JR. TARAPACA 88','989097786','IN','PAPA','989097786',NULL
EXEC DBO.spuInsertarEstudiante NULL,'181227','IBARRA','IBAÑEZ','INES','181227@unsaac.edu.pe','CALLE LIMA 21','923432232','IN','PAPA','923432232',NULL
EXEC DBO.spuInsertarEstudiante NULL,'180116','JIMENEZ','JARAMILLO','JULIO','180116@unsaac.edu.pe','AV. SUIZA 42','951234323','IN','PAPA','951234323',NULL
EXEC DBO.spuInsertarEstudiante NULL,'180277','KAWAMURA','KAWAMURA','KEVIN','180277@unsaac.edu.pe','AV. SANTIAGO 67','955454533','IN','PAPA','955454533',NULL
EXEC DBO.spuInsertarEstudiante NULL,'181197','LOZA','LUZA','LILIANA','181197@unsaac.edu.pe','AV. LOSSAUCES 78','965678212','IN','PAPA','965678212',NULL
EXEC DBO.spuInsertarEstudiante NULL,'180919','MEZA','MAR','MARISOL','190919@unsaac.edu.pe','AV. SOL 67','954343698','IN','PAPA','954343698',NULL
EXEC DBO.spuInsertarEstudiante NULL,'191447','NUÑEZ','NAVIA','NOHEMI','191447@unsaac.edu.pe','CALLE QUISPICANCHIS 32','956432122','IN','PAPA','956432122',NULL
EXEC DBO.spuInsertarEstudiante NULL,'190366','ORTEGA','OCAMPO','OMAR','190366@unsaac.edu.pe','CALLE ESPAÑA 143','987653320','IN','PAPA','987653320',NULL
EXEC DBO.spuInsertarEstudiante NULL,'190788','PRADO','PERALTA','PABLO','190788@unsaac.edu.pe','CALLE SUAREZ 63','999875511','IN','PAPA','999875511',NULL
EXEC DBO.spuInsertarEstudiante NULL,'191779','RAMOS','ROBLES','ROSA','191779@unsaac.edu.pe','AV. UNION 55','984323456','IN','PAPA','984323456',NULL
EXEC DBO.spuInsertarEstudiante NULL,'190998','SALAZAR','SALAS','SOFIA','190998@unsaac.edu.pe','AV. ALMAGRO 341','921234556','IN','PAPA','921234556',NULL
EXEC DBO.spuInsertarEstudiante NULL,'191876','TORRES','TARRAGA','TOMAS','191876@unsaac.edu.pe','AV SOL 24','967890345','IN','PAPA','967890345',NULL
EXEC DBO.spuInsertarEstudiante NULL,'193402','GARCIA','OLIVERA','ALEJANDRO','193402@unsaac.edu.pe','CALLE HOSPITAL 19','954345665','IN','PAPA','954345665',NULL
EXEC DBO.spuInsertarEstudiante NULL,'203413','MENDOZA','QUISPE','MARIA','203413@unsaac.edu.pe','AV. ALMUDENA 67','965432245','IN','PAPA','965432245',NULL
EXEC DBO.spuInsertarEstudiante NULL,'202700','PEÑA','AYALA','JOSE LUIS','202700@unsaac.edu.pe','AV. LOS CEDROS 98','989712313','IN','PAPA','989712313',NULL
EXEC DBO.spuInsertarEstudiante NULL,'208025','ATAYUPANQUI','SALAS','CARLOS','208025@unsaac.edu.pe','CALLE EDEN 32','956432310','IN','PAPA','956432310',NULL
EXEC DBO.spuInsertarEstudiante NULL,'203456','CANAL','TORRES','JUAN','203456@unsaac.edu.pe','CALLE KISWAR 17','955677987','IN','PAPA','955677987',NULL
EXEC DBO.spuInsertarEstudiante NULL,'206543','ACUÑA','UMERES','ZOILA','206543@unsaac.edu.pe','JR. ESMERALDA 231','984509802','IN','PAPA','984509802',NULL
EXEC DBO.spuInsertarEstudiante NULL,'203022','PAREDES','OLIVERA','ESTHER','203022@unsaac.edu.pe','JR. EL SOL 54','974213455','IN','PAPA','974213455',NULL
EXEC DBO.spuInsertarEstudiante NULL,'202453','CARPIO','PUELLES','ERNESTO','202453@unsaac.edu.pe','AV. FEREDAL 254','987664664','IN','PAPA','987664664',NULL
EXEC DBO.spuInsertarEstudiante NULL,'213404','TARRAGA','PEZO','GIOVANNA','213404@unsaac.edu.pe','CALLE LOS OLIVOS 42','953234700','IN','PAPA','953234700',NULL
EXEC DBO.spuInsertarEstudiante NULL,'219025','ARCE','CRESPO','EVA','219025@unsaac.edu.pe','JR.CANARIOS 123','935212435','IN','PAPA','935212435',NULL
GO

-- Usuarios: IdUsuario: Código, Contraseña: Codigo
EXEC DBO.spuInsertarUsuario NULL,'ADMI','ADMI1234','Administrador','ADMINISTRADOR'
--EXEC DBO.spuInsertarDocente NULL,'DEIN','ACURIO','USCA','NILA ZONIA','17453@unsaac.edu.pe','AV. COLINA 40','951235879','NOMBRADO','PRINCIPAL','DEDICACIÓN EXCLUSIVA','IN','DISPONIBLE'
UPDATE TUsuario SET Acceso = 'Director de Escuela' WHERE Usuario = '17453'

EXEC DBO.spuAsignarTutor '170115','12342'
EXEC DBO.spuAsignarTutor '170225','12342'
EXEC DBO.spuAsignarTutor '171347','12342'
EXEC DBO.spuAsignarTutor '170231','15313'
EXEC DBO.spuAsignarTutor '171121','15313'
EXEC DBO.spuAsignarTutor '170335','15313'
EXEC DBO.spuAsignarTutor '170255','15313'
EXEC DBO.spuAsignarTutor '181371','74224'
EXEC DBO.spuAsignarTutor '180219','74224'
EXEC DBO.spuAsignarTutor '181227','74224'
EXEC DBO.spuAsignarTutor '180116','74224'
EXEC DBO.spuAsignarTutor '180277','74224'
EXEC DBO.spuAsignarTutor '181197','54323'
EXEC DBO.spuAsignarTutor '180919','54323'
EXEC DBO.spuAsignarTutor '191447','54323'
EXEC DBO.spuAsignarTutor '190366','14235'
EXEC DBO.spuAsignarTutor '190788','14235'
EXEC DBO.spuAsignarTutor '191779','14235'
EXEC DBO.spuAsignarTutor '190998','14235'
EXEC DBO.spuAsignarTutor '191876','14235'
EXEC DBO.spuAsignarTutor '193402','14235'
EXEC DBO.spuAsignarTutor '203413','14235'
EXEC DBO.spuAsignarTutor '202700','18435'
EXEC DBO.spuAsignarTutor '208025','18435'
EXEC DBO.spuAsignarTutor '203456','18435'
EXEC DBO.spuAsignarTutor '206543','18435'
EXEC DBO.spuAsignarTutor '203022','18435'
EXEC DBO.spuAsignarTutor '202453','18435'
EXEC DBO.spuAsignarTutor '213404','18435'
EXEC DBO.spuAsignarTutor '219025','18435'
GO

-- Ficha de tutoria:

EXEC DBO.spuInsertarFichaTutoria '206543','2020-II','20/10/2020','PERSONAL','Des1cccc','Ref11111','obs1111'

-- Mostrar tablas
SELECT * FROM TEscuela_Profesional
SELECT * FROM TDocente
SELECT * FROM TUsuario
SELECT * FROM TFichaTutoria
SELECT * FROM TEstudiante
SELECT * FROM Historial

select * from Historial
