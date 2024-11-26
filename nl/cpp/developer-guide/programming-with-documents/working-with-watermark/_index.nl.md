---
title: Werken met watermerk in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met Watermark
linktitle: Werken met Watermark
type: docs
description: "Document watermerk manipulatie met behulp van C++."
weight: 340
url: /nl/cpp/working-with-watermark/
timestamp: 2024-01-30-16-22-34
---

In dit onderwerp wordt besproken hoe u programmatisch met watermerk kunt werken met Aspose.Words. Een watermerk is een achtergrondafbeelding die achter de tekst in een document wordt weergegeven. Een watermerk kan een tekst of een afbeelding bevatten die wordt weergegeven door de klasse [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/).

## Een watermerk aan een Document toevoegen

In Microsoft Word kan een watermerk eenvoudig in een document worden ingevoegd met de opdracht watermerk invoegen. Aspose.Words biedt de [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) klasse voor het toevoegen of verwijderen van watermerken in documenten. Aspose.Words geeft de [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)opsomming die drie mogelijke soorten watermerken definieert (tekst, afbeelding en geen) om mee te werken.

### Tekst Watermerk Toevoegen

Het volgende codevoorbeeld laat zien hoe u een tekstwatermerk invoegt in een document door [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) te definiëren met de methode [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### Afbeelding Toevoegen Watermerk

Het volgende codevoorbeeld laat zien hoe u een watermerk voor een afbeelding invoegt in een document door [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) te definiëren met de methode [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

Het watermerk kan ook worden ingevoegd met behulp van de vormklasse. Het is heel eenvoudig om elke vorm of afbeelding in een kop-of voettekst in te voegen en zo een watermerk van elk denkbaar type te maken. Het volgende codevoorbeeld voegt een watermerk in een Word document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## Watermerk uit een Document verwijderen

De klasse [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) biedt de methode verwijderen om het watermerk uit een document te verwijderen.

Het volgende codevoorbeeld laat zien hoe u een watermerk uit documenten verwijdert:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

Als de watermerken worden toegevoegd met het [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) class-object, moet u om het watermerk uit een document te verwijderen alleen de naam van de watermerkshape instellen tijdens het invoegen en vervolgens de watermerkshape verwijderen met een toegewezen naam.

In het volgende codevoorbeeld ziet u hoe u de naam van de watermerkshape instelt en deze uit het document verwijdert:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## Een watermerk toevoegen in tabelcel

Soms moet u een watermerk/afbeelding in de cel van een tabel invoegen en deze buiten de tabel weergeven, U kunt de eigenschap [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/) gebruiken. Deze eigenschap krijgt of stelt een vlag die aangeeft of de vorm wordt weergegeven binnen of buiten een tabel. Merk op dat deze eigenschap alleen werkt wanneer u het document optimaliseert voor Microsoft Word 2010 met de methode [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/).

Het volgende codevoorbeeld laat zien hoe deze eigenschap te gebruiken:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
