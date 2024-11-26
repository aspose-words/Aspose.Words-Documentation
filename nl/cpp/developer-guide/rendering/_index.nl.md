---
title: Renderen in C++
second_title: Aspose.Words voor C++
articleTitle: Rendering
linktitle: Rendering
description: "Gebruik Aspose.Words voor C++ rendering functie om een flow-layout document te formatteren naar pagina 's en zo' n document of geselecteerde pagina ' s om te zetten naar andere documenten (PDF, HTML, XPS, enz.) of afbeeldingen (TIFF, PNG, SVG, enz.) formaten voor het bekijken, verdere conversies of afdrukken."
type: docs
weight: 20
url: /nl/cpp/rendering/
timestamp: 2024-01-30-16-22-34
---

We gebruiken de term "rendering" in Aspose.Words om het proces te beschrijven van het converteren van een document naar een bestandsformaat of een medium dat is gepagineerd of het concept van pagina ' s heeft. We hebben het over de weergave van een document in pagina ' s. Het volgende diagram laat zien wat de rendering is in Aspose.Words.

![rendering-aspose-words-cpp](rendering-1.png)

Met de renderfuncties van Aspose.Words kunt u het volgende uitvoeren:

- Een document of geselecteerde pagina ' s converteren naar PDF, XPS, HTML, XAML, PostScript, en PCL formaten.
- Converteer een document naar een TIFF - document met meerdere pagina ' s of converteer een pagina naar een rasterafbeelding en sla deze op als BMP, PNG of JPEG.
- Converteer een documentpagina naar een schaalbare vectorafbeelding (SVG) of converteer naar een vectorafbeelding en sla deze op als EMF.
- Render (teken) een documentpagina op een specifieke grootte of schaal op het `Graphics` - object om miniaturen, afbeeldingen op ware grootte of schaal van documentpagina ' s te maken.
- Render een [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) object los van het document naar een willekeurige afbeeldingsindeling of naar een `Graphics` object.
- Een pagina van een document weergeven in een Windows - formulier.

## Flow-layout of Fixed-layout documentindelingen {#flow-layout-or-fixed-layout-document-formats}

De meeste documentindelingen die in Aspose.Words kunnen worden geladen, worden "flow-layout" - indelingen genoemd. Flow-layout formaten omvatten DOC, OOXML, RTF, ODT, en HTML. Documenten in deze formaten bestaan uit verschillende elementen zoals alinea ' s, tabellen, kopteksten, voetteksten, afbeeldingen, velden en hun opmaak, bijvoorbeeld vet, cursief, lettertype, grootte. De flow-layout-indelingen bevatten echter geen informatie over de positie waar elke specifieke alinea of teken op een pagina wordt weergegeven.

In tegenstelling hiermee bevatten de formaten" vaste lay-out "(ook bekend als" vaste pagina"), zoals PDF en XPS, exacte positioneringsinformatie voor alle documentelementen. Deze formaten behouden het oorspronkelijke uiterlijk van een document nadat het in pagina ' s is ingedeeld, waardoor de weergegeven informatie nauwkeuriger is.

## Page Layout Engine {#page-layout-engine}

Aspose.Words implementeert zijn eigen pagina-indelingsengine die een flow-indelingsdocument in pagina ' s formatteert. Aspose.Words implementeert een aantal renderers die een document met vaste lay-out produceren, zoals PDF of XPS, of pagina ' s uitvoeren in een ander medium, zoals afdrukken of tekenen. Merk op dat de export ook kan worden gepagineerd voor HTML en XAML. Dit betekent dat een document kan worden opgeslagen als regular HTML of XAML (flow-layout-indeling), of als "paginated" HTML en XAML die absolute posities van elementen bevatten.

Het belangrijkste voordeel van het gebruik van Aspose.Words page layout engine is dat het de manier nabootst waarop Microsoft Word's page layout engine werkt. Wanneer u een Microsoft Word - document converteert naar PDF, XPS, of het afdrukt met Aspose.Words, zal de uitvoer er dus bijna precies uitzien alsof het door Microsoft Word is gedaan. Merk op dat Aspose.Words Microsoft Word niet gebruikt.
