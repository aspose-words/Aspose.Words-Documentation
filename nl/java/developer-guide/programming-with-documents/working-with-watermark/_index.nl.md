---
title: Werken met Watermark in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met Watermark
linktitle: Werken met Watermark
type: docs
description: "Bewerken van watermerken documenteren met behulp van Java."
weight: 70
url: /nl/java/working-with-watermark/
---

Dit onderwerp bespreekt hoe je programmatisch werkt met een watermerk met behulp van Aspose.Words. Een watermerk is een achtergrondafbeelding die achter de tekst in een document wordt weergegeven. Een watermerk kan een tekst of een afbeelding van de [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) Klasse.

{{% alert color="primary" %}}

**Probeer online**

U kunt deze functionaliteit proberen met onze [Gratis online document watermerk](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Een watermerk toevoegen aan een document

In Microsoft Word, een watermerk kan gemakkelijk in een document worden geplaatst met behulp van het commando Watermark invoegen. Aspose.Words levert de [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) klasse om watermerk in documenten toe te voegen of te verwijderen. Aspose.Words levert de [WatermarkType](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)Een opsomming van drie mogelijke soorten watermerken (tekst, afbeelding en geen) om mee te werken

### Tekst Watermerk toevoegen

Het volgende voorbeeld van code laat zien hoe je een tekst watermerk in een document invoegt door te definiëren [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) de [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) methode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Watermerk voor afbeelding toevoegen

Het volgende voorbeeld van code laat zien hoe je een watermerk in een document invoegt door het definiëren van [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) de [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) methode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Het watermerk kan ook met de vormklasse worden ingebracht. Het is zeer eenvoudig om een vorm of afbeelding in een header of voettekst in te voegen en zo een watermerk van elk denkbaar type te creëren.

De volgende codevoorbeeld voegt een watermerk in een Word-document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Watermerk uit een document verwijderen

De [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) klasse geeft de `Remove` methode om het watermerk uit een document te verwijderen.

De volgende codevoorbeelden laten zien hoe je een watermerk uit documenten verwijdert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Om het watermerk uit een document te verwijderen, moet u tijdens het invoegen alleen de naam van de watermerkvorm instellen en vervolgens de watermerkvorm met een toegewezen naam verwijderen.

Het volgende voorbeeld van code laat u zien hoe u de naam van het watermerk instelt en het uit het document verwijdert:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Voeg een watermerk toe aan een tabelcel

Soms moet je een watermerk/afbeelding in de cel van een tafel plaatsen en het buiten de tafel tonen, kunt u gebruiken [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) eigendom. Deze eigenschap krijgt of zet een vlag die aangeeft of de vorm wordt weergegeven in een tabel of daarbuiten. Merk op dat deze eigenschap alleen werkt wanneer u het document voor Microsoft Word 2010 [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) methode

Het volgende voorbeeld van code laat zien hoe deze eigenschap te gebruiken:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
