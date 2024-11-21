---
title: Werk met SmartArt Koue Weergawe in Java
second_title: Aspose.Words vir Java
articleTitle: Werk met SmartArt Koue Weergawe
linktitle: Werk met SmartArt Koue Weergawe
type: docs
description: "Aspose.Words vir Java voer SmartArt Koue Weergawe uit, wat beteken dat dit SmartArt voorwerpe uitlê en weergee as die vooraf gerenderde SmartArt tekening ontbreek of verkeerd is."
weight: 330
url: /af/java/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

SmartArt grafika word gebruik om vinnig en maklik'n visuele voorstelling van inligting te skep. U kies eenvoudig uit'n groot aantal uitlegte wat die beste by u situasie pas. Hierdie gebruiksgemak maak SmartArt grafika baie gewild vir sommige doeleindes.

Microsoft Word genereer en stoor die vooraf gerenderde tekening saam met die `SmartArt` voorwerp. In die meeste gevalle word die vooraf gerenderde tekening goed weergegee deur Aspose.Words en geen bykomende aksies is nodig nie. As die dokument egter deur ander toepassings gestoor word, kan die vooraf gerenderde SmartArt tekening ontbreek of verkeerd wees. In hierdie geval moet die `SmartArt` voorwerp self uitgelê en weergegee word met behulp van Aspose.Words. Ons noem hierdie proses die `SmartArt` Koue Weergawe.

## Gebruik SmartArt Koue Weergawe

Aspose.Words laat jou toe om'n vooraf gerenderde tekening te gebruik of koue weergawe uit te voer:

* As'n vooraf gerenderde tekening beskikbaar is, gebruik Aspose.Words dit om die `SmartArt` voorwerp te lewer.
* As vooraf gerenderde tekening ontbreek, voer Aspose.Words implisiet koue weergawe uit om die `SmartArt` voorwerp te lewer.
* As'n vooraf gerenderde tekening teenwoordig is, maar verkeerd is, is dit nodig om SmartArt koue weergawe eksplisiet uit te voer deur [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) metode te noem.

Die volgende kode voorbeeld toon hoe om tekeninge vir alle diagramme in die dokument te werk:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Ondersteuning Vir Standaard SmartArt Uitlegte

Tans word slegs'n beperkte aantal standaard Microsoft Word SmartArt uitlegte ondersteun. Sommige van hierdie uitlegte word ook gedeeltelik ondersteun, wat beteken dat beduidende nodusse en vorms van die diagram weergegee word, maar daar kan verskille wees tussen Microsoft Word en Aspose.Words diagram uitleg.

Die tabel hieronder bevat die ten volle en gedeeltelik ondersteun uitlegte:

| SmartArt Uitlegte Groep | Ten volle ondersteun uitlegte | Gedeeltelik ondersteun uitlegte |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Basiese Bloklys</li><li>Veranderlike Seshoeke</li><li>Vertikale Koeëllys</li><li>Vertikale Bokslys</li><li>Veranderlike Wydte Lys</li><li>Horisontale Koeëllys</li><li>Gegroepeerde Lys</li><li>Vertikale Bloklys</li><li>Vertikale Chevron Lys</li><li>Vertikale Pyltjie Lys</li><li>Trapeziumlys</li><li>Tabellys</li><li>Piramide Lys</li><li>Teikenlys</li></ul> | <ul><li>Gevoer Lys</li><li>Vertikale Hakie Lys</li><li>Tablys</li><li>Gestapelde Lys</li><li>Vertikale Aksentlys</li><li>Vertikale Sirkel Lys</li></ul> |
| `Process` | <ul><li>Basiese Proses</li><li>Aksentproses</li><li>Deurlopende Blokproses</li><li>Toenemende Pylproses</li><li>Konvergerende Teks</li><li>Basiese Tydlyn</li><li>Basiese Chevron Proses</li><li>Chevron Aksent Proses</li><li>Geslote Chevron Proses</li><li>Chevron Lys</li><li>Vertikale Proses</li><li>Verskillende Prosesse</li><li>Proses Lys</li><li>Basiese Buigproses</li><li>Herhalende Buigproses</li><li>Gedetailleerde Proses</li><li>Opwaarts Pyl</li><li>Dalende Proses</li><li>Sirkulêre Buigproses</li></ul> | <ul><li>Stap Up Proses</li><li>Stap Af Proses</li><li>Veranderlike Vloei</li><li>Toenemende Sirkelproses</li><li>Pie Proses</li><li>Interkonnekteerde Blokproses</li><li>Proses Pyle</li><li>Tydlyn Van Sirkel Aksent</li><li>Sirkelproses</li><li>Substap Proses</li><li>Gefaseerde Proses</li><li>Willekeurige Proses</li><li>Sirkel Pyl Proses</li></ul> |
| `Cycle` |  | <ul><li>Segmenteerde Siklus</li><li>Seshoek Radiale</li></ul> |
| `Hierarchy` |  | <ul><li>Tabel Hiërargie</li><li>Argitektuur Uitleg</li></ul> |
| `Relationship` | <ul><li>Balans</li><li>Trechter</li><li>Toerusting</li><li>Plus En Minus</li><li>Pyltjie Lint</li><li>Teenbalanspyle</li><li>Opponerende Pyle</li><li>Gesponsorde Teiken</li><li>Basiese Teiken</li><li>Basiese Pie</li><li>Basiese Venn</li><li>Gestapelde Venn</li><li>Interkonnekteerde Ring</li></ul> | <ul><li>Sirkelverhouding</li><li>Opponerende Idees</li><li>Vergelyking</li><li>Vertikale Vergelyking</li><li>Lineêre Venn</li></ul> |
| `Matrix` | <ul><li>Basiese Matriks</li><li>Getitelde Matriks</li><li>Roostermatriks</li><li>Siklusmatriks</li></ul> |  |
| `Pyramid` |  | <ul><li>Segmenteerde Piramide</li></ul> |

## Vergelyking van SmartArt Weergawe in Aspose.Words en Microsoft

Die tabel hieronder toon voorbeeld foto's van Aspose.Words Koue Weergawe van'n paar standaard uitlegte in vergelyking met Microsoft Word uitset:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
