---
title: Mail Merge ze źródłem danych XML w C#
second_title: Aspose.Words dla .NET
articleTitle: Mail Merge ze źródłem danych XML
linktitle: Mail Merge ze źródłem danych XML
type: docs
description: "Podczas wykonywania operacji Mail Merge używaj różnych źródeł danych, w tym pliku XML przy użyciu C#. Główną zaletą używania XML jest możliwość zdefiniowania hierarchii bezpośrednio w dokumencie."
keywords: "mail merge xml data source c#"
weight: 30
url: /pl/net/mail-merge-with-xml-data-source/
timestamp: 2024-07-11-08-07-06
---

Podczas wykonywania operacji Mail Merge Można używać różnych źródeł danych, w tym pliku XML. Główną zaletą używania XML jest możliwość zdefiniowania hierarchii bezpośrednio w dokumencie, a następnie po prostu przekazania jej do Aspose.Words.

W tym artykule opisano, jak odczytywać dane z pliku XML, a nie bezpośrednio z bazy danych i uwzględnić XML jako źródło danych do wykonania operacji Mail Merge.

## Zalety XML jako źródła danych

XML źródła danych są bardzo przydatne do przechowywania danych bez obciążenia bazy danych. Świetnie nadają się do aplikacji offline, w których użytkownicy muszą dodawać, edytować i usuwać dane, gdy nie mogą połączyć się z bazą danych.

XML dane mogą być dobrą alternatywą źródła danych dla relacyjnych baz danych, zwłaszcza jeśli pracujesz z aplikacjami internetowymi. Większość usług internetowych używa XML do wymiany informacji. Bazy danych zorientowane na XML są aktywnie wykorzystywane na obecnym rynku, a twórcy relacyjnych baz danych dodają zgodność XML do swoich produktów, aby uzyskać zwrot bazy danych XML.

Ponieważ XML przechowuje dane w formacie zwykłego tekstu, pamięć jest niezależna od platformy. W ten sposób dane można łatwo eksportować, importować lub po prostu przenosić. XML jest popularny jako źródło danych, ponieważ oferuje sposób na zachowanie semantycznego znaczenia danych podczas komunikacji między różnymi aplikacjami.

## Wypełnianie szablonu scalania danymi z XML za pomocą DataSet

XML jest uniwersalnym standardem wymiany danych, a formaty dokumentów Microsoft Word Są najpopularniejszymi formatami szablonów Mail Merge. Dlatego możliwość uruchomienia pliku Mail Merge z pliku XML do dokumentu szablonu Word stała się powszechnym wymaganiem.

Microsoft Word nie zapewnia bezpośredniej metody pracy z danymi XML jako źródłem danych dla operacji Mail Merge, podczas gdy Aspose.Words umożliwia wykonanie operacji Mail Merge z danymi ze źródła danych XML. Należy pamiętać, że struktura dokumentu XML może być również zmieniana, a dane będą nadal odczytywane poprawnie. Umożliwia to łatwe scalanie różnych typów dokumentów XML.

Użyj metody `ReadXML`, aby odczytać schemat XML i dane do obiektu `DataSet`. Ten obiekt jest następnie używany jako źródło danych dla mail merge.

{{% alert color="primary" %}}

Możesz użyć tych samych szablonów dla różnych źródeł danych.

{{% /alert %}}

Poniższy XML zawiera dane potrzebne do wypełnienia szablonu scalania:

{{< highlight csharp >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

Poniższy przykład kodu pokazuje, jak załadować dane XML do DataSet, a następnie użyć ich jako źródła danych:

{{< gist "aspose-words-gists" "0441f68c5209fec25c47d1a0a203fbb0" "xml-mail-merge.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

Możesz zauważyć różnicę między szablonem przed wykonaniem operacji Mail Merge:

<img src="fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset" style="width:250px"/>

I po wykonaniu operacji Mail Merge:

<img src="fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml" style="width:285px"/>
