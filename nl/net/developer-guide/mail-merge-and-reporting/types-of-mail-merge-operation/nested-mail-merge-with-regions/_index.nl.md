---
title: Genest Mail Merge met gebieden in C#
second_title: Aspose.Words voor .NET
articleTitle: Geneste Mail Merge Met regio ' s
linktitle: Geneste Mail Merge Met regio ' s
type: docs
description: "Voer een Mail Merge - bewerking uit met geneste gebieden met behulp van C#. Geneste samenvoeging is een functie waarmee u hiërarchische gegevens uit uw gegevensbron kunt samenvoegen in uw samenvoegsjabloon."
keywords: "mail merge with nested regions c#"
weight: 10
url: /nl/net/nested-mail-merge-with-regions/
timestamp: 2024-07-11-08-07-06
---

In sommige scenario 's moet u mogelijk geneste Mail Merge Met regio' s gebruiken. Geneste samenvoeging is een functie waarmee u hiërarchische gegevens uit uw gegevensbron kunt samenvoegen in uw samenvoegsjabloon om uw document eenvoudig te vullen. In principe worden de hiërarchische gegevens weergegeven als een reeks gegevensitems en hiërarchische relaties beschrijven hoe de gegevensitems met elkaar verbonden zijn (een gegevensitem is de ouder van een ander).

Met Aspose.Words kunt u een Mail Merge - bewerking uitvoeren met geneste gebieden. U kunt deze functie gebruiken als u een gegevensbron hebt die is georganiseerd in een boomstructuur en u een bewerking Mail Merge wilt uitvoeren om een sjabloon te vullen met hiërarchische gegevens.

{{% alert color="primary" %}}

Geneste Mail Merge is alleen relevant bij het uitvoeren van een Mail Merge Met regio ' s.

{{% /alert %}}

## Wat is een geneste Mail Merge

Het Mail Merge - gebied wordt genesteld genoemd als u twee of meer Mail Merge - gebieden hebt waarvan de ene zich in de andere bevindt in een hiërarchische vorm. Merk op dat elke regio gegevens uit één tabel bevat.

Het meest voorkomende voorbeeld van een geneste Mail Merge is een volgorde die meerdere items bevat waarbij u meerdere gegevenstabellen moet koppelen en de informatie in een sjabloon moet presenteren.

De afbeelding hieronder toont twee geneste gebieden waar de *Order* Mail Merge regio de ouder is van de *Item* Mail Merge regio.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Mail Merge verwerken met geneste gebieden

De gegevens die in een sjabloon moeten worden samengevoegd, kunnen afkomstig zijn van verschillende bronnen, voornamelijk relationele databases of XML - documenten. In ons voorbeeld gaan we een XML bestand gebruiken om onze gegevens op te slaan en deze direct in de **DataSet** Te laden.

Met Aspose.Words kunt u Mail Merge verwerken met geneste gebieden met behulp van de gegevensrelaties die zijn opgegeven in de **DataSet**. Wanneer het **DataSet** object XML laadt, gebruikt het het verstrekte schema of leidt het af uit de structuur van de XML zelf om dit te bereiken. Vanuit deze structuur creëert het waar nodig relaties tussen tabellen.

De onderstaande afbeelding toont hoe de gegevens uit de tabel *Order* die worden doorgegeven aan de geneste samenvoeggebieden, worden gekoppeld aan de tabel *Item*, evenals de output die wordt gegenereerd tijdens de samenvoegbewerking.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Zoals u kunt zien in het uitvoerdocument, wordt elke volgorde uit de tabel **Order** ingevoegd in de samenvoegsjabloon met alle gerelateerde items van de tabel **Item**. De volgende bestelling wordt ingevoegd samen met hun items totdat alle bestellingen en items worden vermeld. De volgorde van het nesten van Mail Merge Met regio ' s in de sjabloon moet overeenkomen met de gegevensrelaties tussen de tabellen in de gegevensbron.

Het volgende codevoorbeeld laat zien hoe u een factuur genereert met behulp van geneste Mail Merge Met regio ' s:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "nested-mail-merge.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Orders.xml).

U kunt de implementatie van het handmatig instellen van de gegevensrelaties controleren vanuit [Aspose.Words Github](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Complex%20examples%20and%20helpers/Nested%20MailMerge%20custom.cs).

{{% /alert %}}

## Gegevensrelaties instellen in geneste Mail Merge Met regio ' s

U moet alle gegevensrelaties in de bovenliggende-onderliggende structuur Instellen om de geneste Mail Merge Met regio ' s correct uit te voeren. Het overslaan van deze belangrijke stap kan leiden tot een fout bij het uitvoeren van de geneste Mail Merge Met regio ' s.

Bij het ophalen van gegevens voor een genest Mail Merge uit een XML bestand met behulp van de **ReadXml** methode, worden relaties automatisch gemaakt volgens de structuur van het XML document. U moet er echter voor zorgen dat de juiste relaties zijn gecreëerd.

Als Mail Merge niet werkt zoals verwacht, moet u mogelijk uw XML bestand herstructureren of expliciet relaties maken tussen DataTable objecten in de DataSet.

Een `DataSet` met gerelateerde gegevenstabellen gebruikt het **DataRelation**-object om de ouder-kind relatie tussen de tabellen weer te geven.

Het volgende codevoorbeeld laat zien hoe u een `DataRelation` kunt instellen tussen de tabel van een klant en de tabel van een bestelling met behulp van een `DataRelation` - object:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "disable-foreign-key-constraints.cs" >}}

## Gegevensrelaties maken vanuit een aangepaste gegevensbron

Implementeer de interface [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) om relaties te maken in de bovenliggende-onderliggende structuur van uw aangepaste gegevensbron. Gebruik de methode [GetChildDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) om de relevante onderliggende gegevens van een huidige bovenliggende record te retourneren.

Het volgende voorbeeld laat zien hoe u gegevensrelaties maakt met **GetChildDataSource**:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "get-child-data-source.cs" >}}
