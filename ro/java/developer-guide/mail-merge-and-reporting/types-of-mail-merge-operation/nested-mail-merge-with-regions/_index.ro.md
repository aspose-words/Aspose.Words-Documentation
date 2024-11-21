---
title: Imbricate Mail Merge cu regiuni în Java
second_title: Aspose.Words pentru Java
articleTitle: Imbricate Mail Merge cu regiuni
linktitle: Imbricate Mail Merge cu regiuni
type: docs
description: "Efectuați o operație mail merge cu regiuni imbricate. Îmbinarea imbricată este o caracteristică care vă permite să îmbinați datele ierarhice din sursa de date în șablonul de îmbinare folosind Java."
keywords: "mail merge with nested regions Java, Nested Mail Merge Regions"
weight: 10
url: /ro/java/nested-mail-merge-with-regions/
timestamp: 2024-01-27-14-07-04
---

În unele scenarii, poate fi necesar să utilizați imbricate mail merge cu regiuni. Îmbinarea imbricată este o caracteristică care vă permite să îmbinați datele ierarhice din sursa de date în șablonul de îmbinare pentru a popula cu ușurință documentul. Practic, datele ierarhice sunt reprezentate ca un set de elemente de date, iar relațiile ierarhice descriu modul în care elementele de date sunt legate între ele (un element de date este părintele altuia).

Aspose.Words vă permite să efectuați o operație mail merge cu regiuni imbricate. Puteți utiliza această caracteristică dacă aveți o sursă de date care este organizată într-o structură arborescentă și doriți să executați o operație mail merge pentru a popula un șablon cu date ierarhice.

{{% alert color="primary" %}}

Mail merge imbricat este relevant numai atunci când se efectuează un mail merge cu regiuni.

{{% /alert %}}

## Ce este un imbricat Mail Merge

Regiunea mail merge se numește imbricată dacă aveți două sau mai multe regiuni mail merge în care una dintre ele se află în interiorul celeilalte într-o formă ierarhică. Rețineți că fiecare regiune conține date dintr-un tabel.

Cel mai comun exemplu de mail merge imbricat este o comandă care conține mai multe elemente în care trebuie să legați mai multe tabele de date și să prezentați informațiile într-un șablon.

Imaginea de mai jos prezintă două regiuni imbricate în care regiunea *Order* mail merge este părintele regiunii *Item* mail merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions_aspose_words_java" style="width:650px"/>

## Cum se procesează Mail Merge cu regiuni imbricate

Datele care urmează să fie îmbinate într-un șablon pot proveni din diverse surse, în principal baze de date relaționale sau documente XML. În exemplul nostru, vom folosi un fișier XML pentru a stoca datele noastre și a le încărca direct în **DataSet**.

Aspose.Words vă permite să procesați mail merge cu regiuni imbricate folosind relațiile de date specificate în **DataSet**. Când obiectul **DataSet** încarcă XML, fie folosește schema furnizată, fie o deduce din structura XML în sine pentru a realiza acest lucru. Din această structură, creează relații între tabele acolo unde este necesar.

Imaginea de mai jos arată modul în care datele din tabelul *Order* transmise regiunilor de îmbinare imbricate vor fi legate de tabelul *Item*, precum și de ieșirea generată în timpul operației de îmbinare.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions_aspose_words_java" style="width:650px"/>

După cum puteți vedea din documentul de ieșire, fiecare comandă din tabelul **Order** este inserată în șablonul de îmbinare cu toate elementele aferente Comenzii din tabelul **Item**. Următoarea comandă va fi inserată împreună cu articolele lor până când toate comenzile și articolele sunt listate. Ordinea cuibăririi mail merge cu regiunile din șablon trebuie să corespundă relațiilor de date dintre tabelele din sursa de date.

Următorul exemplu de cod arată cum să generați o factură utilizând mail merge imbricat cu regiuni:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-NestedMailMerge.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

## Cum se configurează relațiile de date în imbricate Mail Merge cu regiuni

Trebuie să configurați toate relațiile de date din structura părinte-copil pentru a executa corect mail merge imbricat cu regiuni. Omiterea acestui pas important poate duce la un eșec în executarea mail merge imbricat cu regiuni.

La preluarea datelor pentru un mail merge imbricat dintr-un fișier XML folosind metoda **ReadXml**, relațiile sunt create automat în funcție de structura documentului XML. Cu toate acestea, trebuie să vă asigurați că au fost create relații corecte.

Dacă mail merge nu funcționează conform așteptărilor, atunci poate fi necesar să vă restructurați fișierul XML sau să creați în mod explicit relații între obiectele DataTable din DataSet.

Un `DataSet` care are tabele de date corelate va folosi obiectul **DataRelation** pentru a reprezenta relația părinte-copil dintre tabele.

Următorul exemplu de cod arată cum se stabilește un `DataRelation` între tabelul unui client și tabelul unei comenzi utilizând un obiect `DataRelation`:
{{< highlight java >}}
dataSet.getRelations().add(new DataRelation("OrderToItem", orderTable.getColumns().get("Order_Id"), itemTable.getColumns().get("Order_Id"), false));
{{< /highlight >}}
