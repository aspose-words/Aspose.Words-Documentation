---
title: Imbricate Mail Merge cu regiuni în C++
second_title: Aspose.Words pentru C++
articleTitle: Imbricate Mail Merge cu regiuni
linktitle: Imbricate Mail Merge cu regiuni
type: docs
description: "Efectuați o operație mail merge cu regiuni imbricate folosind C++. Îmbinarea imbricată este o caracteristică care vă permite să îmbinați datele ierarhice din sursa de date în șablonul de îmbinare."
keywords: "mail merge with nested regions c++"
weight: 30
url: /ro/cpp/nested-mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

În unele scenarii, poate fi necesar să utilizați imbricate mail merge cu regiuni. Îmbinarea imbricată este o caracteristică care vă permite să îmbinați datele ierarhice din sursa de date în șablonul de îmbinare pentru a popula cu ușurință documentul. Practic, datele ierarhice sunt reprezentate ca un set de elemente de date, iar relațiile ierarhice descriu modul în care elementele de date sunt legate între ele (un element de date este părintele altuia).

Aspose.Words vă permite să efectuați o operație mail merge cu regiuni imbricate. Puteți utiliza această caracteristică dacă aveți o sursă de date care este organizată într-o structură arborescentă și doriți să executați o operație mail merge pentru a popula un șablon cu date ierarhice.

{{% alert color="primary" %}}

Mail merge imbricat este relevant numai atunci când se efectuează un mail merge cu regiuni.

{{% /alert %}}

## Ce este un imbricat Mail Merge

Regiunea mail merge se numește imbricată dacă aveți două sau mai multe regiuni mail merge în care una dintre ele se află în interiorul celeilalte într-o formă ierarhică. Rețineți că fiecare regiune conține date dintr-un tabel.

Cel mai comun exemplu de mail merge imbricat este o comandă care conține câteva elemente în care trebuie să legați multe tabele de date și să prezentați informațiile într-un șablon.

Imaginea de mai jos prezintă două regiuni imbricate în care regiunea *Order* mail merge este părintele regiunii *Item* mail merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Cum se procesează Mail Merge cu regiuni imbricate

Datele care urmează să fie îmbinate într-un șablon pot proveni din diverse surse, în principal baze de date relaționale sau documente XML. În exemplul nostru, vom folosi un [SQLite](https://www.sqlite.org/index.html) baza de date pentru a stoca datele noastre și încărcați-l cu punerea în aplicare sursă de date personalizate.

Imaginea de mai jos demonstrează modul în care datele din tabelul *Order* transmise regiunilor de îmbinare imbricate vor fi legate de tabelul *Item*, precum și de ieșirea generată în timpul operației de îmbinare.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

După cum puteți vedea din documentul de ieșire, fiecare comandă din tabelul **Order** este inserată în șablonul de îmbinare cu toate elementele aferente Comenzii din tabelul **Item**. Următoarea comandă va fi inserată împreună cu articolele lor până când toate comenzile și articolele sunt listate. Ordinea cuibăririi mail merge cu regiunile din șablon trebuie să corespundă relațiilor de date dintre tabelele din sursa de date.

## Cum se creează relații de date dintr-o sursă de date personalizată

Implementați interfața [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) pentru a crea relații în structura părinte-copil a sursei dvs. de date personalizate. Utilizați metoda [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) pentru a returna datele copil relevante ale unei înregistrări părinte curente.

Următorul exemplu de cod demonstrează modul de generare a unei facturi utilizând mail merge imbricate cu regiuni din [SQLite](https://www.sqlite.org/index.html) baza de date cu [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}
