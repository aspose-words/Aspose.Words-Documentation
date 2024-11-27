---
title: Genest Mail Merge met gebieden in C++
second_title: Aspose.Words voor C++
articleTitle: Geneste Mail Merge Met regio ' s
linktitle: Geneste Mail Merge Met regio ' s
type: docs
description: "Voer een Mail Merge - bewerking uit met geneste gebieden met behulp van C++. Geneste samenvoeging is een functie waarmee u hiërarchische gegevens uit uw gegevensbron kunt samenvoegen in uw samenvoegsjabloon."
keywords: "mail merge with nested regions c++"
weight: 30
url: /nl/cpp/nested-mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

In sommige scenario 's moet u mogelijk geneste Mail Merge Met regio' s gebruiken. Geneste samenvoeging is een functie waarmee u hiërarchische gegevens uit uw gegevensbron kunt samenvoegen in uw samenvoegsjabloon om uw document eenvoudig te vullen. In principe worden de hiërarchische gegevens weergegeven als een reeks gegevensitems en hiërarchische relaties beschrijven hoe de gegevensitems met elkaar verbonden zijn (een gegevensitem is de ouder van een ander).

Met Aspose.Words kunt u een Mail Merge - bewerking uitvoeren met geneste gebieden. U kunt deze functie gebruiken als u een gegevensbron hebt die is georganiseerd in een boomstructuur en u een bewerking Mail Merge wilt uitvoeren om een sjabloon te vullen met hiërarchische gegevens.

{{% alert color="primary" %}}

Geneste Mail Merge is alleen relevant bij het uitvoeren van een Mail Merge Met regio ' s.

{{% /alert %}}

## Wat is een geneste Mail Merge

Het Mail Merge - gebied wordt genesteld genoemd als u twee of meer Mail Merge - gebieden hebt waarvan de ene zich in de andere bevindt in een hiërarchische vorm. Merk op dat elke regio gegevens uit één tabel bevat.

Het meest voorkomende voorbeeld van een geneste Mail Merge is een volgorde die een paar items bevat waarbij u veel gegevenstabellen moet koppelen en de informatie in een sjabloon moet presenteren.

De afbeelding hieronder toont twee geneste gebieden waar de *Order* Mail Merge regio de ouder is van de *Item* Mail Merge regio.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Mail Merge verwerken met geneste gebieden

De gegevens die in een sjabloon moeten worden samengevoegd, kunnen afkomstig zijn van verschillende bronnen, voornamelijk relationele databases of XML documenten. In ons voorbeeld gebruiken we een [SQLite](https://www.sqlite.org/index.html) database om onze gegevens op te slaan en te laden met aangepaste gegevensbronimplementatie.

De onderstaande afbeelding toont hoe de gegevens uit de tabel *Order* die worden doorgegeven aan de geneste samenvoeggebieden, worden gekoppeld aan de tabel *Item*, evenals de output die wordt gegenereerd tijdens de samenvoegbewerking.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Zoals u kunt zien in het uitvoerdocument, wordt elke volgorde uit de tabel **Order** ingevoegd in de samenvoegsjabloon met alle gerelateerde items van de tabel **Item**. De volgende bestelling wordt ingevoegd samen met hun items totdat alle bestellingen en items worden vermeld. De volgorde van het nesten van Mail Merge Met regio ' s in de sjabloon moet overeenkomen met de gegevensrelaties tussen de tabellen in de gegevensbron.

## Gegevensrelaties maken vanuit een aangepaste gegevensbron

Implementeer de interface [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) om relaties te maken in de bovenliggende-onderliggende structuur van uw aangepaste gegevensbron. Gebruik de methode [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) om de relevante onderliggende gegevens van een huidige bovenliggende record te retourneren.

Het volgende codevoorbeeld toont aan hoe een factuur te genereren met behulp van geneste Mail Merge Met regio ' s van [SQLite](https://www.sqlite.org/index.html) database met [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}
