---
title: Werken met Watermark in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met Watermark
linktitle: Werken met Watermark
description: "Watermerkmanipulatie documenteren met behulp van C#."
type: docs
weight: 340
url: /nl/net/working-with-watermark/
timestamp: 2024-05-02-11-51-44
---

Dit onderwerp bespreekt hoe je programmatisch met watermerk met behulp van Aspose.Words. Een watermerk is een achtergrondafbeelding die achter de tekst in een document wordt weergegeven. Een watermerk kan een tekst of een afbeelding bevatten die door de [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) Klasse.

{{% alert color="primary" %}}

**Probeer online**

U kunt deze functionaliteit proberen met onze [Gratis online document watermerk](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Een watermerk toevoegen aan een document

In Microsoft Word, een watermerk kan gemakkelijk in een document worden geplaatst met het commando Watermark invoegen. Aspose.Words levert de [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) klasse om watermerk in documenten toe te voegen of te verwijderen. Aspose.Words levert de [Watermerk Type](https://reference.aspose.com/words/net/aspose.words/watermark/type/)Een opsomming van drie mogelijke typen watermerken (tekst, afbeelding en geen) om mee te werken

### Tekst Watermerk toevoegen

Het volgende voorbeeld van code laat zien hoe je een tekst watermerk in een document invoegt door te definiëren [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) met de [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext) methode:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Watermerk voor afbeelding toevoegen

Het volgende voorbeeld van code laat zien hoe je een watermerk in een document invoegt door te definiëren [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) met de [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage) methode:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

Het watermerk kan ook met de vormklasse worden aangebracht. Het is zeer gemakkelijk om elke vorm of afbeelding in een header of voettekst in te voegen en zo een watermerk van elk denkbaar type te creëren.

De volgende codevoorbeeld voegt een watermerk in een Word-document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Watermerk uit een document verwijderen

De [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) klasse geeft de verwijderingsmethode om het watermerk uit een document te verwijderen.

Het volgende voorbeeld van code laat zien hoe je een watermerk uit documenten verwijdert:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

Als de watermerken worden toegevoegd met behulp van de [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) Klasse-object vervolgens om het watermerk uit een document te verwijderen u alleen de naam van watermerk vorm tijdens het invoegen moet instellen en vervolgens verwijderen watermerk vorm door een toegewezen naam.

Het volgende voorbeeld van code laat zien hoe u de naam van het watermerk instelt en het uit het document verwijdert:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Voeg een watermerk toe aan een tabelcel

Soms moet je een watermerk/image in de cel van een tafel plaatsen en het buiten de tafel tonen, kunt u de [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) eigendom. Deze eigenschap krijgt of stelt een vlag die aangeeft of de vorm wordt weergegeven in een tabel of er buiten. Merk op dat deze eigenschap alleen werkt wanneer u het document voor Microsoft Word 2010 [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) methode.

Het volgende voorbeeld van code laat zien hoe deze eigenschap te gebruiken:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
