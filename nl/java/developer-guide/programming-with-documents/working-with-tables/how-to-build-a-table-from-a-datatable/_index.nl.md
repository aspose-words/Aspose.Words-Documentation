---
title: Hoe bouw je een tabel van een `DataTable` in Java
second_title: Aspose.Words voor Java
articleTitle: Bouw een tabel van een `DataTable`
linktitle: Bouw een tabel van een `DataTable`
description: "Voorbeeld van het invullen van documenttabel uit externe database met behulp van Java."
type: docs
weight: 130
url: /nl/java/how-to-build-a-table-from-a-datatable/
---

Vaak zal uw toepassing halen gegevens uit een database en opslaan in de vorm van een **DataTable**. Het kan zijn dat u deze gegevens gemakkelijk als nieuwe tabel in uw document wilt invoegen en snel formatteren op de hele tabel wilt toepassen.

{{% alert color="primary" %}}

Merk op dat de voorkeur manier van het invoegen van gegevens van een **DataTable** in een documenttabel wordt gebruikt [Mail Merge met regio's](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). De techniek in dit artikel wordt alleen voorgesteld als u niet in staat bent om een geschikt sjabloon vooraf om gegevens te mergen met, met andere woorden, als je alles nodig hebt om programmatisch te gebeuren.

{{% /alert %}}

Gebruik Aspose.Words, U kunt eenvoudig gegevens uit een database ophalen en opslaan als een tabel:

1. Een nieuw aanmaken [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) object op uw [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Een nieuwe tabel starten met [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Als we de namen van elk van de kolommen van onze **DataTable** als een header rij dan itereren door elke gegevens kolom en schrijf de kolom namen in een rij in de tabel.
1. Itreer door elke **DataRow** in de **DataTable**:
   1. Itreer door elk object in de **DataRow**.
   1. Plaats het object in het document met behulp van [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). De gebruikte methode hangt af van het type object dat wordt ingevoegd, bijvoorbeeld [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) voor tekst en [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) voor een bytearray die een afbeelding voorstelt.
   1. Aan het einde van de verwerking van de gegevens rij ook eindigen de rij die door de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) door gebruik [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Zodra alle rijen van de **DataTable** zijn verwerkt finish de tabel door te bellen [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. Tot slot kunnen we de gewenste tafelstijl instellen met behulp van een van de juiste tabeleigenschappen zoals [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) automatisch formatteren toepassen op de gehele tabel.
   De volgende gegevens in onze **DataTable** wordt gebruikt in dit voorbeeld:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Het volgende code voorbeeld toont hoe u het bovenstaande algoritme in Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

De methode kan dan gemakkelijk worden genoemd met behulp van uw **DocumentBuilder** en gegevens.

Het volgende voorbeeld van code laat zien hoe je de gegevens van een `DataTable` en plaats het in een nieuwe tabel in het document:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

De tabel in de onderstaande afbeelding wordt geproduceerd door de bovenstaande code te draaien.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
