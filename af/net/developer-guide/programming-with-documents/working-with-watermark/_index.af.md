---
title: Werk Met Watermerk in C#
second_title: Aspose.Words vir .NET
articleTitle: Werk Met Watermerk
linktitle: Werk Met Watermerk
description: "Dokument watermerk manipulasie met behulp van C#."
type: docs
weight: 340
url: /af/net/working-with-watermark/
---

Hierdie onderwerp bespreek hoe om programmaties te werk met watermerk met behulp van Aspose.Words. 'n watermerk is'n agtergrondbeeld wat agter die teks in'n dokument vertoon word. 'n watermerk kan'n teks of'n beeld bevat wat deur die [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) klas verteenwoordig word.

{{% alert color="primary" %}}

**Probeer online**

Jy kan hierdie funksie probeer met ons [Gratis aanlyn dokument watermerk](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Voeg'n Watermerk By'n Dokument

In Microsoft Word kan'n watermerk maklik in'n dokument ingevoeg word met behulp van die Insert Watermark opdrag. Aspose.Words bied die [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) klas om watermerk in dokumente by te voeg of te verwyder. Aspose.Words verskaf die [WatermarkType](https://reference.aspose.com/words/net/aspose.words/watermark/type/)opsomming wat drie moontlike tipes watermerke (Teks, Beeld en Geen) definieer om mee te werk.

### Voeg By Teks Watermerk

Die volgende kode voorbeeld demonstreer hoe om'n teks watermerk in'n dokument deur die definisie van [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) met behulp van die [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext) metode:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Voeg By Beeld Watermerk

Die volgende kode voorbeeld demonstreer hoe om'n beeld watermerk in'n dokument deur die definisie van [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) met behulp van die [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage) metode:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

Die watermerk kan ook ingevoeg word met behulp van vorm klas sowel. Dit is baie maklik om enige vorm of beeld in'n kop of voetskrif in te voeg en sodoende'n watermerk van enige denkbare tipe te skep.

Die volgende kode voorbeeld voeg'n watermerk in'n Word dokument:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Verwyder Watermerk uit'n Dokument

Die [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) klas bied die verwyder metode om die watermerk van'n dokument te verwyder.

Die volgende kode voorbeeld toon hoe om'n watermerk van dokumente te verwyder:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

As die watermerke bygevoeg word met behulp van die [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) klas voorwerp dan om die watermerk van'n dokument te verwyder moet jy net die naam van watermerk vorm stel tydens die invoeging en dan verwyder watermerk vorm deur'n toegewys naam.

Die volgende kode voorbeeld wys jou hoe om die naam van die watermerk vorm stel en verwyder dit uit die dokument:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Voeg'n Watermerk in'n Tabel Sel

Soms moet jy'n watermerk/beeld in'n tabel se sel plaas en dit buite die tabel vertoon, jy kan die [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) eienskap gebruik. Hierdie eienskap kry of stel'n vlag wat aandui of die vorm binne'n tafel of buite dit vertoon word. Let daarop dat hierdie eienskap slegs werk wanneer jy die dokument vir Microsoft Word 2010 optimaliseer deur die [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) metode te gebruik.

Die volgende kode voorbeeld toon hoe om hierdie eiendom te gebruik:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
