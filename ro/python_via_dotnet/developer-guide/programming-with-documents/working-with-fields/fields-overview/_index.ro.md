---
title: Prezentare generală a câmpurilor în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Prezentare Generală A Câmpurilor
linktitle: Prezentare Generală A Câmpurilor
description: "Puteți accesa modificarea câmpului folosind Python. Câmpurile documentului sunt încărcate în Aspose.Words Document Object Model (DOM)."
type: docs
weight: 10
url: /ro/python-net/fields-overview/
---


De obicei, un câmp, atunci când este inserat în Microsoft Word, conține deja o valoare actualizată. De exemplu, dacă câmpul este o formulă sau un număr de pagină, acesta va conține o valoare calculată corectă pentru versiunea dată a documentului. Dar dacă aveți o aplicație care generează sau Modifică un document cu câmpuri (de exemplu, combină două documente sau populează cu date), atunci pentru ca documentul să fie util, toate câmpurile ar trebui să fie actualizate în mod ideal.

Un câmp este format din:

![fields-aspose-words](fields-overview-1.png)

- Nodurile de pornire a câmpului și separator sunt utilizate pentru a cuprinde conținutul care alcătuiește codul câmpului (în mod normal ca text simplu)
- Separatorul de câmp și capătul câmpului cuprind rezultatul câmpului. Acesta poate fi alcătuit din diferite tipuri de conținut, de la runde de text la paragrafe și tabele.
- Este posibil ca unele câmpuri să nu aibă un separator, ceea ce înseamnă că întregul conținut alcătuiește codul câmpului.
- Codul câmpului definește comportamentul câmpului și este format din identificatorul câmpului și adesea alți parametri, cum ar fi numele câmpului și comutatoarele.
- Rezultatul câmpului conține cea mai recentă evaluare a câmpului. Această valoare este stocată în câmp rezultat și este ceea ce este afișat utilizatorului. Este posibil ca unele câmpuri să nu aibă niciun rezultat de câmp, astfel încât să nu afișeze nimic în document. De asemenea, este posibil ca unele câmpuri să nu fie actualizate încă, prin urmare, nu vor avea nici un rezultat al câmpului.

Iată o vizualizare a modului în care un câmp este stocat în Aspose.Words folosind exemplul " *DocumentExplorer"* care poate fi găsit pe [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](fields-overview-2.png)

Aspose.Words este o bibliotecă de clase concepută pentru procesarea pe partea de server a documentelor Microsoft Word și acceptă câmpuri în următoarele moduri:

- Toate câmpurile dintr-un document sunt păstrate în timpul open/save și conversii.
- Este posibil să actualizați rezultatele unora dintre cele mai populare domenii.

## Câmpuri în Microsoft Word

Câmpurile din documentele Microsoft Word sunt complexe. Există peste 50 tipuri de câmpuri (fiecare are nevoie de propria procedură de calcul a rezultatelor), formule și expresii, marcaje și referințe, funcții și diverse comutatoare. Câmpurile pot fi, de asemenea, imbricate. În mod normal, atunci când un document este deschis, rezultatul câmpului (valoarea câmpului) este afișat pentru toate câmpurile din document. Puteți comuta afișarea rezultatelor câmpului sau a codurilor de câmp în Microsoft Word Pentru toate câmpurile apăsând **ALT+F9**.

| Codul Câmpului | Rezultatul Câmpului |
| :- | :- |
| ![field-code-result-aspose-words](fields-overview-3.png) | ![todo:image_alt_text](fields-overview-4.png) |

### Introducerea câmpurilor în Microsoft Word

Pentru a insera un câmp în Microsoft Word:

1. Faceți clic pe meniul **Insert**.
1. Faceți clic pe meniul derulant **Quick Parts**
1. Selectați **Field**
1. Vi se prezintă un ecran care vă permite să introduceți detaliile câmpului. În partea stângă vi se oferă o listă a câmpurilor posibile, iar în partea dreaptă este un ecran pentru a edita vizual proprietățile câmpului.<br>
![field-edit-aspose-words](fields-overview-5.png)
1. În plus, puteți apăsa butonul **Field Codes** care vă permite să scrieți direct codul câmpului.<br>
![field-properties-aspose-words](fields-overview-6.png)
1. Comutatoarele pot fi, de asemenea, introduse utilizând butonul **Options** <br>
![field-options-aspose-words](fields-overview-7.png)
1. Folosind oricare dintre metode, completați câmpurile dorite cu informațiile corespunzătoare, apoi apăsați **Ok**.
1. Câmpul este inserat în document în poziția curentă a cursorului.<br>
![insert-field-aspose-words](fields-overview-8.png)

### Actualizarea câmpurilor în Microsoft Word

Pentru a actualiza un singur câmp în Microsoft Word:

1. Mutați careta în câmpul pe care doriți să îl actualizați.
1. Apăsați **F9** pentru a actualiza câmpul.

Pentru a actualiza toate câmpurile din Microsoft Word:

1. Apăsați **Ctrl+A** pentru a selecta tot conținutul din document.
1. Apăsați **F9** pentru a actualiza toate câmpurile găsite în selecție.

### Comutarea între afișarea codului câmpului și rezultatul câmpului

Pentru a comuta codurile de câmp ale unui singur câmp în Microsoft Word:

1. Mutați careul în câmpul dorit.
1. Apăsați **SHIFT+F9** pentru a comuta codul câmpului doar pentru acest câmp.

Pentru a comuta codurile de câmp ale tuturor câmpurilor din Microsoft Word:

1. Apăsați **ALT+F9**

### Conversia câmpurilor în Text Static în Microsoft Word

Pentru a converti un câmp dinamic în text static în Microsoft Word:

1. Mutați careta în câmpul pe care doriți să îl convertiți.
1. Apăsați **Ctrl+Shift+F9** pentru a converti câmpurile în text static.

### Eliminarea unui câmp din Microsoft Word

Pentru a elimina un câmp din Microsoft Word:

1. Selectați întregul conținut care alcătuiește câmpul. Dacă sunt afișate codurile de câmp, atunci trebuie selectate și parantezele de deschidere și de încheiere.
1. Apăsați **Delete** pentru a elimina întregul câmp.

## Câmpuri în Aspose.Words

Când un document este încărcat în Aspose.Words, câmpurile documentului sunt încărcate în modelul obiectului document Aspose.Words ca un set de componente separate (noduri). Un singur câmp este încărcat ca o colecție de noduri [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) și [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) împreună cu conținutul dintre aceste noduri. Dacă un câmp nu are un rezultat de câmp, atunci nu va exista un nod [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Toate aceste noduri sunt întotdeauna găsite în linie (ca copii ai [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) sau [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

Conținutul care alcătuiește codul câmpului este stocat ca [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) noduri între [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) și [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Rezultatul câmpului este stocat între nodurile [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) și [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) și poate fi alcătuit din diferite tipuri de conținut. În mod normal, rezultatul câmpului conține doar text format din [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) noduri, cu toate acestea este posibil ca nodul [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) să fie localizat într-un paragraf complet diferit și, astfel, rezultatul câmpului să fie format din noduri la nivel de bloc, cum ar fi [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) și [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) noduri de asemenea.

În Aspose.Words fiecare dintre nodurile **FieldXXX** derivă din [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). Această clasă oferă o proprietate pentru a verifica tipul de câmp reprezentat de nodul specificat prin proprietatea [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/). De exemplu, [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) reprezintă un câmp de îmbinare în document.

{{% alert color="primary" %}}

Există unele câmpuri particulare care există într-un document Word care nu sunt importate în Aspose.Words ca o colecție de noduri **FieldXXX**. De exemplu, câmpul `LINK` și câmpul `INCLUDEPICTURE` sunt importate în Aspose.Words ca obiect [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/). Acest obiect oferă proprietăți pentru a lucra cu datele de imagine stocate în mod normal în aceste câmpuri.

Câmpurile de formular sunt, de asemenea, importate în Aspose.Words ca clasă specială proprie. Clasa [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) reprezintă un câmp de formular într-un document Word și oferă metode suplimentare care sunt specifice unui câmp de formular.

{{% /alert %}}

### Câmpuri acceptate în timpul actualizării

Calculul următoarelor câmpuri este acceptat în versiunea curentă a Aspose.Words:

- = (câmp de formulă)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (including TOT and TOF)
- TC

### Analiză Sofisticată

Aspose.Words urmează modul în care Microsoft Word procesează câmpurile și, ca rezultat, gestionează corect:

- Câmpuri imbricate
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- Argumentul câmpului poate fi rezultatul unui câmp imbricat.
- Câmpurile pot fi imbricate într-un cod de câmp, precum și în rezultatul câmpului.
- Spații / fără spații,citate / fără citate,caractere de evadare în câmpuri etc.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Câmpuri care se întind pe mai multe paragrafe.

#### Câmpuri De Formulă

Aspose.Words oferă o implementare foarte serioasă a motorului de formule și suportă următoarele:

- Operatori aritmetici și logici:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Funcții:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Referințe la marcaje:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Comutatoare de formatare a numărului:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Următoarele funcții în expresii sunt acceptate: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### `IF` and `COMPARE` Fields

Doar câteva dintre expresiile `IF` pe care Aspose.Words le pot calcula cu ușurință ar trebui să vă ofere o idee despre cât de puternică este această caracteristică:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### `DATE` and `TIME` Fields

Aspose.Words acceptă toate comutatoarele de formatare a datei și orei disponibile în Microsoft Word, câteva exemple sunt:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Mail Merge câmpuri

Aspose.Words nu impune nicio limită complexității câmpurilor mail merge din documentele dvs. și acceptă câmpurile imbricate `IF` și formula și poate chiar calcula numele câmpului de îmbinare folosind o formulă.

Câteva exemple de câmpuri mail merge pe care Aspose.Words le acceptă:

- Mail merge comutatoare de câmp:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Câmpuri de îmbinare imbricate într - o formulă:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Calculați numele câmpului de îmbinare în timpul rulării:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- Mutare condiționată la următoarea înregistrare în sursa de date:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### Comutatoare De Format

Un câmp dintr-un document poate avea comutatoare de formatare care specifică modul în care trebuie formatată valoarea rezultată. Aspose.Words suportă următoarele comutatoare de format:

- @ - formatarea datei și orei
- \\\# - formatarea numerelor
- \\\\\\\\* Caps
- \\\\\\\\* FirstCap
- \\\\\\\\* Lower
- \\\\\\\\* Upper
- \\\\\\\\* CHARFORMAT - formatați rezultatul în funcție de primul caracter al Codului câmpului.
- \\\\\\\\* MERGEFORMAT - formatați rezultatul în funcție de modul în care este formatat rezultatul vechi.

#### Formatarea datei și a numărului în câmpuri

Când Aspose.Words calculează un rezultat de câmp, adesea trebuie să analizeze un șir într - un număr sau o valoare de dată și, de asemenea, să-l formateze înapoi la un string.By implicit Aspose.Words utilizează cultura firului curent pentru a efectua parsarea și formatarea la calcularea valorilor câmpului în timpul actualizării câmpului și mail merge. Există, de asemenea, opțiuni furnizate sub forma clasei [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/), care permite un control suplimentar asupra culturii utilizate în timpul actualizării câmpului.

- În mod implicit, proprietatea [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) este setată la [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) care formatează câmpurile folosind cultura curentă a firului.
- Această proprietate poate fi setată la [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code), astfel încât limba setată din Codul câmpului câmpului este utilizată pentru formatare.

#### Formatarea folosind cultura firului curent

Pentru a controla cultura utilizată în timpul calculului câmpului, trebuie doar să utilizați metoda **locale.setlocale** pentru a seta cultura la alegere înainte de a invoca calculul câmpului.
Exemplul de mai jos arată cum să modificați cultura utilizată în câmpurile de formatare în timpul actualizării.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

Utilizarea culturii curente pentru formatarea câmpurilor permite unui sistem să controleze cu ușurință și în mod consecvent modul în care toate câmpurile din document sunt formatate în timpul actualizării câmpului.

#### Formatarea utilizând cultura din Document

Pe de altă parte, Microsoft Word formatează fiecare câmp individual bazat pe limba textului găsit în câmp (în special, rulările din Codul câmpului). Uneori, în timpul actualizării câmpului, acesta poate fi comportamentul dorit, de exemplu dacă aveți documente globalizate care conțin conținut format din mai multe limbi diferite și doriți ca fiecare câmp să onoreze localizarea utilizată din text. Aspose.Words acceptă, de asemenea, această funcționalitate.

Clasa [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) oferă o proprietate [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) care conține membri care pot fi utilizați pentru a controla modul în care câmpurile sunt actualizate în document. Exemplul de mai jos arată cum să specificați unde este aleasă cultura utilizată pentru formatarea datei în timpul actualizării câmpului și mail merge.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Găsirea codului câmpului și a rezultatului câmpului

Un câmp care este inserat folosind [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) returnează un obiect [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Aceasta este o clasă fa care oferă metode utile pentru a găsi rapid astfel de proprietăți ale unui câmp. Notă Dacă căutați doar numele câmpurilor de îmbinare din document, puteți utiliza în schimb metoda încorporată [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/). Exemplul de mai jos arată cum să obțineți numele tuturor câmpurilor de îmbinare dintr-un document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Cum să redenumiți câmpurile de îmbinare

Exemplul de mai jos arată cum să redenumiți câmpurile de îmbinare într-un document Word.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
