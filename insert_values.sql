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

INSERT INTO prerequisite(prerequisite_id, course_id)
VALUES
('CSCI01', 'CSCI02'),
('MUSI01', 'MUSI02'),
('LANG01', 'LANG02'),
('PHIL01', 'PHIL02');

INSERT INTO recommended_course_branch (course_id, branch_id, program_id) VALUES
  ('MATH06', 'Masterexamen i Tillämpad Matematik och Statistik', 'TAMS'),
  ('MATH06', 'Doktorsexamen i Tillämpad Matematik och Statistik', 'TAMS'),
  ('MATH06', 'Masterexamen i Datavetenskap och Matematik', 'DAVM'),
  ('MATH06', 'Fellowship in Dataanalys och Teknologi', 'DAVM'),
  ('MATH06', 'Masterexamen i Finansiell Matematik och Riskhantering', 'FMRH'),
  ('MATH06', 'Yrkesintyg i Finansiell Modellering', 'FMRH'),
  ('MATH06', 'Masterexamen i Matematisk Modellering och Simulering', 'MAMS'),
  ('MATH06', 'Doktorsexamen i Matematisk Simulering och Modellering', 'MAMS'),
  ('MATH06', 'Avancerad Algebra och Kryptografi', 'ALKR'),
  ('MATH06', 'Certifikat i Algebra och Kryptografi', 'ALKR'),
  ('MATH07', 'Masterexamen i Tillämpad Matematik och Statistik', 'TAMS'),
  ('MATH07', 'Doktorsexamen i Tillämpad Matematik och Statistik', 'TAMS'),
  ('MATH07', 'Masterexamen i Datavetenskap och Matematik', 'DAVM'),
  ('MATH07', 'Fellowship in Dataanalys och Teknologi', 'DAVM'),
  ('MATH07', 'Masterexamen i Finansiell Matematik och Riskhantering', 'FMRH'),
  ('MATH07', 'Yrkesintyg i Finansiell Modellering', 'FMRH'),
  ('MATH07', 'Masterexamen i Matematisk Modellering och Simulering', 'MAMS'),
  ('MATH07', 'Doktorsexamen i Matematisk Simulering och Modellering', 'MAMS'),
  ('MATH07', 'Avancerad Algebra och Kryptografi', 'ALKR'),
  ('MATH07', 'Certifikat i Algebra och Kryptografi', 'ALKR'),
  ('MATH08', 'Masterexamen i Tillämpad Matematik och Statistik', 'TAMS'),
  ('MATH08', 'Doktorsexamen i Tillämpad Matematik och Statistik', 'TAMS'),
  ('MATH08', 'Masterexamen i Datavetenskap och Matematik', 'DAVM'),
  ('MATH08', 'Fellowship in Dataanalys och Teknologi', 'DAVM'),
  ('MATH08', 'Masterexamen i Finansiell Matematik och Riskhantering', 'FMRH'),
  ('MATH08', 'Yrkesintyg i Finansiell Modellering', 'FMRH'),
  ('MATH08', 'Masterexamen i Matematisk Modellering och Simulering', 'MAMS'),
  ('MATH08', 'Doktorsexamen i Matematisk Simulering och Modellering', 'MAMS'),
  ('MATH08', 'Avancerad Algebra och Kryptografi', 'ALKR'),
  ('MATH08', 'Certifikat i Algebra och Kryptografi', 'ALKR');


INSERT INTO recommended_course_branch (course_id, branch_id, program_id) VALUES
  ('PHYS06', 'Masterexamen i Teoretisk Fysik och Partikelfysik', 'TFPP'),
  ('PHYS06', 'Doktorsexamen i Teoretisk Fysik och Partikelfysik', 'TFPP'),
  ('PHYS06', 'Kandidatexamen i Kvantfysik och Nanoteknologi', 'KQNT'),
  ('PHYS06', 'Diplom i Nanoteknologi och Kvantmekanik', 'KQNT'),
  ('PHYS06', 'Masterexamen i Astrofysik och Kosmologi', 'AKOS'),
  ('PHYS06', 'Postgraduate Certificate in Astrofysik och Kosmologi', 'AKOS'),
  ('PHYS06', 'Masterexamen i Medicinsk Fysik och Teknik', 'MFTE'),
  ('PHYS06', 'Fellowship in Medicinsk Teknologi och Avbildning', 'MFTE'),
  ('PHYS06', 'Energifysik och Hållbar Utveckling', 'EFHU'),
  ('PHYS06', 'Diploma i Hållbar Energiexpertis', 'EFHU'),
  ('PHYS07', 'Masterexamen i Teoretisk Fysik och Partikelfysik', 'TFPP'),
  ('PHYS07', 'Doktorsexamen i Teoretisk Fysik och Partikelfysik', 'TFPP'),
  ('PHYS07', 'Kandidatexamen i Kvantfysik och Nanoteknologi', 'KQNT'),
  ('PHYS07', 'Diplom i Nanoteknologi och Kvantmekanik', 'KQNT'),
  ('PHYS07', 'Masterexamen i Astrofysik och Kosmologi', 'AKOS'),
  ('PHYS07', 'Postgraduate Certificate in Astrofysik och Kosmologi', 'AKOS'),
  ('PHYS07', 'Masterexamen i Medicinsk Fysik och Teknik', 'MFTE'),
  ('PHYS07', 'Fellowship in Medicinsk Teknologi och Avbildning', 'MFTE'),
  ('PHYS07', 'Energifysik och Hållbar Utveckling', 'EFHU'),
  ('PHYS07', 'Diploma i Hållbar Energiexpertis', 'EFHU'),
  ('PHYS08', 'Masterexamen i Teoretisk Fysik och Partikelfysik', 'TFPP'),
  ('PHYS08', 'Doktorsexamen i Teoretisk Fysik och Partikelfysik', 'TFPP'),
  ('PHYS08', 'Kandidatexamen i Kvantfysik och Nanoteknologi', 'KQNT'),
  ('PHYS08', 'Diplom i Nanoteknologi och Kvantmekanik', 'KQNT'),
  ('PHYS08', 'Masterexamen i Astrofysik och Kosmologi', 'AKOS'),
  ('PHYS08', 'Postgraduate Certificate in Astrofysik och Kosmologi', 'AKOS'),
  ('PHYS08', 'Masterexamen i Medicinsk Fysik och Teknik', 'MFTE'),
  ('PHYS08', 'Fellowship in Medicinsk Teknologi och Avbildning', 'MFTE'),
  ('PHYS08', 'Energifysik och Hållbar Utveckling', 'EFHU'),
  ('PHYS08', 'Diploma i Hållbar Energiexpertis', 'EFHU');

  -- Recommended branches for courses BIO06-BIO08
INSERT INTO recommended_course_branch (course_id, branch_id, program_id) VALUES
  ('BIO06', 'Masterexamen i Molekylärbiologi och Genetik', 'MBGG'),
  ('BIO07', 'Masterexamen i Molekylärbiologi och Genetik', 'MBGG'),
  ('BIO08', 'Masterexamen i Molekylärbiologi och Genetik', 'MBGG'),
  ('BIO06', 'Examen i Genetik och Molekylärbiologi', 'MBGG'),
  ('BIO07', 'Examen i Genetik och Molekylärbiologi', 'MBGG'),
  ('BIO08', 'Examen i Genetik och Molekylärbiologi', 'MBGG'),
  ('BIO06', 'Examensbevis i Ekologi och Naturbevarande', 'ENNB'),
  ('BIO07', 'Examensbevis i Ekologi och Naturbevarande', 'ENNB'),
  ('BIO08', 'Examensbevis i Ekologi och Naturbevarande', 'ENNB'),
  ('BIO06', 'Utmärkelse i Miljöbiologi och Naturvård', 'ENNB'),
  ('BIO07', 'Utmärkelse i Miljöbiologi och Naturvård', 'ENNB'),
  ('BIO08', 'Utmärkelse i Miljöbiologi och Naturvård', 'ENNB'),
  ('BIO06', 'Masterexamen i Medicinsk Biokemi och Farmakologi', 'MBFA'),
  ('BIO07', 'Masterexamen i Medicinsk Biokemi och Farmakologi', 'MBFA'),
  ('BIO08', 'Masterexamen i Medicinsk Biokemi och Farmakologi', 'MBFA'),
  ('BIO06', 'Certifikat i Medicinsk Biokemi och Farmakologi', 'MBFA'),
  ('BIO07', 'Certifikat i Medicinsk Biokemi och Farmakologi', 'MBFA'),
  ('BIO08', 'Certifikat i Medicinsk Biokemi och Farmakologi', 'MBFA'),
  ('BIO06', 'Masterexamen i Mikrobiologi och Immunologi', 'MIIM'),
  ('BIO07', 'Masterexamen i Mikrobiologi och Immunologi', 'MIIM'),
  ('BIO08', 'Masterexamen i Mikrobiologi och Immunologi', 'MIIM'),
  ('BIO06', 'Diploma i Mikrobiologi och Immunologi', 'MIIM'),
  ('BIO07', 'Diploma i Mikrobiologi och Immunologi', 'MIIM'),
  ('BIO08', 'Diploma i Mikrobiologi och Immunologi', 'MIIM'),
  ('BIO06', 'Magisterexamen i Marinbiologi och Ekotoxikologi', 'MBET'),
  ('BIO07', 'Magisterexamen i Marinbiologi och Ekotoxikologi', 'MBET'),
  ('BIO08', 'Magisterexamen i Marinbiologi och Ekotoxikologi', 'MBET'),
  ('BIO06', 'Expertkurs i Ekotoxikologi och Marinbiologi', 'MBET'),
  ('BIO07', 'Expertkurs i Ekotoxikologi och Marinbiologi', 'MBET'),
  ('BIO08', 'Expertkurs i Ekotoxikologi och Marinbiologi', 'MBET');

-- Recommended branches for courses HIST06-HIST08
INSERT INTO recommended_course_branch (course_id, branch_id, program_id) VALUES
  ('HIST06', 'PhD i Historisk Forskning och Arkivvetenskap', 'HFAV'),
  ('HIST07', 'PhD i Historisk Forskning och Arkivvetenskap', 'HFAV'),
  ('HIST08', 'PhD i Historisk Forskning och Arkivvetenskap', 'HFAV'),
  ('HIST06', 'Forskningsstipendium i Arkivvetenskap', 'HFAV'),
  ('HIST07', 'Forskningsstipendium i Arkivvetenskap', 'HFAV'),
  ('HIST08', 'Forskningsstipendium i Arkivvetenskap', 'HFAV'),
  ('HIST06', 'Magisterexamen i Global Historia och Kulturarv', 'GHKA'),
  ('HIST07', 'Magisterexamen i Global Historia och Kulturarv', 'GHKA'),
  ('HIST08', 'Magisterexamen i Global Historia och Kulturarv', 'GHKA'),
  ('HIST06', 'Doktorat i Global Historia och Kulturarv', 'GHKA'),
  ('HIST07', 'Doktorat i Global Historia och Kulturarv', 'GHKA'),
  ('HIST08', 'Doktorat i Global Historia och Kulturarv', 'GHKA'),
  ('HIST06', 'Doktorsexamen i Historisk Digital Informationshantering', 'DHIH'),
  ('HIST07', 'Doktorsexamen i Historisk Digital Informationshantering', 'DHIH'),
  ('HIST08', 'Doktorsexamen i Historisk Digital Informationshantering', 'DHIH'),
  ('HIST06', 'Internationellt Diplom i Informationshistoria', 'DHIH'),
  ('HIST07', 'Internationellt Diplom i Informationshistoria', 'DHIH'),
  ('HIST08', 'Internationellt Diplom i Informationshistoria', 'DHIH'),
  ('HIST06', 'Magisterexamen i Historia och Samhällsutveckling', 'EHUS'),
  ('HIST07', 'Magisterexamen i Historia och Samhällsutveckling', 'EHUS'),
  ('HIST08', 'Magisterexamen i Historia och Samhällsutveckling', 'EHUS'),
  ('HIST06', 'Specialistdiploma i Social- och Ekonomisk Historia', 'EHUS'),
  ('HIST07', 'Specialistdiploma i Social- och Ekonomisk Historia', 'EHUS'),
  ('HIST08', 'Specialistdiploma i Social- och Ekonomisk Historia', 'EHUS'),
  ('HIST06', 'Examensarbete i Politisk Historia och Internationella Relationer', 'PHIR'),
  ('HIST07', 'Examensarbete i Politisk Historia och Internationella Relationer', 'PHIR'),
  ('HIST08', 'Examensarbete i Politisk Historia och Internationella Relationer', 'PHIR'),
  ('HIST06', 'Specialistexamen i Politisk Historia och Internationella Relationer', 'PHIR'),
  ('HIST07', 'Specialistexamen i Politisk Historia och Internationella Relationer', 'PHIR'),
  ('HIST08', 'Specialistexamen i Politisk Historia och Internationella Relationer', 'PHIR');

-- Recommended branches for courses ARTS06-ARTS08
INSERT INTO recommended_course_branch (course_id, branch_id, program_id) VALUES
  ('ARTS06', 'Kandidatexamen i Bildkonst och Konsthantverk', 'BHKK'),
  ('ARTS07', 'Kandidatexamen i Bildkonst och Konsthantverk', 'BHKK'),
  ('ARTS08', 'Kandidatexamen i Bildkonst och Konsthantverk', 'BHKK'),
  ('ARTS06', 'Avancerad Utbildning i Bildkonst och Konsthantverk', 'BHKK'),
  ('ARTS07', 'Avancerad Utbildning i Bildkonst och Konsthantverk', 'BHKK'),
  ('ARTS08', 'Avancerad Utbildning i Bildkonst och Konsthantverk', 'BHKK'),
  ('ARTS06', 'Magisterexamen i Konst och Teaterregi', 'SKTR'),
  ('ARTS07', 'Magisterexamen i Konst och Teaterregi', 'SKTR'),
  ('ARTS08', 'Magisterexamen i Konst och Teaterregi', 'SKTR'),
  ('ARTS06', 'Postgraduate Training in Scenkonst och Teaterregi', 'SKTR'),
  ('ARTS07', 'Postgraduate Training in Scenkonst och Teaterregi', 'SKTR'),
  ('ARTS08', 'Postgraduate Training in Scenkonst och Teaterregi', 'SKTR'),
  ('ARTS06', 'Examen i Digital Konst och Interaktiva Medier', 'DKIM'),
  ('ARTS07', 'Examen i Digital Konst och Interaktiva Medier', 'DKIM'),
  ('ARTS08', 'Examen i Digital Konst och Interaktiva Medier', 'DKIM'),
  ('ARTS06', 'Advanced Diploma i Konst och Interaktiva Medier', 'DKIM'),
  ('ARTS07', 'Advanced Diploma i Konst och Interaktiva Medier', 'DKIM'),
  ('ARTS08', 'Advanced Diploma i Konst och Interaktiva Medier', 'DKIM'),
  ('ARTS06', 'Magisterexamen i Konstvetenskap och Kritik', 'KVKR'),
  ('ARTS07', 'Magisterexamen i Konstvetenskap och Kritik', 'KVKR'),
  ('ARTS08', 'Magisterexamen i Konstvetenskap och Kritik', 'KVKR'),
  ('ARTS06', 'Certifikat i Konstvetenskap och Kritik', 'KVKR'),
  ('ARTS07', 'Certifikat i Konstvetenskap och Kritik', 'KVKR'),
  ('ARTS08', 'Certifikat i Konstvetenskap och Kritik', 'KVKR'),
  ('ARTS06', 'Masterexamen i Mode och Textildesign', 'MTXD'),
  ('ARTS07', 'Masterexamen i Mode och Textildesign', 'MTXD'),
  ('ARTS08', 'Masterexamen i Mode och Textildesign', 'MTXD'),
  ('ARTS06', 'Fördjupad Utbildning i Textildesign och Mode', 'MTXD'),
  ('ARTS07', 'Fördjupad Utbildning i Textildesign och Mode', 'MTXD'),
  ('ARTS08', 'Fördjupad Utbildning i Textildesign och Mode', 'MTXD');

-- Mandatory branches for courses MATH09-MATH10
INSERT INTO mandatory_course_branch (course_id, branch_id, program_id) VALUES
  ('MATH09', 'Masterexamen i Tillämpad Matematik och Statistik', 'TAMS'),
  ('MATH10', 'Masterexamen i Tillämpad Matematik och Statistik', 'TAMS'),
  ('MATH09', 'Doktorsexamen i Tillämpad Matematik och Statistik', 'TAMS'),
  ('MATH10', 'Doktorsexamen i Tillämpad Matematik och Statistik', 'TAMS'),
  ('MATH09', 'Masterexamen i Datavetenskap och Matematik', 'DAVM'),
  ('MATH10', 'Masterexamen i Datavetenskap och Matematik', 'DAVM'),
  ('MATH09', 'Fellowship in Dataanalys och Teknologi', 'DAVM'),
  ('MATH10', 'Fellowship in Dataanalys och Teknologi', 'DAVM'),
  ('MATH09', 'Masterexamen i Finansiell Matematik och Riskhantering', 'FMRH'),
  ('MATH10', 'Masterexamen i Finansiell Matematik och Riskhantering', 'FMRH'),
  ('MATH09', 'Yrkesintyg i Finansiell Modellering', 'FMRH'),
  ('MATH10', 'Yrkesintyg i Finansiell Modellering', 'FMRH'),
  ('MATH09', 'Masterexamen i Matematisk Modellering och Simulering', 'MAMS'),
  ('MATH10', 'Masterexamen i Matematisk Modellering och Simulering', 'MAMS'),
  ('MATH09', 'Doktorsexamen i Matematisk Simulering och Modellering', 'MAMS'),
  ('MATH10', 'Doktorsexamen i Matematisk Simulering och Modellering', 'MAMS'),
  ('MATH09', 'Avancerad Algebra och Kryptografi', 'ALKR'),
  ('MATH10', 'Avancerad Algebra och Kryptografi', 'ALKR'),
  ('MATH09', 'Certifikat i Algebra och Kryptografi', 'ALKR'),
  ('MATH10', 'Certifikat i Algebra och Kryptografi', 'ALKR');

-- Mandatory branches for courses PHYS09-PHYS10
INSERT INTO mandatory_course_branch (course_id, branch_id, program_id) VALUES
  ('PHYS09', 'Masterexamen i Teoretisk Fysik och Partikelfysik', 'TFPP'),
  ('PHYS10', 'Masterexamen i Teoretisk Fysik och Partikelfysik', 'TFPP'),
  ('PHYS09', 'Doktorsexamen i Teoretisk Fysik och Partikelfysik', 'TFPP'),
  ('PHYS10', 'Doktorsexamen i Teoretisk Fysik och Partikelfysik', 'TFPP'),
  ('PHYS09', 'Kandidatexamen i Kvantfysik och Nanoteknologi', 'KQNT'),
  ('PHYS10', 'Kandidatexamen i Kvantfysik och Nanoteknologi', 'KQNT'),
  ('PHYS09', 'Diplom i Nanoteknologi och Kvantmekanik', 'KQNT'),
  ('PHYS10', 'Diplom i Nanoteknologi och Kvantmekanik', 'KQNT'),
  ('PHYS09', 'Masterexamen i Astrofysik och Kosmologi', 'AKOS'),
  ('PHYS10', 'Masterexamen i Astrofysik och Kosmologi', 'AKOS'),
  ('PHYS09', 'Postgraduate Certificate in Astrofysik och Kosmologi', 'AKOS'),
  ('PHYS10', 'Postgraduate Certificate in Astrofysik och Kosmologi', 'AKOS'),
  ('PHYS09', 'Masterexamen i Medicinsk Fysik och Teknik', 'MFTE'),
  ('PHYS10', 'Masterexamen i Medicinsk Fysik och Teknik', 'MFTE'),
  ('PHYS09', 'Fellowship in Medicinsk Teknologi och Avbildning', 'MFTE'),
  ('PHYS10', 'Fellowship in Medicinsk Teknologi och Avbildning', 'MFTE'),
  ('PHYS09', 'Energifysik och Hållbar Utveckling', 'EFHU'),
  ('PHYS10', 'Energifysik och Hållbar Utveckling', 'EFHU'),
  ('PHYS09', 'Diploma i Hållbar Energiexpertis', 'EFHU'),
  ('PHYS10', 'Diploma i Hållbar Energiexpertis', 'EFHU');

-- Mandatory branches for courses HIST09-HIST10
INSERT INTO mandatory_course_branch (course_id, branch_id, program_id) VALUES
  ('HIST09', 'PhD i Historisk Forskning och Arkivvetenskap', 'HFAV'),
  ('HIST10', 'PhD i Historisk Forskning och Arkivvetenskap', 'HFAV'),
  ('HIST09', 'Forskningsstipendium i Arkivvetenskap', 'HFAV'),
  ('HIST10', 'Forskningsstipendium i Arkivvetenskap', 'HFAV'),
  ('HIST09', 'Magisterexamen i Global Historia och Kulturarv', 'GHKA'),
  ('HIST10', 'Magisterexamen i Global Historia och Kulturarv', 'GHKA'),
  ('HIST09', 'Doktorat i Global Historia och Kulturarv', 'GHKA'),
  ('HIST10', 'Doktorat i Global Historia och Kulturarv', 'GHKA'),
  ('HIST09', 'Doktorsexamen i Historisk Digital Informationshantering', 'DHIH'),
  ('HIST10', 'Doktorsexamen i Historisk Digital Informationshantering', 'DHIH'),
  ('HIST09', 'Internationellt Diplom i Informationshistoria', 'DHIH'),
  ('HIST10', 'Internationellt Diplom i Informationshistoria', 'DHIH'),
  ('HIST09', 'Magisterexamen i Historia och Samhällsutveckling', 'EHUS'),
  ('HIST10', 'Magisterexamen i Historia och Samhällsutveckling', 'EHUS'),
  ('HIST09', 'Specialistdiploma i Social- och Ekonomisk Historia', 'EHUS'),
  ('HIST10', 'Specialistdiploma i Social- och Ekonomisk Historia', 'EHUS'),
  ('HIST09', 'Examensarbete i Politisk Historia och Internationella Relationer', 'PHIR'),
  ('HIST10', 'Examensarbete i Politisk Historia och Internationella Relationer', 'PHIR'),
  ('HIST09', 'Specialistexamen i Politisk Historia och Internationella Relationer', 'PHIR'),
  ('HIST10', 'Specialistexamen i Politisk Historia och Internationella Relationer', 'PHIR');

-- Mandatory branches for courses BIO09-BIO10
INSERT INTO mandatory_course_branch (course_id, branch_id, program_id) VALUES
  ('BIO09', 'Masterexamen i Molekylärbiologi och Genetik', 'MBGG'),
  ('BIO10', 'Masterexamen i Molekylärbiologi och Genetik', 'MBGG'),
  ('BIO09', 'Examen i Genetik och Molekylärbiologi', 'MBGG'),
  ('BIO10', 'Examen i Genetik och Molekylärbiologi', 'MBGG'),
  ('BIO09', 'Examensbevis i Ekologi och Naturbevarande', 'ENNB'),
  ('BIO10', 'Examensbevis i Ekologi och Naturbevarande', 'ENNB'),
  ('BIO09', 'Utmärkelse i Miljöbiologi och Naturvård', 'ENNB'),
  ('BIO10', 'Utmärkelse i Miljöbiologi och Naturvård', 'ENNB'),
  ('BIO09', 'Masterexamen i Medicinsk Biokemi och Farmakologi', 'MBFA'),
  ('BIO10', 'Masterexamen i Medicinsk Biokemi och Farmakologi', 'MBFA'),
  ('BIO09', 'Certifikat i Medicinsk Biokemi och Farmakologi', 'MBFA'),
  ('BIO10', 'Certifikat i Medicinsk Biokemi och Farmakologi', 'MBFA'),
  ('BIO09', 'Masterexamen i Mikrobiologi och Immunologi', 'MIIM'),
  ('BIO10', 'Masterexamen i Mikrobiologi och Immunologi', 'MIIM'),
  ('BIO09', 'Diploma i Mikrobiologi och Immunologi', 'MIIM'),
  ('BIO10', 'Diploma i Mikrobiologi och Immunologi', 'MIIM'),
  ('BIO09', 'Magisterexamen i Marinbiologi och Ekotoxikologi', 'MBET'),
  ('BIO10', 'Magisterexamen i Marinbiologi och Ekotoxikologi', 'MBET'),
  ('BIO09', 'Expertkurs i Ekotoxikologi och Marinbiologi', 'MBET'),
  ('BIO10', 'Expertkurs i Ekotoxikologi och Marinbiologi', 'MBET');

-- Mandatory branches for courses ARTS09-ARTS10
INSERT INTO mandatory_course_branch (course_id, branch_id, program_id) VALUES
  ('ARTS09', 'Kandidatexamen i Bildkonst och Konsthantverk', 'BHKK'),
  ('ARTS10', 'Kandidatexamen i Bildkonst och Konsthantverk', 'BHKK'),
  ('ARTS09', 'Avancerad Utbildning i Bildkonst och Konsthantverk', 'BHKK'),
  ('ARTS10', 'Avancerad Utbildning i Bildkonst och Konsthantverk', 'BHKK'),
  ('ARTS09', 'Magisterexamen i Konst och Teaterregi', 'SKTR'),
  ('ARTS10', 'Magisterexamen i Konst och Teaterregi', 'SKTR'),
  ('ARTS09', 'Postgraduate Training in Scenkonst och Teaterregi', 'SKTR'),
  ('ARTS10', 'Postgraduate Training in Scenkonst och Teaterregi', 'SKTR'),
  ('ARTS09', 'Examen i Digital Konst och Interaktiva Medier', 'DKIM'),
  ('ARTS10', 'Examen i Digital Konst och Interaktiva Medier', 'DKIM'),
  ('ARTS09', 'Advanced Diploma i Konst och Interaktiva Medier', 'DKIM'),
  ('ARTS10', 'Advanced Diploma i Konst och Interaktiva Medier', 'DKIM'),
  ('ARTS09', 'Magisterexamen i Konstvetenskap och Kritik', 'KVKR'),
  ('ARTS10', 'Magisterexamen i Konstvetenskap och Kritik', 'KVKR'),
  ('ARTS09', 'Certifikat i Konstvetenskap och Kritik', 'KVKR'),
  ('ARTS10', 'Certifikat i Konstvetenskap och Kritik', 'KVKR'),
  ('ARTS09', 'Masterexamen i Mode och Textildesign', 'MTXD'),
  ('ARTS10', 'Masterexamen i Mode och Textildesign', 'MTXD'),
  ('ARTS09', 'Fördjupad Utbildning i Textildesign och Mode', 'MTXD'),
  ('ARTS10', 'Fördjupad Utbildning i Textildesign och Mode', 'MTXD');


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
('691224-0001', 'Thomas Palmberg', 'EFHU', NULL);

-- Completed course
INSERT INTO completed_course (course_id, student_id, grade_id)
VALUES 
('ARTS01', '950505-0001', 5);


-- Lägga in värden för kurser som är "limit_course"
INSERT INTO limit_course (course_id, capacity) 
VALUES
('LANG01', 1)

-- lägga till värden för waiting_list

INSERT INTO waiting_list (course_id, student_id, position)
VALUES
('LANG01', '691224-0001', NOW())

