---
title: Werken met SmartArt koude Rendering in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met SmartArt koude Rendering
linktitle: Werken met SmartArt koude Rendering
type: docs
description: "Aspose.Words voor C++ voert SmartArt koude Rendering uit, wat betekent dat het SmartArt objecten uitlegt en rendert als de vooraf gerenderde SmartArt tekening ontbreekt of onjuist is."
weight: 330
url: /nl/cpp/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

SmartArt afbeeldingen worden gebruikt om snel en eenvoudig een visuele weergave van informatie te maken. U kiest eenvoudig uit een groot aantal lay-outs die het beste bij uw situatie passen. Dit gebruiksgemak maakt SmartArt graphics voor sommige doeleinden erg populair.

Microsoft Word genereert en slaat de vooraf gerenderde tekening samen met het `SmartArt` object op. In de meeste gevallen wordt de vooraf gerenderde tekening goed weergegeven door Aspose.Words en zijn er geen extra acties nodig. Als het document echter door andere toepassingen wordt opgeslagen, kan de vooraf gerenderde SmartArt tekening ontbreken of onjuist zijn. In dit geval moet het `SmartArt` object zelf worden aangelegd en gerenderd met behulp van Aspose.Words. We noemen dit proces de `SmartArt` Koude Rendering.

## SmartArt Koude Rendering Gebruiken

Aspose.Words kunt u een vooraf gerenderde tekening gebruiken of koude rendering uitvoeren:

* Als een vooraf gerenderde tekening beschikbaar is, gebruikt Aspose.Words deze om het `SmartArt` object weer te geven.
* Als vooraf gerenderde tekening ontbreekt, voert Aspose.Words impliciet koude rendering uit om het `SmartArt` object weer te geven.
* Als een vooraf gerenderde tekening aanwezig is, maar onjuist is, is het vereist om SmartArt koude rendering expliciet uit te voeren door [UpdateSmartArtDrawing](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/updatesmartartdrawing/) methode aan te roepen.

Het volgende codevoorbeeld toont hoe u tekeningen voor alle diagrammen in het document kunt bijwerken:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cpp" >}}

## Ondersteuning voor standaard SmartArt lay-outs

Momenteel wordt slechts een beperkt aantal standaard Microsoft Word SmartArt lay-outs ondersteund. Ook worden sommige van deze lay-outs gedeeltelijk ondersteund, wat betekent dat belangrijke knooppunten en vormen van het diagram worden weergegeven, maar er kunnen verschillen zijn tussen Microsoft Word en Aspose.Words diagramlay-out.

In de onderstaande tabel worden de volledig en gedeeltelijk ondersteunde lay-outs weergegeven:

| Groep SmartArt Lay-Outs | Volledig ondersteunde lay-outs | Gedeeltelijk ondersteunde lay-outs |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Basis Bloklijst</li><li>Afwisselende Zeshoeken</li><li>Verticale Lijst Met Opsommingstekens</li><li>Verticale Lijst</li><li>Lijst Met Variërende Breedte</li><li>Horizontale Opsommingslijst</li><li>Gegroepeerde Lijst</li><li>Verticale Bloklijst</li><li>Verticale Chevronlijst</li><li>Verticale Pijl Lijst</li><li>Trapezium Lijst</li><li>Tabel Lijst</li><li>Piramide Lijst</li><li>Doellijst</li></ul> | <ul><li>Lijst Met Lijnen</li><li>Verticale Bracket Lijst</li><li>Tabbladlijst</li><li>Gestapelde Lijst</li><li>Verticale Accentlijst</li><li>Verticale Cirkel Lijst</li></ul> |
| `Process` | <ul><li>Basisproces</li><li>Accent Proces</li><li>Continu Blokproces</li><li>Pijlproces Verhogen</li><li>Convergerende Tekst</li><li>Basis Tijdlijn</li><li>Basis Chevron Proces</li><li>Chevron Accent Proces</li><li>Gesloten Chevron Proces</li><li>Chevron Lijst</li><li>Verticaal Proces</li><li>Gestapeld Proces</li><li>Proceslijst</li><li>Basis Buigproces</li><li>Herhalend Buigproces</li><li>Gedetailleerd Proces</li><li>Pijl Omhoog</li><li>Aflopend Proces</li><li>Circulair Buigproces</li></ul> | <ul><li>Proces Opvoeren</li><li>Stap Naar Beneden Proces</li><li>Wisselstroom</li><li>Proces Van Toenemende Cirkel</li><li>Pie proces</li><li>Onderling Verbonden Blokproces</li><li>Proces Pijlen</li><li>Cirkel Accent Tijdlijn</li><li>Cirkelproces</li><li>Sub Stap Proces</li><li>Gefaseerd Proces</li><li>Willekeurig naar resultaat proces</li><li>Cirkel Pijl Proces</li></ul> |
| `Cycle` |  | <ul><li>Gesegmenteerde Cyclus</li><li>Hexagon Radial</li></ul> |
| `Hierarchy` |  | <ul><li>Tabel Hiërarchie</li><li>Architectuur Lay-Out</li></ul> |
| `Relationship` | <ul><li>Balans</li><li>Trechter</li><li>Versnelling</li><li>Plus En Min</li><li>Pijl Lint</li><li>Tegenwicht Pijlen</li><li>Tegengestelde Pijlen</li><li>Genest Doelwit</li><li>Basisdoelstelling</li><li>Basis Pie</li><li>Basic Venn</li><li>Gestapelde Venn</li><li>Onderling Verbonden Ring</li></ul> | <ul><li>Cirkel Relatie</li><li>Tegengestelde Ideeën</li><li>Vergelijking</li><li>Verticale Vergelijking</li><li>Lineaire Venn</li></ul> |
| `Matrix` | <ul><li>Basismatrix</li><li>Met De Titel Matrix</li><li>Grid Matrix</li><li>Cyclusmatrix</li></ul> |  |
| `Pyramid` |  | <ul><li>Gesegmenteerde Piramide</li></ul> |

## Vergelijking van SmartArt Rendering in Aspose.Words en Microsoft

De onderstaande tabel toont voorbeeldfoto ' s van Aspose.Words koude weergave van sommige standaard lay-outs in vergelijking met Microsoft Word output:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
