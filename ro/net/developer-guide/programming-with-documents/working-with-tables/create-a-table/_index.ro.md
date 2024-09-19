---
title: Cum să creezi o tabelă în C#
second_title: Aspose.Words pentru .NET
articleTitle: Creează o Tabelă
linktitle: Creează o Tabelă
description: "Un ghid despre cum să faci o masă în C# în diverse moduri. Crează o tabelă în C# pentru documentul tău."
type: docs
weight: 20
url: /ro/net/create-a-table/
---

Aspose.Words permite utilizatorilor să creeze tabele în documente din start și oferă mai multe metode diferite pentru a face acest lucru. Acest articol prezintă detalii despre cum să adăugați tabele formatate în documentul dumneavoastră folosind fiecare metodă, precum și o comparație a fiecărei metode la sfârșitul articolului.

## Stiluri tabele implicite

Tabelul proaspăt creat este dat valori implicite similare cu cele utilizate în Microsoft Word:

| Proprietatea Tabelului | Default la Aspose.Words |
| :--------------------- | :---------------------- |
| `Border Style` | `Single` |
| `Border Width` | `1/2 pt` |
| `Border Color` | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |

{{% alert color="primary" %}}

O masă poate fi în linie dacă este poziționată strâns sau plutitoare dacă poate fi poziționată oriunde pe pagină. În mod implicit, Aspose.Words creează întotdeauna tabele în linie.

{{% /alert %}}

## Creează o Tabelă cu DocumentBuilder

În Aspose.Words, utilizatorii pot crea o masă într-un document folosind [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). Algoritmul de bază pentru crearea unei tabele este ca acesta:

1. Începe tabelul cu [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/)
2. Adăugați o celulă la tabel folosind [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) – aceasta va începe automat un nou rând
3. În mod opțional, utilizați proprietatea [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) pentru a specifica formatarea celulei
4. Introduce conținutul celulei folosind metodele **DocumentBuilder** potrivite, cum ar fi [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) și altele
5. Repetă pașii 2-4 până când rândul este complet
6. Apelați [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) pentru a încheia rândul curent
7. În mod opțional, utilizați proprietatea [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) pentru a specifica formatarea rândului
8. Repetă pașii 2-7 până când tabelul este complet
9. Sună [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) să termeni de construit masa

{{% alert color="primary" %}}

Detalii importante:

* [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) poate fi apelat, de asemenea, în interiorul unei celule, în cazul acesta pornind crearea unui tabel încastrat în interiorul celulei.
* După apelarea [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/), se creează o nouă celulă, iar orice conținut adăugați folosind alte metode ale clasei [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) va fi adăugat la celula curentă. Pentru a crea o nouă celulă pe același rând, apelați din nou **InsertCell**.
* Dacă **InsertCell** este chemat imediat după [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) și sfârșitul unei rânduri, tabelul va continua pe un nou rând.
* Metoda [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) pentru a încheia tabelul trebuie să fie apelată doar o singură dată după **EndRow**. Apăsarea **EndTable** mută cursorul din celula curentă în poziția imediată după tabel.

{{% /alert %}}

Procesul de creare a unei tabele poate fi văzut clar în imaginea următoare:

![creating-table-process](creating-table-process.jpg)

Exemplul următor de cod arată cum să creezi o simplă tabelă folosind **DocumentBuilder** cu formatare implicită:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

Exemplul următor de cod arată cum se creează o masă formatată folosind DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

Exemplul următor de cod arată cum să inserezi o masă încastrată folosind DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## Creează o tabelă via DOM (Document Object Model)

Puteți insera tabele direct în DOM adăugând un nod [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) nou la o poziție specifică.

Vă rugăm să rețineți că imediat după crearea nodului de tabel, tabelul însuși va fi complet gol, adică nu conține încă rânduri și celule. Pentru a insera rânduri și celule într-o tabelă, adăugați nodurile corespunzătoare [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) și [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) ca copii ale DOM.

{{% alert color="primary" %}}

Această metodă de creare a unei tabele utilizează aceleași setări de tabel ca și atunci când se folosește **DocumentBuilder**.

{{% /alert %}}

Exemplul de cod de mai jos arată cum să construiți o nouă tabelă din cămașă prin adăugarea nodurilor corespunzătoare copilului la arborele de documente:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## Crează o tabele de la HTML

Aspose.Words acceptă inserarea conținutului într-un document dintr-o sursă HTML folosind metoda [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/). Intrarea poate fi o pagină HTML completă sau doar un fragment parțial.

Utilizând metoda **InsertHtml**, utilizatorii pot introduce tabele în document folosind etichete de tip tabel ca `<table>`, `<tr>`, `<td>`.

Exemplul următor de cod arată cum să introducem o tabelă într-un document dintr-un șir care conține etichete HTML:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## Înserare a unei Copii de o Tabelă Existenta

Sunt adesea momente când trebuie să creezi o tabelă bazată pe o altă tabelă deja existentă într-un document. Cea mai ușoară metodă de a duplica o tabelă în timp ce se păstrează formatarea este să clonezi nodul "Tabel" folosind metoda [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/).

Același tehnic poate fi folosit pentru a adăuga copii ale unei rânduri existente sau celule într-o tabelă.

Exemplul de cod următor arată cum se poate duplica o tabelă folosind constructorii de noduri:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Exemplul de cod următor arată cum se clonează ultima rând dintr-o tabelă și se atașează la tabelă:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Dacă ești în căutarea creării tabelelor într-un document care cresc dinamic cu fiecare înregistrare din sursa de date, atunci metoda de mai sus nu este recomandată. În schimb, ieșirea dorită este mai ușor realizată folosind Mail merge cu regiuni. Puteţi afla mai multe despre această tehnică în secțiunea [Mail Merge with Regions](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions).

## Comparați modurile de a crea un tabel

Aspose.Words oferă mai multe metode de creare a unor tabele noi într-un document. Fiecare metodă are avantajele şi dezavantajele ei, aşa că alegerea celei care urmează să fie folosită depinde adesea de situaţia specifică.

Să aruncăm o privire mai atentă la aceste moduri de a crea tabele și să comparăm avantajele și dezavantajele acestora:

| Metoda | Avantaje | Dezavantajele |
| :- | :- | :- |
| Via `DocumentBuilder` | Metoda standard pentru inserarea tabelelor și a altor conținuturi de documente | Uneori e greu să creezi multe tipuri de tabele în același timp cu aceeași instanță de constructor |
| Via DOM | Se potrivește mai bine cu codul înconjurătoare care creează și inserează noduri direct în DOM, fără a folosi un **DocumentBuilder** | Tabelul este creat "goale": înainte de a efectua majoritatea operațiilor, trebuie să apelați [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words.tables/table/ensureminimum/) pentru a crea orice noduri copil lipsă |
| De la HTML | Poate crea o nouă tabelă din sursa HTML folosind etichete ca `<table>`, `<tr>`, `<td>` | Nu toate formate de masă Microsoft Word posibile pot fi aplicate la HTML |
| Clonarea unei tabele existente | Puteți crea o copie a unei tabele existente păstrând toate formatările de rând și celulă | Copiii potriviți trebuie să fie eliminați înainte de ca tabelul să fie gata pentru utilizare |