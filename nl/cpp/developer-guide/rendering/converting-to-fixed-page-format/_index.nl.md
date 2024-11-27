---
title: Omzetten naar vaste pagina-indeling in C++
second_title: Aspose.Words voor C++
articleTitle: Omzetten naar vaste pagina-indeling
linktitle: Omzetten naar vaste pagina-indeling
description: "Documenten opslaan PDF, XPS, HTML, XAML, PostScript, en PCL formaten."
type: docs
weight: 10
url: /nl/cpp/converting-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words implementeert zijn eigen pagina-layout-engine. Voordat we ingaan op de specificaties, is het de moeite waard om het document eerst op hoog niveau te bespreken.

## Wat Is een Document?

Wanneer gebruikers aan een document denken, stellen ze zich meestal een aantal papieren vellen voor met woorden, afbeeldingen, tabellen en grafieken. Documenten kunnen van verschillende soorten zijn, zoals tekst, spreadsheets, dia ' s, CAD tekeningen, stroomdiagrammen, en kunnen daarom in wezen verschillende lay-outs hebben. De meeste applicaties maken het mogelijk om documenten naar een printer te verzenden; Dit is wanneer een gebruiker het uiteindelijke beoogde uiterlijk van het document daadwerkelijk kan bekijken.

## Een Document weergeven in verschillende toepassingen

Met verschillende toepassingen voor het bekijken of publiceren van documenten kunnen gebruikers (Adobe Acrobat, XPS Viewer) openen en soms (Adobe InDesign) documenten van specifieke formaten bewerken. Deze toepassingen produceren doorgaans zogenaamde documenten in het formaat" vaste pagina". Een dergelijk documentformaat beschrijft precies waar de inhoud van een document op elke pagina wordt geplaatst. Intern bevat de indeling PDF of XPS een beschrijving van elke pagina, evenals tekeninstructies, waarin de lay-out van de inhoud op de pagina wordt gespecificeerd. Dit is vergelijkbaar met beeldformaten, die beschrijven waar de inhoud wordt weergegeven in raster-of vectorvorm.

In tegenstelling hiermee ondersteunen sommige tekstbewerkingstoepassingen het bekijken van de pagina ' s van een document niet. Bijvoorbeeld, Microsoft Kladblok ondersteunt zeer weinig andere functies dan alleen het weergeven, bewerken en afdrukken van tekst. De belangrijke opmerking hier is dat dergelijke toepassingen geen pagina ' s van het document kunnen weergeven noch een gebruiker kunnen vertellen hoeveel van hen zouden worden afgedrukt, waardoor alleen de inhoud van het document kan worden bekeken. Het document kan worden opgeslagen in platte tekst en kan worden geopend door vele andere toepassingen. Met behulp van een applicatie die het bekijken van binaire inhoud van een willekeurig bestand mogelijk maakt, kan men zien wat er in het documentbestand is opgeslagen – het is gewoon gewone tekst, Er is niets anders in.

Iets geavanceerdere tekstbewerkingstoepassingen, zoals Microsoft WordPad, slaan het document op in Rich Text Format (RTF), dat meer opmaakfuncties ondersteunt, zoals het invoegen van afbeeldingen, tekenopmaak, alineamarges en spatiëring. De indeling RTF bevat echter ook alleen de inhoud van het document en bevat geen informatie over pagina ' s.

Microsoft Word is de meest geavanceerde tekstbewerkingstoepassing in Windows vandaag. Het formatteert bestanden in de DOCX - indeling, die de inhoud van het document flexibel en uitgebreid beschrijft, waardoor gebruikers de paginagrootte, oriëntatie voor een documentsectie kunnen opgeven en, als een WYSIWYG - toepassing, zelfs documentpagina ' s op het scherm kunnen weergeven. Er is echter nog steeds geen informatie over hoe de inhoud van het document wordt weergegeven op pagina ' s die beschikbaar zijn in het documentbestand. Het documentbestand beschrijft alleen de inhoud zelf en de relatie van documentobjecten met elkaar, samen met enkele geometrische beperkingen. Als gevolg hiervan berekent Microsoft Word, voordat een document wordt weergegeven, die informatie zelf. Dit is waar een pagina layout in het spel komt.

## Zie Ook

* [Wat Is een Page Layout](/words/cpp/what-is-a-page-layout/)
* [Een pagina-indeling maken](/words/cpp/creating-a-page-layout/)
* [Een Document opslaan in een vaste paginaindeling](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Opmaakopties Opgeven](/words/cpp/specify-layout-options/)
