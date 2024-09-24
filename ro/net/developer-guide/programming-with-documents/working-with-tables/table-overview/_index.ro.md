---
title: Prezentare generală a tabelelor
second_title: Aspose.Words pentru .NET
articleTitle: Prezentare generală a tabelelor
linktitle: Prezentare generală a tabelelor
description: "Lucraţi cu tabele şi componentele lor cum ar fi celule, rânduri, coloane în Aspose.Words pentru .NET. Cum se lucrează cu tabele în C#."
type: docs
weight: 10
url: /ro/net/table-overview/
---

Aspose.Words este o bibliotecă de clase proiectată pentru procesarea serverului-side a documentelor în diferite formate - PDF, HTML, diferite Microsoft Word formate și altele, și suportă tabele în felul următor:

* tabelele dintr-un document sunt păstrate la deschidere/salvare și conversii
:* este posibilă editarea tabelului, conținutului și a formatării, iar apoi exportarea modificărilor într-un fișier în format care suportă tabele

În acest articol vom învăța mai multe despre structura tabelelor, celule, rânduri și coloane, care sunt suportate de Aspose.Words și detaliile de lucru cu astfel de tabele.

## Structura Tabelului

După cum s-a menționat deja, tabelul constă din astfel de elemente ca **Cell**, **Row** și **Column**. Acestea sunt concepte care sunt comune tuturor tabelelor în general, indiferent de formatul documentului.

Aceasta este o exemplificare frecventă a unei tabele găsite într-un Microsoft Word document:

![tables-overview-aspose-words-net-1](tables-overview-1.png)

### Table Nodes

O masă din orice document încărcat în Aspose.Words este importată ca o **Nod de tabelă**. Tabelul poate fi găsit ca un copil al lui:

- text principal
- o poveste în linie, cum ar fi un comentariu sau o notă de subsol
- celule când o masă este încorporată într-o altă masă

{{% alert color="primary" %}}

Rețineți că tabelele pot fi închise în interiorul altor tabele până la orice adâncime.

{{% /alert %}}

### Conținutul Tabelului

"Nodul tabelului nu conține niciun conținut real – în schimb este un recipient pentru alte astfel de noduri care formează conținutul:"

- **Table** conţine multe noduri **Row**. Tabelul furnizează toate elementele obișnuite de nod, permițându-ți să te deplasezi liber, să modifici și să elimini tabelul din document.
- **Row** reprezintă un singur rând de tabel și conține multe noduri **Cell**. În plus, **Row** furnizează elemente care definesc modul în care rândul este afișat, cum ar fi înălțimea și alinierea.
- **Cell** este ceea ce conține conținutul true vizibil în tabel și este format din un **Paragraph** și alte noduri de nivel bloc. În plus, celulele pot conține tabele închise.

![tables-overview-aspose-words-net-2](tables-overview-2.png)

{{% alert color="primary" %}}

Puteţi verifica structura nodurilor de tabel dintr-un document folosind **DocumentExplorer**.

{{% /alert %}}

### Paragraf gol după Tabel

Imaginea de mai sus arată că documentul conține o tabelă din mai multe rânduri, care la rândul ei constă din două celule. Fiecare dintre cele două celule include un paragraf, care este containerul pentru textul formatat al celulei.

Este de asemenea demn de remarcat că separarea a două tabele consecutive într-un document necesită cel puțin un paragraf gol după tabelă. Fără un astfel de paragraf, tabelele consecutive ar fi îmbinate într-una singură. Acest comportament este identic în ambele Microsoft Word și Aspose.Words.

În Aspose.Words, toate clasele și proprietățile legate de tabele sunt conținute în spațiul de nume [Aspose.Words.Tables](https://reference.aspose.com/words/net/aspose.words.tables/).

## Vedeți și

* [Aspose.Words Document Object Model (DOM)](/words/net/aspose-words-document-object-model/)
* [Logical Levels of Nodes in a Document](/words/net/logical-levels-of-nodes-in-a-document/)