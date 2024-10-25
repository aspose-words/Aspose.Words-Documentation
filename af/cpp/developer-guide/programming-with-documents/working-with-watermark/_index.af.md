---
title: Werk Met Watermerk in C++
second_title: Aspose.Words vir C++
articleTitle: Werk Met Watermerk
linktitle: Werk Met Watermerk
type: docs
description: "Dokument watermerk manipulasie met behulp van C++."
weight: 340
url: /af/cpp/working-with-watermark/
---

Hierdie onderwerp bespreek hoe om programmaties te werk met watermerk met behulp van Aspose.Words. 'n watermerk is'n agtergrondbeeld wat agter die teks in'n dokument vertoon word. 'n watermerk kan'n teks of'n beeld bevat wat deur die [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) klas verteenwoordig word.

## Voeg'n Watermerk By'n Dokument

In Microsoft Word kan'n watermerk maklik in'n dokument ingevoeg word met behulp van die Insert Watermark opdrag. Aspose.Words verskaf die [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) klas om watermerk in dokumente by te voeg of te verwyder. Aspose.Words verskaf die [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)opsomming wat drie moontlike tipes watermerke (Teks, Beeld en Geen) definieer om mee te werk.

### Voeg By Teks Watermerk

Die volgende kode voorbeeld demonstreer hoe om'n teks watermerk in'n dokument deur die definisie van [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) met behulp van die [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/) metode.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### Voeg By Beeld Watermerk

Die volgende kode voorbeeld demonstreer hoe om'n beeld watermerk in'n dokument deur die definisie van [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) met behulp van die [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/) metode.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

Die watermerk kan ook ingevoeg word met behulp van vorm klas sowel. Dit is baie maklik om enige vorm of beeld in'n kop of voetskrif in te voeg en sodoende'n watermerk van enige denkbare tipe te skep. Die volgende kode voorbeeld voeg'n watermerk in'n Word dokument.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## Verwyder Watermerk uit'n Dokument

Die [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) klas bied die verwyder metode om die watermerk van'n dokument te verwyder.

Die volgende kode voorbeeld toon hoe om'n watermerk van dokumente te verwyder:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

As die watermerke bygevoeg word met behulp van die [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) klas voorwerp dan om die watermerk te verwyder uit'n dokument wat jy het om net die naam van die watermerk vorm stel tydens die invoeging en dan verwyder die watermerk vorm deur'n toegewys naam.

Die volgende kode voorbeeld wys jou hoe om die naam van die watermerk vorm stel en verwyder dit uit die dokument:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## Voeg'n Watermerk in Tabel Sel

Soms moet jy'n watermerk/beeld in'n tabel se sel plaas en dit buite die tabel vertoon, jy kan [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/) eienskap gebruik. Hierdie eienskap kry of stel'n vlag wat aandui of die vorm binne'n tafel of buite dit vertoon word. Let daarop dat hierdie eienskap werk slegs wanneer jy die dokument vir Microsoft Word 2010 optimaliseer met behulp van die [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) metode.

Die volgende kode voorbeeld toon hoe om hierdie eiendom te gebruik:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
