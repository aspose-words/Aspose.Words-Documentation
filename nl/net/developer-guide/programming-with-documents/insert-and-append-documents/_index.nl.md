---
title: Documenten invoegen en toevoegen in C#
second_title: Aspose.Words voor .NET
articleTitle: Documenten invoegen en toevoegen
linktitle: Documenten invoegen en toevoegen
description: "Documenten combineren in één: een document invoegen of toevoegen aan een nieuw of bestaand document met behulp van vinden en vervangen, merge-veld, bladwijzer, of gewoon aan het document eindigen in C#."
type: docs
weight: 80
url: /nl/net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Soms is het nodig om meerdere documenten te combineren in een. U kunt dit handmatig of u kunt gebruiken Aspose.Words functie invoegen of toevoegen.

Met de invoegoperatie kunt u de inhoud van eerder aangemaakte documenten in een nieuwe of bestaande invoegen.

Met de functie toevoegen kunt u een document alleen aan het einde van een ander document toevoegen.

Dit artikel legt uit hoe je een document op verschillende manieren invoegt of toevoegt aan een ander en beschrijft de gemeenschappelijke eigenschappen die je kunt toepassen tijdens het invoegen of toevoegen van documenten.

## Document invoegen {#insert-a-document}

Zoals hierboven vermeld, in Aspose.Words een document wordt weergegeven als een boom van knooppunten, en de werking van het invoegen van een document in een ander document is het kopiëren van knooppunten van de eerste documentboom naar de tweede.

U kunt documenten op verschillende locaties op verschillende manieren invoegen. U kunt bijvoorbeeld een document invoegen via een vervangende bewerking, een merge-veld tijdens een merge-operatie of via een bladwijzer.

U kunt ook de [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) of de [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) methode, die lijkt op het invoegen van een document in Microsoft Word, om een heel document in te voegen op de huidige cursorpositie zonder eerdere import.

Het volgende voorbeeld van code laat zien hoe een document met behulp van de **InsertDocument** methode:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

Het volgende voorbeeld van code laat zien hoe een document met behulp van de **InsertDocumentInline** methode:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

De volgende subsecties beschrijven de opties waarin u het ene document in een ander kunt invoegen.

### Een document invoegen tijdens het zoeken en vervangen {#insert-a-document-during-find-and-replace-operation}

U kunt documenten invoegen tijdens het uitvoeren van zoeken en vervangen operaties. Een document kan bijvoorbeeld alinea's bevatten met de tekst [INTRODUCTIE] en [CONCLUSIE]. Maar in het slotdocument moet je die alinea's vervangen door de inhoud van een ander extern document. Om dat te bereiken, moet u een begeleider voor de vervanging evenement.

Het volgende voorbeeld van code laat zien hoe je een handler aanmaakt voor de vervangende gebeurtenis om het later in het invoegproces te gebruiken:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

Het volgende voorbeeld van code laat zien hoe inhoud van een document in een ander document wordt ingevoegd tijdens een zoek- en vervangoperatie:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Document invoegen tijdens Mail Merge Werking {#insert-a-document-during-mail-merge-operation}

U kunt een document invoegen in een merge veld tijdens een Mail Merge operatie. Bijvoorbeeld, a Mail Merge template kan een merge-veld bevatten zoals [Samenvatting]. Maar in het uiteindelijke document moet je de inhoud van een ander extern document invoegen in dit merge veld. Om dat te bereiken, moet u een begeleider voor de merge event.

Het volgende voorbeeld van code laat zien hoe je een handler aanmaakt voor de fuserende gebeurtenis om het later in het invoegproces te gebruiken:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

Het volgende voorbeeld van code laat zien hoe je een document in het merge veld plaatst met behulp van de aangemaakte handler:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### Een document invoegen bij bladwijzer {#insert-a-document-at-bookmark}

U kunt een tekstbestand importeren in een document en het direct invoegen na een bladwijzer die u in het document hebt gedefinieerd. Om dit te doen, maak een paragraaf met bladwijzers waar u wilt dat het document wordt ingevoegd.

Het volgende coderingsvoorbeeld laat zien hoe je de inhoud van het ene document in een bladwijzer in een ander document invoegt:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

Merk op dat de bladwijzer niet meerdere alinea's of tekst moet omsluiten die u wilt dat ze verschijnen in uw uiteindelijke resulterende document.

{{% /alert %}}

## Een document toevoegen {#append-a-document}

U kunt een use case hebben waarin u extra pagina's moet opnemen van een document tot het einde van een bestaand document. Om dit te doen, moet je gewoon de [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) methode om een document aan het einde van een ander document toe te voegen.

{{% alert color="primary" %}}

Merk op dat [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) is een nodeniveau methode binnen een document. U kunt bijvoorbeeld een alinea maken, formatteren eigenschappen instellen, en vervolgens toevoegen als een kind aan het lichaam met behulp van de **AppendChild** methode.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een document toevoegt aan het einde van een ander document:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## Knoppen handmatig importeren en invoegen {#import-and-insert-nodes-manually}

Aspose.Words Hiermee kunt u documenten automatisch invoegen en toevoegen zonder eerdere importvereisten. Echter, als u een specifieke node van uw document moet invoegen of toevoegen, zoals een sectie of een paragraaf, dan moet u eerst deze node handmatig importeren.

Wanneer u een sectie of paragraaf moet invoegen of toevoegen aan een andere paragraaf, moet u in wezen de knooppunten van de eerste document node boom importeren in de tweede met behulp van de [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) methode. Na het importeren van uw knooppunten, moet u de [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/) ' [InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) methode om een nieuwe knoop in te voegen na/voor het referentieknooppunt. Hiermee kunt u het invoegproces aanpassen door knooppunten uit een document te importeren en het op bepaalde posities in te voegen.

U kunt ook de [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) methode om een nieuw gespecificeerd knooppunt toe te voegen aan het einde van de lijst van kindknooppunten, bijvoorbeeld als u inhoud wilt toevoegen op paragraafniveau in plaats van op sectieniveau.

Het volgende voorbeeld van code laat zien hoe u handmatig knooppunten importeren en invoegen na een specifieke knooppunt met behulp van de **InsertAfter** methode:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

De import maakt een nieuwe node aan die een kopie is van de originele node en geschikt is voor invoeging in het bestemmingsdocument.

{{% /alert %}}

Inhoud wordt per sectie in het document van bestemming geïmporteerd, wat betekent dat instellingen, zoals pagina-instellingen en headers of voetteksten, behouden blijven tijdens import. Het is ook handig om op te merken dat u formatteringsinstellingen kunt definiëren wanneer u een document invoegt of toevoegt om aan te geven hoe twee documenten worden samengevoegd.

## Gemeenschappelijke eigenschappen voor invoegen en toevoegen van documenten {#common-properties-for-insert-and-append-documents}

Beide [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) en [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) methoden accepteren [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) en [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) als inputparameters. De **ImportFormatMode** kunt u controleren hoe documentopmaak wordt samengevoegd wanneer u inhoud importeren van het ene document in het andere door het selecteren van verschillende indelingsmodi zoals [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/), en [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/). De **ImportFormatOptions** stelt u in staat om verschillende opties te selecteren, zoals [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/), en [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/).

Aspose.Words stelt u in staat om de visualisatie van een resulterend document aan te passen wanneer twee documenten samen worden toegevoegd in een invoeg- of voegbewerking door gebruik te maken van de [Section](https://reference.aspose.com/words/net/aspose.words/section/) en [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/) eigenschappen. De **PageSetup** eigenschap bevat alle eigenschappen van een sectie zoals [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/), en anderen. De meest voorkomende use case is het instellen van de **SectionStart** eigenschap om te bepalen of de toegevoegde inhoud op dezelfde pagina zal verschijnen of in een nieuwe zal splitsen.

{{% alert color="primary" %}}

Merk op dat de **Section** en **PageSetup** eigenschappen hebben geen invloed op de wijze waarop twee documenten worden ingevoegd/samengevoegd. Ze staan je alleen toe om het uiterlijk van je resultaatdocument te veranderen.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe het ene document aan het andere kan worden toegevoegd, terwijl de inhoud niet over twee pagina's kan worden gesplitst:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
