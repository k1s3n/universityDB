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
INSERT INTO branch (branch_name, program_id)
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
INSERT INTO branch (branch_name, program_id)
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
INSERT INTO branch (branch_name, program_id)
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
INSERT INTO branch (branch_name, program_id)
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
INSERT INTO branch (branch_name, program_id)
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

INSERT INTO prerequisite(prerequisite_id, course_id)
VALUES
('CSCI01', 'CSCI02'),
('MUSI01', 'MUSI02'),
('LANG01', 'LANG02'),
('PHIL01', 'PHIL02');

INSERT INTO recommended_course_branch (course_id, branch_id, program_id) VALUES
  ('MATH06', 1, 'TAMS'),
  ('MATH06', 2, 'TAMS'),
  ('MATH06', 3, 'DAVM'),
  ('MATH06', 4, 'DAVM'),
  ('MATH06', 5, 'FMRH'),
  ('MATH06', 6, 'FMRH'),
  ('MATH06', 7, 'MAMS'),
  ('MATH06', 8, 'MAMS'),
  ('MATH06', 9, 'ALKR'),
  ('MATH06', 10, 'ALKR'),
  ('MATH07', 1, 'TAMS'),
  ('MATH07', 2, 'TAMS'),
  ('MATH07', 3, 'DAVM'),
  ('MATH07', 4, 'DAVM'),
  ('MATH07', 5, 'FMRH'),
  ('MATH07', 6, 'FMRH'),
  ('MATH07', 7, 'MAMS'),
  ('MATH07', 8, 'MAMS'),
  ('MATH07', 9, 'ALKR'),
  ('MATH07', 10, 'ALKR'),
  ('MATH08', 1, 'TAMS'),
  ('MATH08', 2, 'TAMS'),
  ('MATH08', 3, 'DAVM'),
  ('MATH08', 4, 'DAVM'),
  ('MATH08', 5, 'FMRH'),
  ('MATH08', 6, 'FMRH'),
  ('MATH08', 7, 'MAMS'),
  ('MATH08', 8, 'MAMS'),
  ('MATH08', 9, 'ALKR'),
  ('MATH08', 10, 'ALKR');


INSERT INTO recommended_course_branch (course_id, branch_id, program_id) VALUES
  ('PHYS06', 11, 'TFPP'),
  ('PHYS06', 12, 'TFPP'),
  ('PHYS06', 13, 'KQNT'),
  ('PHYS06', 14, 'KQNT'),
  ('PHYS06', 15, 'AKOS'),
  ('PHYS06', 16, 'AKOS'),
  ('PHYS06', 17, 'MFTE'),
  ('PHYS06', 18, 'MFTE'),
  ('PHYS06', 19, 'EFHU'),
  ('PHYS06', 20, 'EFHU'),
  ('PHYS07', 11, 'TFPP'),
  ('PHYS07', 12, 'TFPP'),
  ('PHYS07', 13, 'KQNT'),
  ('PHYS07', 14, 'KQNT'),
  ('PHYS07', 15, 'AKOS'),
  ('PHYS07', 16, 'AKOS'),
  ('PHYS07', 17, 'MFTE'),
  ('PHYS07', 18, 'MFTE'),
  ('PHYS07', 19, 'EFHU'),
  ('PHYS07', 20, 'EFHU'),
  ('PHYS08', 11, 'TFPP'),
  ('PHYS08', 12, 'TFPP'),
  ('PHYS08', 13, 'KQNT'),
  ('PHYS08', 14, 'KQNT'),
  ('PHYS08', 15, 'AKOS'),
  ('PHYS08', 16, 'AKOS'),
  ('PHYS08', 17, 'MFTE'),
  ('PHYS08', 18, 'MFTE'),
  ('PHYS08', 19, 'EFHU'),
  ('PHYS08', 20, 'EFHU');

  -- Recommended branches for courses BIO06-BIO08
INSERT INTO recommended_course_branch (course_id, branch_id, program_id) VALUES
  ('BIO06', 21, 'MBGG'),
  ('BIO07', 21, 'MBGG'),
  ('BIO08', 21, 'MBGG'),
  ('BIO06', 22, 'MBGG'),
  ('BIO07', 22, 'MBGG'),
  ('BIO08', 22, 'MBGG'),
  ('BIO06', 23, 'ENNB'),
  ('BIO07', 23, 'ENNB'),
  ('BIO08', 23, 'ENNB'),
  ('BIO06', 24, 'ENNB'),
  ('BIO07', 24, 'ENNB'),
  ('BIO08', 24, 'ENNB'),
  ('BIO06', 25, 'MBFA'),
  ('BIO07', 25, 'MBFA'),
  ('BIO08', 25, 'MBFA'),
  ('BIO06', 26, 'MBFA'),
  ('BIO07', 26, 'MBFA'),
  ('BIO08', 26, 'MBFA'),
  ('BIO06', 27, 'MIIM'),
  ('BIO07', 27, 'MIIM'),
  ('BIO08', 27, 'MIIM'),
  ('BIO06', 28, 'MIIM'),
  ('BIO07', 28, 'MIIM'),
  ('BIO08', 28, 'MIIM'),
  ('BIO06', 29, 'MBET'),
  ('BIO07', 29, 'MBET'),
  ('BIO08', 29, 'MBET'),
  ('BIO06', 30, 'MBET'),
  ('BIO07', 30, 'MBET'),
  ('BIO08', 30, 'MBET');

-- Recommended branches for courses HIST06-HIST08
INSERT INTO recommended_course_branch (course_id, branch_id, program_id) VALUES
  ('HIST06', 31, 'HFAV'),
  ('HIST07', 31, 'HFAV'),
  ('HIST08', 31, 'HFAV'),
  ('HIST06', 32, 'HFAV'),
  ('HIST07', 32, 'HFAV'),
  ('HIST08', 32, 'HFAV'),
  ('HIST06', 33, 'GHKA'),
  ('HIST07', 33, 'GHKA'),
  ('HIST08', 33, 'GHKA'),
  ('HIST06', 34, 'GHKA'),
  ('HIST07', 34, 'GHKA'),
  ('HIST08', 34, 'GHKA'),
  ('HIST06', 35, 'DHIH'),
  ('HIST07', 35, 'DHIH'),
  ('HIST08', 35, 'DHIH'),
  ('HIST06', 36, 'DHIH'),
  ('HIST07', 36, 'DHIH'),
  ('HIST08', 36, 'DHIH'),
  ('HIST06', 37, 'EHUS'),
  ('HIST07', 37, 'EHUS'),
  ('HIST08', 37, 'EHUS'),
  ('HIST06', 38, 'EHUS'),
  ('HIST07', 38, 'EHUS'),
  ('HIST08', 38, 'EHUS'),
  ('HIST06', 39, 'PHIR'),
  ('HIST07', 39, 'PHIR'),
  ('HIST08', 39, 'PHIR'),
  ('HIST06', 40, 'PHIR'),
  ('HIST07', 40, 'PHIR'),
  ('HIST08', 40, 'PHIR');

-- Recommended branches for courses ARTS06-ARTS08
INSERT INTO recommended_course_branch (course_id, branch_id, program_id) VALUES
  ('ARTS06', 41, 'BHKK'),
  ('ARTS07', 41, 'BHKK'),
  ('ARTS08', 41, 'BHKK'),
  ('ARTS06', 42, 'BHKK'),
  ('ARTS07', 42, 'BHKK'),
  ('ARTS08', 42, 'BHKK'),
  ('ARTS06', 43, 'SKTR'),
  ('ARTS07', 43, 'SKTR'),
  ('ARTS08', 43, 'SKTR'),
  ('ARTS06', 44, 'SKTR'),
  ('ARTS07', 44, 'SKTR'),
  ('ARTS08', 44, 'SKTR'),
  ('ARTS06', 45, 'DKIM'),
  ('ARTS07', 45, 'DKIM'),
  ('ARTS08', 45, 'DKIM'),
  ('ARTS06', 46, 'DKIM'),
  ('ARTS07', 46, 'DKIM'),
  ('ARTS08', 46, 'DKIM'),
  ('ARTS06', 47, 'KVKR'),
  ('ARTS07', 47, 'KVKR'),
  ('ARTS08', 47, 'KVKR'),
  ('ARTS06', 48, 'KVKR'),
  ('ARTS07', 48, 'KVKR'),
  ('ARTS08', 48, 'KVKR'),
  ('ARTS06', 49, 'MTXD'),
  ('ARTS07', 49, 'MTXD'),
  ('ARTS08', 49, 'MTXD'),
  ('ARTS06', 50, 'MTXD'),
  ('ARTS07', 50, 'MTXD'),
  ('ARTS08', 50, 'MTXD');

-- Mandatory branches for courses MATH09-MATH10
INSERT INTO mandatory_course_branch (course_id, branch_id, program_id) VALUES
  ('MATH09', 1, 'TAMS'),
  ('MATH10', 1, 'TAMS'),
  ('MATH09', 2, 'TAMS'),
  ('MATH10', 2, 'TAMS'),
  ('MATH09', 3, 'DAVM'),
  ('MATH10', 3, 'DAVM'),
  ('MATH09', 4, 'DAVM'),
  ('MATH10', 4, 'DAVM'),
  ('MATH09', 5, 'FMRH'),
  ('MATH10', 5, 'FMRH'),
  ('MATH09', 6, 'FMRH'),
  ('MATH10', 6, 'FMRH'),
  ('MATH09', 7, 'MAMS'),
  ('MATH10', 7, 'MAMS'),
  ('MATH09', 8, 'MAMS'),
  ('MATH10', 8, 'MAMS'),
  ('MATH09', 9, 'ALKR'),
  ('MATH10', 9, 'ALKR'),
  ('MATH09', 10, 'ALKR'),
  ('MATH10', 10, 'ALKR');

-- Mandatory branches for courses PHYS09-PHYS10
INSERT INTO mandatory_course_branch (course_id, branch_id, program_id) VALUES
  ('PHYS09', 11, 'TFPP'),
  ('PHYS10', 11, 'TFPP'),
  ('PHYS09', 12, 'TFPP'),
  ('PHYS10', 12, 'TFPP'),
  ('PHYS09', 13, 'KQNT'),
  ('PHYS10', 13, 'KQNT'),
  ('PHYS09', 14, 'KQNT'),
  ('PHYS10', 14, 'KQNT'),
  ('PHYS09', 15, 'AKOS'),
  ('PHYS10', 15, 'AKOS'),
  ('PHYS09', 16, 'AKOS'),
  ('PHYS10', 16, 'AKOS'),
  ('PHYS09', 17, 'MFTE'),
  ('PHYS10', 17, 'MFTE'),
  ('PHYS09', 18, 'MFTE'),
  ('PHYS10', 18, 'MFTE'),
  ('PHYS09', 19, 'EFHU'),
  ('PHYS10', 19, 'EFHU'),
  ('PHYS09', 20, 'EFHU'),
  ('PHYS10', 20, 'EFHU');

-- Mandatory branches for courses HIST09-HIST10
INSERT INTO mandatory_course_branch (course_id, branch_id, program_id) VALUES
  ('HIST09', 31, 'HFAV'),
  ('HIST10', 31, 'HFAV'),
  ('HIST09', 32, 'HFAV'),
  ('HIST10', 32, 'HFAV'),
  ('HIST09', 33, 'GHKA'),
  ('HIST10', 33, 'GHKA'),
  ('HIST09', 34, 'GHKA'),
  ('HIST10', 34, 'GHKA'),
  ('HIST09', 35, 'DHIH'),
  ('HIST10', 35, 'DHIH'),
  ('HIST09', 36, 'DHIH'),
  ('HIST10', 36, 'DHIH'),
  ('HIST09', 37, 'EHUS'),
  ('HIST10', 37, 'EHUS'),
  ('HIST09', 38, 'EHUS'),
  ('HIST10', 38, 'EHUS'),
  ('HIST09', 39, 'PHIR'),
  ('HIST10', 39, 'PHIR'),
  ('HIST09', 40, 'PHIR'),
  ('HIST10', 40, 'PHIR');

-- Mandatory branches for courses BIO09-BIO10
INSERT INTO mandatory_course_branch (course_id, branch_id, program_id) VALUES
  ('BIO09', 21, 'MBGG'),
  ('BIO10', 21, 'MBGG'),
  ('BIO09', 22, 'MBGG'),
  ('BIO10', 22, 'MBGG'),
  ('BIO09', 23, 'ENNB'),
  ('BIO10', 23, 'ENNB'),
  ('BIO09', 24, 'ENNB'),
  ('BIO10', 24, 'ENNB'),
  ('BIO09', 25, 'MBFA'),
  ('BIO10', 25, 'MBFA'),
  ('BIO09', 26, 'MBFA'),
  ('BIO10', 26, 'MBFA'),
  ('BIO09', 27, 'MIIM'),
  ('BIO10', 27, 'MIIM'),
  ('BIO09', 28, 'MIIM'),
  ('BIO10', 28, 'MIIM'),
  ('BIO09', 29, 'MBET'),
  ('BIO10', 29, 'MBET'),
  ('BIO09', 30, 'MBET'),
  ('BIO10', 30, 'MBET');

-- Mandatory branches for courses ARTS09-ARTS10
INSERT INTO mandatory_course_branch (course_id, branch_id, program_id) VALUES
  ('ARTS09', 41, 'BHKK'),
  ('ARTS10', 41, 'BHKK'),
  ('ARTS09', 42, 'BHKK'),
  ('ARTS10', 42, 'BHKK'),
  ('ARTS09', 43, 'SKTR'),
  ('ARTS10', 43, 'SKTR'),
  ('ARTS09', 44, 'SKTR'),
  ('ARTS10', 44, 'SKTR'),
  ('ARTS09', 45, 'DKIM'),
  ('ARTS10', 45, 'DKIM'),
  ('ARTS09', 46, 'DKIM'),
  ('ARTS10', 46, 'DKIM'),
  ('ARTS09', 47, 'KVKR'),
  ('ARTS10', 47, 'KVKR'),
  ('ARTS09', 48, 'KVKR'),
  ('ARTS10', 48, 'KVKR'),
  ('ARTS09', 49, 'MTXD'),
  ('ARTS10', 49, 'MTXD'),
  ('ARTS09', 50, 'MTXD'),
  ('ARTS10', 50, 'MTXD');



INSERT INTO classification (classification_id)
VALUES
('matematik'),
('forskning'),
('seminarie'),
('estetik');

-- classified_course för alla kurser och deras klassificeringar
INSERT INTO classified_course (classification_id, course_id)
VALUES
-- Matematik
('matematik', 'MATH01'),
('matematik', 'MATH02'),
('matematik', 'MATH03'),
('matematik', 'MATH04'),
('matematik', 'MATH05'),
('matematik', 'MATH06'),
('matematik', 'MATH07'),
('matematik', 'MATH08'),
('matematik', 'MATH09'),
('matematik', 'MATH10'),

-- Fysik
('forskning', 'PHYS01'),
('forskning', 'PHYS02'),
('forskning', 'PHYS03'),
('forskning', 'PHYS04'),
('forskning', 'PHYS05'),
('forskning', 'PHYS06'),
('forskning', 'PHYS07'),
('forskning', 'PHYS08'),
('forskning', 'PHYS09'),
('forskning', 'PHYS10'),

-- Konst
('seminarie', 'ARTS01'),
('seminarie', 'ARTS02'),
('seminarie', 'ARTS03'),
('seminarie', 'ARTS04'),
('seminarie', 'ARTS05'),
('seminarie', 'ARTS06'),
('seminarie', 'ARTS07'),
('seminarie', 'ARTS08'),
('seminarie', 'ARTS09'),
('seminarie', 'ARTS10'),

-- Historia
('seminarie', 'HIST01'),
('seminarie', 'HIST02'),
('seminarie', 'HIST03'),
('seminarie', 'HIST04'),
('seminarie', 'HIST05'),
('seminarie', 'HIST06'),
('seminarie', 'HIST07'),
('seminarie', 'HIST08'),
('seminarie', 'HIST09'),
('seminarie', 'HIST10'),

-- Biologi
('estetik', 'BIO01'),
('estetik', 'BIO02'),
('estetik', 'BIO03'),
('estetik', 'BIO04'),
('estetik', 'BIO05'),
('estetik', 'BIO06'),
('estetik', 'BIO07'),
('estetik', 'BIO08'),
('estetik', 'BIO09'),
('estetik', 'BIO10');

-- Students
INSERT INTO student (student_id, name, program_id, branch_id)
VALUES
('041224-6666', 'Bert Karlsson', 'PHIR', Null),
('950505-0001', 'Kristian Nilsson', 'SKTR', NULL),
('691224-0001', 'Thomas Palmberg', 'EFHU', NULL),
('123456-0001', 'Thomas Quick', 'HFAV', 31 );


-- Lägga in värden för kurser som är "limit_course"
INSERT INTO limit_course (course_id, capacity) 
VALUES
('LANG01', 1);

-- lägga till värden för waiting_list
/*INSERT INTO waiting_list (course_id, student_id, position)
VALUES
('LANG01', '691224-0001', NOW())
*/

INSERT INTO register (course_id, student_id)
VALUES
('LANG01', '950505-0001'),
('LANG01', '691224-0001');



-- Completed course
INSERT INTO completed_course (course_id, student_id, grade_id)
VALUES 
('ARTS01', '950505-0001', 5),
('PHIL02', '691224-0001', 'u');


SELECT * FROM completed_course;