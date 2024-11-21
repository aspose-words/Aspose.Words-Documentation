---
title: Vertoon in C++
second_title: Aspose.Words vir C++
articleTitle: Lewering
linktitle: Lewering
description: "Gebruik Aspose.Words vir C++ rendering funksie om'n vloei-uitleg dokument in bladsye te formateer en omskep so'n dokument of geselekteerde bladsye na ander dokumente (PDF, HTML, XPS, en so aan.) of beelde (TIFF, PNG, SVG, en so aan.) formate vir besigtiging, verdere omskakelings of drukwerk."
type: docs
weight: 20
url: /af/cpp/rendering/
timestamp: 2024-01-30-16-22-34
---

Ons gebruik die term "weergawe" in Aspose.Words om die proses van die omskakeling van'n dokument in'n lêer formaat of'n medium wat paginated of het die konsep van bladsye te beskryf. Ons praat oor die weergawe van'n dokument in bladsye. Die volgende diagram toon watter weergawe in Aspose.Words is.

![rendering-aspose-words-cpp](rendering-1.png)

Die lewering funksies van Aspose.Words in staat stel om die volgende uit te voer:

- Skakel'n dokument of geselekteerde bladsye om na PDF, XPS, HTML, XAML, PostScript, en PCL formate.
- Omskep'n dokument in'n multi-bladsy TIFF dokument, of omskep enige bladsy in'n raster beeld en stoor dit as BMP, PNG, of JPEG.
- Omskep'n dokumentbladsy in'n Skaalbare Vektorgrafiese beeld (SVG), of omskep in'n vektorbeeld en stoor dit as EMF.
- Lewer (teken) 'n dokumentbladsy op'n spesifieke grootte of skaal op die `Graphics`-voorwerp om miniatuurfoto's, volgrootte of skaalbeelde van dokumentbladsye te skep.
- Gee'n [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) voorwerp afsonderlik van die dokument na enige beeld formaat of na'n `Graphics` voorwerp.
- Vertoon enige bladsy van'n dokument in'n Windows Vorm.

## Vloei-uitleg of Vaste-uitleg Dokument Formate {#flow-layout-or-fixed-layout-document-formats}

Die meeste van die dokument formate wat gelaai kan word in Aspose.Words staan bekend as "vloei-uitleg" formate. Vloei-uitleg formate sluit in DOC, OOXML, RTF, ODT, en HTML. Dokumente in hierdie formate bestaan uit verskeie elemente soos paragrawe, tabelle, koptekste, voetskrifte, beelde, velde, en hul opmaak, byvoorbeeld vet, kursief, lettertipe, grootte. Die vloei-uitleg formate bevat egter nie inligting oor die posisie waar elke spesifieke paragraaf of karakter op'n bladsy vertoon word nie.

In teenstelling hiermee bevat die" vaste-uitleg "(ook bekend as" vaste bladsy") formate soos PDF en XPS presiese posisioneringsinligting vir alle dokumentelemente. Hierdie formate behou die oorspronklike voorkoms van'n dokument nadat dit in bladsye uitgelê is, wat'n groter akkuraatheid van die vertoonde inligting bied.

## Bladsy Uitleg Enjin {#page-layout-engine}

Aspose.Words implementeer sy eie bladsy uitleg enjin wat'n vloei-uitleg dokument in bladsye formateer. Aspose.Words implementeer'n aantal weergawes wat'n vaste-uitleg dokument soos PDF of XPS produseer, of bladsye in'n ander medium soos drukwerk of tekening uitvoer. Let daarop dat die uitvoer ook vir HTML en XAML gepagineer kan word. Dit beteken dat'n dokument gestoor kan word as gereelde HTML of XAML (vloei-uitleg formaat), of as "paginated" HTML en XAML wat absolute posisies van elemente bevat.

Die belangrikste voordeel van die gebruik van Aspose.Words bladsy uitleg enjin is dat dit naboots die manier waarop Microsoft Word se bladsy uitleg enjin werk. Daarom, wanneer jy'n Microsoft Word dokument omskep in PDF, XPS, of druk dit met behulp van Aspose.Words, sal die uitset verskyn byna presies asof dit gedoen is deur Microsoft Word. Let daarop dat Aspose.Words nie Microsoft Word gebruik nie.
