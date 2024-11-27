---
title: Tabel Overzicht
second_title: Aspose.Words voor C++
articleTitle: Tabel Overzicht
linktitle: Tabel Overzicht
description: "Werk met tabellen en hun componenten, zoals cellen, rijen, kolommen in Aspose.Words voor C++. Hoe te werken met tabellen in C++."
type: docs
weight: 10
url: /nl/cpp/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words is een klassenbibliotheek die is ontworpen voor server-side verwerking van documenten in verschillende formaten – PDF, HTML, verschillende Microsoft Word formaten en andere-en ondersteunt tabellen op de volgende manieren:

* tabellen in een document worden bewaard tijdens openen / opslaan en conversies
* het is mogelijk om de tabel, de inhoud en de opmaak ervan te bewerken en de wijzigingen vervolgens te exporteren naar een bestand in een indeling die tabellen ondersteunt

In dit artikel leren we meer over tabelstructuur, cellen, rijen en kolommen die worden ondersteund door Aspose.Words en de details van het werken met dergelijke tabellen.

## Tabelstructuur

Zoals reeds vermeld, bestaat de tabel uit elementen als **Cell**, **Row** en **Column**. Dit zijn concepten die gemeenschappelijk zijn voor alle tabellen in het algemeen, ongeacht het documentformaat.

Dit is een veel voorkomend voorbeeld van een tabel in een Microsoft Word document:

![tables-overview-aspose-words-cpp-1](tables-overview-1.png)

### Tabel Nodes

Een tabel uit een document dat in Aspose.Words is geladen, wordt geïmporteerd als een **Table node**. De tafel is te vinden als een kind van:

- hoofdtekst
- een inline verhaal zoals een opmerking of een voetnoot
- cellen wanneer een tabel is genest in een andere tabel

{{% alert color="primary" %}}

Houd er rekening mee dat tabellen tot op elke diepte in andere tabellen kunnen worden genesteld.

{{% /alert %}}

### Tabel Inhoud

De tabelknooppunt bevat geen echte inhoud in plaats daarvan is het een container voor andere dergelijke knooppunten die de inhoud vormen:

- **Table** bevat veel **Row** knooppunten. De tabel bevat alle gebruikelijke knooppuntelementen, zodat u de tabel in het document vrij kunt verplaatsen, wijzigen en verwijderen.
- **Row** vertegenwoordigt een enkele tabelrij en bevat veel **Cell** knooppunten. Daarnaast bevat de **Row** elementen die bepalen hoe de rij wordt weergegeven, zoals hoogte en uitlijning.
- **Cell** is wat de ware inhoud bevat die zichtbaar is in de tabel en bestaat uit een **Paragraph** en andere knooppunten op blokniveau. Bovendien kunnen cellen geneste tabellen bevatten.

![tables-overview-aspose-words-cpp-2](tables-overview-2.png)

{{% alert color="primary" %}}

U kunt de structuur van tabelknooppunten in een document controleren met behulp van **DocumentExplorer**.

{{% /alert %}}

### Lege alinea na tabel

De bovenstaande afbeelding laat zien dat het document een tabel van meerdere rijen bevat, die op zijn beurt uit twee cellen bestaat. Elk van de twee cellen bevat een alinea, die de container is voor de opgemaakte tekst van de cel.

Het is ook vermeldenswaard dat het scheiden van twee opeenvolgende tabellen in een document ten minste één lege alinea na de tabel vereist. Zonder een dergelijke paragraaf zouden opeenvolgende tabellen tot één worden samengevoegd. Dit gedrag is identiek in zowel Microsoft Word als Aspose.Words.

In Aspose.Words zijn alle klassen en eigenschappen gerelateerd aan tabellen opgenomen in de [Aspose.Words.Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/) naamruimte.

## Zie Ook

* [Aspose.Words Document Object Model (DOM)](/words/cpp/aspose-words-document-object-model/)
* [Logische niveaus van knooppunten in een Document](/words/cpp/logical-levels-of-nodes-in-a-document/)
