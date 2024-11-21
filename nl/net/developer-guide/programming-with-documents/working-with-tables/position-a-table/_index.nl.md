---
title: Tabelpositie in C#
second_title: Aspose.Words voor .NET
articleTitle: Plaats een tabel
linktitle: Plaats een tabel
description: "Tabelpositie opgeven in C#. Krijg een tabel uitlijning, krijgen en instellen drijvende tabel positie met behulp van C#."
type: docs
weight: 50
url: /nl/net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Er zijn drijvende tabellen en inline tabellen:

* **Inline tabellen** worden geplaatst op dezelfde laag als de tekst en worden geplaatst in een stroom tekst die alleen de tabel boven en onder omringt. Inline tabellen verschijnen altijd tussen de paragrafen waar u ze plaatste.
* **Zwevende tabellen** zijn gelaagd over de tekst, en de positie van de tabel ten opzichte van de alinea wordt bepaald door het tafelanker. Hierdoor wordt de positie van de zwevende tabel in het document beïnvloed door de verticale en horizontale instelling.

Soms moet je een tabel op een bepaalde manier in een document plaatsen. Om dit te doen, moet u de uitlijngereedschappen gebruiken en de streepjes tussen de tabel en de omliggende tekst instellen.

In dit artikel bespreken we welke opties Aspose.Words voorziet in positionering.

## Inline-tabelpositie opgeven

U kunt de positie van een inline tabel met behulp van de Aspose.Words API en de [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) eigendom. Zo kunt u de uitlijning van de tabel ten opzichte van de documentpagina aanpassen.

Het volgende voorbeeld van code laat zien hoe u de positie van een inline tabel kunt instellen:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## Uitlijning van de drijvende tabel verkrijgen

Als de tabeltekstverpakking is ingesteld op **Around**, u kunt de tabel horizontale en verticale uitlijning met behulp van de [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) en [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) eigenschappen.

Met **andere soorten tekstverpakking**, u kunt krijgen inline tabel uitlijning met behulp van de [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) eigendom.

Het volgende voorbeeld van code laat zien hoe de tabel uitlijning te krijgen:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## Drijvende tabelpositie verkrijgen

 De positie van een zwevende tabel wordt bepaald aan de hand van de volgende eigenschappen:

* [HorizontalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/horizontalanchor/) Een object voor het berekenen van de horizontale positie van een drijvende tabel
* [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/verticalanchor/) Een object voor het berekenen van de verticale positie van een drijvende tabel
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absolutehorizontaldistance/)
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absoluteverticaldistance/)
* [AllowOverlap](https://reference.aspose.com/words/net/aspose.words.tables/table/allowoverlap/) optie om overlapping met andere drijvende objecten aan/uit te schakelen
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) Drijvende tabel relatieve horizontale uitlijning.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) Drijvende tabel relatieve verticale uitlijning.

Het volgende voorbeeld van code laat zien hoe je de positie van een drijvende tabel krijgt:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## Drijvende tabelpositie instellen

Net als het krijgen, kunt u de positie van een drijvende tafel met dezelfde Aspose.Words API.

Het is belangrijk te weten dat uitlijning en horizontale en verticale afstand gecombineerde eigenschappen zijn en dat de ene de andere kan resetten. Bijvoorbeeld, het instellen van de **RelativeHorizontalAlignment** zal de **AbsoluteHorizontalDistance** naar de standaard waarde en vice versa. Hetzelfde is true voor de verticale opstelling.

Het volgende voorbeeld van code laat zien hoe je de positie van een zwevende tabel kunt instellen:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## Ontvang afstand tussen tafel en omliggende tekst

Aspose.Words biedt ook de mogelijkheid om de afstanden tussen tabellen en omliggende teksten te ontdekken:

- [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) De waarde van de afstand van boven
- [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/) De waarde van de waarnemingsafstand
- [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/) De afstandswaarde rechts
- [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/) Afstandswaarde links

Het volgende codevoorbeeld laat zien hoe je de afstand tussen een tabel en de omliggende tekst kunt krijgen:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
