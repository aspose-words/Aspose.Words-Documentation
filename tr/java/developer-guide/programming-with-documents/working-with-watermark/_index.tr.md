---
title: Su damgası ile çalışmak Java üzerinde
second_title: Aspose.Words için Java
articleTitle: Su damgasıyla Çalışmak
linktitle: Su damgasıyla Çalışmak
type: docs
description: "Belge su damgası manipülasyonu Java kullanarak yapılır."
weight: 70
url: /tr/java/working-with-watermark/
---

Bu konu bir su damgası ile programatik olarak nasıl çalışılacağını tartışır Aspose.Words. Su damgası bir belgedeki metnin arkasından görünen arka plan görüntüsüdür. Bir filigran bir [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) sınıfı tarafından temsil edilen bir metin veya bir resim içerebilir.

{{% alert color="primary" %}}

**On-line dene**

Bu işlevselliği [Free online document watermark](https://products.aspose.app/words/watermark) ile deneyebilirsiniz.

{{% /alert %}}

## Bir Belgeye Su İşareti Ekle

Microsoft Word 'da bir belgeye su izlemesi eklemek için Insert Watermark komutunu kullanabilirsiniz. [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) sınıfı Aspose.Words 'de belgelere su izlemesi eklemek veya kaldırmak için kullanılabilir. Aspose.Words ayrıca üç olası su izleme türü (Metin, Görüntü ve Yok) tanımlayan bir [WatermarkType ](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/) numaralandırması sağlar

### Metin Suartı Ekle

Aşağıdaki kod örneği bir belgeye metin su damgası eklemenin nasıl yapılacağını göstermektedir tanımlayarak [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) kullanarak yöntem [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Görüntü Su İşareti Ekle

Aşağıdaki kod örneği, bir belgeye nasıl görüntü damgası ekleyeceğinizi gösterir [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) yöntemini kullanarak [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage)'i tanımlayarak:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Su damgası ayrıca şekil sınıfı kullanılarak da eklenebilir. Herhangi bir şekil veya görüntüyi kolayca bir başlık veya altbilgiye ekleyebilir ve böylece hayal edilebilecek herhangi bir tür su damgası oluşturabilirsiniz.

Aşağıdaki kod örneği bir Word belgesine su damgası ekler:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Örnek dosyanın örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)'dan indirebilirsiniz.

{{% /alert %}}


## Bir Belgeye Damga Kaldır

The [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) sınıfı bir belgeden damgayı kaldırmak için `Remove` yöntemini sağlar.

Aşağıdaki kod örnekleri bir belgeden su damgası kaldırmak için nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Bir belgeden su damgası kaldırmak için sadece su damgası şeklinin adını eklerken ayarlamanız gerekir ve ardından atanan bir isimle su damgası şeklini kaldırın.

Aşağıdaki kod örneği su damgası şeklinin adını nasıl ayarlayacağını ve bunu belgeden nasıl kaldıracağını gösterir:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Bir Tablo Hücresine Su Damgası Ekle

Bazen bir su damgası / görüntüyü bir tablonun hücresine eklemeniz ve onu tablo dışında görüntülemeniz gerekir, [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) özelliğini kullanabilirsiniz. Bu özellik bir bayrak alır veya ayarlar, şeklin bir tabloda mı yoksa onun dışında mı görüntülendiğini gösterir. Bu özelliğin yalnızca sizin Microsoft Word 2010 için belgeyi [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) yöntemle optimize ettiğinizde çalıştığını unutmayın

Aşağıdaki kod örneği bu özelliğin nasıl kullanılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
