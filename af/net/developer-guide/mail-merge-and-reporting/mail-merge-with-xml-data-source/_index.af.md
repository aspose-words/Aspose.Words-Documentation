---
title: Mail Merge Met XML Data Bron in C#
second_title: Aspose.Words vir .NET
articleTitle: Mail Merge met XML Databron
linktitle: Mail Merge met XML Databron
type: docs
description: "Gebruik'n verskeidenheid databronne wanneer u'n mail merge - operasie uitvoer, insluitend'n XML - lêer met C#. Die belangrikste voordeel van die gebruik van XML is die vermoë om'n hiërargie direk in die dokument te definieer."
keywords: "mail merge xml data source c#"
weight: 30
url: /af/net/mail-merge-with-xml-data-source/
timestamp: 2024-07-11-08-07-06
---

U kan'n verskeidenheid databronne gebruik wanneer u'n mail merge - bewerking uitvoer, insluitend'n XML - lêer. Die belangrikste voordeel van die gebruik van XML is die vermoë om'n hiërargie reg in die dokument te definieer en dit dan eenvoudig aan Aspose.Words oor te dra.

Hierdie artikel sal beskryf hoe om data uit'n XML lêer te lees eerder as direk uit'n databasis en sluit XML in as die databron om'n mail merge operasie uit te voer.

## Voordele van XML as'n Databron

XML databronne is baie handig om data te stoor sonder die oorhoofse koste van'n databasis. Hulle is ideaal vir vanlyn toepassings waar gebruikers data moet byvoeg, wysig en verwyder wanneer hulle nie aan'n databasis kan koppel nie.

XML data kan'n goeie databron alternatief vir relasionele databasisse wees, veral as jy met webtoepassings werk. Die meeste webdienste gebruik XML om inligting uit te ruil. XML - georiënteerde databasisse word aktief gebruik op die huidige mark, en ontwikkelaars van relasionele databasisse voeg XML verenigbaarheid by hul produkte om'n databasis terug te gee XML.

Aangesien XML data in gewone teksformaat stoor, is die berging platform-onafhanklik. Data kan dus maklik uitgevoer, ingevoer of eenvoudig verskuif word. XML is gewild as'n databron omdat dit'n manier bied om die semantiese betekenis van data te bewaar wanneer kommunikasie tussen verskillende toepassings.

## Vul'n Merge Sjabloon met Data van XML met behulp van DataSet

XML is die universele standaard vir data-uitruil, en Microsoft Word dokumentformate is die gewildste formate vir mail merge templates. Daarom het die vermoë om'n mail merge van'n XML lêer na'n Woord sjabloon dokument te hardloop'n algemene vereiste geword.

Microsoft Word bied nie'n direkte metode om met XML data te werk as'n databron vir'n mail merge operasie nie, terwyl Aspose.Words jou toelaat om'n mail merge operasie uit te voer met data van'n XML databron. Let daarop dat die struktuur van die XML dokument ook verander kan word en dat die data steeds korrek gelees sal word. Dit laat verskillende tipes XML dokumente maklik saamgevoeg word.

Gebruik die `ReadXML` metode om die XML skema en data in die `DataSet` voorwerp te lees. Hierdie voorwerp word dan gebruik as'n data bron vir'n mail merge.

{{% alert color="primary" %}}

U kan dieselfde sjablone vir verskillende databronne gebruik.

{{% /alert %}}

Die volgende XML bevat die data wat nodig is om'n samesmelting sjabloon te vul:

{{< highlight csharp >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

Die volgende kode voorbeeld toon hoe om XML data te laai in DataSet en dan gebruik dit as'n data bron:

{{< gist "aspose-words-gists" "0441f68c5209fec25c47d1a0a203fbb0" "xml-mail-merge.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

U kan die verskil tussen die sjabloon sien voordat u die mail merge - bewerking uitvoer:

<img src="fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset" style="width:250px"/>

En na die uitvoering van die mail merge operasie:

<img src="fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml" style="width:285px"/>
