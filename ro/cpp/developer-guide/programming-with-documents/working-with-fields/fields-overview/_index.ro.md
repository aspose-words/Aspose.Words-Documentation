---
title: Prezentare generală a câmpurilor în C++
second_title: Aspose.Words pentru C++
articleTitle: Prezentare Generală A Câmpurilor
linktitle: Prezentare Generală A Câmpurilor
description: "Câmpurile sunt prezentate în detalii, coduri de câmp și rezultate de câmp explicate în Aspose.Words pentru C++."
type: docs
weight: 10
url: /ro/cpp/fields-overview/
---

Aspose.Words este o bibliotecă de clase concepută pentru procesarea pe partea de server a documentelor Microsoft Word și acceptă câmpuri în următoarele moduri:

- toate câmpurile dintr-un document sunt păstrate în timpul open / save și conversions
- este posibil să actualizați rezultatele celor mai multe câmpuri

În acest articol, vom afla mai multe despre structura câmpului, câmpurile acceptate în Aspose.Words și detalii despre lucrul cu astfel de câmpuri.

## Structura Câmpurilor

Un câmp este format din:

- Nodurile de pornire a câmpului și separatorul sunt utilizate pentru a cuprinde conținutul care alcătuiește codul câmpului (în mod normal ca text simplu).
- Separatorul de câmp și capătul câmpului cuprind rezultatul câmpului. Acesta poate fi alcătuit din diferite tipuri de conținut, de la runde de text la paragrafe și tabele.
- Este posibil ca unele câmpuri să nu aibă un separator, ceea ce înseamnă că întregul conținut alcătuiește codul câmpului.
- Codul câmpului definește comportamentul câmpului și este format din identificatorul câmpului și adesea alți parametri, cum ar fi numele câmpurilor și comutatoarele.
- Rezultatul câmpului conține cea mai recentă evaluare a câmpului. Această valoare este stocată în câmp rezultat și este ceea ce este afișat utilizatorului. Este posibil ca unele câmpuri să nu aibă rezultate de câmp, astfel încât să nu afișeze nimic în document. De asemenea, este posibil ca unele câmpuri să nu fie actualizate încă, prin urmare, nu vor avea nici un rezultat al câmpului.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

Conținutul care alcătuiește codul câmpului este stocat ca [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) noduri între [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) și [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/). Rezultatul câmpului este stocat între nodurile **FieldSeparator** și [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) și poate fi alcătuit din diferite tipuri de conținut. În mod normal, rezultatul câmpului conține doar text format din noduri **Run**, cu toate acestea, este posibil ca nodul **FieldEnd** să fie localizat într-un paragraf complet diferit, făcând astfel rezultatul câmpului compus din [noduri la nivel de bloc](/words/cpp/logical-levels-of-nodes-in-a-document/) cum ar fi **Table** și **Paragraph** noduri, de asemenea.

Iată o vizualizare a modului în care un câmp este stocat în Aspose.Words folosind exemplul "*DocumentExplorer"*.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## Câmpuri în modelul obiectului Document Aspose.Words (DOM)

Când un document este încărcat în Aspose.Words, câmpurile documentului sunt încărcate în [Aspose.Words Model Obiect Document](/words/cpp/aspose-words-document-object-model/) ca un set de componente separate (noduri). Un singur câmp este încărcat ca o colecție de noduri **FieldStart**, **FieldSeparator** și **FieldEnd** împreună cu conținutul dintre aceste noduri. Dacă un câmp nu are un rezultat de câmp, atunci nu va exista un nod **FieldSeparator**. Toate aceste noduri sunt întotdeauna găsite în linie (ca copii ai [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) sau [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

În Aspose.Words fiecare dintre nodurile **FieldXXX** derivă din [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/). Această clasă oferă o proprietate pentru a verifica tipul de câmp reprezentat de nodul specificat prin proprietatea [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/). De exemplu, **FieldType.FieldMergeField** reprezintă un câmp de îmbinare în document.

{{% alert color="primary" %}}

Există unele câmpuri particulare care există într-un document Word care nu sunt importate în Aspose.Words ca o colecție de noduri **FieldXXX**. De exemplu, câmpul `LINK` și câmpul `INCLUDEPICTURE` sunt importate în Aspose.Words ca obiect `Shape`. Acest obiect oferă proprietăți pentru a lucra cu datele de imagine stocate în mod normal în aceste câmpuri. Pentru a importa câmpul `INCLUDEPICTURE` ca noduri **FieldXXX**, opțiunea [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) trebuie specificată ca **true**.

Câmpurile de formular sunt, de asemenea, importate în Aspose.Words ca clasă specială proprie. Clasa [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) reprezintă un câmp de formular într-un document Word și oferă metode suplimentare care sunt specifice unui câmp de formular.

{{% /alert %}}

## Câmpuri Acceptate

Calculul următoarelor câmpuri este acceptat în versiunea curentă a Aspose.Words:

- = (formula)
`ADDRESSBLOCK`
`ASK`
`AUTHOR`
`AUTONUM`
`AUTONUMLGL`
`AUTONUMOUT`
`AUTOTEXT`
`BARCODE`
`COMMENTS`
`COMPARE`
`CREATEDATE`
`DATABASE`
`DATE`
`DISPLAYBARCODE`
`DOCPROPERTY`
`DOCVARIABLE`
`EDITTIME`
`EQ`
`FILENAME`
`FILESIZE`
`FILLIN`
`FORMCHECKBOX`
`FORMDROPDOWN`
`FORMTEXT`
`GLOSSARY`
`GOTOBUTTON`
`GREETINGLINE`
`HYPERLINK`
`IF`
`IMPORT`
`INCLUDE`
`INCLUDEPICTURE`
`INCLUDETEXT`
`INDEX`
`INFO`
`KEYWORDS`
`LASTSAVEDBY`
`LISTNUM`
`MACROBUTTON`
`MERGEBARCODE`
`MERGEFIELD`
`MERGEREC`
`MERGESEQ`
`NEXT`
`NEXTIF`
`NOTEREF`
`NUMCHARS`
`NUMPAGES`
`NUMWORDS`
`PAGE`
`PAGEREF`
`PRINTDATE`
`QUOTE`
`REF`
`REVNUM`
`SAVEDATE`
`SECTION`
`SECTIONPAGES`
`SEQ`
`SET`
`SHAPE`
`SKIPIF`
`STYLEREF`
`SUBJECT`
`SYMBOL`
`TEMPLATE`
`TIME`
`TITLE`
`TOA`
`TOC`
`USERADDRESS`
`USERINITIALS`
`USERNAME`

## Analiză Sofisticată A Câmpului

Aspose.Words urmează modul în care Microsoft Word procesează câmpurile și, ca rezultat, gestionează corect:

- câmpuri imbricate:
`IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- argumentul câmpului poate fi rezultatul unui câmp imbricat
- câmpurile pot fi imbricate într-un cod de câmp, precum și în rezultatul câmpului
- spații / fără spații,citate / fără citate,caractere de evadare în câmpuri etc.:
`MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- câmpuri care se întind pe mai multe paragrafe

### Câmpuri De Formulă

Aspose.Words oferă o implementare foarte serioasă a motorului de formule și suportă următoarele:

- operatori aritmetici și logici:
`=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funcții:
`=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- referințe la marcaje:
`=IF(C>4, 5,ABS(A)*.76) +3.85`
- comutatoare de formatare a numărului:
`=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Următoarele funcții în expresii sunt acceptate: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

Doar câteva dintre expresiile `IF` pe care Aspose.Words le pot calcula cu ușurință ar trebui să vă ofere o idee despre cât de puternică este această caracteristică:

`IF 3 > 5.7^4+MAX(4,3) True False`
`IF "abcd" > "abc" True False`
`IF "?ab*" = "1abdsg" True False`
`IF 4 = "2*2" True False`
`COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words acceptă toate comutatoarele de formatare a datei și orei disponibile în Microsoft Word, câteva exemple sunt:

`DATE @ "d-MMM-yy"`
`DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge câmpuri

Aspose.Words nu impune nicio limită complexității câmpurilor mail merge din documentele dvs. și acceptă câmpurile imbricate `IF` și formula și poate chiar calcula numele câmpului de îmbinare folosind o formulă.

Câteva exemple de câmpuri mail merge pe care Aspose.Words le acceptă:

- Mail merge comutatoare de câmp:
`MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- câmpuri de îmbinare imbricate într - o formulă:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- calculați numele câmpului de îmbinare în timpul rulării:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- mutare condiționată la următoarea înregistrare în sursa de date:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Comutatoare De Format

Un câmp dintr-un document poate avea comutatoare de formatare care specifică modul în care trebuie formatată valoarea rezultată. Aspose.Words suportă următoarele comutatoare de format:

- @ - formatarea datei și orei
- \\\# - formatarea numerelor
- \\\\\\\\* Caps
- \\\\\\\\* FirstCap
- \\\\\\\\* Lower
- \\\\\\\\* Upper
- \\\\\\\\* CHARFORMAT - formatați rezultatul în funcție de primul caracter al Codului câmpului
- \\\\\\\\* MERGEFORMAT - formatați rezultatul în funcție de modul în care este formatat rezultatul vechi

### Formatarea datei și a numărului în câmpuri

Când Aspose.Words calculează un rezultat de câmp, adesea trebuie să analizeze un șir într - un număr sau o valoare de dată și, de asemenea, să-l formateze înapoi la un string.By implicit Aspose.Words utilizează cultura firului curent pentru a efectua parsarea și formatarea la calcularea valorilor câmpului în timpul actualizării câmpului și mail merge. Există, de asemenea, opțiuni furnizate sub forma clasei [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/), care permite un control suplimentar asupra culturii utilizate în timpul actualizării câmpului.

- în mod implicit, proprietatea [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) este setată la [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) care formatează câmpurile utilizând cultura curentă a firului
- această proprietate poate fi setată la [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) astfel încât limba setată din Codul câmpului câmpului este utilizată pentru formatare

### Formatarea folosind cultura firului curent

Pentru a controla cultura utilizată în timpul calculului câmpului, trebuie doar să setați proprietatea **CurrentCulture** la o cultură la alegere înainte de a invoca calculul câmpului.

Următorul exemplu de cod arată cum să modificați cultura utilizată în câmpurile de formatare în timpul actualizării:

EXAMPLE

Utilizarea culturii curente pentru formatarea câmpurilor permite unui sistem să controleze cu ușurință și în mod consecvent modul în care toate câmpurile din document sunt formatate în timpul actualizării câmpului.

### Formatarea utilizând cultura din Document

Pe de altă parte, Microsoft Word formatează fiecare câmp individual bazat pe limba textului găsit în câmp (în special, rulările din Codul câmpului). Uneori, în timpul actualizării câmpului, acesta poate fi comportamentul dorit, de exemplu dacă aveți documente globalizate care conțin conținut format din mai multe limbi diferite și doriți ca fiecare câmp să onoreze localizarea utilizată din text. Aspose.Words acceptă, de asemenea, această funcționalitate.

Clasa [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) oferă o proprietate [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/) care conține membri care pot fi utilizați pentru a controla modul în care câmpurile sunt actualizate în document.

Următorul exemplu de cod arată cum să specificați unde este aleasă cultura utilizată pentru formatarea datei în timpul actualizării câmpului și mail merge:

EXAMPLE