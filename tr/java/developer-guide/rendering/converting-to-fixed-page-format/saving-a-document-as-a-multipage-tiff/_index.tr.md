---
title: Bir belgeyi bir çok sayfalı TIFF olarak Java'da kaydetmek için
second_title: Aspose.Words için Java
articleTitle: Bir Belgeyi Bir Çok Sayfalı TIFF Olarak Kaydetme
linktitle: Bir Belgeyi Bir Çok Sayfalı TIFF Olarak Kaydetme
description: "Bir belgeyi bir raster görüntüye dönüştürün, TIFF formatı örneğinde tartışıldığı gibi. TIFF'in nasıl görüntüleneceğini belirlemek için ek seçenekleri belirtmeniz gerekir: çözünürlük, sayfa sayısı, görüntü ikili hale getirme vb. Java ile."
type: docs
weight: 30
url: /tr/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Belgeyle çalışırken, genellikle belgelerinizi bir raster görüntü dosyasına dönüştürmeniz gerekir. Bu özellikle sizin belgelerinizi okunabilir ve yazdırılabilir ancak düzenlenemez bir biçimde sunmanız gerektiğinde çok önemlidir. Örneğin, bir önizleme olarak belgenizin ilk sayfasının raster görüntüsünü kullanabilirsiniz. Bu makale, TIFF formatının bir örneği kullanarak bir belgeyi bir raster görüntüye dönüştürmeyi açıklar - daha popüler olan resim formatlarından biri.

## DOC'u Çok Sayfalı TIFF'e Dönüştürme

Aspose.Words 'da DOC'dan TIFF'e dönüştürme tek bir kod satırı ile gerçekleştirilebilir, sadece ilgili dosya uzantısını ve "kaydetmek için yol" [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) yöntemine geçirmek yeterli. The **Save** yöntemi otomatik olarak yoldaki dosya adı uzantısından `SaveFormat` türetir. Aşağıdaki örnek bir belgeyi TIFF biçimine dönüştürmenin nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Rendering TIFF İçin Ek Seçenekleri Belirtme

Çoğu zaman ek seçenekleri belirtmek gerekir ki bu da görselleştirme sonucunu etkiler. Bu amaçla [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) sınıfını kullanın, bu belge görüntüde nasıl gösterildiğini belirten özellikleri içerir. Aşağıdakileri belirtebilirsiniz:

- Kaydetme biçimi mevcut seçeneklerin listesini belirlemek için kullanılır ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Çözünürlük ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
Sayfa sayısı ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Renk ve aydınlatma ayarları ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Görüntü kalitesi ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions)
- Görüntü için kullanılan yöntem ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Oluşturulan görüntüler için piksel biçimi ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows meta dosyaları Aspose.Words tarafından ele alınıyor ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Aşağıda **ImageSaveOptions** sınıfında görebileceğiniz ek seçenekler:

Aşağıdaki örnek, yapılandırılmış seçeneklerle DOC'u TIFF nasıl dönüştüreceğinizi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## TIFF Binarizasyon için Eşik

Bir TIFF görüntüsünü, [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) özelliğini Format1bppIndexed piksel biçim türü olarak ayarlayarak ve [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) özelliğini ya da Ccitt3 veya Ccitt4'e ayarlayarak bir b/w 1bpp biçimde kaydedebilir.

Görüntü segmentasyonu için, Aspose.Words en basit yöntemi kullanır – eşik oluşturma. Bu yöntem bir gri tonlamalı TIFF görüntüsünü bir ikili görüntüye dönüştürür, bir eşik değeri kullanır. Bu nedenle, bir belge TIFF dosya biçimine dönüştürülmesi gerekiyorsa, TIFF ikili hale getirme için eşik almak veya ayarlamak için [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) özelliğini kullanabilirsiniz. Bu özelliğin varsayılan değeri 128 olarak ayarlanır ve değer ne kadar yüksek olursa görüntü o kadar karanlık olur.

Aşağıdaki örnek, bir belirtilen eşik ile TIFF ikili dönüştürmenin nasıl gerçekleştirileceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Aşağıda, çeşitli eşik değerlerinde yapılan TIFF ikili hale getirme işlemlerinin sonuçlarını karşılaştırabilirsiniz:

<img src="saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
