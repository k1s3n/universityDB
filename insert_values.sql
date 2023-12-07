INSERT INTO institute VALUES
('MATH', 'Institut för Matematik'),
('PHYS', 'Institut för Fysik'),
('BIO', 'Institut för Biologi'),
('HIST', 'Institut för Historia'),
('ART', 'Institut för Konst'),
('FREE', 'Institut för fristående kurser');


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



  -- KURS 01-05 = mandatory_course_program KURS 06-08 = recommended_course_branch, KURS 09-10 = mandatory_course_branch
-- Kurser kopplade till Matematik (MATH)
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MATH01', 'Grundläggande Matematik I', 7, 'MATH');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MATH02', 'Avancerad Kalkyl', 8, 'MATH');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MATH03', 'Linjär Algebra och Geometri', 7, 'MATH');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MATH04', 'Differentialekvationer', 7, 'MATH');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MATH05', 'Matematisk Statistik', 8, 'MATH');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MATH06', 'Tillämpad Numerisk Analys', 8, 'MATH');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MATH07', 'Kombinatorik och Grafer', 7, 'MATH');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MATH08', 'Algebraisk Strukturteori', 8, 'MATH');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MATH09', 'Optimering och Operationsanalys', 8, 'MATH');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MATH10', 'Avancerad Tillämpad Matematik', 9, 'MATH');

-- Kurser kopplade till Fysik (PHYS)
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHYS01', 'Klassisk Mekanik', 8, 'PHYS');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHYS02', 'Elektromagnetism', 8, 'PHYS');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHYS03', 'Kvantmekanik', 7, 'PHYS');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHYS04', 'Termodynamik och Statistisk Fysik', 7, 'PHYS');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHYS05', 'Modern Fysik', 8, 'PHYS');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHYS06', 'Astrofysik', 8, 'PHYS');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHYS07', 'Fysikaliska Metoder och Mätteknik', 7, 'PHYS');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHYS08', 'Teoretisk Partikelfysik', 9, 'PHYS');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHYS09', 'Kärnfysik och Kärnpartikelfysik', 9, 'PHYS');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHYS10', 'Energifysik och Miljö', 8, 'PHYS');

-- Kurser kopplade till Konst (ARTS)
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('ARTS01', 'Måleri och Skulptur', 6, 'ART');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('ARTS02', 'Digital Konst och Design', 7, 'ART');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('ARTS03', 'Teater och Performancekonst', 8, 'ART');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('ARTS04', 'Konsthistoria och Estetik', 7, 'ART');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('ARTS05', 'Avancerade Konstformer', 8, 'ART');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('ARTS06', 'Grafisk Design och Illustration', 7, 'ART');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('ARTS07', 'Interaktiv Konst och Virtuell Verklighet', 8, 'ART');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('ARTS08', 'Skulptur och Installation', 8, 'ART');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('ARTS09', 'Konstvetenskaplig Forskning och Analys', 9, 'ART');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('ARTS10', 'Konst och Samhälle', 7, 'ART');

-- Kurser kopplade till Historia (HIST)
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('HIST01', 'Medeltidens Historia', 7, 'HIST');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('HIST02', 'Modern Världshistoria', 8, 'HIST');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('HIST03', 'Ekonomisk Historia', 7, 'HIST');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('HIST04', 'Politik och Kultur under 1900-talet', 8, 'HIST');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('HIST05', 'Historisk Forskningsmetodik', 8, 'HIST');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('HIST06', 'Global Historia', 8, 'HIST');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('HIST07', 'Kulturarv och Museologi', 7, 'HIST');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('HIST08', 'Historisk Geografi och Kartografi', 8, 'HIST');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('HIST09', 'Digital Historia och Arkivvetenskap', 9, 'HIST');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('HIST10', 'Historia och Samhällsutveckling', 7, 'HIST');

-- Kurser kopplade till Biologi (BIO)
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('BIO01', 'Cellbiologi', 7, 'BIO');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('BIO02', 'Genetik och Molekylärbiologi', 8, 'BIO');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('BIO03', 'Ekologi och Miljövetenskap', 7, 'BIO');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('BIO04', 'Marinbiologi och Bioteknik', 8, 'BIO');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('BIO05', 'Avancerade Biologiska Metoder', 8, 'BIO');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('BIO06', 'Immunologi och Virologi', 7, 'BIO');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('BIO07', 'Genomik och Bioinformatik', 8, 'BIO');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('BIO08', 'Biokemi och Molekylär Medicin', 8, 'BIO');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('BIO09', 'Miljöbioteknik och Hållbarhet', 9, 'BIO');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('BIO10', 'Neurobiologi och Psykobiologi', 7, 'BIO');

-- Fristående kurser
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('CSCI01', 'Introduktion till Datorvetenskap', 6, 'FREE');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHIL01', 'Introduktion till Filosofi', 5, 'FREE');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('LANG01', 'Inledande Språkkurs', 6, 'FREE');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('ECON01', 'Mikroekonomi', 7, 'FREE');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PSYC01', 'Allmän Psykologi', 6, 'FREE');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MUSI01', 'Musikteori och Komposition', 8, 'FREE');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('MUSI02', 'Avancerad Musikkomposition', 8, 'FREE');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('CSCI02', 'Algoritmer och Datastrukturer', 7, 'FREE');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('PHIL02', 'Etik och Moral', 6, 'FREE');
INSERT INTO course (course_id, name, credits, institute_id) VALUES ('LANG02', 'Avancerad Språkkurs', 7, 'FREE');


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



-- mandatory_course_program 
-- MATH
INSERT INTO mandatory_course_program (course_id,program_id)
VALUES
('MATH01', 'TAMS'),
('MATH02', 'TAMS'),
('MATH03', 'TAMS'),
('MATH04', 'TAMS'),
('MATH05', 'TAMS'),
('MATH01', 'DAVM'),
('MATH02', 'DAVM'),
('MATH03', 'DAVM'),
('MATH04', 'DAVM'),
('MATH05', 'DAVM'),
('MATH01', 'FMRH'),
('MATH02', 'FMRH'),
('MATH03', 'FMRH'),
('MATH04', 'FMRH'),
('MATH05', 'FMRH'),
('MATH01', 'MAMS'),
('MATH02', 'MAMS'),
('MATH03', 'MAMS'),
('MATH04', 'MAMS'),
('MATH05', 'MAMS'),
('MATH01', 'ALKR'),
('MATH02', 'ALKR'),
('MATH03', 'ALKR'),
('MATH04', 'ALKR'),
('MATH05', 'ALKR');

--FYSIK
INSERT INTO mandatory_course_program (course_id, program_id)
VALUES
('PHYS01', 'TFPP'),
('PHYS02', 'TFPP'),
('PHYS03', 'TFPP'),
('PHYS04', 'TFPP'),
('PHYS05', 'TFPP'),
('PHYS01', 'KQNT'),
('PHYS02', 'KQNT'),
('PHYS03', 'KQNT'),
('PHYS04', 'KQNT'),
('PHYS05', 'KQNT'),
('PHYS01', 'AKOS'),
('PHYS02', 'AKOS'),
('PHYS03', 'AKOS'),
('PHYS04', 'AKOS'),
('PHYS05', 'AKOS'),
('PHYS01', 'MFTE'),
('PHYS02', 'MFTE'),
('PHYS03', 'MFTE'),
('PHYS04', 'MFTE'),
('PHYS05', 'MFTE'),
('PHYS01', 'EFHU'),
('PHYS02', 'EFHU'),
('PHYS03', 'EFHU'),
('PHYS04', 'EFHU'),
('PHYS05', 'EFHU');

--ARTIST
INSERT INTO mandatory_course_program (course_id, program_id)
VALUES
('ARTS01', 'BHKK'),
('ARTS02', 'BHKK'),
('ARTS03', 'BHKK'),
('ARTS04', 'BHKK'),
('ARTS05', 'BHKK'),
('ARTS01', 'SKTR'),
('ARTS02', 'SKTR'),
('ARTS03', 'SKTR'),
('ARTS04', 'SKTR'),
('ARTS05', 'SKTR'),
('ARTS01', 'DKIM'),
('ARTS02', 'DKIM'),
('ARTS03', 'DKIM'),
('ARTS04', 'DKIM'),
('ARTS05', 'DKIM'),
('ARTS01', 'KVKR'),
('ARTS02', 'KVKR'),
('ARTS03', 'KVKR'),
('ARTS04', 'KVKR'),
('ARTS05', 'KVKR'),
('ARTS01', 'MTXD'),
('ARTS02', 'MTXD'),
('ARTS03', 'MTXD'),
('ARTS04', 'MTXD'),
('ARTS05', 'MTXD');


--HISTORY
INSERT INTO mandatory_course_program (course_id, program_id)
VALUES
('HIST01', 'HFAV'),
('HIST02', 'HFAV'),
('HIST03', 'HFAV'),
('HIST04', 'HFAV'),
('HIST05', 'HFAV'),
('HIST01', 'GHKA'),
('HIST02', 'GHKA'),
('HIST03', 'GHKA'),
('HIST04', 'GHKA'),
('HIST05', 'GHKA'),
('HIST01', 'DHIH'),
('HIST02', 'DHIH'),
('HIST03', 'DHIH'),
('HIST04', 'DHIH'),
('HIST05', 'DHIH'),
('HIST01', 'EHUS'),
('HIST02', 'EHUS'),
('HIST03', 'EHUS'),
('HIST04', 'EHUS'),
('HIST05', 'EHUS'),
('HIST01', 'PHIR'),
('HIST02', 'PHIR'),
('HIST03', 'PHIR'),
('HIST04', 'PHIR'),
('HIST05', 'PHIR');

--BIO
INSERT INTO mandatory_course_program (course_id, program_id)
VALUES
('BIO01', 'MBGG'),
('BIO02', 'MBGG'),
('BIO03', 'MBGG'),
('BIO04', 'MBGG'),
('BIO05', 'MBGG'),
('BIO01', 'ENNB'),
('BIO02', 'ENNB'),
('BIO03', 'ENNB'),
('BIO04', 'ENNB'),
('BIO05', 'ENNB'),
('BIO01', 'MBFA'),
('BIO02', 'MBFA'),
('BIO03', 'MBFA'),
('BIO04', 'MBFA'),
('BIO05', 'MBFA'),
('BIO01', 'MIIM'),
('BIO02', 'MIIM'),
('BIO03', 'MIIM'),
('BIO04', 'MIIM'),
('BIO05', 'MIIM'),
('BIO01', 'MBET'),
('BIO02', 'MBET'),
('BIO03', 'MBET'),
('BIO04', 'MBET'),
('BIO05', 'MBET');

