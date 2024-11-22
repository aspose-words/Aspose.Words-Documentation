---
title: Utilizați `DocumentBuilder` pentru a insera elemente de Document
second_title: Aspose.Words pentru Java
articleTitle: Utilizați `DocumentBuilder` pentru a insera elemente de Document
linktitle: Utilizați `DocumentBuilder` pentru a insera elemente de Document
type: docs
description: "Introduceți elemente de document utilizând constructorul de documente în Java."
weight: 10
url: /ro/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) este folosit pentru a modifica documente. Acest articol explică și descrie cum să efectuați o serie de sarcini.

## Inserarea unui șir de Text

Pur și simplu treceți șirul de text pe care trebuie să îl introduceți în document la metoda [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)). Formatarea textului este determinată de proprietatea `Font`. Acest obiect conține atribute de font diferite (numele fontului, dimensiunea fontului, culoarea și așa mai departe). Unele atribute importante ale fontului sunt, de asemenea, reprezentate de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Proprietăți pentru a vă permite să le accesați direct. Acestea sunt proprietăți booleene [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) și [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Rețineți că formatarea caracterelor pe care ați setat-o se va aplica întregului text inserat începând cu poziția curentă din document.

{{% /alert %}}

Următorul exemplu de cod introduce text formatat folosind DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Introducerea unui paragraf

DocumentBuilder.writeln introduce și un șir de text în document, dar în plus, adaugă o pauză de paragraf. Formatarea fontului curent este, de asemenea, specificată de DocumentBuilder.getFont proprietatea și formatarea paragrafului curent sunt determinate de DocumentBuilder.getParagraphFormat proprietate.

Următorul exemplu de cod arată cum să inserați un paragraf în document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Introducerea unui tabel

Algoritmul de bază pentru a crea un tabel folosind `DocumentBuilder` este simplu:

1. Începeți tabelul folosind [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Introduceți o celulă folosind [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Aceasta pornește automat un nou rând. Dacă este necesar, utilizați proprietatea [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) pentru a specifica formatarea celulei.
1. Introduceți conținutul celulei folosind metodele `DocumentBuilder`.
1. Repetați pașii 2 și 3 până când rândul este complet.
1. Apelați [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) pentru a încheia rândul curent. Dacă este necesar, utilizați proprietatea [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) pentru a specifica formatarea rândurilor.
1. Repetați pașii 2 - 5 până când tabelul este complet.
1. Sunați la [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) pentru a termina construirea mesei. Metodele corespunzătoare de creare a tabelelor DocumentBuilder sunt descrise mai jos.

### Începerea unei mese

Apel DocumentBuilder.startTable este primul pas în construirea unui tabel. Poate fi numit și în interiorul unei celule, în acest caz, începe o masă imbricată. Următoarea metodă de apelare este DocumentBuilder.insertCell.

### Introducerea unei celule

După ce suni DocumentBuilder.insertCell, se creează o celulă nouă și orice conținut pe care îl adăugați folosind alte metode din clasa `DocumentBuilder` va fi adăugat la celula curentă. Pentru a porni o celulă nouă în același rând, apelați DocumentBuilder.insertCell din nou. Utilizați DocumentBuilder.getCellFormat proprietate pentru a specifica formatarea celulei. Returnează un obiect [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) care reprezintă toate formatările pentru o celulă de tabel.

### Încheierea unui rând

Sună la DocumentBuilder.endRow pentru a termina rândul curent. Dacă sunați DocumentBuilder.insertCell imediat după aceea, apoi tabelul continuă pe un nou rând. Utilizați proprietatea `DocumentBuilder.RowFormat` pentru a specifica formatarea rândurilor. Returnează un obiect [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) care reprezintă toate formatările pentru un rând de tabel.

### Încheierea unei mese

Sună DocumentBuilder.endTable pentru a termina tabelul curent. Această metodă trebuie apelată o singură dată după DocumentBuilder.endRow a fost chemat. Când este chemat, DocumentBuilder.endTable mută cursorul din celula curentă într-o poziție imediat după tabel. Următorul exemplu demonstrează cum se construiește un tabel formatat care conține 2 rânduri și 2 coloane.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Introducerea unei pauze

Dacă doriți să începeți în mod explicit o nouă linie, paragraf, coloană, secțiune sau pagină, apelați DocumentBuilder.insertBreak. Treceți la această metodă tipul pauzei pe care trebuie să o inserați, care este reprezentat de enumerarea `BreakType`.
Următorul exemplu de cod arată cum să inserați pauze de pagină într-un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Inserarea unei imagini

DocumentBuilder oferă mai multe supraîncărcări ale metodei [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) care vă permite să inserați o imagine inline sau plutitoare. Dacă imaginea este un metafișier EMF sau WMF, aceasta va fi inserată în document în format metafișier. Toate celelalte imagini vor fi stocate în format PNG. DocumentBuilder.insertImage metoda poate utiliza imagini din diferite surse:

- Dintr-un fișier sau `URL` prin trecerea unui parametru șir
- Dintr-un flux prin trecerea unui parametru `Stream`
- De la un obiect de imagine prin trecerea unui parametru de imagine
- Dintr-o matrice de octeți prin trecerea unui parametru de matrice de octeți
- Și altele

Pentru fiecare dintre DocumentBuilder.insertImage metode, există supraîncărcări suplimentare care vă permit să inserați o imagine cu următoarele opțiuni:

- În linie sau plutind într - o anumită poziție
- Scară procentuală sau dimensiune personalizată

Mai mult, DocumentBuilder.insertImage metoda returnează un obiect [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) care tocmai a fost creat și inserat, astfel încât să puteți modifica în continuare proprietățile formei.

### Inserarea unei imagini Inline

Treceți un singur șir reprezentând un fișier care conține imaginea la DocumentBuilder.insertImage pentru a insera imaginea în document ca un grafic inline. Următorul exemplu de cod arată cum să inserați o imagine în linie în poziția cursorului într-un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Introducerea unei imagini Plutitoare (poziționate absolut)

Acest exemplu inserează o imagine plutitoare dintr-un fișier sau `URL` la o poziție și dimensiune specificate.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Introducerea unui marcaj

Pentru a insera un marcaj în document, trebuie să faceți următoarele:

1. Apelați [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) trecându-i numele dorit al marcajului.
1. Introduceți textul marcajului folosind metodele `DocumentBuilder`.
1. Apelați [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) trecându-i același nume pe care l-ați folosit cu DocumentBuilder.startBookmark.

Marcajele se pot suprapune și se pot întinde pe orice interval. Pentru a crea un marcaj valid, trebuie să apelați ambele DocumentBuilder.startBookmark și DocumentBuilder.endBookmark cu același nume de marcaj.

Marcajele sau marcajele formate prost cu nume duplicate vor fi ignorate atunci când documentul este salvat.

Următorul exemplu de cod arată cum să inserați un marcaj într-un document utilizând un constructor de documente.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Introducerea unui câmp

Câmpurile din documentele Microsoft Word constau dintr-un cod de câmp și un rezultat de câmp. Codul câmpului este ca o formulă, iar rezultatul câmpului este valoarea pe care o produce formula. Codul de câmp poate conține, de asemenea, comutatoare de câmp care sunt instrucțiuni suplimentare pentru a efectua o acțiune specifică. Puteți comuta între afișarea codurilor de câmp și a rezultatelor în documentul dvs. în Microsoft Word utilizând comanda rapidă de la tastatură Alt+F9. Codurile de câmp apar între acolade ({ }).Utilizați [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) pentru a crea câmpuri în document. Trebuie să specificați un tip de câmp, un cod de câmp și o valoare de câmp. Dacă nu sunteți sigur de sintaxa codului de câmp, creați mai întâi câmpul în Microsoft Word și comutați pentru a vedea codul câmpului său.
Următorul exemplu de cod introduce un câmp de îmbinare într-un document folosind DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Introducerea unui câmp `Form`

Câmpurile de formular sunt un caz particular de câmpuri de cuvinte care permite "interacțiunea" cu utilizatorul. Câmpurile de formular din Microsoft Word includ caseta de text, Combobox și checkbox.DocumentBuilder oferă metode speciale pentru a insera fiecare tip de câmp de formular în document: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int), [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) și [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Rețineți că, dacă specificați un nume pentru câmpul Formular, atunci un marcaj este creat automat cu același nume.

### Introducerea unei intrări de Text

DocumentBuilder.insertTextInput pentru a insera o casetă de text în document. Următorul exemplu de cod arată cum să inserați un câmp de formular de introducere a textului într-un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Introducerea unui `CheckBox`

Sună DocumentBuilder.insertCheckBox pentru a insera un checkbox în document. Următorul exemplu de cod arată cum să inserați un câmp de formular checkbox într-un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Introducerea unei casete combinate

Sună DocumentBuilder.insertComboBox pentru a insera o casetă combo în document. Următorul exemplu de cod arată cum să inserați un câmp de formular combo box într-un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Introducerea Locale la nivel de câmp

Clienții pot specifica acum Locale la nivel de câmp și pot obține un control mai bun. ID-urile Locale pot fi asociate cu fiecare câmp din interiorul DocumentBuilder. Exemplele de mai jos ilustrează modul de utilizare a acestei opțiuni.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Inserarea HTML

Puteți introduce cu ușurință un șir HTML care conține un fragment HTML sau un document întreg HTML în documentul Word. Doar treceți acest șir la DocumentBuilder.insertHtml metodă. Una dintre implementările utile ale metodei este stocarea unui șir HTML într-o bază de date și inserarea acestuia în document în timpul Mail Merge pentru a adăuga conținutul formatat în loc să-l construiască folosind diferite metode ale constructorului de documente. Următorul exemplu de cod prezintă inserturi HTML într-un document folosind DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Introducerea unui Hyperlink

Utilizați DocumentBuilder.insertHyperlink pentru a insera un hyperlink în document. Această metodă acceptă trei parametri: textul linkului care urmează să fie afișat în document, destinația linkului (URL sau un nume al unui marcaj din document) și un parametru boolean care ar trebui să fie adevărat dacă `URL` este un nume al unui marcaj din document.DocumentBuilder.insertHyperlink apeluri interne DocumentBuilder.insertField. Metoda adaugă întotdeauna apostrofe la începutul și la sfârșitul URL. Rețineți că trebuie să specificați formatarea fontului pentru textul afișat hyperlink folosind în mod explicit proprietatea `Font`. Următorul exemplu de cod introduce un hyperlink într-un document folosind DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Introducerea unui cuprins

Puteți insera un câmp `TOC` (cuprins) în document în poziția curentă apelând metoda [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String). DocumentBuilder.Metoda insertTableOfContents va insera doar un câmp `TOC` în document. Pentru a construi cuprinsul și a le afișa în funcție de numerele paginilor, metoda both **Document.UpdateFields**trebuie apelată după inserarea câmpului. Următorul exemplu de cod arată cum să inserați un câmp cuprins într-un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Introducerea Obiectului Ole

Dacă doriți apel obiect OLE [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Setați numele fișierului și extensia la introducerea obiectului Ole

OLE pachetul este o modalitate moștenită și "nedocumentată" de a stoca obiecte încorporate dacă manipulatorul OLE este necunoscut. Versiunile timpurii Windows, cum ar fi Windows 3.1, 95 și 98 aveau Packager.exe aplicație care putea fi utilizată pentru a încorpora orice tip de date în document. Acum, această aplicație este exclusă din Windows, dar MS Word și alte aplicații încă o folosesc pentru a încorpora date Dacă OLE handler lipsește sau necunoscut. OlePackage clasa permite accesarea OLE Package Proprietăți.Următorul exemplu de cod arată cum să setați numele fișierului, extensia și numele afișat pentru OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Obțineți acces la OLE obiect date brute

Următorul exemplu de cod demonstrează cum să obțineți OLE Obiect date brute folosind `OleFormat.GetRawData`() metoda.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Introduceți regula orizontală în Document

Următorul exemplu de cod arată cum să inserați forma regulii orizontale într-un document folosind metoda `DocumentBuilder.InsertHorizontalRule`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Lucrul cu forme

### Introducerea formelor Inline și plutitoare libere

Puteți insera o formă în linie cu un tip și o dimensiune specificate și o formă plutitoare liberă cu poziția specificată, dimensiunea și tipul de înfășurare a textului într-un document folosind metoda `DocumentBuilder.InsertShape`. Metoda `DocumentBuilder.InsertShape` permite inserarea formei DML în modelul documentului. Documentul trebuie salvat în format, care acceptă forme DML, altfel astfel de noduri vor fi convertite în formă VML, în timp ce se salvează documentul. Următorul exemplu de cod arată cum să inserați aceste tipuri de forme în document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Creați Un Dreptunghi De Colț Snip

Puteți crea un dreptunghi de colț snip folosind Aspose.Words. Tipurile de forme sunt SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, și DiagonalCornersRounded. Forma DML este creată folosind metoda `DocumentBuilder.InsertShape` cu aceste tipuri de forme. Aceste tipuri nu pot fi folosite pentru a crea forme VML. Încercarea de a crea o formă folosind constructorul public al clasei "Shape" ridică excepția "NotSupportedException". Următorul exemplu de cod arată cum să inserați aceste tipuri de forme în document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Importați forme cu matematica XML ca forme în DOM

Puteți utiliza proprietatea `LoadOptions.ConvertShapeToOfficeMath` pentru a converti formele cu EquationXML în obiecte Office Math. Valoarea implicită a acestei proprietăți corespunde MS comportamentul cuvântului, adică formele cu ecuația XML nu sunt convertite în obiecte Office math.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
