---
title: Cum se construiește un tabel dintr-un `DataTable` în Java
second_title: Aspose.Words pentru Java
articleTitle: Construiți un tabel dintr-un `DataTable`
linktitle: Construiți un tabel dintr-un `DataTable`
description: "Exemplu de completare a tabelului de documente din Baza de date externă folosind Java."
type: docs
weight: 130
url: /ro/java/how-to-build-a-table-from-a-datatable/
---

Adesea, aplicația dvs. va extrage date dintr-o bază de date și le va stoca sub forma unui **DataTable**. Poate doriți să inserați cu ușurință aceste date în documentul dvs. ca un tabel nou și să aplicați rapid formatarea întregului tabel.

{{% alert color="primary" %}}

Rețineți că modul preferat de inserare a datelor dintr-un **DataTable** într-un tabel de documente este prin utilizarea [Mail Merge cu regiuni](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). Tehnica prezentată în acest articol este sugerată numai dacă nu puteți crea în prealabil un șablon adecvat cu care să îmbinați datele, cu alte cuvinte, dacă aveți nevoie ca totul să se întâmple programatic.

{{% /alert %}}

Folosind Aspose.Words, puteți prelua cu ușurință date dintr-o bază de date și le puteți stoca ca tabel:

1. Creați un nou obiect [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) pe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Începeți un nou tabel folosind [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Dacă dorim să inserăm numele fiecărei coloane din **DataTable** Ca rând de antet, atunci iterăm prin fiecare coloană de date și scriem numele coloanelor într-un rând din tabel.
1. Itera prin fiecare **DataRow** în **DataTable**:
   1. Iterați prin fiecare obiect din **DataRow**.
   1. Introduceți obiectul în document folosind [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Metoda utilizată depinde de tipul obiectului inserat, de exemplu [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) pentru text și [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) pentru o matrice de octeți care reprezintă o imagine.
   1. La sfârșitul procesării rândului de date se termină și rândul creat de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) Folosind [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Odată ce toate rândurile din **DataTable** au fost procesate, terminați tabelul apelând [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. În cele din urmă, putem seta stilul de tabel dorit folosind una dintre proprietățile corespunzătoare ale tabelului, cum ar fi [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier), pentru a aplica automat formatarea întregului tabel.
   Următoarele date din **DataTable** sunt utilizate în acest exemplu:

![build-a-table-from-a-datatable-aspose-words-java-1](how-to-build-a-table-from-a-datatable-1.png)

Următorul exemplu de cod arată cum se execută algoritmul de mai sus în Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

Metoda poate fi apoi apelată cu ușurință folosind **DocumentBuilder** și datele.

Următorul exemplu de cod arată cum să importați datele dintr-un `DataTable` și să le introduceți într - un nou tabel din document:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

Tabelul prezentat în imaginea de mai jos este produs prin rularea codului de mai sus.

![build-a-table-from-a-datatable-aspose-words-java-2](how-to-build-a-table-from-a-datatable-2.png)
