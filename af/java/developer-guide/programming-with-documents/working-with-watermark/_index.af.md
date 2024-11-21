---
title: Werk Met Watermerk in Java
second_title: Aspose.Words vir Java
articleTitle: Werk Met Watermerk
linktitle: Werk Met Watermerk
type: docs
description: "Dokument watermerk manipulasie met behulp van Java."
weight: 70
url: /af/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Hierdie onderwerp bespreek hoe om programmaties te werk met'n watermerk met behulp van Aspose.Words. 'n watermerk is'n agtergrondbeeld wat agter die teks in'n dokument vertoon word. 'n watermerk kan'n teks of'n beeld bevat wat deur die [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) klas verteenwoordig word.

{{% alert color="primary" %}}

**Probeer online**

Jy kan hierdie funksie probeer met ons [Gratis aanlyn dokument watermerk](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Voeg'n Watermerk By'n Dokument

In Microsoft Word kan'n watermerk maklik in'n dokument ingevoeg word met behulp van die Insert Watermark opdrag. Aspose.Words bied die [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) klas om watermerk in dokumente by te voeg of te verwyder. Aspose.Words verskaf die [WatermarkType ](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)opsomming wat drie moontlike tipes watermerke (Teks, Beeld en Geen) definieer om mee te werk.

### Voeg By Teks Watermerk

Die volgende kode voorbeeld demonstreer hoe om'n teks watermerk in'n dokument deur die definisie van [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) met behulp van die [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) metode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Voeg By Beeld Watermerk

Die volgende kode voorbeeld demonstreer hoe om'n beeld watermerk in'n dokument deur die definisie van [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) met behulp van die [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) metode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Die watermerk kan ook ingevoeg word met behulp van vorm klas sowel. Dit is baie maklik om enige vorm of beeld in'n kop of voetskrif in te voeg en sodoende'n watermerk van enige denkbare tipe te skep.

Die volgende kode voorbeeld voeg'n watermerk in'n Word dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Verwyder Watermerk uit'n Dokument

Die [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) klas bied die `Remove` metode om die watermerk van'n dokument te verwyder.

Die volgende kode voorbeelde toon hoe om'n watermerk van dokumente te verwyder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Om die watermerk uit'n dokument te verwyder, moet u slegs die naam van die watermerkvorm stel tydens die invoeging en dan die watermerkvorm met'n toegewese naam verwyder.

Die volgende kode voorbeeld wys jou hoe om die naam van die watermerk vorm stel en verwyder dit uit die dokument:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Voeg'n Watermerk in'n Tabel Sel

Soms moet jy'n watermerk/beeld in'n tabel se sel plaas en dit buite die tabel vertoon, jy kan [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) eienskap gebruik. Hierdie eienskap kry of stel'n vlag wat aandui of die vorm binne'n tafel of buite dit vertoon word. Let daarop dat hierdie eienskap slegs werk wanneer jy die dokument vir Microsoft Word 2010 optimaliseer deur die [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) metode te gebruik.

Die volgende kode voorbeeld toon hoe om hierdie eiendom te gebruik:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
