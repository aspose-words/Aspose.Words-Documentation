---
title: Geneste Mail Merge Met Streke in Java
second_title: Aspose.Words vir Java
articleTitle: Geneste Mail Merge Met Streke
linktitle: Geneste Mail Merge Met Streke
type: docs
description: "Voer'n Mail Merge operasie met geneste streke. Geneste samesmelting is'n funksie wat jou in staat stel om hiërargiese data van jou databron saam te voeg in jou samesmelting sjabloon met behulp van Java."
keywords: "mail merge with nested regions Java, Nested Mail Merge Regions"
weight: 10
url: /af/java/nested-mail-merge-with-regions/
timestamp: 2024-01-27-14-07-04
---

In sommige scenario's moet jy dalk geneste Mail Merge met streke gebruik. Geneste samesmelting is'n funksie wat jou in staat stel om hiërargiese data van jou databron saam te voeg in jou samesmelting sjabloon om maklik jou dokument te vul. Basies word die hiërargiese data voorgestel as'n stel data-items, en hiërargiese verhoudings beskryf hoe die data-items met mekaar verband hou (een item data is die ouer van'n ander een).

Aspose.Words laat jou toe om'n Mail Merge operasie met geneste streke uit te voer. U kan hierdie funksie gebruik as u'n databron het wat in'n boomagtige struktuur georganiseer is en u'n mail merge-bewerking wil uitvoer om'n sjabloon met hiërargiese data in te vul.

{{% alert color="primary" %}}

Geneste Mail Merge is slegs relevant wanneer'n Mail Merge met streke uitgevoer word.

{{% /alert %}}

## Wat is'n Geneste Mail Merge

Die Mail Merge streek word geneste genoem as jy twee of meer Mail Merge streke het waar een van hulle binne die ander in'n hiërargiese vorm is. Let daarop dat elke streek data van een tabel bevat.

Die mees algemene voorbeeld van'n geneste Mail Merge is'n volgorde wat verskeie items bevat waar jy verskeie data tabelle moet koppel en die inligting in'n sjabloon moet aanbied.

Die onderstaande prentjie toon twee geneste streke waar die *Order* Mail Merge streek die ouer van die *Item* Mail Merge streek is.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions_aspose_words_java" style="width:650px"/>

## Hoe om Mail Merge Met Geneste Streke Te Verwerk

Die data wat in'n sjabloon saamgevoeg moet word, kan uit verskillende bronne kom, hoofsaaklik relasionele databasisse of XML dokumente. In ons voorbeeld, gaan ons'n XML lêer gebruik om ons data te stoor en laai dit direk in die **DataSet**.

Aspose.Words laat jou toe om Mail Merge met geneste streke te verwerk met behulp van die data verhoudings wat in die **DataSet** gespesifiseer is. Wanneer die **DataSet** voorwerp XML laai, gebruik dit die verskafde skema of aflei dit uit die struktuur van die XML self om dit te bereik. Uit hierdie struktuur skep dit verhoudings tussen tabelle waar nodig.

Die onderstaande beeld toon hoe die data van die *Order* tabel wat aan die geneste samesmelting streke sal gekoppel word aan die *Item* tabel, sowel as die uitset gegenereer tydens die samesmelting operasie.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions_aspose_words_java" style="width:650px"/>

Soos jy kan sien uit die uitset dokument, elke orde van die **Order** tabel is ingevoeg in die merge sjabloon met al die orde se verwante items van die **Item** tabel. Die volgende bestelling sal saam met hul items ingevoeg word totdat al die bestellings en items gelys is. Die volgorde van nes Mail Merge met streke in die sjabloon moet ooreenstem met die data verhoudings tussen die tabelle in die data bron.

Die volgende kode voorbeeld toon hoe om'n faktuur te genereer met behulp van geneste Mail Merge met streke:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-NestedMailMerge.java" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

## Hoe Om Data Verhoudings In Geneste Mail Merge Met Streke Op Te Stel

U moet alle dataverhoudings in die ouer-kind-struktuur opstel om die geneste Mail Merge met streke korrek uit te voer. Die oorslaan van hierdie belangrike stap kan lei tot'n mislukking in die uitvoering van die geneste Mail Merge met streke.

Wanneer data vir'n geneste Mail Merge van'n XML lêer met behulp van die **ReadXml** metode verkry word, word verhoudings outomaties geskep volgens die struktuur van die XML dokument. U moet egter seker maak dat korrekte verhoudings geskep is.

As Mail Merge nie werk soos verwag nie, moet jy dalk jou XML lêer herstruktureer of eksplisiet verhoudings tussen DataTable voorwerpe in die DataSet skep.

A `DataSet` wat verwante data tabelle sal die **DataRelation** voorwerp gebruik om die ouer-kind verhouding tussen die tabelle verteenwoordig.

Die volgende kode voorbeeld toon hoe om'n `DataRelation` tussen'n kliënt se tabel en'n bestelling se tabel te vestig deur die gebruik van'n `DataRelation` voorwerp:
{{< highlight java >}}
dataSet.getRelations().add(new DataRelation("OrderToItem", orderTable.getColumns().get("Order_Id"), itemTable.getColumns().get("Order_Id"), false));
{{< /highlight >}}
