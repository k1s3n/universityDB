INSERT INTO institute VALUES
('MATH', 'Institut för Matematik'),
('PHYS', 'Institut för Fysik'),
('BIO', 'Institut för Biologi'),
('HIST', 'Institut för Historia'),
('ART', 'Institut för Konst');




/*---------------------PROGRAM------------------------------*/

/*Matematik*/
INSERT INTO program (program_id, name) 
VALUES
('TAMS', 'Tillämpad Matematik och Statistik'),
('DAVM', 'Datavetenskap och Matematik'),
('FMRH', 'Finansiell Matematik och Riskhantering'),
('MAMS', 'Matematisk Modellering och Simulering'),
('ALKR', 'Algebra och Kryptografi');

-- Fysik
INSERT INTO program (program_id, name) 
VALUES
('TFPP', 'Teoretisk Fysik och Partikelfysik'),
('KQNT', 'Kvantfysik och Nanoteknologi'),
('AKOS', 'Astrofysik och Kosmologi'),
('MFTE', 'Medicinsk Fysik och Teknik'),
('EFHU', 'Energifysik och Hållbar Utveckling');

-- Biologi
INSERT INTO program (program_id, name)
VALUES
('MBGG', 'Molekylärbiologi och Genetik'),
('ENNB', 'Ekologi och Naturbevarande'),
('MBFA', 'Medicinsk Biokemi och Farmakologi'),
('MIIM', 'Mikrobiologi och Immunologi'),
('MBET', 'Marinbiologi och Ekotoxikologi');

-- Historia
INSERT INTO program (program_id, name)
VALUES 
('HFAV', 'Historisk Forskning och Arkivvetenskap'),
('GHKA', 'Global Historia och Kulturarv'),
('DHIH', 'Digital Historia och Informationshantering'),
('EHUS', 'Ekonomisk Historia och Samhällsutveckling'),
('PHIR', 'Politisk Historia och Internationella Relationer');

-- Konst
INSERT INTO program (program_id, name) 
VALUES
('BHKK', 'Bildkonst och Konsthantverk'),
('SKTR', 'Scenkonst och Teaterregi'),
('DKIM', 'Digital Konst och Interaktiva Medier'),
('KVKR', 'Konstvetenskap och Kritik'),
('MTXD', 'Mode och Textildesign');



--- instutituion_program---
-- Matematik
INSERT INTO institution_program (institute_id, program_id)
VALUES
  ('MATH', 'TAMS'),
  ('MATH', 'DAVM'),
  ('MATH', 'FMRH'),
  ('MATH', 'MAMS'),
  ('MATH', 'ALKR');

-- Fysik
INSERT INTO institution_program (institute_id, program_id)
VALUES
  ('PHYS', 'TFPP'),
  ('PHYS', 'KQNT'),
  ('PHYS', 'AKOS'),
  ('PHYS', 'MFTE'),
  ('PHYS', 'EFHU');

-- Biologi
INSERT INTO institution_program (institute_id, program_id)
VALUES
  ('BIO', 'MBGG'),
  ('BIO', 'ENNB'),
  ('BIO', 'MBFA'),
  ('BIO', 'MIIM'),
  ('BIO', 'MBET');

-- Historia
INSERT INTO institution_program (institute_id, program_id)
VALUES
  ('HIST', 'HFAV'),
  ('HIST', 'GHKA'),
  ('HIST', 'DHIH'),
  ('HIST', 'EHUS'),
  ('HIST', 'PHIR');

-- Konst
INSERT INTO institution_program (institute_id, program_id)
VALUES
  ('ART', 'BHKK'),
  ('ART', 'SKTR'),
  ('ART', 'DKIM'),
  ('ART', 'KVKR'),
  ('ART', 'MTXD');

-- Kurser kopplade till Mattematik (MATH)
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MATH01', 'Grundläggande Matematik I', 7, 'MATH');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MATH02', 'Avancerad Kalkyl', 8, 'MATH');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MATH03', 'Linjär Algebra och Geometri', 7, 'MATH');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MATH04', 'Differentialekvationer', 7, 'MATH');

-- Kurser kopplade till Fysik (PHYS)
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHYS01', 'Klassisk Mekanik', 8, 'PHYS');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHYS02', 'Elektromagnetism', 8, 'PHYS');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHYS03', 'Kvantmekanik', 7, 'PHYS');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHYS04', 'Termodynamik och Statistisk Fysik', 7, 'PHYS');

-- Kurser kopplade till Konst (ARTS)
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('ARTS01', 'Måleri och Skulptur', 6, 'ART');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('ARTS02', 'Digital Konst och Design', 7, 'ART');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('ARTS03', 'Teater och Performancekonst', 8, 'ART');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('ARTS04', 'Konsthistoria och Estetik', 7, 'ART');
-- Kurser kopplade till Historia (HIST)
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('HIST01', 'Medeltidens Historia', 7, 'HIST');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('HIST02', 'Modern Världshistoria', 8, 'HIST');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('HIST03', 'Ekonomisk Historia', 7, 'HIST');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('HIST04', 'Politik och Kultur under 1900-talet', 8, 'HIST');

-- Kurser kopplade till Biologi (BIO)
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('BIO01', 'Cellbiologi', 7, 'BIO');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('BIO02', 'Genetik och Molekylärbiologi', 8, 'BIO');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('BIO03', 'Ekologi och Miljövetenskap', 7, 'BIO');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('BIO04', 'Marinbiologi och Bioteknik', 8, 'BIO');

-- Fristående kurser
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('CSCI01', 'Introduktion till Datorvetenskap', 6, NULL);
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHIL01', 'Introduktion till Filosofi', 5, NULL);
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('LANG01', 'Inledande Språkkurs', 6, NULL);
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('ECON01', 'Mikroekonomi', 7, NULL);
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PSYC01', 'Allmän Psykologi', 6, NULL);
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MUSI01', 'Musikteori och Komposition', 8, NULL);

-- Grenar inom Matematik-programmen
INSERT INTO branch (branch_id, program_id) VALUES ('Tillämpad Matematik och Statistik', 'TAMS');
INSERT INTO branch (branch_id, program_id) VALUES ('Datavetenskap och Matematik', 'DAVM');
INSERT INTO branch (branch_id, program_id) VALUES ('Finansiell Matematik och Riskhantering', 'FMRH');
INSERT INTO branch (branch_id, program_id) VALUES ('Matematisk Modellering och Simulering', 'MAMS');
INSERT INTO branch (branch_id, program_id) VALUES ('Algebra och Kryptografi', 'ALKR');
--dgfdkwoa
-- Grenar inom Fysik-programmen
INSERT INTO branch (branch_id, program_id) VALUES ('Teoretisk Fysik och Partikelfysik', 'TFPP');
INSERT INTO branch (branch_id, program_id) VALUES ('Kvantfysik och Nanoteknologi', 'KQNT');
INSERT INTO branch (branch_id, program_id) VALUES ('Astrofysik och Kosmologi', 'AKOS');
INSERT INTO branch (branch_id, program_id) VALUES ('Medicinsk Fysik och Teknik', 'MFTE');
INSERT INTO branch (branch_id, program_id) VALUES ('Energifysik och Hållbar Utveckling', 'EFHU');

-- Grenar inom Biologi-programmen
INSERT INTO branch (branch_id, program_id) VALUES ('Molekylärbiologi och Genetik', 'MBGG');
INSERT INTO branch (branch_id, program_id) VALUES ('Ekologi och Naturbevarande', 'ENNB');
INSERT INTO branch (branch_id, program_id) VALUES ('Medicinsk Biokemi och Farmakologi', 'MBFA');
INSERT INTO branch (branch_id, program_id) VALUES ('Mikrobiologi och Immunologi', 'MIIM');
INSERT INTO branch (branch_id, program_id) VALUES ('Marinbiologi och Ekotoxikologi', 'MBET');

-- Grenar inom Historia-programmen
INSERT INTO branch (branch_id, program_id) VALUES ('Film och Ljudvisuell Historia', 'HFAV');
INSERT INTO branch (branch_id, program_id) VALUES ('Global Historia och Huvudområden', 'GHKA');
INSERT INTO branch (branch_id, program_id) VALUES ('Digital Historia och Informationshistoria', 'DHIH');
INSERT INTO branch (branch_id, program_id) VALUES ('Ekonomisk Historia och Samhällsutveckling', 'EHUS');
INSERT INTO branch (branch_id, program_id) VALUES ('Politisk Historia och Internationella Relationer', 'PHIR');

-- Grenar inom Konst-programmen
INSERT INTO branch (branch_id, program_id) VALUES ('Bokkonst och Handgjort Papper', 'BHKK');
INSERT INTO branch (branch_id, program_id) VALUES ('Skulptur och Kinetisk Konst', 'SKTR');
INSERT INTO branch (branch_id, program_id) VALUES ('Digital Konst och Interaktiva Medier', 'DKIM');
INSERT INTO branch (branch_id, program_id) VALUES ('Konstvetenskap och Kritik', 'KVKR');
INSERT INTO branch (branch_id, program_id) VALUES ('Blandteknik Textildesign', 'MTXD');
