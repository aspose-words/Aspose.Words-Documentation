---
title: Java 'da Görüntülerle Çalışmak
second_title: Aspose.Words için Java
articleTitle: Görüntülerle Çalışmak
linktitle: Görüntülerle Çalışmak
type: docs
description: "Detaylarda ve Aspose.Words tarafından sağlanan gelişmiş özelliklerde resim şekilleri için Java."
weight: 300
url: /tr/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words kullanıcılara görüntüleri çok esnek bir şekilde çalışmak için izin verir. Bu makalede, yalnızca görüntülerle çalışmanın bazı olasılıklarını keşfedebilirsiniz.

## Bir Belgeye Nasıl Görüntü Çıkarılır {#how-to-extract-images-from-a-document}?

Tüm resimler bir belge içinde **Shape** düğümde depolanır. Tüm resimlerin veya belirli türlere sahip görüntülerin belgesinden çıkarılması için aşağıdaki adımları izleyin:

- Şekil düğümlerini tüm seçmek için [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) yöntemini kullanın.
- Sonuçlanan düğüm koleksiyonlarını dolaşın.
- [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) boolean özelliğini kontrol et.
- Görüntü verilerini [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) özelliğine kullanarak çıkarın.
- Görüntü verilerini bir dosyaya kaydet.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Her Belge Sayfasında Barkod Nasıl Yerleştirilir {#how-to-insert-barcode-on-each-documen-page}?

Bu örnek, aynı veya farklı barkodların bir Word belgesinin tüm sayfalarına veya belirli sayfalara eklenmesine izin verir. Bir belgedeki tüm sayfaların üzerine doğrudan barkod ekleyemezsiniz ancak [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) ve [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[]) yöntemlerini kullanarak herhangi bir bölüme veya başlık/ayaklara geçebilir ve aşağıdaki kodda görebileceğiniz gibi barkod resimleri ekleyebilirsiniz

Aşağıdaki kod örneği, bir belge her sayfasına bir barkod görüntüsü nasıl yerleştirileceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Görüntünün En Boy Oranını Kilitle {#lock-aspect-ratio-of-image}

Bir geometrik şeklin orantısı farklı boyutlardaki boyutlarının oranıdır. Bir görüntünün orantısını kilitlemek için [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked) kullanabilirsiniz. Şeklin varsayılan orantısı [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)'a bağlıdır. Bu, `ShapeType.Image` için true ve diğer şekil türleri için false'tür.

Aşağıdaki kod örneği, nasıl aspekt oranı ile çalışılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Şeklin Gerçek Sınırlarını Noktalar Olarak Nasıl Alınır {#how-to-get-actual-bounds-of-shape-in-points}?

Şekli sayfada nasıl işlenirse o şekilde gerçek sınırlayıcı kutusunu almak istiyorsanız " [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) " özelliğini kullanarak bunu başarabilirsiniz.

Aşağıdaki kod örneğinde bu özelliğin nasıl kullanılacağını gösteriyor:"

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Görüntüleri kırp

Görüntünün kırpılması genellikle istenmeyen görüntünün dış kısımlarının kaldırılmasını ifade eder ve bu da çerçeveyi geliştirmeye yardımcı olur. Ayrıca belirli bir alana odaklanmak için görüntünün bazı kısımlarının çıkarılması için kullanılır.

Aşağıdaki kod örneği bu şekilde ulaşmak için nasıl kullanıldığını gösterir: Aspose.Words API

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## WMF olarak Görüntüleri Kaydetme

Aspose.Words bir belgeyi dönüştürürken tüm mevcut görüntüleri '[WMF ](https://docs.fileformat.com/image/wmf/)' biçimine kaydetmek için işlevsellik sağlar DOCX'e.

Aşağıdaki kod örneği, RTF kaydetme seçenekleri ile resimlerin nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
