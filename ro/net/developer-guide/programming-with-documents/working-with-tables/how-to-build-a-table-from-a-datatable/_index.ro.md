---
title: Cum să construiești o masă dintr-un `DataTable` în C#?
second_title: Aspose.Words pentru .NET
articleTitle: Construiește o masă dintr-o `DataTable`
linktitle: Construiește o masă dintr-o `DataTable`
description: "Exemplu de completare a unei tabele de documente din baza externă folosind C#."
type: docs
weight: 120
url: /ro/net/how-to-build-a-table-from-a-datatable/
timestamp: 2024-09-25-11-08-55
---

De multe ori aplicația ta va extrage date dintr-o bază de date și le va stoca sub forma unei **DataTable**. Puteți introduce cu ușurință aceste date în documentul dvs. ca o nouă tabelă și puteți aplica rapid formatarea pentru întreaga tabelă.

{{% alert color="primary" %}}

Rețineți că modalitatea preferată de introducere a datelor dintr-un **DataTable** într-o masă de documente este prin utilizarea [Mail Merge with Regions](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions). Tehnica prezentată în acest articol este doar sugerată dacă nu sunteți capabili să creați un șablon potrivit înainte de mână pentru a combina datele cu, în alte cuvinte dacă aveți nevoie ca totul să se întâmple programatic.

{{% /alert %}}

Folosind Aspose.Words poți obține cu ușurință date dintr-o bază de date și să le stochezi ca o tabelă:

1. Creaţi un nou obiect **DocumentBuilder** pe maşina voastră **Document**.
1. Începe un nou tabel folosind **DocumentBuilder**.
1. Dacă vrem să introducem numele fiecărei coloane din **DataTable** ca rând de antet atunci să parcurgem fiecare coloană de date și să scriem numele coloanei într-un rând în tabel.
1. Iterarea prin fiecare **DataRow** în **DataTable**:
   1. Iterați prin fiecare obiect din **DataRow**.
   1. Introduce obiectul în document folosind **DocumentBuilder**. Metoda utilizată depinde de tipul obiectului care este inserat, de exemplu **DocumentBuilder.Writeln** pentru text și **DocumentBuilder.InsertImage** pentru o matrice de octeți care reprezintă o imagine.
   1. La sfârșitul procesării **DataRow**, la fel și rândului creat de **DocumentBuilder** prin utilizarea **DocumentBuilder.EndRow**.
1. Odată ce toate rândurile din **DataTable** au fost procesate, finalizați tabelul prin apelarea **DocumentBuilder.EndTable**.
1. În final putem seta stilul de tabel dorit folosind una din proprietățile corespunzătoare tabelelor, cum ar fi **Table.StyleIdentifier**, pentru a aplica automat formatarea întregului tabel.

"Metoda **ImportTableFromDataTable** acceptă un obiect **DocumentBuilder**, codul **DataTable** care conține datele și un steag care specifică dacă titlul coloanei din **DataTable** este inclus în partea de sus a tabelului." Această metodă construiește o masă din aceste parametri folosind poziția curentă și formatarea constructorului. Oferă o metodă pentru a importa date din `DataTable` și să le introducă într-o nouă tabel folosind DocumentBuilder.

Următoarele date din **DataTable** sunt utilizate în acest exemplu:

![how-to-build-a-table-from-a-datatable-aspose-words-net](how-to-build-a-table-from-a-datatable-1.png)

Exemplul de cod următor arată cum se execută algoritmul de mai sus în Aspose.Words":

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

Metoda poate fi apoi apelată cu ușurință utilizând datele tale **DocumentBuilder** și datele.

Exemplul de cod următor arată cum să importăm datele dintr-o `DataTable` și să le introducem într-o nouă tabelă în document:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
