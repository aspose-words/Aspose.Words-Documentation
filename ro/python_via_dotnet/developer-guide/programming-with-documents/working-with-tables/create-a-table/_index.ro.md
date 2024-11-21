---
title: Introducere și crearea tabelelor
second_title: Aspose.Words pentru Python via .NET
articleTitle: Introducere și crearea tabelelor
linktitle: Introducere și crearea tabelelor
description: "Creați și gestionați tabele într-un document folosind Python."
type: docs
weight: 10
url: /ro/python-net/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words permite utilizatorilor să creeze tabele într-un document de la zero și oferă mai multe metode diferite pentru a face acest lucru. Acest articol prezintă detalii despre cum să adăugați tabele formatate la documentul dvs. utilizând Fiecare metodă, precum și o comparație a fiecărei metode la sfârșitul articolului.

## Stiluri De Masă Implicite

Tabelului nou creat i se dau valori implicite similare cu cele utilizate în Microsoft Word:

| Proprietatea Tabelului | Implicit în Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | `1/2 pt` |
| `Border Color` | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |
{{% alert color="primary" %}}

Un tabel poate fi în linie dacă este bine poziționat sau plutitor dacă poate fi poziționat oriunde pe pagină. În mod implicit, Aspose.Words creează întotdeauna tabele inline.

{{% /alert %}}

## Creați un tabel cu DocumentBuilder

În Aspose.Words, Utilizatorii pot crea un tabel într-un document folosind [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Algoritmul de bază pentru crearea unui tabel este următorul:

1. Începeți tabelul cu [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/)
2. Adăugați o celulă la tabel folosind [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/) - aceasta pornește automat un nou rând
3. Opțional, utilizați proprietatea [CellFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) pentru a specifica formatarea celulei
4. Introduceți conținutul celulei folosind metodele corespunzătoare **DocumentBuilder**, cum ar fi [Writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/#str), [InsertImage](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/#str) și altele
5. Repetați pașii 2 - 4 până când rândul este complet
6. Apelați [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) pentru a încheia rândul curent
7. Opțional, utilizați proprietatea [RowFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) pentru a specifica formatarea rândurilor
8. Repetați pașii 2 - 7 până când tabelul este complet
9. Apelați [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) pentru a termina construirea mesei

{{% alert color="primary" %}}

Detalii importante:

- [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/) poate fi, de asemenea, numit în interiorul unei celule, caz în care începe crearea unui tabel imbricat în interiorul celulei.
- După apelarea [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/), se creează o nouă celulă și orice conținut pe care îl adăugați folosind alte metode din clasa [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) va fi adăugat la celula curentă. Pentru a crea o celulă nouă pe același rând, apelați din nou **InsertCell**.
- Dacă **InsertCell** este apelat imediat după [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) și sfârșitul unui rând, tabelul va continua pe un rând nou.
- Metoda [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) pentru a încheia tabelul trebuie apelată o singură dată după apelarea **EndRow**. Apelarea **EndTable** mută cursorul din celula curentă în poziția imediat după tabel.

{{% /alert %}}

Procesul de creare a unui tabel poate fi văzut clar în imaginea următoare:

<img src="creating-table-process.jpg" alt="creating-table-process" style="zoom:50%;" />

Următorul exemplu de cod arată cum să creați un tabel simplu folosind **DocumentBuilder** cu formatare implicită:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "create-simple-table.py" >}}

Următorul exemplu de cod arată cum se creează un tabel formatat folosind DocumentBuilder:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "formatted-table.py" >}}

Următorul exemplu de cod arată cum să inserați un tabel imbricat folosind DocumentBuilder:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "nested-table.py" >}}

## Creați un tabel prin DOM (Document Object Model)

Puteți insera tabele direct în DOM adăugând un nou nod [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) la o anumită poziție.

Vă rugăm să rețineți că imediat după crearea nodului tabelului, tabelul în sine va fi complet gol, adică nu conține încă rânduri și celule. Pentru a insera rânduri și celule într-un tabel, adăugați nodurile copil corespunzătoare [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) și [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) la DOM.

{{% alert color="primary" %}}

Această metodă de creare a unui tabel utilizează aceleași valori implicite ale tabelului ca atunci când se utilizează **DocumentBuilder**.

{{% /alert %}}

Următorul exemplu de cod arată cum să construiți un nou tabel de la zero prin adăugarea nodurilor copil corespunzătoare în arborele de documente:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-directly.py" >}}

## Creați un tabel din HTML

Aspose.Words acceptă inserarea conținutului într-un document dintr-o sursă HTML folosind metoda [InsertHtml](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/). Intrarea poate fi o pagină completă HTML sau doar un fragment parțial.

Folosind metoda **InsertHtml**, utilizatorii pot insera tabele în document prin etichete de tabel precum `<table>`, `<tr>`, `<td>`.

Următorul exemplu de cod arată cum să inserați un tabel într-un document dintr-un șir care conține etichete HTML:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-from-html.py" >}}

## Inserați o copie a unui tabel existent

Există adesea momente când trebuie să creați un tabel bazat pe un tabel deja existent într-un document. Cel mai simplu mod de a duplica un tabel păstrând în același timp toate formatările este de a clona nodul tabelului folosind metoda [Clone](https://reference.aspose.com/words/python-net/aspose.words/node/clone/).

Aceeași tehnică poate fi utilizată pentru a adăuga copii ale unui rând sau celulă existentă la un tabel.

Următorul exemplu de cod arată cum să duplicați un tabel folosind constructori de noduri:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-complete-table.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Următorul exemplu de cod arată cum să clonați ultimul rând al unui tabel și să îl adăugați la tabel:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-last-row.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Dacă vă uitați la crearea de tabele într-un document care cresc dinamic cu fiecare înregistrare din sursa de date, atunci metoda de mai sus nu este recomandată. În schimb, rezultatul dorit este mai ușor de obținut prin utilizarea Mail merge cu regiuni.

## Comparați modalitățile de a crea un tabel

Aspose.Words oferă mai multe metode pentru a crea tabele noi într-un document. Fiecare metodă are propriile avantaje și dezavantaje, astfel încât alegerea utilizării depinde adesea de situația specifică.

Să aruncăm o privire mai atentă asupra acestor moduri de a crea tabele și de a compara avantajele și dezavantajele acestora:

| Metoda | Avantaje | Dezavantaje |
| :- | :- | :- |
| Prin DocumentBuilder | Metoda standard pentru inserarea tabelelor și a altor conținuturi ale documentelor | Uneori dificil de a crea mai multe soiuri de tabele, în același timp, cu aceeași instanță constructor |
| Prin DOM | Se potrivește mai bine cu codul înconjurător care creează și inserează noduri direct în DOM fără a utiliza un **DocumentBuilder** | Tabelul este creat "gol": înainte de a efectua majoritatea operațiunilor, trebuie să apelați [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words.tables/table/ensure_minimum/) pentru a crea noduri copil lipsă |
| Din HTML | Poate crea un nou tabel din HTML sursă folosind etichete precum `<table>`, `<tr>`, `<td>` | Nu toate formatele de tabel Microsoft Word posibile pot fi aplicate la HTML |
| Clonarea unui tabel existent | Puteți crea o copie a unui tabel existent păstrând în același timp toate formatarea rândurilor și celulelor | Nodurile copil corespunzătoare trebuie eliminate înainte ca tabelul să fie gata de utilizare |
