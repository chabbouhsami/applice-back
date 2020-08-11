/*
 * Users
 */
INSERT INTO `CE_USER` (`usr_nom`,`usr_pre`,`usr_mdp`,`usr_ema`,`usr_drt`,`usr_for`,`usr_acf`) VALUES  ('ADMIN','ADMIN','21232f297a57a5a743894a0e4a801fc3','dsi@elsevier.com','A',false,true);
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