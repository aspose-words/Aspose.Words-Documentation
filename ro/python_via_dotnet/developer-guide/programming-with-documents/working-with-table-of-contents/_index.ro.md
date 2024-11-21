---
title: Lucrul cu cuprins
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu cuprins
linktitle: Lucrul cu cuprins
description: "Introduceți și gestionați 'cuprins' într-un document folosind Python."
type: docs
weight: 170
url: /ro/python-net/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Adesea veți lucra cu documente care conțin un cuprins (TOC). Folosind Aspose.Words puteți introduce propriul Cuprins sau puteți reconstrui complet cuprinsul existent în document folosind doar câteva linii de cod. Acest articol prezintă modul de lucru cu câmpul cuprins și demonstrează:

- Cum se introduce un brand nou `TOC`
- Actualizați TOCs nou sau existent în document.
- Specificați comutatoare pentru a controla formatarea și structura generală f TOC.
- Cum se modifică stilurile și aspectul cuprinsului.
- Cum să eliminați un întreg câmp `TOC` împreună cu toate intrările din document.

## Introduceți un cuprins programatic

Puteți insera un câmp `TOC` (cuprins) în document în poziția curentă apelând metoda [DocumentBuilder.insert_table_of_contents](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_table_of_contents/).

Un cuprins dintr-un document Word poate fi construit în mai multe moduri și formatat folosind o varietate de opțiuni. Comutatoarele de câmp pe care le treceți la metodă controlează modul în care tabelul este construit și afișat în documentul dvs.

Comutatoarele implicite care sunt utilizate într-un `TOC` inserat în Microsoft Word sunt **"\o "1-3 \h \z \u"**. Descrierile acestor comutatoare, precum și o listă de comutatoare acceptate pot fi găsite mai târziu în articol. Puteți fie să utilizați acel ghid obțineți comutatoarele corecte, fie dacă aveți deja un document care conține `TOC` similar pe care îl doriți, puteți afișa coduri de câmp (*ALT+F9*) și copiați comutatoarele direct din câmp.

Următorul exemplu de cod arată cum să inserați un câmp cuprins într-un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertTableOfContents.py" >}}

Codul demonstrează că noul cuprins este inserat într-un document gol. Clasa [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) este apoi utilizată pentru a insera unele formatări de conținut eșantion cu stilurile de titlu corespunzătoare care sunt utilizate pentru a marca conținutul care urmează să fie inclus în TOC. Următoarele linii populează apoi `TOC` prin actualizarea câmpurilor și a aspectului paginii documentului.

{{% alert color="primary" %}}

Fără metodele utilizate în exemplu, atunci când deschideți documentul de ieșire, ați găsi câmpul `TOC`, dar fără conținut vizibil. Acest lucru se datorează faptului că câmpul `TOC` a fost inserat, dar nu este încă populat până când nu este actualizat în document. Informații suplimentare despre acest lucru sunt discutate în secțiunea următoare.

{{% /alert %}}

## Actualizați cuprinsul

Aspose.Words vă permite să actualizați complet un `TOC` cu doar câteva linii de cod. Acest lucru se poate face pentru a popula un `TOC` nou inserat sau pentru a actualiza un `TOC` existent după ce au fost făcute modificări ale documentului. Următoarele două metode trebuie utilizate pentru a actualiza câmpurile `TOC` din document:

1. [Document.update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/)
1. [Document.update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/)

Vă rugăm să rețineți că aceste două metode de actualizare trebuie să fie apelate în această ordine. Dacă este inversat, cuprinsul va fi populat, dar nu vor fi afișate numere de pagină. Orice număr de diferite TOCs poate fi actualizat. Aceste metode vor actualiza automat toate TOCs găsite în document.

Următorul exemplu de cod arată cum să reconstruiți complet câmpurile `TOC` din document invocând actualizarea câmpului:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-UpdateFields.py" >}}

Primul apel la [Document.update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) va construi `TOC`, toate intrările de text sunt populate și `TOC` apare aproape complet. Singurul lucru care lipsește sunt numerele de pagină care deocamdată sunt afișate cu "?". Al doilea apel la [Document.update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) va construi aspectul documentului în memorie. Acest lucru trebuie făcut pentru a Aduna numerele de pagină ale intrărilor. Numerele corecte de pagină calculate din acest apel sunt apoi inserate în TOC.

## Utilizați comutatoare pentru a controla comportamentul cuprinsului.

Ca și în cazul oricărui alt câmp, câmpul `TOC` poate accepta comutatoare definite în codul câmpului care controlează modul în care este construit tabelul de conținut. Anumite comutatoare sunt utilizate pentru a controla ce intrări sunt incluse și la ce nivel, în timp ce altele sunt utilizate pentru a controla aspectul TOC. Comutatoarele pot fi combinate împreună pentru a permite producerea unui cuprins complex.

![working-with-table-of-contents-aspose-words-net](working-with-table-of-contents-1.png)


În mod implicit, aceste comutatoare de mai sus sunt incluse la inserarea unui `TOC` implicit în document. A `TOC` fără comutatoare va include conținut din stilurile de titlu încorporate (ca și cum comutatorul \o este setat). Comutatoarele disponibile `TOC` care sunt acceptate de Aspose.Words sunt enumerate mai jos și utilizările lor sunt descrise în detaliu. Ele pot fi împărțite în secțiuni separate pe baza tipului lor. Comutatoarele din prima secțiune definesc ce conținut să includă în `TOC` și comutatoarele din a doua secțiune controlează aspectul TOC. Dacă un comutator nu este listat aici, atunci acesta nu este acceptat în prezent. Toate comutatoarele vor fi acceptate în versiunile viitoare. Suntem adăugarea de sprijin suplimentar cu fiecare versiune.

### Întrerupătoare De Marcare A Intrării

| Comutator | Descriere |
| :- | :- |
| **Heading Styles** <br>* (\O Comutator)* | <p>Acest comutator definește că `TOC` ar trebui să fie construit din stilurile de titlu încorporate. În Microsoft Word acestea sunt definite de Heading 1 - Heading 9. În Aspose.Words aceste stiluri sunt reprezentate de enumerarea corespunzătoare StyleIdentifier. Această enumerare reprezintă un identificator independent de localizare al unui stil, de exemplu `StyleIdentifier.Heading1` reprezintă stilul Heading 1. Folosind acest lucru, formatarea și proprietățile stilului pot fi preluate din colecția de stil a documentului. Clasa de stil corespunzătoare poate fi recuperată din colecția `Document.Styles` utilizând proprietatea indexată de tip StyleIdentifier.</p><p>![working-with-table-of-contents-styles](working-with-table-of-contents-2.png)</p><p>Orice conținut formatat cu aceste stiluri este inclus în cuprins. Nivelul titlului va defini nivelul ierarhic corespunzător al intrării din TOC. De exemplu, un paragraf cu stilul Heading 1 va fi tratat ca primul nivel din `TOC`, în timp ce un paragraf cu Heading 2 va fi tratat ca următorul nivel din ierarhie și așa mai departe.</p> |
| **Outline Levels** <br>* (\U comutator)* | <p>Fiecare paragraf poate defini un nivel de schiță sub opțiunile paragrafului.</p><p>![working-with-table-of-contents-paragraph](working-with-table-of-contents-3.png)</p><p>Această setare dictează nivelul la care acest paragraf trebuie tratat în ierarhia documentelor. Aceasta este o practică utilizată în mod obișnuit pentru a structura cu ușurință aspectul unui document. Această ierarhie poate fi vizualizată prin schimbarea la vizualizarea conturului în Microsoft Word. Similar cu stilurile de titlu, pot exista 1 – 9 niveluri de contur în plus față de nivelul" text al corpului". Nivelurile de contur 1 - 9 vor apărea în `TOC` în nivelul corespunzător al ierarhiei <br>Orice conținut cu un nivel de schiță fie stabilit în stilul paragrafului, fie direct pe paragraful în sine este inclus în TOC. În Aspose.Words nivelul conturului este reprezentat de proprietatea `ParagraphFormat.OutlineLevel` a nodului paragraf. Nivelul conturului unui stil de paragraf este reprezentat în același mod de proprietatea `Style.ParagraphFormat`.</p><p>{{% alert color="primary" %}}</p><p>Rețineți că stilurile de titlu încorporate, cum ar fi Heading 1, au un set obligatoriu de nivel de contur în setările de stil.</p><p>{{% /alert %}}</p> |
| **Custom Styles** <br>* (\T comutator)* | <p>Acest comutator va permite stiluri personalizate pentru a fi utilizate la colectarea intrărilor care urmează să fie utilizate în TOC. Acest lucru este adesea folosit împreună cu comutatorul \o pentru a include stiluri personalizate împreună cu stilurile de titlu încorporate în TOC. <br>Parametrii comutatorului trebuie să fie încadrați în semnele de vorbire. Multe stiluri personalizate pot fi incluse, pentru fiecare stil numele ar trebui specificat urmat de o virgulă urmată de nivelul în care stilul ar trebui să apară în `TOC` ca. Alte stiluri sunt, de asemenea, separate printr-o virgulă. <br>De exemplu</p><p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p><p>va folosi conținut stilat cu CustomHeading1 ca nivel 1 conținut în `TOC` și CustomHeading2 ca nivel 2.</p> |
| **Use TC Fields** <br>* (\F și \ l switch-uri)* | <p>În versiunile mai vechi ale Microsoft Word, singura modalitate de a construi un `TOC` a fost utilizarea câmpurilor TC. Aceste câmpuri sunt inserate ascunse în document chiar și atunci când sunt afișate coduri de câmp. Acestea includ textul care ar trebui să fie afișat în intrare și `TOC` este construit din ele. Această funcționalitate nu este acum utilizată foarte des, dar poate fi totuși utilă în unele ocazii pentru a include intrări în `TOC` care nu sunt indentate pentru a fi vizibile în document. <br>Când sunt inserate, aceste câmpuri apar ascunse chiar și atunci când sunt afișate coduri de câmp. Ele nu pot fi văzute fără a afișa conținut ascuns. Pentru a vedea aceste câmpuri, trebuie selectată formatarea paragrafului.</p><p>![working-with-table-of-contents-paragraph-settings](working-with-table-of-contents-4.png)</p>Aceste câmpuri pot fi inserate într-un document în orice poziție ca orice alt câmp și sunt reprezentate prin enumerarea `FieldType.FieldTOCEntry`. <br>Comutatorul \F din a `TOC` este utilizat pentru a specifica că câmpurile TC ar trebui utilizate ca intrări. Comutatorul singur fără niciun identificator suplimentar înseamnă că orice câmp TC din document va fi inclus. Orice parametru suplimentar, adesea o singură literă, va desemna că numai câmpurile TC care au un comutator \f corespunzător vor fi incluse în TOC. De exemplu *</p><p>{{< highlight csharp >}}{ TOC \f t }{{< /highlight >}}</p><p>va include doar TC câmpuri, cum ar fi</p><p>{{< highlight csharp >}}{   TC \f t }{{< /highlight >}}</p><p>Câmpul `TOC` are, de asemenea, un comutator asociat, comutatorul "\l" specifică faptul că sunt incluse numai câmpul TC cu niveluri în intervalul specificat.</p><p>![todo:image_alt_text](working-with-table-of-contents-5.png)</p><p>Câmpurile `TC` în sine pot avea, de asemenea, mai multe comutatoare setate. Acestea sunt:</p><p>– * \F-explicat mai sus.*</p><p>– * \L-definește în ce nivel din `TOC` va apărea acest câmp TC. Un `TOC` care utilizează același comutator va include acest câmp TC numai dacă se află în intervalul specificat.*</p><p>- `_\N` - numerotarea paginilor pentru această intrare `TOC` nu este afișată.Codul De exemplu al modului de inserare a câmpurilor TC poate fi găsit în secțiunea următoare.</p> |

### Comutatoare Legate De Aspect

| Comutator | Descriere |
| :- | :- |
| **Omit Page Numbers** <br>* (\N Comutator)* | <p>Acest comutator este folosit pentru a ascunde numerele de pagină pentru anumite niveluri ale TOC. De exemplu, puteți defini</p><p>{{< highlight csharp >}}{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p><p>și numerele de pagină de pe intrările nivelurilor 3 și patru vor fi ascunse împreună cu punctele lider (dacă există). Pentru a specifica un singur nivel, ar trebui să se utilizeze în continuare un interval, de exemplu "1-1" va exclude numerele de pagină numai pentru primul nivel. <br>Furnizarea unui interval de nivel nu va omite numerele de pagină pentru toate nivelurile din TOC. Acest lucru este util pentru a seta atunci când exportați un document în HTML sau în format similar. Acest lucru se datorează faptului că formatele bazate pe HTML nu au niciun concept de pagină și, prin urmare, nu au nevoie de nicio numerotare a paginilor.</p><p>![todo:image_alt_text](working-with-table-of-contents-6.png)</p> |
| **Insert As Hyperlinks** <br>* (\H Comutator)* | <p>Acest comutator specifică faptul că intrările `TOC` sunt inserate ca hyperlink-uri. Când vizualizați un document în Microsoft Word, aceste intrări vor apărea în continuare ca text normal în interiorul `TOC`, dar sunt hyperlink-uri și astfel pot fi utilizate pentru a naviga la poziția intrării originale din document folosind *Ctrl + Left Click* în Microsoft Word. Când acest comutator este inclus, aceste legături sunt păstrate și în alte formate. De exemplu, în formate bazate pe HTML, inclusiv EPUB și formate redate, cum ar fi PDF și XPS, acestea vor fi exportate ca legături de lucru. <br>Fără acest comutator setați `TOC` în toate aceste ieșiri vor fi exportate ca text simplu și nu va demonstra acest comportament. Dacă un document este deschis în MS Word, textul intrărilor nu va putea fi făcut clic în acest fel, dar numerele paginilor pot fi utilizate în continuare pentru a naviga la intrarea originală.</p><p>![working-with-table-of-contents-titles](working-with-table-of-contents-7.png)</p> |
| **Set Separator Character** <br>* (\P Comutator)* | <p>Acest comutator permite ca conținutul care separă titlul intrării și numerotarea paginilor să fie ușor modificat în TOC. Separatorul de utilizat Trebuie specificat după acest comutator și inclus în semne de vorbire. <br>Spre deosebire de ceea ce este documentat în documentația Office, un singur caracter poate fi folosit în loc de până la cinci. Acest lucru se aplică atât MS Word, cât și Aspose.Words. <br>Utilizarea acestui comutator nu este recomandată, deoarece nu permite prea mult control asupra a ceea ce a folosit pentru a separa intrările și numerele de pagină din TOC. În schimb, se recomandă să editați stilul `TOC` corespunzător, cum ar fi `StyleIdentifier.TOC1` și de acolo să editați stilul leader cu acces la anumiți membri ai fontului etc. Mai multe detalii despre cum să faceți acest lucru pot fi găsite mai târziu în articol.</p><p>![working-with-table-of-contents-toc](working-with-table-of-contents-8.png)</p> |
| **Preserve Tab Entries** <br>* (\W Comutator)* | <p>Utilizarea acestui comutator va specifica că orice intrări care au un caracter de filă, de exemplu un titlu care are o filă la sfârșitul liniei, vor fi păstrate ca un caracter de filă adecvat la popularea TOC. Aceasta înseamnă că funcția caracterului tab va fi prezentă în `TOC` și poate fi utilizată pentru a formata intrarea. De exemplu, anumite intrări pot utiliza tab stopuri și caractere tab pentru a spația uniform textul. Atâta timp cât nivelul corespunzător `TOC` definește tab-ul echivalent se oprește, atunci intrările `TOC` generate vor apărea cu spațiere similară. <br><br>În aceeași situație, dacă acest comutator nu a fost definit, atunci caracterele tab ar fi convertite în spațiu alb echivalent ca file nefuncționale. Rezultatul nu ar apărea așa cum era de așteptat.</p><p>![working-with-table-of-contents-aspose](working-with-table-of-contents-9.png)</p> |
| **Preserve New Line Entries** <br>* (\X Comutator)* | <p>Similar cu comutatorul de mai sus, acest comutator specifică faptul că titlurile care se întind pe mai multe linii (folosind caractere de linie noi, nu paragrafe separate) vor fi păstrate așa cum sunt în TOC generat. De exemplu, un titlu care urmează să se răspândească pe mai multe linii poate utiliza noul caracter de linie (Ctrl + Enter sau `ControlChar.LineBreak`) pentru a separa conținutul pe diferite linii. Cu acest comutator specificat, intrarea din `TOC` va păstra aceste noi caractere de linie, așa cum se arată mai jos. <br><br>În această situație, dacă comutatorul nu este definit, atunci noile caractere de linie sunt convertite într-un singur spațiu alb.</p><p>![working-with-table-of-contents-aspose-words](working-with-table-of-contents-10.png)</p> |

## Introduceți TC Câmpuri

Puteți insera un nou câmp TC în poziția curentă a [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) apelând metoda [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) și specificând numele câmpului ca "TC" împreună cu orice comutatoare necesare. Exemplul de mai jos arată cum să inserați un câmp `TC` în document folosind [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertTCField.py" >}}


## Modificați un cuprins

Formatarea intrărilor din `TOC` nu utilizează stilurile originale ale intrărilor marcate, în schimb fiecare nivel este formatat folosind un stil echivalent `TOC`. De exemplu, primul nivel din `TOC` este formatat cu stilul **TOC1**, al doilea nivel formatat cu stilul **TOC2** și așa mai departe. Aceasta înseamnă că pentru a schimba aspectul `TOC` aceste stiluri trebuie modificate. În Aspose.Words aceste stiluri sunt reprezentate de locale independent [StyleIdentifier.TOC1](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#toc1) până la [StyleIdentifier.TOC9](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#toc9) și pot fi recuperate din colecția [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/) folosind acești identificatori.

Odată ce stilul corespunzător al documentului a fost preluat, formatarea pentru acest stil poate fi modificată. Orice modificare a acestor stiluri va fi reflectată automat pe TOCs din document. Exemplul de mai jos modifică o proprietate de formatare utilizată în primul nivel `TOC` stil.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_table_of_content-ChangeStyleOfTOCLevel.py" >}}

De asemenea, este util să rețineți că orice formatare directă a unui paragraf (definit pe paragraful în sine și nu în stil) marcat pentru a fi inclus `TOC` va fi copiat în intrarea din TOC. De exemplu, dacă stilul Heading 1 este folosit pentru a marca conținutul pentru `TOC` și acest stil are formatare cu caractere aldine, în timp ce paragraful are, de asemenea, formatare cursivă aplicată direct acestuia. Intrarea `TOC` rezultată nu va fi aldină, deoarece face parte din formatarea stilului, dar va fi cursivă, deoarece aceasta este formatată direct în paragraf.

De asemenea, puteți controla formatarea separatoarelor utilizate între fiecare intrare și numărul paginii. În mod implicit, aceasta este o linie punctată care este răspândită în numerotarea paginilor folosind un caracter de filă și un stop de filă din dreapta aliniat aproape de marginea din dreapta.

Folosind clasa [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) recuperată pentru nivelul `TOC` pe care doriți să îl modificați, puteți modifica și modul în care acestea apar în document. Pentru a schimba modul în care apare mai întâi [Style.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/style/paragraph_format/) trebuie apelat pentru a prelua formatarea paragrafului pentru stil. Din aceasta, opririle de filă pot fi recuperate prin apelarea [ParagraphFormat.tab_stops](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/tab_stops/) și oprirea de filă corespunzătoare modificată. Folosind aceeași tehnică, fila în sine poate fi mutată sau eliminată împreună. Exemplul de mai jos arată cum să modificați poziția opritorului de filă din dreapta în `TOC` paragrafe conexe.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_table_of_content-ChangeTOCTabStops.py" >}}

## Eliminați un cuprins din Document

Un cuprins poate fi eliminat din document prin eliminarea tuturor nodurilor găsite între nodul [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) și [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) din câmpul `TOC`. Codul de mai jos demonstrează acest lucru. Eliminarea câmpului `TOC` este mai simplă decât un câmp normal, deoarece nu ținem evidența câmpurilor imbricate. În schimb, verificăm nodul [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) este de tip [FieldType.FIELD_TOC](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_toc), ceea ce înseamnă că am întâlnit sfârșitul curentului TOC. Această tehnică poate fi utilizată în acest caz fără a vă îngrijora de câmpurile imbricate, deoarece putem presupune că orice document format corect nu va avea un câmp `TOC` complet imbricat în interiorul unui alt câmp `TOC`.

În primul rând, nodurile [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) ale fiecărui `TOC` sunt colectate și stocate. `TOC` specificat este apoi enumerat astfel încât toate nodurile din câmp sunt vizitate și stocate. Nodurile sunt apoi eliminate din document. Below code eșantion demonstrează cum să eliminați un `TOC` specificat dintr-un document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-remove_content-RemoveTOCFromDocument.py" >}}

## Extras cuprins

Dacă doriți să extrageți un cuprins din orice document Word, poate fi utilizat următorul eșantion de cod.

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Table of contents.docx")

for field in doc.range.fields :
            
    if (field.type == aw.fields.FieldType.FIELD_HYPERLINK) :
                
        hyperlink = field.as_field_hyperlink()
        if (hyperlink.sub_address != None and hyperlink.sub_address.find("_Toc") == 0) :
                    
            tocItem = field.start.get_ancestor(aw.NodeType.PARAGRAPH).as_paragraph()
                        
            print(tocItem.to_string(aw.SaveFormat.TEXT).strip())
            print("------------------")
    
            bm = doc.range.bookmarks.get_by_name(hyperlink.sub_address)
            pointer = bm.bookmark_start.get_ancestor(aw.NodeType.PARAGRAPH).as_paragraph()
                        
            print(pointer.to_string(aw.SaveFormat.TEXT))
{{< /highlight >}}
