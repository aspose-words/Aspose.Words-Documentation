---
title: Câmpuri în C#
second_title: Aspose.Words pentru .NET
articleTitle: Prezentare generală a câmpurilor
linktitle: Prezentare generală a câmpurilor
description: "Câmpurile din detalii, coduri de câmp și rezultate ale câmpurilor explicate în Aspose.Words pentru .NET."
type: docs
weight: 10
url: /ro/net/fields-overview/
---

Aspose.Words este o bibliotecă de clasă concepută pentru procesarea pe server-side a documentelor Microsoft Word și suportă câmpuri în următoarele moduri:

- toate câmpurile dintr-un document sunt păstrate în timpul funcțiilor de deschidere/salvare și conversii
- este posibil să actualizeze rezultatele celor mai multe câmpuri

În acest articol vom învăța mai multe despre structura câmpului, câmpurile acceptate în Aspose.Words și detalii privind lucrul cu astfel de câmpuri.

## Structura câmpului

Un câmp constă din:

- Nodurile câmpului de început și separatoare sunt utilizate pentru a cuprinde conținutul care alcătuiește codul câmpului (de obicei ca text simplu).
The field separator și sfârșit de câmp cuprind rezultatul câmpului. Aceasta poate fi alcătuită din diferite tipuri de conținut, variind de la rânduri de text la paragrafe sau tabele.
- Unele câmpuri nu pot avea un separator, ceea ce înseamnă că conținutul întreg este codul câmpului.
- Codul câmpului definește comportamentul câmpului și este alcătuit din identificatorul câmpului și adesea alți parametri precum numele câmpului și comutatoarele.
- Rezultatul câmpului conține cea mai recentă evaluare a câmpului. Această valoare este stocată în câmpul rezultat și este ceea ce este afișat utilizatorului. Unele câmpuri nu pot avea nici un rezultat al câmpului și, prin urmare, nu vor afișa nimic în document. De asemenea, unele câmpuri nu s-ar putea să fie actualizate încă și prin urmare nu vor avea nici un rezultat de câmp.

![fields-aspose-words](fields-overview-1.png)

Conținutul care alcătuiește codul câmpului este stocat ca [Run](https://reference.aspose.com/words/net/aspose.words/run/) noduri între [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) și [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/). Rezultatul câmpului este stocat între nodurile **FieldSeparator** și [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) și poate fi alcătuit din diferite tipuri de conținut. De obicei câmpul rezultat conține doar text format din **Run** noduri, totuși este posibil ca **FieldEnd** nod să fie localizat într-un paragraf complet diferit, și astfel făcând câmpul rezultat cuprins din [block level nodes](/words/net/logical-levels-of-nodes-in-a-document/) cum ar fi **Table** și **Paragraph** noduri.

Iată o vedere cum se stochează un câmp în Aspose.Words folosind exemplul "*DocumentExplorer"*, care poate fi găsit pe [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](fields-overview-2.png)

## Câmpuri în Aspose.Words Document Object Model (DOM)

Când un document este încărcat în Aspose.Words, câmpurile documentului sunt încărcate în [Aspose.Words Document Object Model](/words/net/aspose-words-document-object-model/) ca un set de componente separate (noduri)." Un singur câmp este încărcat ca o colecție de **FieldStart**, **FieldSeparator** și **FieldEnd** noduri, împreună cu conținutul dintre aceste noduri. Dacă un câmp nu are rezultat de câmp, nu va exista niciun nod **FieldSeparator**. Toate aceste noduri sunt întotdeauna găsite în linie (ca copii de [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) sau [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/).")

În Aspose.Words fiecare dintre **FieldXXX** noduri derivă din [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/). Această clasă furnizează o proprietate pentru verificarea tipului de câmp reprezentat de nodul specificat prin proprietatea [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/). De exemplu **FieldType.FieldMergeField** reprezintă un câmp de fuziune în document.

{{% alert color="primary" %}}

Există unele câmpuri particulare care există într-un document Word și nu sunt importate în Aspose.Words ca o colecție de **FieldXXX** noduri. De exemplu, `LINK` câmp și `INCLUDEPICTURE` câmp sunt importate în Aspose.Words ca un [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) obiect. Acest obiect oferă proprietăți pentru a lucra cu datele imaginii, în mod normal stocate în aceste câmpuri. Pentru a importa `INCLUDEPICTURE` câmp ca **FieldXXX** noduri opțiunea [PreserveIncludePictureField](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) trebuie specificată ca **true**.

Câmpurile formularelor sunt de asemenea importate în Aspose.Words ca propria lor clasă specială. "Clasa [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) reprezintă un câmp de formular într-un document Word și oferă metode suplimentare specifice unui câmp de formular."

{{% /alert %}}

## Câmpuri acceptate

Calcularea pentru următoarele câmpuri este acceptată în versiunea curentă a Aspose.Words:

- = (formulă)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Parsarea câmpului sofisticată

Aspose.Words urmează calea Microsoft Word pentru procesarea câmpurilor și ca rezultat acesta gestionează corect:

- câmpuri închise:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- argumentul câmpului poate fi rezultatul unui câmp încorporat
"- câmpurile pot fi închise într-un cod de câmp, precum și în rezultatul câmpului"
- spații/fără spații, ghilimele/fără ghilimele, caractere de evadare în câmpuri etc
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- câmpuri care se întind pe mai multe paragrafe

### Câmpuri de Formula

Aspose.Words oferă o implementare foarte serioasă a motorului de formule și acceptă următoarele:

"- operatori aritmetici și logici":
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funcții:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
referințe la semne de carte:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- comutatoare de formatare a numerelor:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Următoarele funcții în expresii sunt acceptate: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### "`IF` și `COMPARE` câmpuri"

Doar unele dintre expresiile `IF` pe care Aspose.Words le poate calcula cu ușurință ar trebui să vă dea o idee despre cât de puternică este această caracteristică:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### "`DATE` și `TIME` câmpuri"

Aspose.Words acceptă toate comutatoarele de formatare a datelor și orei disponibile în Microsoft Word, unele exemple sunt:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge câmpuri

Aspose.Words impune nicio limită complexității câmpurilor mail merge din documentele tale și suportă câmpuri încorporate `IF` și cu formulă, și poate calcula chiar numele unui câmp de fuziune folosind o formulă.

Unele exemple de mail merge câmpuri pe care Aspose.Words le suportă:

- " Mail merge câmp comutatoare":
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- câmpuri de fuziune încorporată într-o formulă:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
să calculeze numele câmpului de fuziune la timp de funcționare:
  `MERGEFIELD { `IF` { ` MERGEFIELD ` Value1 } >= { ` MERGEFIELD ` Value2 } FirstName"LastName" }`
- mutare condițională la înregistrarea următoare din sursa de date:
  `NEXTIF { `MERGEFIELD ` Value1 } <= { =IF(-2.45 >= 6*{ ` MERGEFIELD ` Value2 }, 2, -.45) }`

### Comutatoare de format

Un câmp dintr-un document poate avea comutatoare de formatare care specifică cum ar trebui să fie formatată valoarea rezultată. Aspose.Words suportă următoarele comutatoare de formatare:

- \\\@ – formatare dată și oră
- \\\# – formatare numerică
- \\\* Caps
- \\\* FirstCap
- \\\* Mai jos
- \\\* Upper
- \\\* CHARFORMAT – formată rezultatul conform primului caracter al codului câmpului
"- \\\* MERGEFORMAT – formați rezultatul în funcție de modul în care este formatul rezultatului vechi"

### Date și Formatarea Numărului în Câmpuri

Când Aspose.Words calculează un rezultat de câmp, acesta are adesea nevoie să parseze o șir într-un număr sau o valoare dată și, de asemenea, să o formeze înapoi într-un șir.În mod implicit Aspose.Words folosește cultura curentă a fireului pentru a efectua parsarea și formatarea atunci când calculează valorile câmpurilor în timpul actualizării câmpului și mail merge. Sunt și opțiuni oferite în forma clasei [FieldOptions](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/), care permite un control mai mare asupra culturii utilizate în timpul actualizării câmpului.

"- în mod implicit proprietatea [FieldUpdateCultureSource](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) este setată la [CurrentThread](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/), care formatează câmpurile folosind cultura curentă a firului"
- această proprietate poate fi setată la [FieldCode](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) astfel încât limba setată din codul câmpului câmpului să fie folosită pentru formatare în schimb

### Formatarea utilizând cultura curentului fir de execuţie

Pentru controlul culturii utilizate în timpul calculului câmpului, setaţi pur şi simplu proprietatea **Thread.CurrentThread.CurrentCulture** la o cultură de alegerea dumneavoastră înainte de invocarea calculului câmpului.

Exemplul următor de cod arată cum se schimbă cultura utilizată în formatarea câmpurilor în timpul actualizării:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

Utilizarea culturii curente pentru a formata câmpurile permite unui sistem să controleze în mod ușor și consecvent cum sunt formate toate câmpurile din document în timpul actualizării câmpurilor.

### Formatarea folosind cultura din document

Pe de altă parte, " Microsoft Word formatează fiecare câmp individual pe baza limbii textului găsit în câmp (mai exact, șirurile din codul câmpului) ". Uneori în timpul actualizării câmpurilor acest lucru poate fi comportamentul dorit, de exemplu dacă aveți documente la nivel mondial care conțin conținut format din mai multe limbi diferite și doriți ca fiecare câmp să respecte locale-ul utilizat din text. Aspose.Words suportă, de asemenea, această funcționalitate.

Clasa [Document](https://reference.aspose.com/words/net/aspose.words/document/) oferă o proprietate [FieldOptions](https://reference.aspose.com/words/net/aspose.words/document/fieldoptions/) care conține membri care pot fi utilizați pentru a controla modul în care câmpurile sunt actualizate în cadrul documentului.

Exemplul de cod următor arată cum să se specifice locul unde cultura folosită pentru formatarea datelor în timpul actualizării câmpului și mail merge este ales din:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
