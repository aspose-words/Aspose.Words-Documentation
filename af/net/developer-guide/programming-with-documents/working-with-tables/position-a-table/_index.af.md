---
title: Tabel Posisie in C#
second_title: Aspose.Words vir .NET
articleTitle: Plaas'n Tabel
linktitle: Plaas'n Tabel
description: "Spesifiseer tabel posisie in C#. Kry'n tabel belyning, kry en stel drywende tafel posisie met behulp van C#."
type: docs
weight: 50
url: /af/net/position-a-table/
---

Daar is drywende tafels en inline tafels:

* **Inline tables** word op dieselfde laag as die teks geplaas en word in'n vloei van teks geplaas wat slegs die tabel bo en onder omring. Inlyntabelle sal altyd tussen die paragrawe verskyn waar jy dit geplaas het.
* **Floating tables** oor die teks gelaag word, en die posisie van die tabel in verhouding tot die paragraaf word bepaal deur die tafelanker. As gevolg hiervan word die posisie van die drywende tabel in die dokument beïnvloed deur die vertikale en horisontale posisioneringsinstellings.

Soms moet jy'n tabel op'n sekere manier in'n dokument plaas. Om dit te doen, moet jy die belyningsinstrumente gebruik en die inkeping tussen die tabel en die omliggende teks stel.

In hierdie artikel sal ons bespreek watter opsies Aspose.Words voorsiening maak vir posisionering.

## Spesifiseer Inlyn Tabelposisie

Jy kan die posisie van'n inlyn tabel stel deur die Aspose.Words API en die [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) eienskap te gebruik. U kan dus die belyning van die tabel relatief tot die dokumentbladsy aanpas.

Die volgende kode voorbeeld toon hoe om die posisie van'n inline tabel stel:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## Kry Drywende Tabel Belyning

As die tabel teks wrap is ingestel op **Around**, kan jy die tabel se horisontale en vertikale belyning kry met behulp van die [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) en [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) eienskappe.

Met **other types of text wrapping**, kan jy inline tabel belyning kry met behulp van die [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) eiendom.

Die volgende kode voorbeeld toon hoe om die tabel se belyning te kry:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## Kry Drywende Tafelposisie

 Die posisie van'n drywende tafel word bepaal deur die volgende eienskappe te gebruik::

* [HorizontalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/horizontalanchor/) - 'n voorwerp vir die berekening van die horisontale posisionering van'n drywende tafel
* [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/verticalanchor/) - 'n voorwerp vir die berekening van die vertikale posisionering van'n drywende tafel
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absolutehorizontaldistance/) - absolute horisontale drywende tafelposisie
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absoluteverticaldistance/) - absolute vertikale drywende tafelposisie
* [AllowOverlap](https://reference.aspose.com/words/net/aspose.words.tables/table/allowoverlap/) - opsie om oorvleueling met ander drywende voorwerpe te aktiveer / deaktiveer
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) - drywende tabel relatiewe horisontale belyning.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) - drywende tabel relatiewe vertikale belyning.

Die volgende kode voorbeeld toon hoe om die posisie van'n drywende tafel te kry:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## Stel Drywende Tafelposisie

Net soos om te kry, kan jy die posisie van'n drywende tafel stel met dieselfde Aspose.Words API.

Dit is belangrik om te weet dat die uitlijning en horisontale en vertikale afstand gekombineerde eienskappe is en dat die een die ander kan herstel. Byvoorbeeld, die opstel van die **RelativeHorizontalAlignment** sal die **AbsoluteHorizontalDistance** terugstel na sy standaard waarde en omgekeerd. Dieselfde geld vir die vertikale rangskikking.

Die volgende kode voorbeeld toon hoe om die posisie van'n drywende tabel stel:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## Kry Afstand Tussen Tabel En Omliggende Teks

Aspose.Words bied ook'n geleentheid om die afstande tussen tabelle en omliggende tekste uit te vind:

- [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) - die waarde van die afstand van bo
- [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/) - die waarde van die afstand van persepsie
- [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/) - afstand waarde aan die regterkant
- [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/) - afstand waarde aan die linkerkant

Die volgende kode voorbeeld toon hoe om die afstand tussen'n tabel en sy omliggende teks te kry:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
