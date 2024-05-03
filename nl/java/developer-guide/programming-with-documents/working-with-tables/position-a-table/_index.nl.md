---
title: Tabelpositie in Java
second_title: Aspose.Words voor Java
articleTitle: Plaats een tabel
linktitle: Plaats een tabel
description: "Tabelpositie opgeven in Java. Krijg een tabel uitlijning, krijgen en instellen drijvende tabel positie met behulp van Java."
type: docs
weight: 50
url: /nl/java/position-a-table/
---

Er zijn drijvende tabellen en inline tabellen:

* **Inline tabellen** worden geplaatst op dezelfde laag als de tekst en worden geplaatst in een tekststroom die alleen de tabel boven en onder omringt. Inline tabellen zullen altijd verschijnen tussen de paragrafen waar u ze plaatst.
* **Zwevende tabellen** zijn gelaagd over de tekst en de positie van de tabel ten opzichte van de alinea wordt bepaald door het tafelanker. Hierdoor wordt de positie van de zwevende tabel in het document beïnvloed door de verticale en horizontale instelling.

Soms moet je een tabel op een bepaalde manier in een document plaatsen. Om dit te doen, moet u de uitlijningsinstrumenten gebruiken en de streepjes tussen de tabel en de omliggende tekst instellen.

In dit artikel bespreken we welke opties Aspose.Words voorziet in positionering.

## Inline-tabelpositie opgeven

U kunt de positie van een inline tabel met behulp van de Aspose.Words API en de [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) eigendom. Zo kunt u de uitlijning van de tabel ten opzichte van de documentpagina aanpassen.

Het volgende voorbeeld van code laat zien hoe u de positie van een inline tabel kunt instellen:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Uitlijning van drijvende tabel verkrijgen

Indien de tabeltekstverpakking is ingesteld op **Around**, u kunt de tabel horizontale en verticale uitlijning met behulp van de [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) en [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) eigenschappen.

Met **andere soorten tekstverpakking**, u kunt inline tabel uitlijning met behulp van de **Alignment** eigendom.

Het volgende voorbeeld van code laat zien hoe de tabel uitlijning te krijgen:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Drijvende tabelpositie verkrijgen

 De positie van een zwevende tabel wordt bepaald aan de hand van de volgende eigenschappen:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) Een object voor het berekenen van de horizontale positie van een drijvende tabel
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) Een object voor het berekenen van de verticale positie van een drijvende tabel
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance)
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance)
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) optie om overlapping met andere drijvende objecten aan/uit te schakelen
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) Drijvende tabel relatief horizontale uitlijning.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) Drijvende tabel relatieve verticale uitlijning.

Het volgende voorbeeld van code laat zien hoe je de positie van een drijvende tabel krijgt:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Drijvende tabelpositie instellen

Net als het krijgen, kunt u de positie van een drijvende tafel met dezelfde Aspose.Words API.

Het is belangrijk om te weten dat uitlijning en horizontale en verticale afstand gecombineerde eigenschappen zijn en de ene de andere kan resetten. Bijvoorbeeld, het instellen van de **RelativeHorizontalAlignment** zal de **AbsoluteHorizontalDistance** naar de standaard waarde en vice versa. Hetzelfde is true voor de verticale opstelling.

Het volgende voorbeeld van code laat zien hoe u de positie van een drijvende tabel kunt instellen:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Afstand tussen tafel en omliggende tekst verkrijgen

Aspose.Words biedt ook de mogelijkheid om de afstanden tussen tabellen en omliggende teksten te achterhalen:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) De waarde van de afstand van boven
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) De waarde van de waarnemingsafstand
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) De afstandswaarde rechts
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) De afstandswaarde aan de linkerkant

Het volgende voorbeeld van code laat zien hoe je de afstand tussen een tabel en de omliggende tekst kunt krijgen:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
