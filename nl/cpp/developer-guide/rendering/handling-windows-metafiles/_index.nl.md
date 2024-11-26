---
title: Windows Metafiles verwerken in C++
second_title: Aspose.Words voor C++
articleTitle: Windows Metafiles Verwerken
linktitle: Windows Metafiles Verwerken
description: "Aspose.Words for C++ implementeert zijn eigen Windows Metafile player om Metafile-formaat op alle platforms af te spelen en ondersteunt de afhandeling van de basis metafile-functies en kan fallback uitvoeren naar een ander type metafile player."
type: docs
weight: 30
url: /nl/cpp/handling-windows-metafiles/
timestamp: 2024-01-30-16-22-34
---

Windows Metafile format is een afbeeldingsbestandsindeling die zowel vector-als rasterafbeeldingen kan bevatten. Dit formaat wordt gebruikt om grafische gegevens op te slaan in het geheugen of op de schijf bestanden. Een metafile slaat een lijst met functieoproepen op in de Windows grafische apparaatinterface (GDI) die moet worden uitgevoerd om de afbeelding op het scherm weer te geven. Het systeem interpreteert en voert deze commando ' s uit in de weergavecontext.

Voorheen was Windows Metafile het enige vectorbeeldformaat dat door Microsoft Word werd ondersteund. Microsoft Word ondersteunt nu ook SVG - indeling, maar het metafile-formaat wordt nog steeds vaak gebruikt in Word - documenten. Metafile kan ook een uitwisselingsformaat zijn voor sommige andere toepassingen, zoals Microsoft Visio. In wezen is het belangrijkste doel van Metafile om de uitwisseling van grafische informatie tussen Windows applicaties te garanderen.

Er zijn 3 versies van Windows Metafile:

- WMF – stores bellen naar 16bit GDI.
- EMF – stores bellen naar Win32 / GDI.
- EMF+ Metafile slaat call to GDI+op. EMF+ Metafile kan ook duaal zijn, waarbij dezelfde afbeeldingen worden beschreven met zowel EMF als EMF+ delen.

Het bestaande probleem met Windows Metafile is dat het niet wordt ondersteund door de meeste niet-Word formaten, waarin documenten meestal worden opgeslagen. Daarom is het nodig om het Metafile-formaat te converteren naar andere raster-of vectorformaten. Het is gemakkelijk om Windows Metafile om te zetten naar rasterafbeelding op .NET door het eenvoudig door te geven aan GDI+, maar het is niet mogelijk op andere platforms, omdat zelfs GDI+ niet de functionaliteit biedt om de vectorafbeeldingen uit Metafile te extraheren. Om deze problemen op te lossen, implementeert Aspose.Words zijn eigen Windows Metafile player, die in staat is om Metafile-indeling zowel vector-als rastergrafieken op alle platforms af te spelen.

## Het besturen van de Aspose.Words Metafile Player

De [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/) klasse stelt u in staat om de metafile player te besturen. U kunt bijvoorbeeld bepalen hoe metafile-afbeeldingen moeten worden weergegeven met behulp van de Eigenschap [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/), die een speciale betekenis heeft bij het converteren naar bitmaps (zie ook de eigenschap [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/)).

Opslaan in een bitmap werkt anders op andere platforms dan .NET. Terwijl .NET GDI+ rendering een referentie is die bijna perfect werkt, zelfs voor de meest complexe metafile-indeling, kan het op andere platforms problemen veroorzaken of helemaal niet worden ondersteund.

## Ondersteuning Van Rasterbewerkingen

Rasterbewerkingen is een complexe metafile-functie, die momenteel beperkte ondersteuning heeft. Rasterbewerkingen zijn beschikbaar in WMF en EMF metafile formaten. De indeling EMF+ metafile Gebruikt geen rasterbewerkingen rechtstreeks, maar kan EMF delen, ingesloten WMF of EMF Metafile bevatten.

Er zijn binaire en ternaire rasteroperaties:

- Binaire rasterbewerkingen worden toegepast op pentekencommando ' s, zoals het tekenen van lijnen en curven. Bij het tekenen van een lijn wordt de kleur van de pen gecombineerd met de kleur van de doelbitmap (de kleur van de overeenkomstige pixel op het oppervlak van het apparaat) door gebruik te maken van gespecificeerde bitwise logische bewerkingen met hex-kleurwaarden. Het onderstaande afbeeldingsvoorbeeld illustreert het effect van alle 16 binaire rasterbewerkingen toegepast op 20 verschillende kleurbalken. De verticale kleurbalken worden eerst getekend, de horizontale balken worden getekend na elke binaire rasterbewerking. Voor de eenvoudige gevallen tekent R2_BLACK zwart, R2_NOT keert de kleur om, R2_NOP verandert de achtergrond niet en R2_WHITE tekent Wit.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- Ternaire rasterbewerkingen worden toegepast bij het tekenen van bitmapafbeeldingen. Ze combineren kleuren van overeenkomstige bitmapbeeldpixels, het penseel en de doelbitmap door bitwise logische bewerkingen met gespecificeerde hex-kleurwaarden te gebruiken. Een van de meest voorkomende doeleinden van het gebruik van ternaire rasterbewerkingen is het emuleren van transparantie. De afbeelding in het onderstaande voorbeeld toont aan hoe icontransparantie kan worden geëmuleerd. Er zijn twee soorten bitmaps: de b / w masker bitmap en de kleur bitmap. Eerst wordt de maskerbitmap getekend met de SRCAND rasterbewerking. Het verandert het ondoorzichtige pictogramgebied in zwart-wit, waardoor het transparante gebied onveranderd blijft. Vervolgens wordt de tweede bitmap getekend met de SRCINVERT rasterbewerking. Het toont de kleurpixels op het zwarte gebied, waarbij het transparante gebied onveranderd blijft.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

Rasterbewerkingen kunnen niet rechtstreeks worden geconverteerd naar vectorafbeeldingen. Aspose.Words emuleert rasterbewerkingen door het oppervlak van het apparaat dat door rasterbewerkingen wordt beïnvloed, gedeeltelijk te rasteren. Hiervoor wordt de eigenschap [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) gebruikt.

{{% alert color="primary" %}}

Hoewel binaire rasterbewerkingen momenteel niet worden ondersteund en het beperkte aantal ternaire rasterbewerkingen wordt ondersteund door Aspose.Words, kan het de basisgevallen van conversie naar vectorgrafieken rechtstreeks verwerken, bijvoorbeeld, R2_BLACK, R2_WHITE, R2_NOP. Ook het rasteren van het oppervlak van het apparaat heeft een aanzienlijke invloed op de prestaties, vooral wanneer het gaat om het aanzienlijke aantal rasterbewerkingsrecords.

{{% /alert %}}

Het onderstaande voorbeeld toont aan hoe Aspose.Words een metafile naar een bitmap weergeeft wanneer het niet mogelijk is om een aantal van de metafile records correct naar vectorafbeeldingen weer te geven:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## Metafile Fallback Instellingen

Aspose.Words biedt geen ondersteuning voor een aantal metafile-functies die het meest complex of zeldzaam zijn. Gebruikers kunnen de [IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) interface implementeren en waarschuwingsberichten ontvangen. Als Aspose.Words niet-ondersteunde functies tegenkomt in een metafile, geeft het een waarschuwingsbericht uit met [WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/).**Metafile**. In dit geval kan Aspose.Words fallback uitvoeren naar een ander type metafile player. Het waarschuwingsbericht met betrekking tot de terugval wordt ook uitgegeven.

Ten eerste voert Aspose.Words een terugval uit van de vector metafile player naar raster, die wordt bestuurd door de eigenschap [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/). Als de terugvalfunctie is uitgeschakeld, probeert Aspose.Words een aantal vervangende afbeeldingen weer te geven in plaats van de functies die niet worden ondersteund.

Aspose.Words speelt met succes metafile naar raster af met behulp van GDI+ op .NET, waardoor deze callback-optie veilig is.

Ten tweede is er een optie voor EMF+ Dual metafile om terug te vallen van het spelen van het EMF+ deel naar het EMF deel. Het wordt bestuurd door [EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/). Als er een aantal problemen optreden bij het afspelen van het EMF deel, dan kan fallback naar raster ook worden uitgevoerd.

Wat rasterbewerkingen betreft, als [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) is uitgeschakeld, worden rasterbewerkingen als niet ondersteund beschouwd, wat een terugval naar bitmap metafile player veroorzaakt als deze is ingeschakeld. Als u daarom een metafile met rasterbewerkingen hebt, maar u wilt geen rasterbewerkingen emulatie gebruiken en toch de vectoruitvoer met substitutiegrafieken wilt krijgen, selecteert u de [MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/).**Vector**.
