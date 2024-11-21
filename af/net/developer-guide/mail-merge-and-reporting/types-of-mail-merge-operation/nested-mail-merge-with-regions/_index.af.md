---
title: Geneste Mail Merge Met Streke in C#
second_title: Aspose.Words vir .NET
articleTitle: Geneste Mail Merge Met Streke
linktitle: Geneste Mail Merge Met Streke
type: docs
description: "Voer'n mail merge operasie met geneste streke met behulp van C#. Geneste samesmelting is'n funksie wat jou in staat stel om hiërargiese data van jou databron saam te voeg in jou samesmelting sjabloon."
keywords: "mail merge with nested regions c#"
weight: 10
url: /af/net/nested-mail-merge-with-regions/
timestamp: 2024-07-11-08-07-06
---

In sommige scenario's moet jy dalk geneste mail merge met streke gebruik. Geneste samesmelting is'n funksie wat jou in staat stel om hiërargiese data van jou databron saam te voeg in jou samesmelting sjabloon om maklik jou dokument te vul. Basies word die hiërargiese data voorgestel as'n stel data-items, en hiërargiese verhoudings beskryf hoe die data-items met mekaar verband hou (een item data is die ouer van'n ander een).

Aspose.Words laat jou toe om'n mail merge operasie met geneste streke uit te voer. U kan hierdie funksie gebruik as u'n databron het wat in'n boomagtige struktuur georganiseer is en u'n mail merge-bewerking wil uitvoer om'n sjabloon met hiërargiese data in te vul.

{{% alert color="primary" %}}

Geneste mail merge is slegs relevant wanneer'n mail merge met streke uitgevoer word.

{{% /alert %}}

## Wat is'n Geneste Mail Merge

Die mail merge streek word geneste genoem as jy twee of meer mail merge streke het waar een van hulle binne die ander in'n hiërargiese vorm is. Let daarop dat elke streek data van een tabel bevat.

Die mees algemene voorbeeld van'n geneste mail merge is'n volgorde wat verskeie items bevat waar jy verskeie data tabelle moet koppel en die inligting in'n sjabloon moet aanbied.

Die onderstaande prentjie toon twee geneste streke waar die *Order* mail merge streek die ouer van die *Item* mail merge streek is.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Hoe om Mail Merge Met Geneste Streke Te Verwerk

Die data wat in'n sjabloon saamgevoeg moet word, kan uit verskillende bronne kom, hoofsaaklik relasionele databasisse of XML dokumente. In ons voorbeeld, gaan ons'n XML lêer gebruik om ons data te stoor en laai dit direk in die **DataSet**.

Aspose.Words laat jou toe om mail merge met geneste streke te verwerk met behulp van die data verhoudings wat in die **DataSet** gespesifiseer is. Wanneer die **DataSet** voorwerp XML laai, gebruik dit die verskafde skema of aflei dit uit die struktuur van die XML self om dit te bereik. Uit hierdie struktuur skep dit verhoudings tussen tabelle waar nodig.

Die onderstaande beeld toon hoe die data van die *Order* tabel wat aan die geneste samesmelting streke sal gekoppel word aan die *Item* tabel, sowel as die uitset gegenereer tydens die samesmelting operasie.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Soos jy kan sien uit die uitset dokument, elke orde van die **Order** tabel is ingevoeg in die merge sjabloon met al die orde se verwante items van die **Item** tabel. Die volgende bestelling sal saam met hul items ingevoeg word totdat al die bestellings en items gelys is. Die volgorde van nes mail merge met streke in die sjabloon moet ooreenstem met die data verhoudings tussen die tabelle in die data bron.

Die volgende kode voorbeeld toon hoe om'n faktuur te genereer met behulp van geneste mail merge met streke:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "nested-mail-merge.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Orders.xml).

U kan die implementering van die opstel van die data verhoudings handmatig van [Aspose.Words Github](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Complex%20examples%20and%20helpers/Nested%20MailMerge%20custom.cs).

{{% /alert %}}

## Hoe Om Data Verhoudings In Geneste Mail Merge Met Streke Op Te Stel

U moet alle dataverhoudings in die ouer-kind-struktuur opstel om die geneste mail merge met streke korrek uit te voer. Die oorslaan van hierdie belangrike stap kan lei tot'n mislukking in die uitvoering van die geneste mail merge met streke.

Wanneer data vir'n geneste mail merge van'n XML lêer met behulp van die **ReadXml** metode verkry word, word verhoudings outomaties geskep volgens die struktuur van die XML dokument. U moet egter seker maak dat korrekte verhoudings geskep is.

As mail merge nie werk soos verwag nie, moet jy dalk jou XML lêer herstruktureer of eksplisiet verhoudings tussen DataTable voorwerpe in die DataSet skep.

A `DataSet` wat verwante data tabelle sal die **DataRelation** voorwerp gebruik om die ouer-kind verhouding tussen die tabelle verteenwoordig.

Die volgende kode voorbeeld toon hoe om'n `DataRelation` tussen'n kliënt se tabel en'n bestelling se tabel te vestig deur die gebruik van'n `DataRelation` voorwerp:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "disable-foreign-key-constraints.cs" >}}

## Hoe Om Data Verhoudings Te Skep van'n Persoonlike Data Bron

Implementeer die [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) koppelvlak om verhoudings in die ouer-kind struktuur van u persoonlike databron te skep. Gebruik die [GetChildDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) metode om die relevante kind data van'n huidige ouer rekord terug te keer.

Die volgende voorbeeld toon hoe om data verhoudings te skep met behulp van **GetChildDataSource**:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "get-child-data-source.cs" >}}
