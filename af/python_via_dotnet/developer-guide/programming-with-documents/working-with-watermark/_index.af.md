---
title: Werk Met Watermerk in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Werk Met Watermerk
linktitle: Werk Met Watermerk
description: "Skep en bestuur watermerke in'n dokument met behulp van Python."
type: docs
weight: 340
url: /af/python-net/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Hierdie onderwerp bespreek hoe om programmaties te werk met watermerk met behulp van Aspose.Words. 'n watermerk is'n agtergrondbeeld wat agter die teks in'n dokument vertoon word. 'n watermerk kan'n teks of'n beeld bevat wat deur die [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) klas verteenwoordig word.

{{% alert color="primary" %}}

**Probeer online**

Jy kan hierdie funksie probeer met ons [Gratis aanlyn dokument watermerk](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Hoe Om'n Watermerk By'n Dokument Te Voeg

In Microsoft Word kan'n watermerk maklik in'n dokument ingevoeg word met behulp van die Insert Watermark opdrag. Aspose.Words bied die [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) klas om watermerk in dokumente by te voeg of te verwyder. Aspose.Words verskaf die [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) opsomming wat drie moontlike tipes watermerke ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image), en [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) definieer om mee te werk.

### Voeg By Teks Watermerk

Die volgende kode voorbeeld demonstreer hoe om'n teks watermerk in'n dokument deur die definisie van [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) met behulp van die [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/) metode.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Voeg By Beeld Watermerk

Die volgende kode voorbeeld demonstreer hoe om'n beeld watermerk in'n dokument deur die definisie van [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) met behulp van die [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/) metode:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

Die watermerk kan ook ingevoeg word met behulp van vorm klas sowel. Dit is baie maklik om enige vorm of beeld in'n kop of voetskrif in te voeg en sodoende'n watermerk van enige denkbare tipe te skep.

Die volgende kode voorbeeld voeg'n watermerk in'n Word dokument:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [hier is](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Verwyder Watermerk uit'n Dokument

Die [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) klas bied die verwyder metode om die watermerk van'n dokument te verwyder.

Die volgende kode voorbeeld toon hoe om'n watermerk van dokumente te verwyder:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

As die watermerke bygevoeg word met behulp van die [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) klas voorwerp dan om die watermerk van'n dokument te verwyder moet jy net die naam van watermerk vorm stel tydens die invoeging en dan verwyder watermerk vorm deur'n toegewys naam.

Die volgende kode voorbeeld wys jou hoe om die naam van die watermerk vorm stel en verwyder dit uit die dokument:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## Voeg'n Watermerk in Tabel Sel

Soms moet jy'n watermerk/beeld in'n tabel se sel plaas en dit buite die tabel vertoon, jy kan die [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) eienskap gebruik. Hierdie eienskap kry of stel'n vlag wat aandui of die vorm binne'n tafel of buite dit vertoon word. Let daarop dat hierdie eienskap slegs werk wanneer jy die dokument vir Microsoft Word 2010 optimaliseer deur die [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) metode te gebruik.

Die volgende kode voorbeeld toon hoe om hierdie eiendom te gebruik:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
