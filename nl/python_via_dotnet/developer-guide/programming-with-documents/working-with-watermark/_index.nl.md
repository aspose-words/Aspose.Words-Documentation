---
title: Werken met Watermark in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met Watermark
linktitle: Werken met Watermark
description: "Watermerken aanmaken en beheren in een document met Python."
type: docs
weight: 340
url: /nl/python-net/working-with-watermark/
---

Dit onderwerp bespreekt hoe je programmatisch met watermerk met behulp van Aspose.Words. Een watermerk is een achtergrondafbeelding die achter de tekst in een document wordt weergegeven. Een watermerk kan een tekst of een afbeelding bevatten die door de [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) Klasse.

{{% alert color="primary" %}}

**Probeer online**

U kunt deze functionaliteit proberen met onze [Gratis online document watermerk](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Een watermerk toevoegen aan een document

In Microsoft Word, een watermerk kan gemakkelijk in een document worden geplaatst met het commando Watermark invoegen. Aspose.Words levert de [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) klasse om watermerk in documenten toe te voegen of te verwijderen. Aspose.Words levert de [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) opsomming van drie mogelijke typen watermerken ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image), en [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) om mee te werken

### Tekst Watermerk toevoegen

Het volgende voorbeeld van code laat zien hoe je een tekst watermerk in een document invoegt door te definiëren [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) met de [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/) methode.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Watermerk voor afbeelding toevoegen

Het volgende voorbeeld van code laat zien hoe je een watermerk in een document invoegt door te definiëren [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) met de [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/) methode:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

Het watermerk kan ook met de vormklasse worden aangebracht. Het is zeer gemakkelijk om elke vorm of afbeelding in een header of voettekst in te voegen en zo een watermerk van elk denkbaar type te creëren.

De volgende codevoorbeeld voegt een watermerk in een Word-document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Hier](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}


## Watermerk uit een document verwijderen

De [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) klasse geeft de verwijderingsmethode om het watermerk uit een document te verwijderen.

Het volgende voorbeeld van code laat zien hoe je een watermerk uit documenten verwijdert:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

Als de watermerken worden toegevoegd met behulp van de [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Klasse-object vervolgens om het watermerk uit een document te verwijderen u alleen de naam van watermerk vorm tijdens het invoegen moet instellen en vervolgens verwijderen watermerk vorm door een toegewezen naam.

Het volgende voorbeeld van code laat zien hoe u de naam van het watermerk instelt en het uit het document verwijdert:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## Watermerk toevoegen aan tabelcel

Soms moet je een watermerk/image in de cel van een tafel plaatsen en het buiten de tafel tonen, kunt u de [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) eigendom. Deze eigenschap krijgt of stelt een vlag die aangeeft of de vorm wordt weergegeven in een tabel of er buiten. Merk op dat deze eigenschap alleen werkt wanneer u het document voor Microsoft Word 2010 [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) methode.

Het volgende voorbeeld van code laat zien hoe deze eigenschap te gebruiken:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
