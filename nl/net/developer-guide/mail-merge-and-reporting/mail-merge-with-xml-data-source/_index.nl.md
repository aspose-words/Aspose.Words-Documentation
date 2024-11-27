---
title: Mail Merge met XML gegevensbron in C#
second_title: Aspose.Words voor .NET
articleTitle: Mail Merge met XML gegevensbron
linktitle: Mail Merge met XML gegevensbron
type: docs
description: "Gebruik verschillende gegevensbronnen bij het uitvoeren van een Mail Merge - bewerking, waaronder een XML - bestand met C#. Het belangrijkste voordeel van het gebruik van XML is de mogelijkheid om een hiërarchie rechtstreeks in het document te definiëren."
keywords: "mail merge xml data source c#"
weight: 30
url: /nl/net/mail-merge-with-xml-data-source/
timestamp: 2024-07-11-08-07-06
---

U kunt verschillende gegevensbronnen gebruiken bij het uitvoeren van een Mail Merge - bewerking, waaronder een XML - bestand. Het belangrijkste voordeel van het gebruik van XML is de mogelijkheid om een hiërarchie in het document te definiëren en deze vervolgens eenvoudig door te geven aan Aspose.Words.

In dit artikel wordt beschreven hoe u gegevens uit een XML - bestand kunt lezen in plaats van rechtstreeks uit een database en XML als gegevensbron kunt opnemen om een Mail Merge - bewerking uit te voeren.

## Voordelen van XML als gegevensbron

XML gegevensbronnen zijn erg handig voor het opslaan van gegevens zonder de overhead van een database. Ze zijn geweldig voor offline toepassingen waar gebruikers gegevens moeten toevoegen, bewerken en verwijderen wanneer ze geen verbinding kunnen maken met een database.

XML gegevens kunnen een goed alternatief zijn voor relationele databases, vooral als u met webtoepassingen werkt. De meeste webservices gebruiken XML om informatie uit te wisselen. XML-georiënteerde databases worden actief gebruikt op de huidige markt en ontwikkelaars van relationele databases voegen XML compatibiliteit toe aan hun producten om een database te laten retourneren XML.

Omdat XML gegevens opslaat in platte tekst, is de opslag platformonafhankelijk. Zo kunnen gegevens gemakkelijk worden geëxporteerd, geïmporteerd of eenvoudig worden verplaatst. XML is populair als gegevensbron omdat het een manier biedt om de semantische betekenis van gegevens te behouden bij communicatie tussen verschillende toepassingen.

## Een Samenvoegsjabloon vullen met gegevens van XML met behulp van DataSet

XML is de universele standaard voor gegevensuitwisseling en Microsoft Word documentformaten zijn de meest populaire formaten voor Mail Merge Sjablonen. Daarom is de mogelijkheid om een Mail Merge van een XML bestand naar een Word sjabloondocument uit te voeren een veel voorkomende vereiste geworden.

Microsoft Word biedt geen directe methode om met XML - gegevens te werken als gegevensbron voor een Mail Merge - bewerking, terwijl u met Aspose.Words een Mail Merge - bewerking kunt uitvoeren met gegevens uit een XML - gegevensbron. Merk op dat de structuur van het XML document ook kan worden gewijzigd en dat de gegevens nog steeds correct worden gelezen. Hierdoor kunnen verschillende soorten XML documenten eenvoudig worden samengevoegd.

Gebruik de `ReadXML` methode om het XML schema en de gegevens in het `DataSet` object te lezen. Dit object wordt vervolgens gebruikt als gegevensbron voor een mail merge.

{{% alert color="primary" %}}

U kunt dezelfde sjablonen gebruiken voor verschillende gegevensbronnen.

{{% /alert %}}

De volgende XML bevat de gegevens die nodig zijn om een samenvoegsjabloon in te vullen:

{{< highlight csharp >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

Het volgende codevoorbeeld laat zien hoe XML gegevens in DataSet worden geladen en vervolgens als gegevensbron worden gebruikt:

{{< gist "aspose-words-gists" "0441f68c5209fec25c47d1a0a203fbb0" "xml-mail-merge.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

U kunt het verschil tussen de sjabloon opmerken voordat u de bewerking Mail Merge uitvoert:

<img src="fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset" style="width:250px"/>

En na het uitvoeren van de Mail Merge - bewerking:

<img src="fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml" style="width:285px"/>
