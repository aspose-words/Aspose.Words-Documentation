---
title: Tabel Overzicht
second_title: Aspose.Words voor Java
articleTitle: Tabel Overzicht
linktitle: Tabel Overzicht
description: "Werk met tabellen en hun componenten zoals cellen, rijen, kolommen in Aspose.Words voor Java. Hoe te werken met tabellen in Java."
type: docs
weight: 10
url: /nl/java/table-overview/
---

Aspose.Words is een klasse bibliotheek ontworpen voor de server-side verwerking van documenten in verschillende formaten PDF, HTML, verschillende Microsoft Word formaten en andere

* tabellen in een document worden bewaard tijdens open/opslaan en conversies
* het is mogelijk om tabel, inhoud en de opmaak te bewerken, en vervolgens de wijzigingen naar een bestand te exporteren in een formaat dat tabellen ondersteunt

In dit artikel zullen we meer te weten komen over tabelstructuur, cellen, rijen en kolommen ondersteund door Aspose.Words, en de details van het werken met dergelijke tabellen.

## Tabelstructuur

Zoals reeds vermeld, bestaat de tabel uit elementen zoals **Cell**, **Row** en **Column**. Dit zijn concepten die alle tabellen in het algemeen gemeen hebben, ongeacht het documentformaat.

Dit is een veel voorkomend voorbeeld van een tabel gevonden in een Microsoft Word document:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### Tabelnodes

Een tabel van elk ingeladen document Aspose.Words wordt geïmporteerd als a **Tabelknoop**. De tafel is te vinden als kind van:

- hoofdtekst
- een inlineverhaal zoals een commentaar of een voetnoot
- cellen wanneer een tabel in een andere tabel is genesteld

{{% alert color="primary" %}}

Merk op dat tabellen kunnen worden genesteld in andere tabellen op elke diepte.

{{% /alert %}}

### Tabelinhoud

De tabel node bevat geen echte inhoud

- **Table** bevat veel **Row** knooppunten. De tabel bevat alle gebruikelijke knooppuntelementen, zodat u de tabel in het document vrij kunt verplaatsen, wijzigen en verwijderen.
- **Row** vertegenwoordigt een enkele tabel rij en bevat veel **Cell** knooppunten. Bovendien heeft de **Row** geeft elementen die bepalen hoe de rij wordt weergegeven, zoals hoogte en uitlijning.
- **Cell** Is wat bevat de true inhoud zichtbaar in de tabel en bestaat uit een **Paragraph** en andere blokniveauknooppunten. Bovendien kunnen cellen geneste tabellen bevatten.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

U kunt de structuur van tabelnodes controleren in een document met behulp van de **DocumentExplorer**.

{{% /alert %}}

### Paragraaf leeg na tabel

De afbeelding hierboven laat zien dat het document bevat een tabel van meerdere rijen, die op zijn beurt bestaat uit twee cellen. Elk van de twee cellen bevat een alinea, dat is de container voor de geformatteerde tekst van de cel.

Het is ook vermeldenswaard dat het scheiden van twee opeenvolgende tabellen in een document ten minste één lege paragraaf na de tabel vereist. Zonder een dergelijke paragraaf zouden opeenvolgende tabellen in één worden samengevoegd. Dit gedrag is identiek in beide Microsoft Word en Aspose.Words.

Aspose.Words een aantal klassen heeft die verband houden met tabellen [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), en anderen.

## Zie ook

* [Aspose.Words Document Object Model (DOM)](/words/nl/java/aspose-words-document-object-model/)
* [Logische Nodesniveaus in een document](/words/nl/java/logical-levels-of-nodes-in-a-document/)