---
title: Werk Met Beelde in Java
second_title: Aspose.Words vir Java
articleTitle: Werk Met Beelde
linktitle: Werk Met Beelde
type: docs
description: "Beeldvorms in besonderhede en gevorderde funksies wat deur Aspose.Words vir Java."
weight: 300
url: /af/java/working-with-images/
---

Aspose.Words laat gebruikers toe om op'n baie buigsame manier met beelde te werk. In hierdie artikel kan jy slegs sommige van die moontlikhede van werk met beelde verken.

## Hoe Om Beelde uit'n Dokument {#how-to-extract-images-from-a-document}Te Onttrek

Alle beelde word gestoor binne **Shape** nodes in'n Dokument. Volg hierdie stappe om alle beelde of beelde met'n spesifieke tipe uit die dokument te onttrek:

- Gebruik die [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) metode om alle Vormknope te kies.
- Iterate deur die gevolglike node versamelings.
- Gaan die [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) booleaanse eienskap na.
- Onttrek beelddata met behulp van die [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) eienskap.
- Stoor beelddata na'n lêer.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Hoe Om Strepieskode Op elke Dokumentbladsy {#how-to-insert-barcode-on-each-documen-page}In Te Voeg

Met hierdie voorbeeld kan u dieselfde of verskillende strepieskode op alle of spesifieke bladsye van'n Word-dokument byvoeg. Daar is geen direkte manier om strepieskode op alle bladsye van'n dokument by te voeg nie, maar jy kan [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) en [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) metodes gebruik om na enige afdeling of koptekste/voetskrifte te beweeg en die strepieskode-beelde in te voeg soos jy in die volgende kode kan sien.

Die volgende kode voorbeeld toon hoe om'n barcode beeld in te voeg op elke bladsy van'n dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Sluit Aspekverhouding van Beeld {#lock-aspect-ratio-of-image}

Die aspekverhouding van'n meetkundige vorm is die verhouding van sy groottes in verskillende dimensies. Jy kan die beeldverhouding met [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked) sluit. Die standaard waarde van die vorm se aspek verhouding hang af van die [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Dit is waar vir `ShapeType.Image` en vals vir ander vorm tipes.

Die volgende kode voorbeeld toon hoe om te werk met aspek verhouding:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Hoe Om Werklike Grense Van Vorm in Punte {#how-to-get-actual-bounds-of-shape-in-points}Te Kry

As jy die werklike grens boks van die vorm wil hê soos op die bladsy weergegee, kan jy dit bereik deur die [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) eienskap te gebruik.

Die volgende kode voorbeeld toon hoe om hierdie eiendom te gebruik:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Sny Beelde

Die sny van'n beeld verwys gewoonlik na die verwydering van die ongewenste buitenste dele van'n beeld om die raamwerk te verbeter. Dit word ook gebruik vir die verwydering van sommige van die dele van'n beeld om die fokus op'n spesifieke gebied te verhoog.

Die volgende kode voorbeeld toon hoe om dit te bereik met behulp van Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Stoor Beelde as WMF

Aspose.Words bied funksionaliteit om al die beskikbare beelde in'n dokument te stoor [WMF ](https://docs.fileformat.com/image/wmf/)formaat terwyl die omskakeling van DOCX na RTF.

Die volgende kode voorbeeld toon hoe om beelde te stoor as WMF met RTF stoor opsies:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
