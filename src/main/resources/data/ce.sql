/*
 * Users
 */
INSERT INTO `CE_USER` (`usr_nom`,`usr_pre`,`usr_mdp`,`usr_ema`,`usr_drt`,`usr_for`,`usr_acf`) VALUES  ('ADMIN','ADMIN','admin','dsi@elsevier.com','A',false,true);
INSERT INTO `CE_USER` (`usr_nom`,`usr_pre`,`usr_mdp`,`usr_ema`,`usr_drt`,`usr_for`,`usr_acf`) VALUES  ('VIANA GOMES','ANNETTE','2705','a.viana-gomes@elsevier.com','V',true,true);
INSERT INTO `CE_USER` (`usr_nom`,`usr_pre`,`usr_mdp`,`usr_ema`,`usr_drt`,`usr_for`,`usr_acf`) VALUES  ('BOULINGRIN','BENEDICTE','0504','b.boulingrin@elsevier.com','V',false,true);
INSERT INTO `CE_USER` (`usr_nom`,`usr_pre`,`usr_mdp`,`usr_ema`,`usr_drt`,`usr_for`,`usr_acf`) VALUES  ('GIRARD','EMMANUELLE','2007','e.girard@elsevier.com','A',true,true);
INSERT INTO `CE_USER` (`usr_nom`,`usr_pre`,`usr_mdp`,`usr_ema`,`usr_drt`,`usr_for`,`usr_acf`) VALUES  ('PHILIPPE','FABIENNE','0807','f.philippe@elsevier.com','A',true,true);
INSERT INTO `CE_USER` (`usr_nom`,`usr_pre`,`usr_mdp`,`usr_ema`,`usr_drt`,`usr_for`,`usr_acf`) VALUES  ('BLENGINO','JEAN-MICHEL','2882','j.blengino@elsevier.com','A',true,true);

/*
 * Reseignements généraux
 */
INSERT INTO `ce_rg` (`rg_age_enf`,`rg_dat_anc`) VALUES (9,sysdate);


/*
 * Type contrat
 */

INSERT INTO `ce_typcon` (`typcon_cod`,`typcon_nom`,`typcon_drt`,`typcon_acf`) VALUES (1,'CONTRAT D''APPRENTISSAGE',false, true);
INSERT INTO `ce_typcon` (`typcon_cod`,`typcon_nom`,`typcon_drt`,`typcon_acf`) VALUES (2,'CONTRAT A DUREE DETERMINEEE',true,true);
INSERT INTO `ce_typcon` (`typcon_cod`,`typcon_nom`,`typcon_drt`,`typcon_acf`) VALUES (3,'CONTRAT A DUREE INDETERMINEEE',true,true);
INSERT INTO `ce_typcon` (`typcon_cod`,`typcon_nom`,`typcon_drt`,`typcon_acf`) VALUES (4,'CONTRAT PIGISTE',false,true);
INSERT INTO `ce_typcon` (`typcon_cod`,`typcon_nom`,`typcon_drt`,`typcon_acf`) VALUES (5,'CONTRAT DE STAGE',false,false);
INSERT INTO `ce_typcon` (`typcon_cod`,`typcon_nom`,`typcon_drt`,`typcon_acf`) VALUES (6,'CONTRAT VACATAIRE',false,true);

 
 /*
 Type articles
 */
 
 
INSERT INTO `ce_typart` (`typart_cod`,`typart_lib`,`typart_qte_moi`,`typart_qte_an`,`typart_gst_stk`,`typart_acf`,`typart_mnt_moi`,`typart_mnt_an`,`typart_anc`,`typart_moi_int`) VALUES 
 (1,'CHEQUIER CULTUREL',1,0,true,true,0,0,1,'7,8');
INSERT INTO `ce_typart` (`typart_cod`,`typart_lib`,`typart_qte_moi`,`typart_qte_an`,`typart_gst_stk`,`typart_acf`,`typart_mnt_moi`,`typart_mnt_an`,`typart_anc`,`typart_moi_int`) VALUES 
 (2,'CINEMA',4,0,true,true,0,0,1,'');
INSERT INTO `ce_typart` (`typart_cod`,`typart_lib`,`typart_qte_moi`,`typart_qte_an`,`typart_gst_stk`,`typart_acf`,`typart_mnt_moi`,`typart_mnt_an`,`typart_anc`,`typart_moi_int`) VALUES 
 (3,'REMBOURSEMENT ACTIVITES',0,0,false,true,0,135,1,'');
 
 
 /*
  * Articles
  */
 INSERT INTO `ce_art` (`art_cod`,`art_lib`,`art_prx_vte_inf_pla`,`art_prx_vte_sup_pla`,`art_sub_ce_inf_pla`,`art_sub_ce_sup_pla`,`art_nb_stk`,`art_nb_stk_alt`,`art_acf`,`typart_cod`,`art_enf`) VALUES 
 (1,'CHEQUIER LIRE',18.00,18.00,0.00,0.00,128,25,true,1,false);
INSERT INTO `ce_art` (`art_cod`,`art_lib`,`art_prx_vte_inf_pla`,`art_prx_vte_sup_pla`,`art_sub_ce_inf_pla`,`art_sub_ce_sup_pla`,`art_nb_stk`,`art_nb_stk_alt`,`art_acf`,`typart_cod`,`art_enf`) VALUES 
 (2,'CHEQUIER DISQUE','18.00','18.00','0.00','0.00',130,25,true,1,false);
INSERT INTO `ce_art` (`art_cod`,`art_lib`,`art_prx_vte_inf_pla`,`art_prx_vte_sup_pla`,`art_sub_ce_inf_pla`,`art_sub_ce_sup_pla`,`art_nb_stk`,`art_nb_stk_alt`,`art_acf`,`typart_cod`,`art_enf`) VALUES 
 (3,'CHEQUIER CULTURE','18.00','18.00','0.00','0.00',95,25,true,1,false);
INSERT INTO `ce_art` (`art_cod`,`art_lib`,`art_prx_vte_inf_pla`,`art_prx_vte_sup_pla`,`art_sub_ce_inf_pla`,`art_sub_ce_sup_pla`,`art_nb_stk`,`art_nb_stk_alt`,`art_acf`,`typart_cod`,`art_enf`) VALUES 
 (4,'MK2','3.50','3.50','0.00','0.00',119,25,true,2,false);
INSERT INTO `ce_art` (`art_cod`,`art_lib`,`art_prx_vte_inf_pla`,`art_prx_vte_sup_pla`,`art_sub_ce_inf_pla`,`art_sub_ce_sup_pla`,`art_nb_stk`,`art_nb_stk_alt`,`art_acf`,`typart_cod`,`art_enf`) VALUES 
 (5,'UGC','3.50','3.50','0.00','0.00',294,25,true,2,false);
INSERT INTO `ce_art` (`art_cod`,`art_lib`,`art_prx_vte_inf_pla`,`art_prx_vte_sup_pla`,`art_sub_ce_inf_pla`,`art_sub_ce_sup_pla`,`art_nb_stk`,`art_nb_stk_alt`,`art_acf`,`typart_cod`,`art_enf`) VALUES 
 (6,'PATHE-GAUMONT','3.50','3.50','0.00','0.00',252,25,true,2,false);
INSERT INTO `ce_art` (`art_cod`,`art_lib`,`art_prx_vte_inf_pla`,`art_prx_vte_sup_pla`,`art_sub_ce_inf_pla`,`art_sub_ce_sup_pla`,`art_nb_stk`,`art_nb_stk_alt`,`art_acf`,`typart_cod`,`art_enf`) VALUES 
 (7,'CINECHEQUE','3.50','3.50','0.00','0.00',130,25,true,2,false);
INSERT INTO `ce_art` (`art_cod`,`art_lib`,`art_prx_vte_inf_pla`,`art_prx_vte_sup_pla`,`art_sub_ce_inf_pla`,`art_sub_ce_sup_pla`,`art_nb_stk`,`art_nb_stk_alt`,`art_acf`,`typart_cod`,`art_enf`) VALUES 
 (8,'PARTICIPATION SPORT/CULTURE','135.00','135.00','135.00','135.00',70,0,true,3,false);
 
 
 /*
 Salariés
 */
 
 
INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (8,'LENTAIGNE','VERONIQUE','1986-09-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (15,'ABENDROTH','PATRICIA','1988-08-29',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (25,'AUDIGER','FRANCOISE','1989-07-10',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (26,'DAVOLI','ANNA','2009-06-02','2009-10-31',false,false,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (28,'LE NEILLON','MELANIE','2007-01-08',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (34,'TISSIER','CAROLINE','2007-01-04',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (40,'JARNOUX','CATHERINE','1990-03-19',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (52,'BELLET','SABINE','1990-11-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (57,'LAFARGE','ANNE','1991-04-02',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (60,'DE VEILLECHEZE DE LA MARDIERE','CLAIRE','2007-10-15',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (63,'GENTILI','NATHALIE','2007-03-20',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (64,'MORELLATO','NATHALIE','1992-02-03',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (69,'GRALL','VERONIQUE','2007-04-16',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (70,'ROUQUETTE','MARIE-JOSE','1993-01-11',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (71,'MAZZOCCHI','LAETITIA','2007-04-02',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (72,'DORE','ANNETTE','1993-03-15',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (74,'FABRE','FREDERIC','1993-07-26',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (75,'SADOUX-GLEIZE','MARIE','2007-03-26',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (76,'BALLIF','GENEVIEVE','1993-12-06',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (77,'PARANT','MARTINE','1994-07-18',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (80,'GUEDON','CHRISTINE','1994-10-06',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (84,'CAILLAT','LISE','2007-05-02',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (87,'LEQUIME','SEBASTIEN','2007-05-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (88,'RADOVCIC-BENALDI','VERONIKA','2007-04-24',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (89,'WARNESSON','EMMANUELLE','2007-05-09',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (92,'MANGOT','JOANNE','2007-05-21',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (94,'CAVANAGH','JEAN FRANK','2007-05-15',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (96,'FRASCO','DAVID','2009-01-05','2009-01-31',false,false,5,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (98,'GOBERT','SOPHIE','2007-05-28',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (101,'DUNOYER DE SEGONZAC','SABINE','1989-06-21',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (104,'MASSICOT','CATHERINE','1976-01-02',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (108,'DUC','FLORENCE','2007-06-11',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (109,'VAN BERKUM','WILHELMUS','1991-05-15',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (120,'BAIGNERES','DOROTHEE','2007-07-04',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (121,'MORIN','CHARLOTTE','2007-07-02',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (123,'BREJON','FABRICE','2007-07-04',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (124,'FOURNIE','ANNE-ELISABETH','2007-07-12',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (128,'KERAVEN','KARINE','2007-08-04',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (133,'CHARLOT','IRENE','2007-08-30',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (136,'BELHADI','SIHAM','2007-09-17',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (142,'SOM','KHAKHON','2007-09-17',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (143,'TEISSEIRE','MICKAELLE','2009-10-12',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (147,'APOCALE','AUDREY','2007-10-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (149,'CULOT-RYPENS','CARINE','2007-10-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (150,'HUA','PASCAL','2007-10-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (157,'LEPECHKINE','FRANCOIS','2008-11-04','2009-05-31',false,false,2,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (159,'CHUNG','NGOC TUAN','2001-01-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (160,'ROBIN','MAX','2007-10-29','2008-12-31',true,false,2,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (166,'BOUTI BENSETTI','ZARIFA','2007-12-04',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (168,'BOUZIDI','ALI','2007-12-17',null,false,true,2,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (169,'KOMBO','EDOUARD','2007-12-19',null,false,true,2,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (177,'JEAMMET','ANNICK','2008-01-21',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (178,'DURAND','PIERRE','2008-01-23',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (184,'NONNOTTE','ANNE CLAIRE FRANCOIS','2008-02-18',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (185,'SAHLI','DOUNIA','2008-02-11',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (186,'LE BIGOT','ELISABETH','2008-02-15',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (189,'BOCKELANDT','KEVIN','2008-02-04',null,false,true,1,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (191,'UCHIYAMA','MARIE ODILE','2008-02-18',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (192,'REYNAUD','STEPHANIE','2008-02-21',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (199,'DECOSTA','VIRGINIE','2008-04-14',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (203,'BERTHELLEMY','ANNE','2008-03-25',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (206,'SENECHAL','FREDERIQUE','2009-05-26',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (208,'SAYAG','MARC','2008-05-05',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (211,'HUE','DOROTHEE','2008-06-01',null,false,true,5,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (215,'COLACO','MAFALDA','2009-01-01','2009-08-31',false,false,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (216,'BRISSARD','MARIELLE','2008-06-23',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (219,'MENUELLE','ARNAUD','2008-06-30',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (220,'MARTY','ARIANE','2008-07-07','2009-03-31',false,false,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (221,'ROTA','ANNE CATHERINE','2008-07-07',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (222,'FLOBERT','HERVE','2008-07-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (223,'RAOELY','MIRANA','2008-06-30',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (224,'RICO LEVY','RAPHAELLE','2008-07-17',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (227,'AUBERT','AGNES','2008-07-23',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (230,'JAOUEN','SUZE','2008-08-06',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (235,'TELIORIDIS','JOANNIS','2008-08-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (236,'LAVOIPIERRE','THOMAS','2008-08-06',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (238,'BOYER','AURELIE','2008-09-01',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (239,'CALLERI','FREDERIQUE','1989-10-20',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (240,'ALLGEYER','CLAIRE','1992-04-13',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (241,'HALBERT','VERONIQUE','1991-03-18',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (242,'DUVAL','DOMINIQUE','1979-09-01','2009-08-31',true,false,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (243,'CHACUN KERBOURC''H','MELANIE','2008-08-25',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (244,'DE LA ROCHEBROCHARD','CYRILLE','2008-09-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (246,'LASNE','BRIGITTE','1992-03-08',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (247,'DEFRENNE','VINCENT','2008-09-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (248,'REY','ANDRE','1995-01-01',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (252,'ALTORN','CHRISTELLE','2008-09-08',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (255,'SALORT','SANDRINE','1993-05-10',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (257,'MARCILLET','MADELEINE','1991-02-04',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (259,'ROMAIN','CATHERINE','1984-03-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (260,'RECOURSE-RICHARD','GAELLE','2008-09-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (262,'SAWASTYANOWICZ','SYBILLE','2008-09-13','2009-04-30',false,false,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (264,'SINABA','AMINATA','2008-11-01','2009-05-31',false,false,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (265,'WERTH','MARIE JOSE','2009-06-15','2009-08-31',false,false,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (266,'PERRICHET','SOLINE','2009-09-01',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (267,'AIT SAAOUD','SAMIR','2008-09-08',null,false,true,2,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (268,'ENES','AUDREY','2008-09-24',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (269,'LINDIVAT','EMMANUELLE','2008-09-16',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (272,'BULTEL','CHRISTIAN','1992-10-12',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (273,'KAROUBI','GILDAS','2008-09-15',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (274,'HONORE','DOMINIQUE','1985-01-22',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (275,'LEVOUIN','CHRISTOPHE','1990-11-26',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (277,'RASMUSSEN','SONIA','1989-06-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (278,'VERGE','HUGUES','1992-04-13',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (279,'LABIB','YOUSSEF','2008-10-01','2009-06-30',false,false,5,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (282,'CORDEAU','PATRICK','1978-05-29',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (284,'TECHER','CATHERINE','2008-10-13',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (285,'RIVOIRON','SOLANGE','2008-10-13',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (286,'RAZON','LIONEL','2008-10-13',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (287,'CHABOCHE','LISE','2008-10-23',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (288,'HANSER','SANDRA','2008-11-06','2009-05-31',false,false,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (289,'DUROY','ESTELLE','2008-11-17','2009-04-30',false,false,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (290,'FONVIEILLE','COLETTE','2008-11-17',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (291,'THIRAULT','CELINE','2008-11-24',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (292,'BOUARABA','REBIHA','2008-12-15','2009-05-31',false,false,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (293,'ONYEMUWA','AKUNNA','2009-08-31',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (294,'HEBERT','ALEXIA','2009-01-12',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (295,'LAGAIN','AMANDINE','2009-01-21',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (298,'DE GRAMONT','CLAIRE','1995-01-30',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (300,'BETTICHE','MARIE-THERESE','1974-06-27',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (301,'LEWKOWICZ','ALAIN','2009-01-19','2009-07-31',true,false,2,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (303,'FOURNIER','CATHERINE','1992-06-29',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (304,'GUENOT','MICHELE','1975-04-08',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (307,'EVANS','FABIENNE','2009-01-19',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (308,'NDIAYE','ABDOUL','2009-01-21',null,false,true,2,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (309,'EUSTACHE','YANNICK','2009-01-27',null,false,true,2,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (310,'EVANS','DAVID','2009-02-01','2009-08-31',true,false,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (312,'TORCOL','ROMAIN','2009-02-02',null,false,true,2,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (313,'ROZE-DIETERLEN','VALERIE','2009-02-17',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (314,'BOCKELANDT','KEVIN','2009-02-09',null,false,true,2,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (317,'LE BIGOT','ELISABETH','2009-01-29',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (321,'DUMONT','BEATRICE','2009-03-16',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (322,'KIMFOKO','LOIC','2009-03-16',null,false,true,5,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (323,'CHABBOUH','SAMI','2009-03-25',null,false,true,2,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (324,'SALLE','ANNICK','2009-04-06',null,true,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (325,'SANCHEZ MANGIN','STEPHAN','2009-04-01',null,true,true,2,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (326,'MACAIRE','ANNE-LAURE','2009-04-14',null,false,true,5,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (327,'LEFRANC','INGRID','2009-04-28',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (328,'LE','BAO NGOC','2009-04-20',null,false,true,5,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (329,'RUBENS','WILLIAM','2009-04-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (330,'GUY','ARNAUD','2009-04-14',null,true,true,2,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (332,'GALLET','CELINA','2009-04-27',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (333,'BREDECHE','GUILLAUME','2009-05-04',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (334,'SAKI','GUILLAUME','2009-05-11',null,false,true,2,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (335,'BELLET','MATHIEU','1995-12-18',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (336,'JAOUEN','SUZE','2009-04-27',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (337,'GATANAZI','LEONCIE','2009-05-18',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (339,'SUCILLON','NADINE','1974-10-15',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (343,'PILLE','OLIVIER','2009-05-18',null,false,true,5,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (344,'LEVERT','SOPHIE','1996-01-22',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (345,'ROUABAH','LOUISA','1996-01-22',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (346,'CORBEL','CLAIRE','2009-06-04',null,false,true,5,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (347,'DOLY','GUILLAUME','2009-05-28',null,false,true,5,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (348,'WAGUE','FATOUMA','2009-06-02',null,false,true,5,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (349,'HONVO','DIDIER','1996-01-29',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (351,'LEVAN','CHRISTINE','1996-01-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (355,'BOUTI BENSETTI','ZARIFA','2009-06-18',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (356,'GIRARDON','EVELYNE','2009-06-22',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (357,'BOUZAR','HIND','2009-06-23',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (358,'GUERGADIC','FRANCOIS','2009-06-29',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (361,'SILVESTRI','ARIANE','2009-07-15','2009-07-31',false,false,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (363,'GAUDIN','BENEDICTE','2009-07-15',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (366,'LAMOUR','ANNABEL','2009-08-03',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (367,'BELLON','RACHEL','2009-08-24',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (368,'BIENVENU','AMANDINE','2009-08-24',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (371,'DJABILI MOKOSI','CAROLE','2009-09-01',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (372,'PICHARD','SEVERINE','2009-09-01',null,false,true,5,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (373,'COQBLIN','VALERIE','2009-09-05',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (374,'FITOUSSI','STEPHANIE','2009-09-07',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (377,'FERRIERE','ISABELLE','2009-09-07',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (378,'SUCILLON','LAURA','2009-09-14',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (383,'PAIN','FRANCOIS','2009-09-14',null,false,true,2,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (384,'FRASCO','DAVID','2009-09-15',null,false,true,2,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (385,'CASTREC','GWENAELLE','2009-09-28',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (386,'LEBOUTET BARRELL','HELENE CLAIRE','2009-10-01',null,true,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (387,'PHILIPPS','DEBORAH','2009-09-24',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (388,'SERAZIN','DELPHINE','2009-09-28',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (391,'FERAUD','LAURENCE','2009-10-19',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (441,'MAURY','SANDRINE','1997-08-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (493,'TIROUCHE','MARTINE','1997-07-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (501,'HERPIN','DANIEL','1996-01-01','2009-06-30',true,false,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (504,'BROCHE','NATHALIE','1985-08-05',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (505,'BERNIER','VERONIQUE','1980-06-16',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (509,'BLENGINO','JEAN-MICHEL','1997-09-08',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (512,'BOURREE','FABIENNE','1996-01-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (582,'GORSSE','BRIGITTE','1996-01-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (592,'BELMAHI','HAKIM','1998-04-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (609,'FOURNIER','DAVID','1998-05-08',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (614,'FRANCOZ','LAURENT','1998-06-08',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (637,'DERRIEN','ELISA','1998-08-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (640,'SEDES','XAVIER','2007-08-20',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (651,'MARTIN','VALERIE','1998-09-19',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (656,'DELCLOS','CECILE','1998-10-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (657,'GRAY','CHRISTINE','1998-10-12',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (675,'JUNG','VALERIE','1998-11-24',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (677,'CECCALDI','ROSE-MARIE','1998-12-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (691,'COLRAT','GILLES','1999-01-04',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (695,'LANNUZEL','FRANCK','1999-02-27',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (707,'CROISAT','NOELLE','1999-03-15',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (714,'AMMOUR','BETTINA','1999-04-19',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (717,'COLIN','GREGG','2000-01-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (723,'LE VAN VAN','VALERIE','2001-08-07',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (728,'BOLIGNANO','MARIE-AUDE','1999-05-03',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (732,'LEMAIRE','PEGGY','1999-05-17',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (736,'BELLOUL','LYLIA','1999-06-07',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (752,'MAGITTERI','NATHALIE','2001-03-19',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (755,'SEBTI','MARIE-CLAUDE','1999-07-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (758,'RIFAUD-BERAUD','NICOLE','2000-03-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (772,'BUCHHEIT-BIERLA','ALEXANDRA','1999-08-30',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (774,'STUCKY','BRADLEY','2000-01-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (796,'TAVERNIER','PASCAL','1999-10-11',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (845,'BERLAND','VALERIE','1999-12-27',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (862,'LOISEAU','ISABELLE','2000-02-17',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (865,'LE BOURHIS','GHISLAINE','2000-02-02',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (874,'DUFOUR','CELINE','2000-03-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (897,'AIME-SEMPE','CHRISTINE','2000-04-17',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (899,'GOMIS-BACO','ALEXANDRE','2000-04-25',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (911,'LEFEVRE','ISABELLE','1991-04-15',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (921,'LAMBERT','EVELYNE','2000-05-29',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (932,'LE ROUX','HERVE','2000-09-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (940,'BRAULT','SOIZYK','2000-07-03',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (948,'BELMAHI','RAFIKA','2000-07-24',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (977,'GAMBY','CHANTAL','2000-08-25',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (986,'WOODALL','PHILIP','2000-09-11',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (992,'DELAROCHE','CATHERINE','1969-11-26',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (993,'DUREUIL','SYLVIE','1987-02-02',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (997,'LEPROUST','PHILIPPE','1987-08-03',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (998,'LEROUX','PHILIPPE','1988-10-05',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (999,'MERCIER','CATHERINE','1972-09-27',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1000,'METHIVIEZ','FRANCOISE','1984-05-23',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1002,'RIOS','LAURE','1996-10-28',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1008,'ROMAN-GIULIERI','INGRID','1997-10-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1020,'CESARION','MARIE-AIMEE','2000-11-13',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1028,'WIERNIK','LAURENT','2000-10-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1036,'MOUNIER-BENOIT','CHRISTINE','2000-10-24',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1043,'COSTANZO','ROSANNE','2000-12-04',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1045,'LURAC','BERNADETTE','2000-11-27',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1046,'DRUBIGNY','KATIA','2000-12-11',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1052,'MOREAU','MARIE-CLAUDE','2000-11-13',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1065,'CHEVALIER','JEROME','2001-01-22',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1085,'DOCQUIN','MATHILDE','2001-02-19',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1088,'LECLERC','EMMANUEL','2001-03-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1090,'PINSARD','LUC','2001-03-12',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1094,'MARTET','RAPHAELE','2001-03-26',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1102,'AUPHAN','OLIVIER','2001-05-14',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1104,'BRUN','BERENGERE','2001-05-14',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1107,'LEQUIEN','VALERIE','2001-04-23',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1109,'CASTRO','BEATRICE','2001-05-09',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1117,'GIRARD','EMMANUELLE','2001-06-11',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1120,'ONGARO','FABIENNE','2001-05-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1157,'ROSER','FABIENNE','2002-09-09',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1160,'CHABERT','MURIEL','2001-10-11',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1182,'SULASKI','MARIE-CHRISTINE','2002-02-18',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1199,'LEFEVRE','NATHALIE','2002-06-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1216,'BRANCOUR-POISSON','VIOLAINE','2003-01-13',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1223,'CRUZ HERNANDEZ','HECTOR DAVID','2003-03-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1228,'MORAINE','KARINE','2003-05-05',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1232,'SCHAFNER','EMMANUEL','2003-05-12',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1234,'GUARINOS','VIRGINIE','2004-10-22',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1243,'FERRAN','MARIE-CHARLOTTE','2003-08-20',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1244,'ZEVENHUIZEN','ALICJA','2004-02-02',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1250,'EBERSOLD','CLAIRE','2003-10-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1254,'BOBU','DRAGOS','2003-11-04',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1255,'MASCARELLI','DIDIER','2003-11-03',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1256,'SIBAUD','BENOIT','2003-10-28',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1258,'BIARD','JEROME','2004-01-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1259,'ZARJEVSKI','NICOLAS','2004-01-12',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1263,'GOUSSE','MATHIEU','2004-01-26',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1264,'PITAULT','VALERIE','2004-02-09',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1268,'LARSONNEUR','ARMELLE','2004-03-08',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1270,'CUNY','KARINE','2004-04-02',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1271,'LOISEAU','EDDY','2004-04-05',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1274,'FAUCHER','KARINE','2004-04-26',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1278,'BIGNON','LIONEL','2004-06-01',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1282,'PEREIRA','PHILIPPE','2004-06-01',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1283,'SAPENE','MAUD','2004-06-14',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1290,'O''NEILL','ALBINE','2004-07-12',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1298,'BOURIANT','NADINE','2004-10-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1306,'DESCLAIR','KARINE','2004-11-29',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1318,'GLOAGUEN','DAVID','2005-03-01',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1319,'GOCHGARIAN','ISABELLE','2005-03-14',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1333,'LHOPITAL','REGIS','2005-06-20',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1345,'RODRIGUEZ','DANIEL','2005-08-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1356,'HARRAS','MOUHSSINE','2006-03-27',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1364,'BRANCATO','SEBASTIEN','2006-06-26',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1370,'DELORT','BRIGITTE','1989-03-13',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1371,'COUPECHOUX','SYLVIE','2001-01-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1373,'FONTAINE','MARC','1996-01-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1376,'LEGUIN','FREDERIQUE','1996-01-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1378,'CANCEL','MARIE-PIERRE','1996-01-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1380,'LUU','GIANG-SON','1995-07-10',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1383,'SCIAS','BENJAMIN','1996-01-01',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1384,'GILBERT','MARINE','1996-01-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1386,'TAVERNIER','MARIE-HELENE','1996-01-04',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1453,'WEISE','FREYA','1996-03-11',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1504,'JAILLARDON','CHRISTINE','1996-05-02',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1672,'BARRIEU','HELENE','2001-01-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1677,'GOULET','FLORENCE','1997-03-03',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1678,'MENDIONDO','PATRICIA','1997-03-17',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1772,'SCHNITTER','CLAUDE','1997-08-20',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1835,'PINSON','JEAN-MARIE','1997-11-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1866,'BOITEUX','ANNE','1998-01-15',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1929,'KOSZUL','SONIA','1998-05-25',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1969,'MARCHI-RIBEYRE','MARIE-CHRISTINE','1998-07-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (1996,'ANGERARD','FABRICE','2001-01-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2010,'ROULLEAUX','FABIENNE','1998-09-07',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2116,'PAUCHARD-VELU','ANNABELLE','1999-04-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2128,'LEGER','PASCAL','1999-05-03',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2352,'MARSOLLAT','BENOIT','1999-06-14',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2358,'CHAMPS','HUGUETTE','1999-07-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2435,'HARBULOT','CECILE','1999-10-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2439,'GASPARD','STEPHANIE','1999-10-18',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2477,'NARDINO','BERNARD','1999-11-02',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2486,'TRIQUENEAUX','MURIEL','1999-11-29',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2492,'CAPELLE','VALERIE','1999-12-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2516,'WECKERING','ALAIN','2001-01-01',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2531,'BESTEL','MATHILDE','1996-09-16',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2532,'DURAND','HELENE','1996-12-02',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2548,'PREZEAU','VERONIQUE','1996-01-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2552,'GERARD','NATHALIE','1996-01-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2603,'BESSON','LAURE','2009-05-26',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2669,'RIOU','VIRGINIE','2000-06-19',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2673,'ARNOUX','ILEANA','2000-06-26',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2698,'CORMIER','NATHALIE','2000-07-31',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2699,'PENA GARZON','SOPHIE','2000-07-17',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2714,'ROCK MOUTTOUCOUMARAVELOU','VIDJEALACHOUMY','2000-07-26',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2742,'EVESQUE','JEAN-JACQUES','2000-09-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2779,'LUCAS','NATHALIE','2000-10-19',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2796,'RAJAUD','VERONIQUE','2000-10-31',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2810,'HUYNH','NGOC QUYEN','2000-11-13',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (2811,'BOULINGRIN','BENEDICTE','2000-11-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3019,'GUY','PASCAL','2000-10-04',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3020,'HERSENT','CHANTAL','1974-10-10',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3052,'VAGNER','BARBARA','1995-02-13',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3121,'VIANA GOMES','ANNETTE','2000-11-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3296,'HUMBLOT','NATHALIE','2001-01-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3297,'PIERRE PREBOIS','DOMINIQUE','2001-01-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3360,'MOYANO','SOPHIE','2001-03-05',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3398,'GALLET','STEPHANIE','2001-05-14',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3411,'DISTINGUIN','CHRISTELLE','2001-06-05',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3413,'DEBERTRAND','NATHALIE','2001-06-06',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3474,'HAYON','NATHALIE','2001-07-02',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3487,'CAPDEVIELLE','AURELIE','2001-07-16',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3507,'QUARANTE-GAUDIN','CHARLOTTE','2001-09-06',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3509,'FERRY','FABRICE','2001-09-01',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3586,'BOBRIE-DELALAY','CAROLINE','2002-02-11',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3587,'PORCHERON','SANDRINE','2002-02-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3588,'OULEHRI','TARIK','2002-02-01',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3589,'PHILIPPE','FABIENNE','2002-02-11',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3606,'OLRY','SERVANE','2002-03-04',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3611,'JACQUET','MARIE HELENE','2002-03-12',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3642,'BLAISE','VERONIQUE','2002-04-08',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3646,'BUGHEM','ALINE','2002-04-03',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3663,'LOU-GASSY','NATHALIE','2002-04-29',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3787,'MINAR','CHRISTINE','2002-09-23',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3871,'GARNIER','JOSIANE','2003-01-02',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3887,'BARSKY','EMMANUELLE','2003-01-20',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3909,'RIBEAUD','STEPHANIE','2003-01-27',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (3934,'MARTIN','STEPHANE','2003-03-24',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4036,'BONNET','GILLES','2003-10-31',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4100,'JOUAN','STEPHANIE','2004-02-02',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4101,'BRETECHE','GAETAN','2004-02-04',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4109,'LERMISSION','PIERRE','2004-02-09',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4153,'MARCHOIS','MARYLINE','2004-05-10',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4192,'OUSACI','MYRA','2004-08-16',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4206,'SAINT AUGUSTE-ROUSSET','SYLVIE','2005-01-05',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4234,'JESKE','FREDERIQUE','2004-12-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4249,'RINUY-REMILLIEUX','MONIQUE','2005-01-17',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4264,'JUGE','DEBORA','2005-03-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4272,'YVON','MATHILDE','2005-04-04',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4273,'DEKERLE','MARIE','2005-04-04',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4280,'BRUNEL','AGNES','2005-04-25',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4301,'AMOUROUX','ARMELLE','2002-01-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4326,'CHABOT','OLIVIER','2005-11-28',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4356,'LEBRUN','MURIEL','2006-05-29',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4365,'OUHARZOUNE','YASMINA','2006-07-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4369,'ZILVETI','MARCO','2006-07-01',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4370,'RUELLOT','LUDIVINE','2006-07-10',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4371,'ANDRE','TIFENN','2006-07-17',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4374,'VALENTIN','LAURE','2006-08-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4375,'BLANCHET','ANNE-CLAIRE','2006-08-16',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4376,'BABU','SANDRINE','2006-08-01',null,true,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4377,'DUSSER','DELPHINE','2006-08-04',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4380,'SIBAUD','STEPHANIE','2006-08-09',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4382,'BERNARD-BOUDAL','ALEXANDRA','2006-09-04',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4384,'ROLLAND','SEVERINE','2006-09-04',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4386,'BENHAMOU','KARINE','2009-04-14',null,false,true,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4387,'NACIRI','FARIDA','2008-02-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4388,'CAUCHET-LAPEYRONIE','AUDE','2006-09-28',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4389,'THEVENY','SEBASTIEN','2006-08-30',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4392,'RUHR','ELODIE','2006-09-10',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4394,'RONSSERAY','MARIE','2006-09-18',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4396,'RAINJARD','MARIE','2008-01-07',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4399,'LANCIA','SEVERINE','2006-10-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4409,'RECHIK','FARIZA','2006-11-06',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4410,'VADOT-BALLESTER','LYDIE','2006-11-09',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4412,'DE VAUMAS','ELEONORE','2006-11-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4413,'GALIBERT','SOPHIE','2006-11-13',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4415,'THIERRY','CEDRIC','2006-11-22',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4417,'CAUMARTIN','ALEXANDRE','2006-11-23',null,false,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4418,'MEMMI','LAURA','2006-12-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4419,'JAABIRI','FARAH','2006-12-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4420,'TERNOIR','ANNE-VIRGINIE','2006-12-01',null,false,true,3,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4423,'MOURIES','PIERRE','2006-12-21',null,true,true,3,'M');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (4424,'MAZUR','CECILE','2008-01-07','2008-12-31',false,false,2,'F');
 INSERT INTO `ce_sal` (`sal_cod`,`sal_nom`,`sal_pre`,`sal_dat_ent`,`sal_dat_sor`,`sal_pla`,`sal_acf`,`typcon_cod`,`sal_sex`) VALUES 
 (9999,'MAISONNEUVE','CATHERINE','2001-04-01',null,false,true,3,'F');
 
 /*
 Approvisionnement
 */
  
 
 INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (1,3,100,'E',to_date('06-01-2009', 'dd/MM/yyyy'),'0.00','+100','',1);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (1,2,100,'E',to_date('06-01-2009', 'dd/MM/yyyy'),'0.00','+100','',2);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (1,1,100,'E',to_date('06-01-2009', 'dd/MM/yyyy'),'0.00','+100','',3);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (1,7,100,'E',to_date('06-01-2009', 'dd/MM/yyyy'),'0.00','+100','',4);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (1,4,100,'E',to_date('06-01-2009', 'dd/MM/yyyy'),'0.00','+100','',5);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (1,6,100,'E',to_date('06-01-2009', 'dd/MM/yyyy'),'0.00','+100','',6);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (1,5,100,'E',to_date('06-01-2009', 'dd/MM/yyyy'),'0.00','+100','',7);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,6,50,'E',to_date('13-01-2009', 'dd/MM/yyyy'),'0.00','+50','',8);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,4,69,'E',to_date('19-01-2009', 'dd/MM/yyyy'),'0.00','+69','',9);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,5,406,'E',to_date('19-01-2009', 'dd/MM/yyyy'),'0.00','+406','',10);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,6,44,'E',to_date('19-01-2009', 'dd/MM/yyyy'),'0.00','+44','',11);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,6,99,'E',to_date('20-01-2009', 'dd/MM/yyyy'),'0.00','+99','',12);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,6,4,'E',to_date('20-01-2009', 'dd/MM/yyyy'),'0.00','+4','',13);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (5,6,50,'E',to_date('03-02-2009', 'dd/MM/yyyy'),'0.00','+50','',14);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,1,200,'E',to_date('10-02-2009', 'dd/MM/yyyy'),'0.00','+200','',15);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,2,200,'E',to_date('10-02-2009', 'dd/MM/yyyy'),'0.00','+200','',16);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,4,306,'E',to_date('10-02-2009', 'dd/MM/yyyy'),'0.00','+306','',17);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,6,199,'E',to_date('10-02-2009', 'dd/MM/yyyy'),'0.00','+199','',18);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,5,39,'E',to_date('10-02-2009', 'dd/MM/yyyy'),'0.00','+39','',19);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,6,30,'E',to_date('10-03-2009', 'dd/MM/yyyy'),'0.00','+30','',20);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,6,500,'E',to_date('16-03-2009', 'dd/MM/yyyy'),'0.00','+500','',21);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,5,500,'E',to_date('16-03-2009', 'dd/MM/yyyy'),'0.00','+500','',22);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,7,20,'E',to_date('16-04-2009', 'dd/MM/yyyy'),'0.00','+20','',23);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,7,14,'E',to_date('27-04-2009', 'dd/MM/yyyy'),'0.00','+14','',24);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,1,40,'E',to_date('05-05-2009', 'dd/MM/yyyy'),'0.00','+40','',25);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,7,3,'E',to_date('13-05-2009', 'dd/MM/yyyy'),'0.00','+3','',26);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,2,26,'E',to_date('15-05-2009', 'dd/MM/yyyy'),'0.00','+26','',27);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,1,49,'E',to_date('15-05-2009', 'dd/MM/yyyy'),'0.00','+49','',28);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,7,36,'E',to_date('15-05-2009', 'dd/MM/yyyy'),'0.00','+36','',29);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,6,86,'E',to_date('15-05-2009', 'dd/MM/yyyy'),'0.00','+86','',30);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,2,154,'E',to_date('15-05-2009', 'dd/MM/yyyy'),'0.00','+154','',31);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,1,81,'E',to_date('15-05-2009', 'dd/MM/yyyy'),'0.00','+81','',32);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,6,350,'E',to_date('16-06-2009', 'dd/MM/yyyy'),'0.00','+350','',33);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,5,300,'E',to_date('16-06-2009', 'dd/MM/yyyy'),'0.00','+300','',34);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,7,50,'E',to_date('16-06-2009', 'dd/MM/yyyy'),'0.00','+50','',35);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,4,100,'E',to_date('16-06-2009', 'dd/MM/yyyy'),'0.00','+100','',36);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,7,100,'E',to_date('28-07-2009', 'dd/MM/yyyy'),'0.00','+100','',37);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,6,300,'E',to_date('28-07-2009', 'dd/MM/yyyy'),'0.00','+300','',38);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,4,300,'E',to_date('28-07-2009', 'dd/MM/yyyy'),'0.00','+300','',39);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,2,100,'E',to_date('28-07-2009', 'dd/MM/yyyy'),'0.00','+100','',40);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,1,200,'E',to_date('28-07-2009', 'dd/MM/yyyy'),'0.00','+200','',41);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,5,100,'E',to_date('01-10-2009', 'dd/MM/yyyy'),'0.00','+100','',42);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,5,148,'E',to_date('01-10-2009', 'dd/MM/yyyy'),'0.00','+148','',43);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (4,6,200,'E',to_date('14-10-2009', 'dd/MM/yyyy'),'0.00','+200','',44);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (4,6,100,'E',to_date('27-10-2009', 'dd/MM/yyyy'),'0.00','+100','',45);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (4,5,200,'E',to_date('27-10-2009', 'dd/MM/yyyy'),'0.00','+200','',46);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,5,180,'E',to_date('05-11-2009', 'dd/MM/yyyy'),'0.00','+180','',47);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,6,386,'E',to_date('05-11-2009', 'dd/MM/yyyy'),'0.00','+386','',48);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,1,200,'E',to_date('05-11-2009', 'dd/MM/yyyy'),'0.00','+200','',49);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,2,100,'E',to_date('05-11-2009', 'dd/MM/yyyy'),'0.00','+100','',50);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,7,143,'E',to_date('05-11-2009', 'dd/MM/yyyy'),'0.00','+143','',51);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,6,250,'E',to_date('23-11-2009', 'dd/MM/yyyy'),'0.00','+250','',52);
INSERT INTO `ce_appro` (`usr_cod`,`art_cod`,`appro_nb`,`appro_typ`,`appro_dat`,`appro_mnt_tot`,`appro_qte_sig`,`appro_com`,`appro_cod`) VALUES 
 (6,7,150,'E',to_date('23-11-2009', 'dd/MM/yyyy'),'0.00','+150','',53);