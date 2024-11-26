---
title: Behandeling Windows Metafiles in C#
second_title: Aspose.Words voor .NET
articleTitle: Behandeling Windows Metafiles
linktitle: Behandeling Windows Metafiles
description: "Aspose.Words voor .NET voert zijn eigen Windows Metafile speler om Metafile formaat af te spelen op alle platforms en ondersteunt de behandeling van de basis metafile functies en kan terugval uitvoeren naar een ander type metafile speler met behulp van C#."
type: docs
weight: 30
url: /nl/net/handling-windows-metafiles/
timestamp: 2024-07-10-14-38-57
---

Windows Metafile formaat is een afbeelding bestandsformaat dat zowel vector als raster graphics kan bevatten. Dit formaat wordt gebruikt om grafische gegevens op te slaan in geheugen of on-disk bestanden. Een metafile slaat een lijst van functies op in de Windows Graphics Device Interface (GDI) die uitgevoerd moet worden om de afbeelding op het scherm weer te geven. Het systeem interpreteert en voert deze commando's uit in de weergavecontext.

Vroeger, Windows Metafile was het enige vector image formaat ondersteund door Microsoft Word. Microsoft Word nu ondersteunt ook SVG-formaat, maar het metafile formaat wordt nog steeds vaak gebruikt in Word-documenten. Ook Metafile kan een uitwisselingsformaat voor sommige andere toepassingen, zoals Microsoft Visio. Het belangrijkste doel van Metafile is de uitwisseling van grafische informatie tussen Windows aanvragen.

Er zijn 3 versies van Windows Metafile:

- WMF winkels bellen naar 16bit GDI.
- De winkels bellen naar Win32/GDI.
- EMF+ Metafile stores call to GDI+. EMF+ Metafile kan ook dubbel zijn, waarbij dezelfde afbeeldingen met zowel EMF als EMF+ delen worden beschreven.

Het bestaande probleem met Windows Metafile is dat het niet wordt ondersteund door de meeste niet-Word formaten, waar documenten meestal worden opgeslagen. Daarom is het vereist om het Metafile formaat te converteren naar andere raster- of vectorformaten. Het is gemakkelijk om te zetten Windows Metafile naar rasterafbeelding op .NET door het simpelweg door te geven aan GDI+, maar het is niet mogelijk op andere platforms omdat zelfs GDI+ niet de functionaliteit biedt om de vector graphics uit Metafile te halen. Om deze problemen op te lossen, Aspose.Words voert zijn eigen Windows Metafile speler, die in staat is om te spelen Metafile formaat zowel vector als raster graphics op alle platforms.

## Controle op de Aspose.Words Metabestandspeler

De [MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/) klasse stelt u in staat om de metafile speler te bedienen. Bijvoorbeeld, kunt u bepalen hoe metafile afbeeldingen moeten worden weergegeven met behulp van de [RenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/renderingmode/) eigenschap, die een speciale betekenis heeft bij het omzetten naar bitmaps (zie ook de [MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/) eigenschap).

Opslaan naar een bitmap werkt anders op andere platforms dan .NET. Terwijl .NET GDI+ rendering is een verwijzing die bijna perfect werkt zelfs voor de meest complexe metafile formaat, op andere platforms kan het problemen veroorzaken of helemaal niet worden ondersteund.

## Ondersteuning van rasteroperaties

Raster operaties is een complexe metafile functie, die momenteel beperkte ondersteuning heeft. Rasterbewerkingen zijn beschikbaar in WMF- en EMF-metabestandformaten. Het EMF+ metafile formaat gebruikt geen rasterbewerkingen direct, maar kan EMF-onderdelen, ingebedde WMF- of EMF-metafiles bevatten.

Er zijn binaire en ternaire raster operaties:

- Binaire raster operaties worden toegepast op pen tekening commando's, zoals tekenlijnen en curves. Bij het tekenen van een lijn, de pen kleur wordt gecombineerd met de bestemming bitmap kleur (de kleur van de bijbehorende pixel op het apparaat oppervlak) door het gebruik van gespecificeerde bitwise logische operaties met hex kleur waarden. De afbeelding hieronder illustreert het effect van alle 16 binaire raster operaties toegepast op 20 verschillende kleurenbalken. De verticale kleurbalken worden eerst getekend, de horizontale staven worden getekend na elke binaire rasterbewerking. Voor de eenvoudige gevallen, R2_BLACK tekent zwart, R2_NOT omgekeerd de kleur, R2_NOP verandert de achtergrond niet, en R2_WITTE tekent wit.

<img src="/words/net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-net-1" style="width:650px"/>

- Ternaire rasterbewerkingen worden toegepast bij het tekenen van bitmap afbeeldingen. Ze combineren kleuren van bijbehorende bitmap afbeeldingspixels, het penseel en de doel bitmap door bitwise logische bewerkingen te gebruiken met gespecificeerde hex kleurwaarden. Een van de meest voorkomende doeleinden van het gebruik van ternary raster operaties is de emulatie van transparantie. De afbeelding in het voorbeeld hieronder toont hoe pictogramtransparantie kan worden nagebootst. Er zijn twee soorten bitmaps: de b/w masker bitmap en de kleur bitmap. Ten eerste wordt het masker bitmap getekend met de SRCAND raster operatie. Het verandert het ondoorzichtige pictogramgebied in zwart-wit, waardoor het transparante gebied onveranderd blijft. Dan wordt de tweede bitmap getekend met de SRCINVERT raster operatie. Het toont de kleurenpixels op het zwarte gebied, waardoor het transparante gebied ongewijzigd blijft.

<img src="/words/net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-net-2" style="width:650px"/>

Rasterbewerkingen kunnen niet rechtstreeks naar vectorafbeeldingen worden omgezet. Aspose.Words emuleert rasteractiviteiten door het oppervlak van het apparaat dat door rasteroperaties wordt beïnvloed gedeeltelijk te rasteren. Met dit doel beoogt de [EmulateRasterOperations](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/) eigenschap wordt gebruikt.

{{% alert color="primary" %}}

Hoewel binaire rasterbewerkingen momenteel niet worden ondersteund en het beperkte aantal ternaire rasterbewerkingen wordt ondersteund door Aspose.Words, het kan de belangrijkste gevallen van conversie naar vector graphics direct behandelen, bijvoorbeeld, R2_BLACK, R2_WITTE, R2_NOP. Ook het rasteriseren van het oppervlak van het apparaat beïnvloedt de prestaties aanzienlijk, vooral wanneer het significante aantal raster operatie records betrokken zijn.

{{% /alert %}}

Het voorbeeld hieronder laat zien hoe Aspose.Words rendert een metafile naar een bitmap wanneer het niet mogelijk is om een aantal metafile records correct te renderen naar vector graphics:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cs" >}}

## Metafile terugvalinstellingen

Aspose.Words ondersteunt niet een aantal metafile functies die het meest complex of zeldzaam zijn. Gebruikers kunnen de [IWarningCallBack](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) interface en ontvang waarschuwingsberichten. Als Aspose.Words ontmoet niet ondersteunde functies in een metafile, het geeft een waarschuwingsbericht met [WarningSource](https://reference.aspose.com/words/net/aspose.words/warningsource/).**Metafile**. In dit geval Aspose.Words kan terugval uitvoeren naar een ander type metafile speler. De waarschuwing betreffende terugval wordt ook gegeven.

Ten eerste: Aspose.Words voert terugval van de vector metafile speler naar raster, die wordt gecontroleerd door de [RenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/renderingmode/) eigendom. Als de terugvalfunctie is uitgeschakeld, Aspose.Words probeert enkele vervangende afbeeldingen te renderen in plaats van de functies die niet worden ondersteund.

Aspose.Words metafile met succes afgespeeld naar raster met GDI+ op .NET, waardoor deze callback optie veilig is.

Ten tweede is er een optie voor EMF+ Dubbele metafile om terug te vallen van het EMF+-deel naar het EMF-deel. Het wordt gecontroleerd door [EmfPlusDualRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emfplusdualrenderingmode/). Als er een aantal problemen optreden bij het spelen van de EMF-deel, dan kan terugval naar raster worden uitgevoerd.

Wat betreft rasterbewerkingen: [EmulateRasterOperations](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/) is uitgeschakeld, dan raster operaties worden beschouwd als niet ondersteund, die leidt tot terugval naar bitmap metafile speler als het is ingeschakeld. Daarom, als je een metafile met raster operaties, maar u wilt geen raster operaties emulatie gebruiken en toch wilt krijgen de vector output met substitutie graphics, selecteer dan de [MetafileRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingmode/).**Vector**.
