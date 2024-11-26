---
title: Tabel Overzicht
second_title: Aspose.Words voor .NET
articleTitle: Tabel Overzicht
linktitle: Tabel Overzicht
description: "Werk met tabellen en hun componenten zoals cellen, rijen, kolommen in Aspose.Words voor .NET. Hoe te werken met tabellen in C#."
type: docs
weight: 10
url: /nl/net/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words is een klassebibliotheek ontworpen voor server-side verwerking van documenten in verschillende formaten PDF, HTML, verschillende Microsoft Word formaten en andere

* tabellen in een document worden bewaard tijdens open/opslaan en conversies
* Het is mogelijk om tabel, inhoud en de opmaak te bewerken en vervolgens de wijzigingen naar een bestand te exporteren in een formaat dat tabellen ondersteunt

In dit artikel zullen we meer te weten komen over tabelstructuur, cellen, rijen en kolommen ondersteund door Aspose.Words, en de details van het werken met dergelijke tabellen.

## Tabelstructuur

Zoals reeds vermeld, bestaat de tabel uit elementen zoals **Cell**, **Row** en **Column**. Dit zijn concepten die alle tabellen in het algemeen gemeen hebben, ongeacht het documentformaat.

Dit is een veel voorkomend voorbeeld van een tabel in een Microsoft Word document:

![tables-overview-aspose-words-net-1](/words/net/table-overview/tables-overview-1.png)

### Tabelnodes

Een tabel van elk ingeladen document Aspose.Words wordt geïmporteerd als a **Tabelknoop**. De tabel is te vinden als kind van:

- hoofdtekst
- een inlineverhaal zoals een opmerking of een voetnoot
- cellen wanneer een tabel in een andere tabel is genesteld

{{% alert color="primary" %}}

Merk op dat tabellen kunnen worden genesteld in andere tabellen op elke diepte.

{{% /alert %}}

### Tabelinhoud

De tabel node bevat geen echte inhoud in plaats daarvan, het is een container voor andere dergelijke nodes die de inhoud vormen:

- **Table** bevat veel **Row** knooppunten. De tabel bevat alle gebruikelijke knooppuntelementen, zodat u de tabel in het document vrij kunt verplaatsen, wijzigen en verwijderen.
- **Row** vertegenwoordigt een enkele tabel rij en bevat veel **Cell** knooppunten. Bovendien heeft de **Row** verstrekt elementen die bepalen hoe de rij wordt weergegeven, zoals hoogte en uitlijning.
- **Cell** Is wat bevat de true inhoud zichtbaar in de tabel en bestaat uit een **Paragraph** en andere blokniveauknooppunten. Bovendien kunnen cellen geneste tabellen bevatten.

![tables-overview-aspose-words-net-2](/words/net/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

U kunt de structuur van de tabelnodes controleren in een document met behulp van de **DocumentExplorer**.

{{% /alert %}}

### Paragraaf leeg na tabel

De afbeelding hierboven laat zien dat het document een tabel van meerdere rijen bevat, die op zijn beurt uit twee cellen bestaat. Elk van de twee cellen bevat een alinea, dat is de container voor de geformatteerde tekst van de cel.

Er zij ook op gewezen dat het scheiden van twee opeenvolgende tabellen in een document ten minste één lege paragraaf na de tabel vereist. Zonder een dergelijke paragraaf zouden opeenvolgende tabellen in één worden samengevoegd. Dit gedrag is identiek in beide Microsoft Word en Aspose.Words.

In Aspose.Words, alle klassen en eigenschappen met betrekking tot tabellen zijn opgenomen in de [Aspose.Words.Tables](https://reference.aspose.com/words/net/aspose.words.tables/) naamruimte.

## Zie ook

* [Aspose.Words Document Object Model (DOM)](/words/nl/net/aspose-words-document-object-model/)
* [Logische Nodesniveaus in een document](/words/nl/net/logical-levels-of-nodes-in-a-document/)
