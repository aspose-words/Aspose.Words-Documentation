---
title: Tabelpositie in C++
second_title: Aspose.Words voor C++
articleTitle: Plaats een tabel
linktitle: Plaats een tabel
description: "Geef tabelpositie op in C++. Een tabeluitlijning ophalen en zwevende tabelpositie instellen met behulp van C++."
type: docs
weight: 50
url: /nl/cpp/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Er zijn zwevende tabellen en inline tabellen:

* **Inline tables** worden op dezelfde laag geplaatst als de tekst en worden in een tekststroom geplaatst die alleen de tabel boven en onder omringt. Inline tabellen verschijnen altijd tussen de alinea ' s waar u ze hebt geplaatst.
* **Floating tables** worden gelaagd over de tekst en de positie van de tabel ten opzichte van de alinea wordt bepaald door het tabelanker. Hierdoor wordt de positie van de zwevende tabel in het document beïnvloed door de verticale en horizontale positioneringsinstellingen.

Soms moet je een tabel op een bepaalde manier in een document plaatsen. Hiervoor moet u de hulpmiddelen voor uitlijning gebruiken en de inspringingen tussen de tabel en de omringende tekst instellen.

In dit artikel bespreken we welke opties Aspose.Words biedt voor positionering.

## Inline Tabelpositie Opgeven

U kunt de positie van een inline tabel instellen met behulp van de Eigenschap Aspose.Words API en de eigenschap [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/). Zo kunt u de uitlijning van de tabel ten opzichte van de documentpagina aanpassen.

Het volgende codevoorbeeld laat zien hoe u de positie van een inline tabel instelt:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## Zwevende Tafeluitlijning Krijgen

Als de tabeltekstwikkeling is ingesteld op **Around**, kunt u de horizontale en verticale uitlijning van de tabel verkrijgen met behulp van de eigenschappen [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) en [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/).

Met **other types of text wrapping** kunt u inline tabeluitlijning krijgen met behulp van de eigenschap [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/).

Het volgende codevoorbeeld toont hoe de uitlijning van de tabel te krijgen:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## Krijg Zwevende Tafelpositie

 De positie van een zwevende tabel wordt bepaald met behulp van de volgende eigenschappen::

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) - Een object voor het berekenen van de horizontale positie van een zwevende tabel
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) - Een object voor het berekenen van de verticale positie van een zwevende tabel
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) – absolute horizontale zwevende tabelpositie
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) – absolute verticale zwevende tabelpositie
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) - optie om overlapping met andere zwevende objecten in/uit te schakelen
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) – zwevende tabel relatieve horizontale uitlijning.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) – zwevende tabel relatieve verticale uitlijning.

Het volgende codevoorbeeld toont hoe de positie van een zwevende tabel te krijgen:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## Stel Zwevende Tafelpositie In

Net als getting, kun je de positie van een zwevende tabel instellen met dezelfde Aspose.Words API.

Het is belangrijk om te weten dat uitlijning en horizontale en verticale afstand gecombineerde eigenschappen zijn en dat de ene de andere kan resetten. Als u bijvoorbeeld **RelativeHorizontalAlignment** instelt, wordt **AbsoluteHorizontalDistance** teruggezet naar de standaardwaarde en vice versa. Hetzelfde geldt voor de verticale opstelling.

Het volgende codevoorbeeld laat zien hoe u de positie van een zwevende tabel instelt:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## Afstand tussen tabel en omringende tekst

Aspose.Words biedt ook de mogelijkheid om de afstanden tussen tabellen en omliggende teksten te achterhalen:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) - de waarde van de afstand van bovenaf
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) - de waarde van de waarnemingsafstand
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) – afstandswaarde rechts
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) – afstandswaarde aan de linkerkant

Het volgende codevoorbeeld laat zien hoe u de afstand tussen een tabel en de omringende tekst kunt berekenen:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
