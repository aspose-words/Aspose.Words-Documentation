---
title: Renderen in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Renderen
linktitle: Renderen
description: "Gebruik Aspose.Words voor Python via .NET rendering feature om een flow-layout document in pagina's te formatteren en een dergelijk document of geselecteerde pagina's om te zetten naar andere documenten (PDF, HTML, XPS, etc.) of afbeeldingen (TIFF, PNG, SVG, enz.) formaten voor het bekijken, verder omzetten of afdrukken."
type: docs
weight: 20
url: /nl/python-net/rendering/
---

We gebruiken de term "rendering" in Aspose.Words beschrijven van het proces van het omzetten van een document in een bestandsformaat of een medium dat wordt gepagineerd of heeft het concept van pagina's. We hebben het over het omzetten van een document in pagina's. Het volgende diagram laat zien wat de weergave is in Aspose.Words.

![rendering_aspose-words](/words/python-net/rendering/rendering-1.png)

De rendering eigenschappen van Aspose.Words kunt u het volgende uitvoeren:

- Een document of geselecteerde pagina's omzetten naar PDF, XPS, HTML, XAML, PostScript en PCL-formaten.
- Zet een document om in een multi-page TIFF document, of zet een pagina om in een raster afbeelding en sla het op als BMP, PNG of JPEG.
- Een documentpagina omzetten in een schaalbare Vector Graphics-afbeelding (SVG), of omzetten in een vectorafbeelding en opslaan als EMF.
- Render a [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) object apart van het document naar elk afbeeldingsformaat.

## Flow-Layout of Fixed-Layout Documentformaten

De meeste documentformaten die geladen kunnen worden Aspose.Words staan bekend als Flow-layout formaten zijn DOC, OOXML, RTF, ODT, en HTML. Documenten in deze formaten bestaan uit verschillende elementen zoals paragrafen, tabellen, headers, voetteksten, afbeeldingen, velden en hun opmaak, bijvoorbeeld vet, cursief, lettertype, grootte. De flow-layout formaten bevatten echter geen informatie over de positie waar elke alinea of teken op een pagina wordt weergegeven.

In tegenstelling, de XPS bevat exacte plaatsbepalingsinformatie voor alle documentelementen. Deze formaten behouden het oorspronkelijke uiterlijk van een document nadat het in pagina's is uitgelegd, waardoor een hogere nauwkeurigheid van weergegeven informatie wordt geboden.

## Pagina-indeling Engine

Aspose.Words implementeert zijn eigen pagina layout engine die een flow-layout document in pagina's formatteert. Aspose.Words implementeert een aantal renders die ofwel een vastlay-out document zoals PDF of XPS, of pagina's in een ander medium zoals drukken of tekenen. Merk op dat de export ook kan worden gepagineerd voor HTML en XAML. Dit betekent dat een document kan worden opgeslagen als reguliere HTML of XAML (flow-lay-out formaat), of als "paginated" HTML en XAML met absolute posities van elementen.

Het belangrijkste voordeel van het gebruik van Aspose.Words pagina-indeling motor is dat het bootst de weg Microsoft WordDe pagina lay-out engine werkt. Daarom, wanneer je een Microsoft Word document in PDF, XPS, of afdrukken met behulp van Aspose.Words, de uitvoer zal verschijnen bijna precies alsof het werd gedaan door Microsoft Word. Merk op dat Aspose.Words gebruikt geen Microsoft Word.
