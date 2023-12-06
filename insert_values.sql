INSERT INTO institute VALUES
('math', 'Institut för Matematik'),
('phys', 'Institut för Fysik'),
('bio', 'Institut för Biologi'),
('hist', 'Institut för Historia'),
('art', 'Institut för Konst');


SELECT * FROM program;

/*---------------------PROGRAM------------------------------*/

/*Matematik*/
INSERT INTO program (program_id, name) VALUES ('TAMS', 'Tillämpad Matematik och Statistik');
INSERT INTO program (program_id, name) VALUES ('DAVM', 'Datavetenskap och Matematik');
INSERT INTO program (program_id, name) VALUES ('FMRH', 'Finansiell Matematik och Riskhantering');
INSERT INTO program (program_id, name) VALUES ('MAMS', 'Matematisk Modellering och Simulering');
INSERT INTO program (program_id, name) VALUES ('ALKR', 'Algebra och Kryptografi');

-- Fysik
INSERT INTO program (program_id, name) VALUES ('TFPP', 'Teoretisk Fysik och Partikelfysik');
INSERT INTO program (program_id, name) VALUES ('KQNT', 'Kvantfysik och Nanoteknologi');
INSERT INTO program (program_id, name) VALUES ('AKOS', 'Astrofysik och Kosmologi');
INSERT INTO program (program_id, name) VALUES ('MFTE', 'Medicinsk Fysik och Teknik');
INSERT INTO program (program_id, name) VALUES ('EFHU', 'Energifysik och Hållbar Utveckling');

-- Biologi
INSERT INTO program (program_id, name) VALUES ('MBGG', 'Molekylärbiologi och Genetik');
INSERT INTO program (program_id, name) VALUES ('ENNB', 'Ekologi och Naturbevarande');
INSERT INTO program (program_id, name) VALUES ('MBFA', 'Medicinsk Biokemi och Farmakologi');
INSERT INTO program (program_id, name) VALUES ('MIIM', 'Mikrobiologi och Immunologi');
INSERT INTO program (program_id, name) VALUES ('MBET', 'Marinbiologi och Ekotoxikologi');
SELECT * FROM institute;

-- Historia
INSERT INTO program (program_id, name) VALUES ('HFAV', 'Historisk Forskning och Arkivvetenskap');
INSERT INTO program (program_id, name) VALUES ('GHKA', 'Global Historia och Kulturarv');
INSERT INTO program (program_id, name) VALUES ('DHIH', 'Digital Historia och Informationshantering');
INSERT INTO program (program_id, name) VALUES ('EHUS', 'Ekonomisk Historia och Samhällsutveckling');
INSERT INTO program (program_id, name) VALUES ('PHIR', 'Politisk Historia och Internationella Relationer');

-- Konst
INSERT INTO program (program_id, name) VALUES ('BHKK', 'Bildkonst och Konsthantverk');
INSERT INTO program (program_id, name) VALUES ('SKTR', 'Scenkonst och Teaterregi');
INSERT INTO program (program_id, name) VALUES ('DKIM', 'Digital Konst och Interaktiva Medier');
INSERT INTO program (program_id, name) VALUES ('KVKR', 'Konstvetenskap och Kritik');
INSERT INTO program (program_id, name) VALUES ('MTXD', 'Mode och Textildesign');




-- Matematik
INSERT INTO institution_program (institute_id, program_id)
VALUES
  ('math', 'TAMS'),
  ('math', 'DAVM'),
  ('math', 'FMRH'),
  ('math', 'MAMS'),
  ('math', 'ALKR');

-- Fysik
INSERT INTO institution_program (institute_id, program_id)
VALUES
  ('phys', 'TFPP'),
  ('phys', 'KQNT'),
  ('phys', 'AKOS'),
  ('phys', 'MFTE'),
  ('phys', 'EFHU');

-- Biologi
INSERT INTO institution_program (institute_id, program_id)
VALUES
  ('bio', 'MBGG'),
  ('bio', 'ENNB'),
  ('bio', 'MBFA'),
  ('bio', 'MIIM'),
  ('bio', 'MBET');

-- Historia
INSERT INTO institution_program (institute_id, program_id)
VALUES
  ('hist', 'HFAV'),
  ('hist', 'GHKA'),
  ('hist', 'DHIH'),
  ('hist', 'EHUS'),
  ('hist', 'PHIR');

-- Konst
INSERT INTO institution_program (institute_id, program_id)
VALUES
  ('art', 'BHKK'),
  ('art', 'SKTR'),
  ('art', 'DKIM'),
  ('art', 'KVKR'),
  ('art', 'MTXD');

