---
title: Renderen in Java
second_title: Aspose.Words voor Java
articleTitle: Renderen
linktitle: Renderen
description: "Gebruik Aspose.Words voor Java rendering feature om een flow-layout document te formatteren naar pagina's en een dergelijk document of geselecteerde pagina's om te zetten naar een ander document (PDF, HTML, XPS, etc.) of afbeelding (TIFF, PNG, SVG, enz.) formaten voor het bekijken, verdere conversies of afdrukken."
type: docs
weight: 30
url: /nl/java/rendering/
---

We gebruiken de term "rendering" in Aspose.Words beschrijven van het proces van het omzetten van een document in een bestandsformaat of een medium dat wordt gepagineerd of heeft het concept van pagina's. We hebben het over de weergave van een document in bladzijden. Het volgende diagram laat zien wat de weergave is in Aspose.Words.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

De rendering eigenschappen van Aspose.Words kunt u het volgende uitvoeren:

- Een document of geselecteerde pagina's omzetten naar PDF, XPS, HTML, XAML, PostScript en PCL-formaten.
- Converteer een document in een multi-page TIFF document, of zet een pagina om in een raster afbeelding en sla het op als BMP, PNG of JPEG.
- Een documentpagina omzetten naar een Scalable Vector Graphics image (SVG), of omzetten naar een vector image en opslaan als EMF.
- Render (teken) een document pagina op een bepaalde grootte of schaal op de `Graphics` object om miniaturen aan te maken, afbeeldingen van documentpagina's op grote of schaal.
- Render a [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) object apart van het document naar een afbeeldingsformaat of naar een `Graphics` object.
- Toon elke pagina van een document in een Swing Component.
- Print of voorbeeld document pagina's met behulp van de standaard Java drukkerijinfrastructuur.

## Flow-layout of vastelayout Documentformaten {#flow-layout-or-fixed-layout-document-formats}

De meeste documentformaten die geladen kunnen worden Aspose.Words staan bekend als Flow-layout formaten zijn DOC, OOXML, RTF, ODT en HTML. Documenten in deze formaten bestaan uit verschillende elementen zoals paragrafen, tabellen, headers, voetteksten, afbeeldingen, velden, en hun opmaak, bijvoorbeeld, vet, cursief, lettertype, grootte. De flow-layout formaten bevatten echter geen informatie over de positie waar elke alinea of teken op een pagina wordt weergegeven.

In tegenstelling tot de "fixed layout" (ook bekend als "fixed page") formaten zoals PDF en XPS bevat exacte plaatsbepalingsinformatie voor alle documentelementen. Deze formaten behouden het oorspronkelijke uiterlijk van een document nadat het in pagina's was opgesteld, waardoor een hogere nauwkeurigheid van de weergegeven informatie wordt verkregen.

## Pagina-indeling Engine {#page-layout-engine}

Aspose.Words implementeert zijn eigen pagina layout engine die een flow-layout document in pagina's formatteert. Aspose.Words implementeert een aantal renders die ofwel een vastlay-out document zoals PDF of XPS, of pagina's naar een ander medium zoals afdrukken of tekenen. Merk op dat de export ook kan worden gepagineerd voor HTML en XAML. Dit betekent dat een document kan worden opgeslagen als reguliere HTML of XAML (flow-lay-out formaat), of als "paginated" HTML en XAML die absolute posities van elementen bevatten.

Het belangrijkste voordeel van het gebruik Aspose.Words pagina layout engine is dat het bootst de weg Microsoft WordDe pagina lay-out engine werkt. Daarom, wanneer je een Microsoft Word document in PDF, XPS, of afdrukken met behulp van Aspose.Words, de uitvoer zal verschijnen bijna precies alsof het werd gedaan door Microsoft Word. Merk op dat Aspose.Words gebruikt geen Microsoft Word.
