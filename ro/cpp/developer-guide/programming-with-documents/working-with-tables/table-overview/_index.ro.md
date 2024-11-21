---
title: Prezentare Generală A Tabelului
second_title: Aspose.Words pentru C++
articleTitle: Prezentare Generală A Tabelului
linktitle: Prezentare Generală A Tabelului
description: "Lucrați cu tabele și componentele acestora, cum ar fi celule, rânduri, coloane în Aspose.Words pentru C++. Cum se lucrează cu tabele în C++."
type: docs
weight: 10
url: /ro/cpp/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words este o bibliotecă de clase concepută pentru procesarea pe server a documentelor în diferite formate – PDF, HTML, diferite formate Microsoft Word și altele-și acceptă tabele în următoarele moduri:

* tabelele dintr-un document sunt păstrate în timpul deschiderii / salvării și conversiilor
* este posibil să editați tabelul, conținutul și formatarea acestuia, apoi să exportați modificările într-un fișier într-un format care acceptă tabele

În acest articol, vom afla mai multe despre structura tabelului, celulele, rândurile și coloanele acceptate de Aspose.Words și detaliile de lucru cu astfel de tabele.

## Structura Tabelului

După cum sa menționat deja, tabelul constă din elemente precum **Cell**, **Row** și **Column**. Acestea sunt concepte care sunt comune tuturor tabelelor în general, indiferent de formatul documentului.

Acesta este un exemplu comun de tabel găsit într-un document Microsoft Word:

![tables-overview-aspose-words-cpp-1](tables-overview-1.png)

### Noduri De Tabel

Un tabel din orice document încărcat în Aspose.Words este importat ca **Table node**. Tabelul poate fi găsit ca un copil al:

- textul principal
- o poveste în linie, cum ar fi un comentariu sau o notă de subsol
- celule atunci când un tabel este imbricat într-un alt tabel

{{% alert color="primary" %}}

Rețineți că tabelele pot fi imbricate în interiorul altor tabele la orice adâncime.

{{% /alert %}}

### Conținutul Tabelului

Nodul tabelului nu conține conținut real-în schimb, este un container pentru alte astfel de noduri care alcătuiesc conținutul:

- **Table** conține multe noduri **Row**. Tabelul oferă toate elementele obișnuite ale nodului, permițându-vă să mutați, să modificați și să eliminați liber tabelul din document.
- **Row** reprezintă un singur rând de tabel și conține multe noduri **Cell**. În plus, **Row** oferă elemente care definesc modul în care este afișat rândul, cum ar fi înălțimea și alinierea.
- **Cell** este ceea ce conține conținutul adevărat vizibil în tabel și este alcătuit dintr-un **Paragraph** și alte noduri de nivel de bloc. În plus, celulele pot conține tabele imbricate.

![tables-overview-aspose-words-cpp-2](tables-overview-2.png)

{{% alert color="primary" %}}

Puteți verifica structura nodurilor de tabel într-un document folosind **DocumentExplorer**.

{{% /alert %}}

### Paragraf gol după tabel

Imaginea de mai sus arată că documentul conține un tabel cu mai multe rânduri, care la rândul său constă din două celule. Fiecare dintre cele două celule include un paragraf, care este containerul pentru textul formatat al celulei.

De asemenea, este demn de remarcat faptul că separarea a două tabele consecutive într-un document necesită cel puțin un paragraf gol după tabel. Fără un astfel de paragraf, tabelele consecutive ar fi unite într-unul singur. Acest comportament este identic atât în Microsoft Word cât și în Aspose.Words.

În Aspose.Words, toate clasele și proprietățile legate de tabele sunt conținute în spațiul de nume [Aspose.Words.Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/).

## Vezi Și

* [Aspose.Words Model Obiect Document (DOM)](/words/cpp/aspose-words-document-object-model/)
* [Nivelurile logice ale nodurilor dintr-un Document](/words/cpp/logical-levels-of-nodes-in-a-document/)
