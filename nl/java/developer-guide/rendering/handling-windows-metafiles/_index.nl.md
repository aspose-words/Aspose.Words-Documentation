---
title: Behandeling Windows Metafiles in Java
second_title: Aspose.Words voor Java
articleTitle: Behandeling Windows Metabestanden
linktitle: Behandeling Windows Metabestanden
description: "Aspose.Words voor Java voert zijn eigen Windows Metafile speler om Metafile formaat af te spelen op alle platforms en ondersteunt de behandeling van de basis metafile functies en kan terugval uitvoeren naar een ander type metafile speler."
type: docs
weight: 30
url: /nl/java/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Windows Metafile formaat is een afbeelding bestandsformaat dat zowel vector als raster graphics kan bevatten. Dit formaat wordt gebruikt om grafische gegevens op te slaan in geheugen of on-disk bestanden. Een metafile slaat een lijst van functies op in de Windows Graphics Device Interface (GDI) die uitgevoerd moet worden om de afbeelding op het scherm weer te geven. Het systeem interpreteert en voert deze commando's uit in de weergavecontext.

Vroeger, Windows Metafile was het enige vector image formaat ondersteund door Microsoft Word. Microsoft Word nu ondersteunt ook SVG-formaat, maar het metafile formaat wordt nog steeds vaak gebruikt in Word-documenten. Ook Metafile kan een uitwisselingsformaat voor sommige andere toepassingen, zoals Microsoft Visio. Het hoofddoel van Metafile is de uitwisseling van grafische informatie tussen Windows aanvragen.

Er zijn 3 versies van Windows Metafile:

- WMF winkels bellen naar 16bit GDI.
- Win32/GDI.
- EMF+ Metafile stores call to GDI+. EMF+ Metafile kan ook dubbel zijn, waarin dezelfde afbeeldingen met zowel EMF als EMF+ delen worden beschreven.

Het bestaande probleem met Windows Metafile is dat het niet wordt ondersteund door de meeste niet-Word formaten, waar documenten meestal worden opgeslagen. Daarom is het nodig om het Metafile formaat te converteren naar andere raster- of vectorformaten. Het is gemakkelijk om te zetten Windows Metafile naar een rasterafbeelding op .NET door het simpelweg door te geven aan GDI+, maar het is niet mogelijk op andere platforms omdat zelfs GDI+ niet de functionaliteit biedt om de vector graphics uit Metafile te halen. Om deze problemen op te lossen, Aspose.Words voert zijn eigen Windows Metafile player, die in staat is om te spelen Metafile formaat zowel vector als raster graphics op alle platforms.

## Controle van de Aspose.Words Metabestandspeler

De [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) klasse stelt u in staat om de metafile speler te bedienen. Bijvoorbeeld, kunt u bepalen hoe metafile afbeeldingen moeten worden weergegeven met behulp van de [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) eigendom, die een speciale betekenis heeft bij het omzetten naar bitmaps (zie ook de [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) eigenschap).

## Ondersteuning van rasteroperaties

Raster operaties is een complexe metafile functie, die momenteel beperkte ondersteuning heeft. Rasterbewerkingen zijn beschikbaar in WMF- en EMF-metabestandformaten. Het EMF+-metabestandsformaat gebruikt geen rasterbewerkingen direct, maar kan EMF-onderdelen, ingebedde WMF- of EMF-metafiles bevatten.

Er zijn binaire en ternaire raster operaties:

- Binaire raster operaties worden toegepast op pen tekening commando's, zoals tekenlijnen en curves. Bij het tekenen van een lijn, de pen kleur wordt gecombineerd met de bestemming bitmap kleur (de kleur van de bijbehorende pixel op het apparaat oppervlak) door het gebruik van gespecificeerde bitwise logische operaties met hex kleurwaarden. De afbeelding hieronder illustreert het effect van alle 16 binaire raster operaties toegepast op 20 verschillende kleurenbalken. De verticale kleurbalken worden eerst getekend, de horizontale staven worden getekend na elke binaire rasterbewerking wordt toegepast. Voor de eenvoudige gevallen, R2_BLACK trekt zwart, R2_NOT omgekeerd de kleur, R2_NOP de achtergrond niet verandert, en R2_WHITE Tekent wit.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- Ternaire rasterbewerkingen worden toegepast bij het tekenen van bitmap afbeeldingen. Ze combineren kleuren van bijbehorende bitmap afbeeldingspixels, de penseel, en de doel bitmap met behulp van bitwise logische bewerkingen met gespecificeerde hex kleurwaarden. Een van de meest voorkomende doeleinden van het gebruik van ternaire raster operaties is de emulatie van transparantie. De afbeelding in het voorbeeld hieronder laat zien hoe pictogramtransparantie kan worden nagebootst. Er zijn twee soorten bitmaps: de b/w masker bitmap en de kleur bitmap. Ten eerste wordt de masker bitmap getekend met de SRCAND raster operatie. Het verandert het ondoorzichtige pictogramgebied in zwart-wit, waardoor het transparante gebied onveranderd blijft. Dan wordt de tweede bitmap getekend met de SRCINVERT raster operatie. Het toont de kleurenpixels op het zwarte gebied, waardoor het transparante gebied ongewijzigd blijft.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

Rasterbewerkingen kunnen niet direct naar vectorafbeeldingen worden omgezet. Aspose.Words emuleert rasteractiviteiten door gedeeltelijk het oppervlak van het apparaat te rasteren dat wordt beïnvloed door rasteroperaties. Met dit doel beoogt de [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) de eigenschap wordt gebruikt.

{{% alert color="primary" %}}

Hoewel binaire rasterbewerkingen momenteel niet ondersteund worden en het beperkte aantal ternaire rasterbewerkingen ondersteund wordt door Aspose.Words, het kan de basisgevallen van conversie naar vector graphics direct behandelen, bijvoorbeeld, R2_BLACK, R2_WHITE, R2_NOP. Ook het rasteren van het oppervlak van het apparaat beïnvloedt de prestaties aanzienlijk, vooral wanneer het significante aantal raster operatie records betrokken zijn.

{{% /alert %}}

Het voorbeeld hieronder laat zien hoe Aspose.Words rendert een metafile naar een bitmap als het niet mogelijk is om een aantal van de metafile records correct te renderen naar vector graphics:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
