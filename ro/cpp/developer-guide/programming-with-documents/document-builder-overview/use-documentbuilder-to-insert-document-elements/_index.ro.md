---
title: Utilizați `DocumentBuilder` pentru a insera elemente de Document
second_title: Aspose.Words pentru C++
articleTitle: Utilizați `DocumentBuilder` pentru a insera elemente de Document
linktitle: Utilizați `DocumentBuilder` pentru a insera elemente de Document
type: docs
description: "Introduceți elemente de document utilizând constructorul de documente în C++."
weight: 80
url: /ro/cpp/use-documentbuilder-to-insert-document-elements/
---

`DocumentBuilder` este folosit pentru a modifica documente. Acest articol explică și descrie cum să efectuați o serie de sarcini:

## Inserarea unui șir de Text

Pur și simplu treceți șirul de text pe care trebuie să îl introduceți în document la metoda `DocumentBuilder.Write`. Formatarea textului este determinată de proprietatea `Font`. Acest obiect conține atribute de font diferite (numele fontului, dimensiunea fontului, culoarea și așa mai departe). Unele atribute importante ale fontului sunt, de asemenea, reprezentate de DocumentBuilder Proprietăți pentru a vă permite să le accesați direct. Acestea sunt proprietăți booleene `Font.Bold`, `Font.Italic` și `Font.Underline`.

Rețineți că formatarea caracterelor pe care ați setat-o se va aplica întregului text inserat începând cu poziția curentă din document.

Exemplul de mai jos introduce text formatat folosind DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Introducerea unui paragraf

 `DocumentBuilder.Writeln` inserează și un șir de text în document, dar în plus, adaugă o pauză de paragraf. Formatarea fontului curent este, de asemenea, specificată de proprietatea `DocumentBuilder.Font`, iar formatarea paragrafului curent este determinată de proprietatea `DocumentBuilder.ParagraphFormat`. Exemplul de mai jos arată cum să inserați un paragraf în document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Introducerea unui tabel

Algoritmul de bază pentru crearea unui tabel folosind DocumentBuilder este simplu:

1. Începeți tabelul folosind `DocumentBuilder.StartTable`.
1. Introduceți o celulă folosind `DocumentBuilder.InsertCell`. Aceasta pornește automat un nou rând. Dacă este necesar, utilizați proprietatea `DocumentBuilder.CellFormat` pentru a specifica formatarea celulei.
1. Introduceți conținutul celulei folosind metodele `DocumentBuilder`.
1. Repetați pașii 2 și 3 până când rândul este complet.
1. Apelați `DocumentBuilder.EndRow` pentru a încheia rândul curent. Dacă este necesar, utilizați proprietatea `DocumentBuilder.RowFormat` pentru a specifica formatarea rândurilor.
1. Repetați pașii 2 - 5 până când tabelul este complet.
1. Sunați la `DocumentBuilder.EndTable` pentru a termina construirea mesei. Metodele corespunzătoare de creare a tabelelor DocumentBuilder sunt descrise mai jos.

### Începerea unei mese

Apelarea `DocumentBuilder.StartTable` este primul pas în construirea unei mese. Poate fi numit și în interiorul unei celule, caz în care începe o masă imbricată. Următoarea metodă de apelare este `DocumentBuilder.InsertCell`.

### Introducerea unei celule

După ce apelați `DocumentBuilder->InsertCell`, se creează o celulă nouă și orice conținut pe care îl adăugați folosind alte metode din clasa `DocumentBuilder` va fi adăugat la celula curentă. Pentru a porni o celulă nouă în același rând, apelați din nou `DocumentBuilder->InsertCell`. Utilizați proprietatea `DocumentBuilder.CellFormat` pentru a specifica formatarea celulei. Returnează un obiect `CellFormat` care reprezintă toate formatările pentru o celulă de tabel.

### Încheierea unui rând

Apelați `DocumentBuilder.EndRow` pentru a termina rândul curent. Dacă apelați `DocumentBuilder->InsertCell` imediat după aceea, atunci tabelul continuă pe un rând nou.

Utilizați proprietatea `DocumentBuilder.RowFormat` pentru a specifica formatarea rândurilor. Returnează un obiect `RowFormat` care reprezintă toate formatările pentru un rând de tabel.

### Încheierea unei mese

Apelați `DocumentBuilder.EndTable` pentru a termina tabelul curent. Această metodă ar trebui apelată o singură dată după ce `DocumentBuilder->EndRow` a fost apelat. Când este apelat, `DocumentBuilder.EndTable` mută cursorul din celula curentă într-o poziție imediat după tabel. Următorul exemplu demonstrează cum se construiește un tabel formatat care conține 2 rânduri și 2 coloane.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Introducerea unei pauze

Dacă doriți să începeți în mod explicit o nouă linie, paragraf, coloană, secțiune sau pagină, apelați `DocumentBuilder.InsertBreak`. Treceți la această metodă tipul pauzei pe care trebuie să o inserați, care este reprezentat de enumerarea `BreakType`. Exemplul de mai jos arată cum să inserați pauze de pagină într-un document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Inserarea unei imagini

DocumentBuilder oferă mai multe supraîncărcări ale metodei `DocumentBuilder->InsertImage` care vă permite să inserați o imagine inline sau plutitoare. Dacă imaginea este un metafișier EMF sau WMF, aceasta va fi inserată în document în format metafișier. Toate celelalte imagini vor fi stocate în format PNG. Metoda `DocumentBuilder->InsertImage` poate utiliza imagini din diferite surse:

- Dintr-un fișier sau `URL` prin trecerea unui parametru șir `DocumentBuilder->InsertImage`.
- Dintr-un flux trecând un parametru `Stream` `DocumentBuilder->InsertImage`.
- De la un obiect de imagine prin trecerea unui parametru de imagine `DocumentBuilder->InsertImage`.
- Dintr-o matrice de octeți prin trecerea unui parametru de matrice de octeți `DocumentBuilder.InsertImage`.Pentru fiecare dintre metodele `DocumentBuilder->InsertImage`, există supraîncărcări suplimentare care vă permit să inserați o imagine cu următoarele opțiuni:
- În linie sau plutind într-o anumită poziție, de exemplu, `DocumentBuilder->InsertImage`.
- Scala procentuală sau dimensiunea personalizată, de exemplu, `DocumentBuilder.InsertImage`. În plus, metoda `DocumentBuilder->InsertImage` returnează un obiect `Shape` care tocmai a fost creat și inserat, astfel încât să puteți modifica în continuare proprietățile formei.

### Inserarea unei imagini Inline

Treceți un singur șir reprezentând un fișier care conține imaginea la `DocumentBuilder->InsertImage` pentru a insera imaginea în document ca grafică în linie. Exemplul de mai jos arată cum să inserați o imagine în linie în poziția cursorului într-un document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Introducerea unei imagini Plutitoare (poziționate absolut)

Acest exemplu inserează o imagine plutitoare dintr-un fișier sau `URL` la o poziție și dimensiune specificate.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Introducerea unui marcaj

Pentru a insera un marcaj în document, trebuie să faceți următoarele:

1. Apelați `DocumentBuilder->StartBookmark` trecându-i numele dorit al marcajului.
1. Introduceți textul marcajului folosind metodele DocumentBuilder.
1. Apelați `DocumentBuilder.EndBookmark` trecându-i același nume pe care l-ați folosit cu **DocumentBuilder->StartBookmark**.
1. Marcajele se pot suprapune și se pot întinde pe orice interval. Pentru a crea un marcaj valid, trebuie să apelați atât `DocumentBuilder->StartBookmark`, cât și `DocumentBuilder->EndBookmark` cu același nume de marcaj.

{{% alert color="primary" %}}

Marcajele sau marcajele formate prost cu nume duplicate vor fi ignorate atunci când documentul este salvat.

{{% /alert %}}

Exemplul de mai jos arată cum să inserați un marcaj într-un document utilizând un constructor de documente.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## Introducerea unui câmp `Form`

Câmpurile de formular sunt un caz particular de câmpuri de cuvinte care permite "interacțiunea" cu utilizatorul. Câmpurile de formular din Microsoft Word includ textbox, combo box și checkbox.DocumentBuilder oferă metode speciale pentru a insera fiecare tip de câmp de formular în document: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox` și `DocumentBuilder.InsertComboBox`. Rețineți că, dacă specificați un nume pentru câmpul Formular, atunci un marcaj este creat automat cu același nume.

### Introducerea unei intrări de Text

 `DocumentBuilder.InsertTextInput` pentru a insera o casetă de text în document. Exemplul de mai jos arată cum să inserați un câmp de formular de introducere a textului într-un document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Introducerea unei casete de selectare

Apelați `DocumentBuilder.InsertCheckBox` pentru a insera un checkbox în document. Exemplul de mai jos arată cum să inserați un câmp de formular checkbox într-un document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Introducerea unei casete combinate

Apelați `DocumentBuilder.InsertComboBox` pentru a insera o casetă combinată în document. Exemplul de mai jos arată cum să inserați un câmp de formular combo box într-un document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Introducerea Locale la nivel de câmp

Clienții pot specifica acum Locale la nivel de câmp și pot obține un control mai bun. ID-urile Locale pot fi asociate cu fiecare câmp din interiorul DocumentBuilder. Exemplele de mai jos ilustrează modul de utilizare a acestei opțiuni.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Introducerea unui Hyperlink

Utilizați `DocumentBuilder.InsertHyperlink` pentru a insera un hyperlink în document. Această metodă acceptă trei parametri: textul linkului care urmează să fie afișat în document, destinația linkului (URL sau un nume al unui marcaj din document) și un parametru boolean care ar trebui să fie adevărat dacă `URL` este un nume al unui marcaj din document.DocumentBuilder.InsertHyperlink apeluri interne `DocumentBuilder.InsertField`.Metoda adaugă întotdeauna apostrofe la începutul și la sfârșitul URL. Rețineți că trebuie să specificați formatarea fontului pentru textul afișat hyperlink folosind în mod explicit proprietatea `Font`. Exemplul de mai jos introduce un hyperlink într-un document folosind DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Introducerea Obiectului Ole

Dacă doriți apel obiect OLE `DocumentBuilder.InsertOleObject`. Treceți la această metodă `ProgId` în mod explicit cu alți parametri. Exemplul de mai jos arată cum să inserați un obiect Ole într-un document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Setați numele fișierului și extensia la introducerea obiectului Ole

OLE pachetul este o modalitate moștenită și "nedocumentată" de a stoca obiectul încorporat dacă OLE handler este necunoscut. Versiunile timpurii Windows, cum ar fi Windows 3.1, 95 și 98 aveau Packager.exe aplicație care putea fi utilizată pentru a încorpora orice tip de date în document. Acum, această aplicație este exclusă din Windows, dar MS Word și alte aplicații încă o folosesc pentru a încorpora date dacă OLE handler lipsește sau necunoscut. OlePackage clasa permite accesarea OLE Package Proprietăți. Exemplul de mai jos arată cum să setați numele fișierului, extensia și numele afișat pentru OLE Package.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## Inserarea HTML

Puteți introduce cu ușurință un șir HTML care conține un fragment HTML sau un document întreg HTML în documentul Word. Doar treceți acest șir la metoda `DocumentBuilder->InsertHtml`. Una dintre implementările utile ale metodei este stocarea unui șir HTML într-o bază de date și inserarea acestuia în document în timpul mail merge pentru a adăuga conținutul formatat în loc să-l construiască folosind diferite metode ale constructorului de documente. Exemplul de mai jos prezintă inserturi HTML într-un document folosind DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Introduceți regula orizontală în Document

Exemplul Below code arată cum să inserați forma regulii orizontale într-un document folosind metoda `DocumentBuilder->InsertHorizontalRule`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
