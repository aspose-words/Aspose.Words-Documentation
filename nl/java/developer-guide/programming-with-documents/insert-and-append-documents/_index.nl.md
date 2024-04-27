---
title: Documenten invoegen en toevoegen in Java
second_title: Aspose.Words voor Java
articleTitle: Documenten invoegen en toevoegen
linktitle: Documenten invoegen en toevoegen
description: "Documenten combineren in één: een document invoegen of toevoegen aan een nieuw of bestaand document met behulp van vinden en vervangen, merge-veld, bladwijzer, of gewoon aan het document eindigen in Java."
type: docs
weight: 80
url: /nl/java/insert-and-append-documents/
---

Soms is het nodig om meerdere documenten te combineren in een. U kunt dit handmatig of u kunt gebruiken Aspose.Words functie invoegen of toevoegen.

Met de invoegoperatie kunt u de inhoud van eerder aangemaakte documenten in een nieuwe of bestaande invoegen.

Dankzij de functie toevoegen kunt u een document alleen aan het einde van een ander document toevoegen.

Dit artikel legt uit hoe je een document op verschillende manieren invoegt of toevoegt aan een ander en beschrijft de gemeenschappelijke eigenschappen die je kunt toepassen tijdens het invoegen of toevoegen van documenten.

## Document invoegen

Zoals hierboven vermeld, in Aspose.Words een document wordt weergegeven als een boom van knooppunten, en de werking van het invoegen van een document in een ander document is het kopiëren van knooppunten van de eerste documentboom naar de tweede.

U kunt documenten op verschillende locaties op verschillende manieren invoegen. U kunt bijvoorbeeld een document invoegen via een vervangende bewerking, een merge-veld tijdens een merge-operatie of via een bladwijzer.

U kunt ook de [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) of de [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) methode, die lijkt op het invoegen van een document in Microsoft Word, om een heel document in te voegen op de huidige cursorpositie zonder eerdere import.

Het volgende voorbeeld van code laat zien hoe een document met behulp van de **InsertDocument** methode:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

Het volgende voorbeeld van code laat zien hoe een document met behulp van de **InsertDocumentInline** methode:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

De volgende subsecties beschrijven de opties gedurende welke u het ene document in een ander kunt invoegen.

### Een document invoegen tijdens het zoeken en vervangen {#insert-a-document-during-find-and-replace-operation}

U kunt documenten invoegen tijdens het uitvoeren van zoeken en vervangen operaties. Een document kan bijvoorbeeld paragrafen bevatten met de tekst [INTRODUCTIE] en [CONCLUSIE]. Maar in het uiteindelijke document moet je die paragrafen vervangen door de inhoud die uit een ander extern document is verkregen. Om dat te bereiken, moet u een begeleider voor de vervanging evenement.

Het volgende voorbeeld van code laat zien hoe je een handler kunt maken voor de vervangende gebeurtenis om het later in het invoegproces te gebruiken:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

Het volgende voorbeeld van code laat zien hoe inhoud van een document in een ander document wordt ingevoegd tijdens een zoek- en vervangoperatie:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Een document invoegen tijdens Mail Merge Werking {#insert-a-document-during-mail-merge-operation}

U kunt een document invoegen in een merge veld tijdens een mail merge operatie. Bijvoorbeeld a mail merge template kan een merge-veld bevatten zoals [Samenvatting]. Maar in het uiteindelijke document moet je content uit een ander extern document invoegen in dit merge veld. Om dat te bereiken, moet u een begeleider voor de merge event.

Het volgende voorbeeld van code laat zien hoe je een handler aanmaakt voor de fuserende gebeurtenis om het later in het invoegproces te gebruiken:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

Het volgende voorbeeld van code laat zien hoe je een document in het merge veld plaatst met behulp van de aangemaakte handler:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Een document invoegen bij bladwijzer

U kunt een tekstbestand importeren in een document en het direct invoegen na een bladwijzer die u in het document hebt gedefinieerd. Om dit te doen, maak een paragraaf met bladwijzers waar u wilt dat het document wordt ingevoegd.

Het volgende coderingsvoorbeeld laat zien hoe je de inhoud van het ene document in een bladwijzer in een ander document invoegt:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Merk op dat de bladwijzer niet meerdere alinea's of tekst moet bevatten die u wilt dat ze in uw uiteindelijke resulterende document verschijnen.

{{% /alert %}}

## Een document toevoegen

U kunt een use case hebben waar u extra pagina's moet opnemen van een document tot het einde van een bestaand document. Om dit te doen, moet je gewoon de [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) methode om een document aan het einde van een ander document toe te voegen.

{{% alert color="primary" %}}

Merk op dat [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) is een nodeniveau methode in een document. U kunt bijvoorbeeld een alinea maken, formatteren eigenschappen instellen, en vervolgens toevoegen als een kind aan het lichaam met behulp van de **AppendChild** methode.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een document toevoegt aan het einde van een ander document:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Knoppen handmatig importeren en invoegen {#import-and-insert-nodes-manually}

Aspose.Words Hiermee kunt u documenten automatisch invoegen en toevoegen zonder eerdere importvereisten. Als u echter een specifieke knoop van uw document wilt invoegen of toevoegen, zoals een sectie of een paragraaf, dan moet u eerst deze knoop handmatig importeren.

Wanneer u een sectie of paragraaf moet invoegen of toevoegen aan een andere, moet u in wezen de knooppunten van de eerste document node boom importeren in de tweede met behulp van de [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) methode. Na het importeren van uw nodes, moet u de [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) methode om een nieuwe knoop in te voegen na/voor het referentieknooppunt. Hiermee kunt u het invoegproces aanpassen door knooppunten uit een document te importeren en het op bepaalde posities in te voegen.

U kunt ook de [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) methode om een nieuw gespecificeerd knooppunt toe te voegen aan het einde van de lijst van kindknooppunten, bijvoorbeeld als u inhoud wilt toevoegen op paragraafniveau in plaats van op sectieniveau.

Het volgende voorbeeld van code laat zien hoe u handmatig knooppunten importeert en ze invoegt na een specifieke knooppunt met behulp van de **InsertAfter** methode:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

De import maakt een nieuwe node die een kopie is van de originele node en geschikt is voor invoeging in het bestemmingsdocument.

{{% /alert %}}

Inhoud wordt per sectie in het document van bestemming geïmporteerd, wat betekent dat instellingen, zoals pagina-instellingen en headers of voetteksten, tijdens import behouden blijven. Het is ook handig om op te merken dat u formatteringsinstellingen kunt definiëren wanneer u een document invoegt of toevoegt om aan te geven hoe twee documenten worden samengevoegd.

## Gemeenschappelijke eigenschappen voor invoegen en toevoegen van documenten {#common-properties-for-insert-and-append-documents}

Beide [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) en [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) methoden accepteren [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) en [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) als inputparameters. De **ImportFormatMode** kunt u controleren hoe documentopmaak wordt samengevoegd wanneer u inhoud importeren van het ene document in het andere door het selecteren van verschillende indelingsmodi zoals [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), en [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). De **ImportFormatOptions** stelt u in staat verschillende importopties te selecteren, zoals [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), en [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words stelt u in staat om de visualisatie van een resulterend document aan te passen wanneer twee documenten samen worden toegevoegd in een invoeg- of voegbewerking door gebruik te maken van de [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) en [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) eigenschappen. De **PageSetup** eigenschap bevat alle eigenschappen van een sectie zoals [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), en anderen. De meest voorkomende use case is om de **SectionStart** eigenschap om te bepalen of de toegevoegde inhoud op dezelfde pagina zal verschijnen of in een nieuwe zal splitsen.

{{% alert color="primary" %}}

Merk op dat de **Section** en **PageSetup** eigenschappen hebben geen invloed op de wijze waarop twee documenten worden ingevoegd/samengevoegd. Ze laten je alleen toe om het uiterlijk van je resultaatdocument te veranderen.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe het ene document aan het andere kan worden toegevoegd, terwijl de inhoud niet over twee pagina's kan worden gesplitst:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
