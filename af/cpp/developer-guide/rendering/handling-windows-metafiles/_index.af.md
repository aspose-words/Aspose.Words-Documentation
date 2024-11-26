---
title: Hantering van Windows Meta Lêers in C++
second_title: Aspose.Words vir C++
articleTitle: Hantering Van Windows Meta Lêers
linktitle: Hantering Van Windows Meta Lêers
description: "Aspose.Words vir C++ implementeer sy eie Windows Metafile-speler Om Metafile-formaat op alle platforms te speel en ondersteun die hantering van die basiese metafile-funksies en kan terugval na'n ander tipe metafile-speler uitvoer."
type: docs
weight: 30
url: /af/cpp/handling-windows-metafiles/
timestamp: 2024-01-30-16-22-34
---

Windows Metafile format is'n beeld lêer formaat wat beide vektor en raster grafiese kan bevat. Hierdie formaat word gebruik om grafiese data in geheue of op-skyf lêers te stoor. 'n meta-lêer stoor'n lys van funksie oproepe in die Windows Grafiese Toestel Koppelvlak (GDI) wat uitgevoer moet word om die beeld op die skerm te vertoon. Die stelsel interpreteer en voer hierdie opdragte in die vertoning konteks.

Voorheen was Windows Metafile die enigste vektorbeeldformaat wat deur Microsoft Word ondersteun is. Microsoft Word ondersteun nou ook SVG formaat, maar die metafile formaat word steeds algemeen gebruik in Word dokumente. Metafile kan ook'n uitruilformaat wees vir sommige ander toepassings, soos Microsoft Visio. Die Hoofdoel van Metafile is om die uitruil van grafiese inligting tussen Windows toepassings te verseker.

Daar is 3 weergawes van Windows Metafile:

- WMF - winkels roep na 16bit GDI.
- EMF - winkels bel Na Win32 / GDI.
- EMF+ Metafile winkels bel na GDI+. EMF+ Metafile kan ook tweeledig wees, wat dieselfde grafika met beide EMF en EMF+ dele beskryf.

Die bestaande probleem met Windows Metafile is dat dit nie ondersteun word deur die meeste nie-Woord formate, waarop dokumente gewoonlik gestoor word nie. Daarom is dit nodig om die Metafile formaat om te skakel na ander raster of vektor formate. Dit is maklik om Windows Metafile om te skakel na rasterbeeld op .NET deur dit eenvoudig aan GDI+ oor te dra, maar dit is nie moontlik op ander platforms nie, aangesien selfs GDI+ nie die funksionaliteit bied om die vektorgrafika uit Metafile te onttrek nie. Om hierdie probleme op te los, implementeer Aspose.Words sy eie Windows Metafile-speler, wat In Staat is om Metafile-formaat beide vektor-en rastergrafika op alle platforms te speel.

## Beheer van die Aspose.Words Meta Lêer Speler

Die [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/) klas stel jou in staat om die metafile speler te beheer. Byvoorbeeld, jy kan bepaal hoe metafile beelde moet weergegee word met behulp van die [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/) eiendom, wat'n spesiale betekenis het wanneer die omskakeling na bitmaps (sien ook die [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/) eiendom).

Stoor na'n bitmap werk anders op ander platforms as .NET. Terwyl .NET GDI+ weergawe'n verwysing is wat byna perfek werk, selfs vir die mees komplekse metafile-formaat, kan dit op ander platforms probleme veroorsaak of glad nie ondersteun word nie.

## Ondersteun Raster Bedrywighede

Raster bedrywighede is'n komplekse meta lêer funksie, wat tans beperkte ondersteuning het. Raster operasies is beskikbaar in WMF en EMF meta lêer formate. Die EMF+ metafile formaat gebruik nie raster bedrywighede direk nie, maar kan EMF dele, ingebedde WMF of EMF metafiles bevat.

Daar is binêre en ternêre raster bedrywighede:

- Binêre raster operasies word toegepas op pen teken opdragte, soos teken lyne en kurwes. Wanneer'n lyn geteken word, word die pen kleur gekombineer met die bestemming bitmap kleur (die kleur van die ooreenstemmende pixel op die toestel oppervlak) deur die gebruik van gespesifiseerde bitwise logiese bedrywighede met hex kleur waardes. Die onderstaande beeldvoorbeeld illustreer die effek van al 16 binêre rasteroperasies wat op 20 verskillende kleurbalke toegepas word. Die vertikale kleurstawe word eers geteken, die horisontale stawe word geteken nadat elke binêre rasteroperasie toegepas is. Vir die eenvoudige gevalle, R2_BLACK trek swart, R2_NOT omkeer die kleur, R2_NOP verander nie die agtergrond nie, en R2_WHITE trek wit.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- Ternêre raster operasies toegepas word wanneer die tekening van bitmap beelde. Hulle kombineer kleure van ooreenstemmende bitmap beeld pixels, die kwas, en die bestemming bitmap deur die gebruik van bitwise logiese bedrywighede met gespesifiseerde hex kleur waardes. Een van die mees algemene doeleindes van die gebruik van ternêre raster bedrywighede is die nabootsing van deursigtigheid. Die beeld wat in die onderstaande voorbeeld verskaf word, toon hoe ikoon deursigtigheid nageboots kan word. Daar is twee tipes bitmaps: die b/w masker bitmap en die kleur bitmap. Eerstens word die masker bitmap geteken met die SRCAND raster operasie. Dit verander die ondeursigtige ikoon streek na swart en wit, laat die deursigtige streek onveranderd. Dan is die tweede bitmap geteken met die SRCINVERT raster operasie. Dit vertoon die kleurpixels op die swart streek, wat die deursigtige streek onveranderd laat.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

Raster bedrywighede kan nie direk omgeskakel word na vektorgrafika. Aspose.Words naboots raster bedrywighede deur gedeeltelik rasterisering van die toestel oppervlak geraak deur raster bedrywighede. Vir hierdie doel word die [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) eienskap gebruik.

{{% alert color="primary" %}}

Terwyl binêre raster operasies nie tans ondersteun word nie en die beperkte aantal ternêre raster operasies ondersteun word deur Aspose.Words, kan dit die basiese gevalle van omskakeling na vektorgrafika direk hanteer, byvoorbeeld, R2_BLACK, R2_WHITE, R2_NOP. Ook, rasterisering van die toestel oppervlak aansienlik beïnvloed prestasie, veral wanneer die beduidende aantal raster operasie rekords betrokke is.

{{% /alert %}}

Die voorbeeld hieronder toon hoe Aspose.Words 'n metafile na'n bitmap weergee wanneer dit nie moontlik is om sommige van die metafile rekords korrek weer te gee aan vektorgrafika nie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## Metafile Terugval Instellings

Aspose.Words ondersteun nie'n aantal metafile funksies wat die mees komplekse of skaars is nie. Gebruikers kan die [IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) koppelvlak implementeer en waarskuwingsboodskappe ontvang. As Aspose.Words nie-ondersteunde funksies in'n meta-lêer teëkom, gee dit'n waarskuwingsboodskap uit met [WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/).**Metafile**. In hierdie geval kan Aspose.Words terugval na'n ander tipe metafile-speler uitvoer. Die waarskuwingsboodskap oor terugslag word ook uitgereik.

Eerstens, Aspose.Words voer terugval uit van die vektor metafile speler na raster, wat beheer word deur die [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/) eienskap. As die terugvalfunksie gedeaktiveer is, probeer Aspose.Words om'n paar vervangingsgrafika te lewer in plaas van die funksies wat nie ondersteun word nie.

Aspose.Words speel metafile suksesvol na raster met GDI+ op .NET, wat hierdie terugbelopsie veilig maak.

Tweedens is daar'n opsie vir EMF+ Dubbele metafile om terug te val van die speel van die EMF+ deel na die EMF deel. Dit word beheer deur [EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/). As daar'n paar probleme voorkom wanneer die EMF deel gespeel word, dan kan terugval na raster ook uitgevoer word.

Soos vir raster operasies, as die [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) is uitgeskakel, dan raster operasies word beskou as nie ondersteun nie, wat terugslag na bitmap metafile player veroorsaak as dit geaktiveer is. Daarom, as jy'n meta lêer met raster bedrywighede, maar jy wil nie raster bedrywighede emulasie gebruik en tog wil die vektor uitset met vervanging grafiese kry, kies dan die [MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/).**Vector**.
