---
title: Tabel Posisie in Python
second_title: Aspose.Words vir Python
articleTitle: Plaas'n Tabel
linktitle: Plaas'n Tabel
description: "Spesifiseer tabel posisie in Python. Kry'n tabel belyning, kry en stel drywende tafel posisie met behulp van Python."
type: docs
weight: 50
url: /af/python-net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Daar is drywende tafels en inline tafels:

* **Inline tables** word op dieselfde laag as die teks geplaas en word in'n vloei van teks geplaas wat slegs die tabel bo en onder omring. Inlyntabelle sal altyd tussen die paragrawe verskyn waar jy dit geplaas het.
* **Floating tables** oor die teks gelaag word, en die posisie van die tabel in verhouding tot die paragraaf word bepaal deur die tafelanker. As gevolg hiervan word die posisie van die drywende tabel in die dokument beïnvloed deur die vertikale en horisontale posisioneringsinstellings.

Soms moet jy'n tabel op'n sekere manier in'n dokument plaas. Om dit te doen, moet jy die belyningsinstrumente gebruik en die inkeping tussen die tabel en die omliggende teks stel.

In hierdie artikel sal ons bespreek watter opsies Aspose.Words voorsiening maak vir posisionering.

## Spesifiseer Inlyn Tabelposisie

Jy kan die posisie van'n inlyn tabel stel deur die Aspose.Words API en die [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/) eienskap te gebruik. U kan dus die belyning van die tabel relatief tot die dokumentbladsy aanpas.

Die volgende kode voorbeeld toon hoe om die posisie van'n inline tabel stel:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "inline-table-position.py" >}}

## Kry Drywende Tabel Belyning

As die tabel teks wrap is ingestel op **Around**, kan jy die tabel se horisontale en vertikale belyning kry met behulp van die [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) en [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) eienskappe.

Met **other types of text wrapping**, kan jy inline tabel belyning kry met behulp van die [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/) eiendom.

Die volgende kode voorbeeld toon hoe om die tabel se belyning te kry:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-table-position.py" >}}

## Kry Drywende Tafelposisie

 Die posisie van'n drywende tafel word bepaal deur die volgende eienskappe te gebruik::

* [HorizontalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/horizontal_anchor/) - 'n voorwerp vir die berekening van die horisontale posisionering van'n drywende tafel
* [VerticalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/vertical_anchor/) - 'n voorwerp vir die berekening van die vertikale posisionering van'n drywende tafel
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_horizontal_distance/) - absolute horisontale drywende tafelposisie
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_vertical_distance/) - absolute vertikale drywende tafelposisie
* [AllowOverlap](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_overlap/) - opsie om oorvleueling met ander drywende voorwerpe te aktiveer / deaktiveer
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) - drywende tabel relatiewe horisontale belyning.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) - drywende tabel relatiewe vertikale belyning.

Die volgende kode voorbeeld toon hoe om die posisie van'n drywende tafel te kry:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-floating-table-position.py" >}}

## Stel Drywende Tafelposisie

Net soos om te kry, kan jy die posisie van'n drywende tafel stel met dieselfde Aspose.Words API.

Dit is belangrik om te weet dat die uitlijning en horisontale en vertikale afstand gekombineerde eienskappe is en dat die een die ander kan herstel. Byvoorbeeld, die opstel van die **RelativeHorizontalAlignment** sal die **AbsoluteHorizontalDistance** terugstel na sy standaard waarde en omgekeerd. Dieselfde geld vir die vertikale rangskikking.

Die volgende kode voorbeeld toon hoe om die posisie van'n drywende tabel stel:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "floating-table-position.py" >}}

## Kry Afstand Tussen Tabel En Omliggende Teks

Aspose.Words bied ook'n geleentheid om die afstande tussen tabelle en omliggende tekste uit te vind:

- [DistanceTop](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) - die waarde van die afstand van bo
- [DistanceBottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/) - die waarde van die afstand van persepsie
- [DistanceRight](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/) - afstand waarde aan die regterkant
- [DistanceLeft](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/) - afstand waarde aan die linkerkant

Die volgende kode voorbeeld toon hoe om die afstand tussen'n tabel en sy omliggende teks te kry:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "distance-between-table-surrounding-text.py" >}}
