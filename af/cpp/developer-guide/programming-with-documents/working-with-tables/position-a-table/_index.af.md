---
title: Tabel Posisie in C++
second_title: Aspose.Words vir C++
articleTitle: Plaas'n Tabel
linktitle: Plaas'n Tabel
description: "Spesifiseer tabel posisie in C++. Kry'n tabel belyning, kry en stel drywende tafel posisie met behulp van C++."
type: docs
weight: 50
url: /af/cpp/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Daar is drywende tafels en inline tafels:

* **Inline tables** word op dieselfde laag as die teks geplaas en word in'n vloei van teks geplaas wat slegs die tabel bo en onder omring. Inlyntabelle sal altyd tussen die paragrawe verskyn waar jy dit geplaas het.
* **Floating tables** oor die teks gelaag word, en die posisie van die tabel in verhouding tot die paragraaf word bepaal deur die tafelanker. As gevolg hiervan word die posisie van die drywende tabel in die dokument beïnvloed deur die vertikale en horisontale posisioneringsinstellings.

Soms moet jy'n tabel op'n sekere manier in'n dokument plaas. Om dit te doen, moet jy die belyningsinstrumente gebruik en die inkeping tussen die tabel en die omliggende teks stel.

In hierdie artikel sal ons bespreek watter opsies Aspose.Words voorsiening maak vir posisionering.

## Spesifiseer Inlyn Tabelposisie

Jy kan die posisie van'n inlyn tabel stel deur die Aspose.Words API en die [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/) eienskap te gebruik. U kan dus die belyning van die tabel relatief tot die dokumentbladsy aanpas.

Die volgende kode voorbeeld toon hoe om die posisie van'n inline tabel stel:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## Kry Drywende Tabel Belyning

As die tabel teks wrap is ingestel op **Around**, kan jy die tabel se horisontale en vertikale belyning kry met behulp van die [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) en [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) eienskappe.

Met **other types of text wrapping**, kan jy inline tabel belyning kry met behulp van die [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/) eiendom.

Die volgende kode voorbeeld toon hoe om die tabel se belyning te kry:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## Kry Drywende Tafelposisie

 Die posisie van'n drywende tafel word bepaal deur die volgende eienskappe te gebruik::

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) - 'n voorwerp vir die berekening van die horisontale posisionering van'n drywende tafel
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) - 'n voorwerp vir die berekening van die vertikale posisionering van'n drywende tafel
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) - absolute horisontale drywende tafelposisie
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) - absolute vertikale drywende tafelposisie
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) - opsie om oorvleueling met ander drywende voorwerpe te aktiveer / deaktiveer
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) - drywende tabel relatiewe horisontale belyning.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) - drywende tabel relatiewe vertikale belyning.

Die volgende kode voorbeeld toon hoe om die posisie van'n drywende tafel te kry:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## Stel Drywende Tafelposisie

Net soos om te kry, kan jy die posisie van'n drywende tafel stel met dieselfde Aspose.Words API.

Dit is belangrik om te weet dat die uitlijning en horisontale en vertikale afstand gekombineerde eienskappe is en dat die een die ander kan herstel. Byvoorbeeld, die opstel van die **RelativeHorizontalAlignment** sal die **AbsoluteHorizontalDistance** terugstel na sy standaard waarde en omgekeerd. Dieselfde geld vir die vertikale rangskikking.

Die volgende kode voorbeeld toon hoe om die posisie van'n drywende tabel stel:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## Kry Afstand Tussen Tabel En Omliggende Teks

Aspose.Words bied ook'n geleentheid om die afstande tussen tabelle en omliggende tekste uit te vind:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) - die waarde van die afstand van bo
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) - die waarde van die afstand van persepsie
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) - afstand waarde aan die regterkant
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) - afstand waarde aan die linkerkant

Die volgende kode voorbeeld toon hoe om die afstand tussen'n tabel en sy omliggende teks te kry:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
