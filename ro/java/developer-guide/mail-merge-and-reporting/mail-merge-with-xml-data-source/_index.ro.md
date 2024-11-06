---
title: Mail Merge cu XML sursa de date în Java
second_title: Aspose.Words pentru Java
articleTitle: Mail Merge cu XML sursă de date
linktitle: Mail Merge cu XML sursă de date
type: docs
description: "Utilizați o varietate de surse de date atunci când efectuați o operație mail merge, inclusiv un fișier XML. Principalul avantaj al utilizării XML este capacitatea de a defini o ierarhie direct în document în Java."
keywords: "mail merge XML data source Java, Mail Merge Java"
weight: 30
url: /ro/java/mail-merge-with-xml-data-source/
---

Puteți utiliza o varietate de surse de date atunci când efectuați o operație mail merge, inclusiv un fișier XML. Principalul avantaj al utilizării XML este capacitatea de a defini o ierarhie chiar în document și apoi de a o transmite pur și simplu la Aspose.Words.

Acest articol va descrie modul de citire a datelor dintr-un fișier XML mai degrabă decât direct dintr-o bază de date și va include XML ca sursă de date pentru a efectua o operație mail merge.

## Avantajele XML ca sursă de date

XML sursele de date sunt foarte utile pentru stocarea datelor fără cheltuielile generale ale unei baze de date. Sunt excelente pentru aplicațiile offline în care utilizatorii trebuie să adauge, să editeze și să șteargă date atunci când nu se pot conecta la o bază de date.

XML datele pot fi o bună sursă de date alternativă la bazele de date relaționale, mai ales dacă lucrați cu aplicații web. Majoritatea serviciilor web folosesc XML pentru a face schimb de informații. Bazele de date orientate spre XML sunt utilizate în mod activ pe piața actuală, iar dezvoltatorii de baze de date relaționale adaugă compatibilitatea XML produselor lor pentru a avea o returnare a bazei de date XML.

Deoarece XML stochează date în format text simplu, stocarea este independentă de platformă. Astfel, datele pot fi ușor exportate, importate sau pur și simplu mutate. XML este popular ca sursă de date deoarece oferă o modalitate de a păstra semnificația semantică a datelor atunci când comunică între diferite aplicații.

## Completarea unui șablon de îmbinare cu date din XML Folosind DataSet

XML este standardul universal pentru schimbul de date, iar formatele de documente Microsoft Word sunt cele mai populare formate pentru șabloanele mail merge. Prin urmare, capacitatea de a rula un mail merge dintr-un fișier XML într-un document șablon Word a devenit o cerință comună.

Microsoft Word nu oferă o metodă directă de a lucra cu XML date ca sursă de date pentru o operație mail merge, în timp ce Aspose.Words vă permite să efectuați o operație mail merge cu date dintr-o sursă de date XML. Rețineți că structura documentului XML poate fi, de asemenea, variată și datele vor fi citite corect. Acest lucru permite îmbinarea cu ușurință a diferitelor tipuri de documente XML.

Utilizați metoda `ReadXML` pentru a citi schema XML și datele în obiectul `DataSet`. Acest obiect este apoi folosit ca sursă de date pentru un mail merge.

{{% alert color="primary" %}}

Puteți utiliza aceleași șabloane pentru diferite surse de date.

{{% /alert %}}

Următorul XML conține datele necesare pentru a completa Un șablon de îmbinare:

{{< highlight xml >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

Următorul exemplu de cod arată cum să încărcați datele XML în DataSet și apoi să le utilizați ca sursă de date:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-XMLMailMerge-XMLMailMerge.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

Puteți observa diferența dintre șablon înainte de a executa operația mail merge:

<img src="fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset_aspose_words_java" style="width:250px"/>

Și după executarea operației mail merge:

<img src="fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml_aspose_words_java" style="width:285px"/>
