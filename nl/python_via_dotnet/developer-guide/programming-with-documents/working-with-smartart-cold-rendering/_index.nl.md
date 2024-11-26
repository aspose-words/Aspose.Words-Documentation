---
title: Werken met Smart Art Cold Rendering
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met Smart Art Cold Rendering
linktitle: Werken met Smart Art Cold Rendering
type: docs
description: "Aspose.Words voor Python via .NET voert Smart uit Art Cold Rendering, wat betekent dat het SmartArt objecten legt en maakt als de SmartArt tekening ontbreekt of onjuist is."
weight: 330
url: /nl/python-net/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

SmartArt graphics worden gebruikt om snel en gemakkelijk een visuele weergave van informatie te creëren. U kiest gewoon uit een groot aantal lay-outs die het beste bij uw situatie past. Dit gebruiksgemak maakt SmartArt graphics vrij populair voor sommige doeleinden.

Microsoft Word genereert en slaat de vooraf gerenderde tekening samen met de `SmartArt` object. In de meeste gevallen wordt de voorgeschrapte tekening goed weergegeven door Aspose.Words en er zijn geen aanvullende maatregelen nodig. Indien het document echter door andere toepassingen wordt opgeslagen, kan de vooraf ingediende SmartArt-tekening ontbreken of onjuist zijn. In dit geval `SmartArt` object zelf moet worden aangelegd en weergegeven met behulp van Aspose.Words. Wij noemen dit proces de `SmartArt` Koude Rendering.

## Gebruik van Smart Art Cold Rendering

Aspose.Words kunt u gebruik maken van een pre-rendred tekening of het uitvoeren van koude rendering:

* Indien een voorgeschrapte tekening beschikbaar is, Aspose.Words gebruikt om de `SmartArt` object.
* Indien een vooraf opgestelde tekening ontbreekt, Aspose.Words impliciet voert koude rendering om de `SmartArt` object.
* Als een voorgescheurde tekening aanwezig is maar onjuist is, is het noodzakelijk om SmartArt koude rendering expliciet uit te voeren door te bellen [update_smart_art_drawing](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/update_smart_art_drawing/) methode.

Het volgende voorbeeld van code laat zien hoe tekeningen voor alle diagrammen in het document kunnen worden bijgewerkt:

**.NET**
{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-UpdateSmartArtDrawing.py" >}}

## Ondersteuning voor standaard SmartArt-indelingen

Momenteel slechts een beperkt aantal standaard Microsoft Word SmartArt lay-outs worden ondersteund. Ook worden sommige van deze lay-outs gedeeltelijk ondersteund, wat betekent dat belangrijke knooppunten en vormen van het diagram worden weergegeven, maar er kunnen verschillen zijn tussen de Microsoft Word en Aspose.Words schema-indeling.

Onderstaande tabel geeft een overzicht van de volledig en gedeeltelijk ondersteunde indelingen:

|  Slim Kunstindelingen Group |  Volledig ondersteunde layouts |  Gedeeltelijk ondersteunde indelingen |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Basis Bloklijst</li><li>Wisselende hexagonen</li><li>Verticale Kogellijst</li><li>Verticale kaderlijst</li><li>Varierende breedtelijst</li><li>Horizontale kogellijst</li><li>Grouprd Lijst</li><li>Verticale bloklijst</li><li>Verticale Chevron-lijst</li><li>Verticale pijlenlijst</li><li>Trapezoïdelijst</li><li>Tabellijst</li><li>Piramidelijst</li><li>Doellijst</li></ul> |  <ul><li>Gelijnde lijst</li><li>Verticale haaklijst</li><li>Tabbladlijst</li><li>Gestapelde lijst</li><li>Verticale accentlijst</li><li>Verticale cirkellijst</li></ul> |
|  `Process`  |  <ul><li>Basisproces</li><li>Accent-proces</li><li>Continu blokproces</li><li>Pijlproces vergroten</li><li>Convergerende tekst</li><li>Basistijdlijn</li><li>Basis Chevron-proces</li><li>Chevron Accent-proces</li><li>Gesloten Chevronproces</li><li>Chevron-lijst</li><li>Verticaal proces</li><li>Vertragen proces</li><li>Proceslijst</li><li>Basis Buigproces</li><li>Herhaling van het Buigproces</li><li>Gedetailleerde procedure</li><li>Pijl naar boven</li><li>Aflopend proces</li><li>Circulaire buigen</li></ul> |  <ul><li>Stap omhoog proces</li><li>Stap omlaag proces</li><li>Wisselstroom</li><li>Meer cirkelproces</li><li>Pieproces</li><li>Gekoppeld blokproces</li><li>Procespijlen</li><li>Tijdlijn Circle Accent</li><li>Cirkelproces</li><li>Substapproces</li><li>Gefaseerd proces</li><li>Willekeurig tot resultaat proces</li><li>Cirkelpijlproces</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Gesegmenteerde cyclus</li><li>Zeshoekstraal</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Tafelhiërarchie</li><li>Architectuuropmaak</li></ul> |
|  `Relationship`  |  <ul><li>Saldo</li><li>Trechter</li><li>Vistuig</li><li>Plus en minus</li><li>Pijllint</li><li>Pijlen tegenwicht</li><li>Opponeren van pijlen</li><li>Geneste doel</li><li>Basisdoelstelling</li><li>Basistaart</li><li>Basis Venn</li><li>Gestapelde Venn</li><li>Verbonden ring</li></ul> |  <ul><li>Cirkelrelatie</li><li>Oppositieideeën</li><li>Vergelijking</li><li>Verticale vergelijking</li><li>Lineaire Venn</li></ul> |
|  `Matrix`  |  <ul><li>Basismatrix</li><li>Titel Matrix</li><li>Rastermatrix</li><li>Cycle Matrix</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Gesegmenteerde piramide</li></ul> |

## Vergelijking van SmartArt Rendering in Aspose.Words en Microsoft

De tabel hieronder toont voorbeelden van Aspose.Words Koud Het renderen van een aantal standaard layouts in vergelijking met Microsoft Word uitvoer:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |   <img src="/words/python-net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/>  |   <img src="/words/python-net/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/>  |
|   **Circular Bending Process**   |   <img src="/words/python-net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/>  |   <img src="/words/python-net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/>  |
|   **Repeating Bending Process**  |   <img src="/words/python-net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/>  |   <img src="/words/python-net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/>  |
|   **Trapezoid List**             |   <img src="/words/python-net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/>  |   <img src="/words/python-net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/>  |
