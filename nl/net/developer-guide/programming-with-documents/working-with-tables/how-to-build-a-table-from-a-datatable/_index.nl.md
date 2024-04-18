---
title: Hoe bouw je een tabel van een `DataTable` in C#
second_title: Aspose.Words voor .NET
articleTitle: Bouw een tabel van een `DataTable`
linktitle: Bouw een tabel van een `DataTable`
description: "Voorbeeld van het invullen van documenttabel uit externe database met behulp van C#."
type: docs
weight: 120
url: /nl/net/how-to-build-a-table-from-a-datatable/
---

Vaak zal uw toepassing halen gegevens uit een database en opslaan in de vorm van een **DataTable**. U kunt deze gegevens eenvoudig als nieuwe tabel in uw document invoegen en snel formatteren toepassen op de hele tabel.

{{% alert color="primary" %}}

Merk op dat de voorkeur manier om gegevens van een **DataTable** in een documenttabel wordt gebruikt [Mail Merge met regio's](https://docs.aspose.com/words/net/types-of-mail-merge-operations/#mail-merge-with-regions). De techniek in dit artikel wordt alleen voorgesteld als je niet in staat bent om een geschikt sjabloon voor de hand om gegevens te mergen met, met andere woorden als je alles nodig hebt om programmatisch te gebeuren.

{{% /alert %}}

Gebruik Aspose.Words, U kunt gemakkelijk gegevens uit een database ophalen en opslaan als een tabel:

1. Een nieuw aanmaken **DocumentBuilder** object op uw **Document**.
1. Een nieuwe tabel starten met **DocumentBuilder**.
1. Als we de namen van elk van de kolommen van onze **DataTable** als een header rij dan itereren door elke data kolom en schrijf de kolom namen in een rij in de tabel.
1. Itereren door elk **DataRow** in de **DataTable**:
   1. Itreer door elk object in de **DataRow**.
   1. Plaats het object in het document met behulp van **DocumentBuilder**. De gebruikte methode hangt af van het type object dat wordt ingevoegd, bijvoorbeeld **DocumentBuilder.Writeln** voor tekst en **DocumentBuilder.InsertImage** voor een bytearray die een afbeelding voorstelt.
   1. Aan het einde van de verwerking **DataRow** ook eindigen de rij wordt gemaakt door de **DocumentBuilder** door gebruik **DocumentBuilder.EndRow**.
1. Zodra alle rijen van de **DataTable** zijn verwerkt finish de tabel door te bellen **DocumentBuilder.EndTable**.
1. Tot slot kunnen we de gewenste tafel stijl met behulp van een van de juiste tabel eigenschappen zoals **Table.StyleIdentifier** automatisch formatteren toepassen op de gehele tabel.

De **ImportTableFromDataTable** methode accepteert een **DocumentBuilder** de **DataTable** met daarin de gegevens en een vlag die aangeeft of de kolom rubriek van de **DataTable** zijn opgenomen aan de bovenkant van de tabel. Deze methode bouwt een tabel van deze parameters met behulp van de bouwer huidige positie en opmaak. Geeft een methode om gegevens van de `DataTable` en plaats het in een nieuwe tabel met behulp van de DocumentBuilder.

De volgende gegevens in onze **DataTable** wordt gebruikt in dit voorbeeld:

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Het volgende code voorbeeld laat zien hoe u het bovenstaande algoritme in Aspose.Words:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

De methode kan dan gemakkelijk worden genoemd met behulp van uw **DocumentBuilder** en gegevens.

Het volgende voorbeeld van code laat zien hoe u de gegevens van een `DataTable` en plaats het in een nieuwe tabel in het document:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
