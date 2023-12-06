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

-- Matematik
INSERT INTO branch (branch_id, program_id)
VALUES
('Masterexamen i Tillämpad Matematik och Statistik', 'TAMS'),
('Doktorsexamen i Tillämpad Matematik och Statistik', 'TAMS'),
('Masterexamen i Datavetenskap och Matematik', 'DAVM'),
('Fellowship in Dataanalys och Teknologi', 'DAVM'),
('Masterexamen i Finansiell Matematik och Riskhantering', 'FMRH'),
('Yrkesintyg i Finansiell Modellering', 'FMRH'),
('Masterexamen i Matematisk Modellering och Simulering', 'MAMS'),
('Doktorsexamen i Matematisk Simulering och Modellering', 'MAMS'),
('Avancerad Algebra och Kryptografi', 'ALKR'),
('Certifikat i Algebra och Kryptografi', 'ALKR');

-- Fysik
INSERT INTO branch (branch_id, program_id)
VALUES
('Masterexamen i Teoretisk Fysik och Partikelfysik', 'TFPP'),
('Doktorsexamen i Teoretisk Fysik och Partikelfysik', 'TFPP'),
('Kandidatexamen i Kvantfysik och Nanoteknologi', 'KQNT'),
('Diplom i Nanoteknologi och Kvantmekanik', 'KQNT'),
('Masterexamen i Astrofysik och Kosmologi', 'AKOS'),
('Postgraduate Certificate in Astrofysik och Kosmologi', 'AKOS'),
('Masterexamen i Medicinsk Fysik och Teknik', 'MFTE'),
('Fellowship in Medicinsk Teknologi och Avbildning', 'MFTE'),
('Energifysik och Hållbar Utveckling', 'EFHU'),
('Diploma i Hållbar Energiexpertis', 'EFHU');

-- Biologi
INSERT INTO branch (branch_id, program_id)
VALUES
('Masterexamen i Molekylärbiologi och Genetik', 'MBGG'),
('Examen i Genetik och Molekylärbiologi', 'MBGG'),
('Examensbevis i Ekologi och Naturbevarande', 'ENNB'),
('Utmärkelse i Miljöbiologi och Naturvård', 'ENNB'),
('Masterexamen i Medicinsk Biokemi och Farmakologi', 'MBFA'),
('Certifikat i Medicinsk Biokemi och Farmakologi', 'MBFA'),
('Masterexamen i Mikrobiologi och Immunologi', 'MIIM'),
('Diploma i Mikrobiologi och Immunologi', 'MIIM'),
('Magisterexamen i Marinbiologi och Ekotoxikologi', 'MBET'),
('Expertkurs i Ekotoxikologi och Marinbiologi', 'MBET');

-- Historia
INSERT INTO branch (branch_id, program_id)
VALUES
('PhD i Historisk Forskning och Arkivvetenskap', 'HFAV'),
('Forskningsstipendium i Arkivvetenskap', 'HFAV'),
('Magisterexamen i Global Historia och Kulturarv', 'GHKA'),
('Doktorat i Global Historia och Kulturarv', 'GHKA'),
('Doktorsexamen i Historisk Digital Informationshantering', 'DHIH'),
('Internationellt Diplom i Informationshistoria', 'DHIH'),
('Magisterexamen i Historia och Samhällsutveckling', 'EHUS'),
('Specialistdiploma i Social- och Ekonomisk Historia', 'EHUS'),
('Examensarbete i Politisk Historia och Internationella Relationer', 'PHIR'),
('Specialistexamen i Politisk Historia och Internationella Relationer', 'PHIR');

-- Konst
INSERT INTO branch (branch_id, program_id)
VALUES
('Kandidatexamen i Bildkonst och Konsthantverk', 'BHKK'),
('Avancerad Utbildning i Bildkonst och Konsthantverk', 'BHKK'),
('Magisterexamen i Konst och Teaterregi', 'SKTR'),
('Postgraduate Training in Scenkonst och Teaterregi', 'SKTR'),
('Examen i Digital Konst och Interaktiva Medier', 'DKIM'),
('Advanced Diploma i Konst och Interaktiva Medier', 'DKIM'),
('Magisterexamen i Konstvetenskap och Kritik', 'KVKR'),
('Certifikat i Konstvetenskap och Kritik', 'KVKR'),
('Masterexamen i Mode och Textildesign', 'MTXD'),
('Fördjupad Utbildning i Textildesign och Mode', 'MTXD');

