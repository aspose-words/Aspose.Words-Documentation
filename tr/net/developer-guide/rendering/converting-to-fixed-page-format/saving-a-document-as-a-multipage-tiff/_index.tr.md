---
title: Bir Belgeyi C#'te Çok Sayfalı TIFF Olarak Kaydetme
second_title: .NET için Aspose.Words
articleTitle: Bir Belgeyi Çok Sayfalı TIFF Olarak Kaydetme
linktitle: Bir Belgeyi Çok Sayfalı TIFF Olarak Kaydetme
description: "C#'i kullanarak bir belgeyi çok sayfalı TIFF'e dönüştürün. Belgenin görüntüde nasıl görüntüleneceğini belirlemek için ek seçenekleri belirtmeniz gerekir: çözünürlük, sayfa sayısı, görüntü ikilileştirme vb."
type: docs
weight: 30
url: /tr/net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-07-10-14-38-57
---

Belgelerle çalışırken, genellikle belgenizi taramalı görüntü dosyalarına dönüştürmeniz gerekir. Bu, özellikle belgenizi okunabilir ve yazdırılabilir ancak düzenlenemeyen bir biçimde sunmanız gerekiyorsa geçerlidir. Örneğin, belgenizin ilk sayfasının taramalı görüntüsünü önizleme olarak kullanabilirsiniz. Bu makalede, en popüler görüntü formatlarından biri olan TIFF biçimi örneğini kullanarak bir belgenin taramalı görüntüye nasıl dönüştürüleceği açıklanmaktadır.

## DOC'u Çok Sayfalı TIFF'e Dönüştürme

Aspose.Words'te DOC'dan TIFF'e dönüşüm, tek satır kodla, "kaydetme yeri" yolunun ve ilgili dosya uzantısının [Save](https://reference.aspose.com/words/tr/net/aspose.words/document/save/#save) yöntemine aktarılmasıyla gerçekleştirilebilir. **Save** yöntemi, `SaveFormat`'u yolda belirtilen dosya adı uzantısından otomatik olarak türetir. Aşağıdaki örnek, bir belgenin TIFF biçimine nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## TIFF Oluştururken Ek Seçenekleri Belirtme

Oluşturma sonucunu etkileyen ek seçenekleri sıklıkla belirtmeniz gerekir. Bu amaçla belgenin görüntüde nasıl görüntüleneceğini belirleyen özellikleri içeren [ImageSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/) sınıfını kullanın. Aşağıdakileri belirtebilirsiniz:

- Mevcut seçeneklerin listesini belirlemek için formatı kaydedin ([SaveFormat](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Çözünürlük ([HorizontalResolution](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- Sayfa sayısı ([PageIndex](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/))
- Renk ve aydınlatma ayarları ([PaperColor](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Görüntü kalitesi ([JpegQuality](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Görüntüyü ikili hale getirmek için kullanılan yöntem ([TiffBinarizationMethod](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Oluşturulan görüntüler için piksel formatı ([PixelFormat](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer)) tarafından işlenen Windows meta dosyaları
- **ImageSaveOptions** sınıfında görebileceğiniz ek seçenekler

Aşağıdaki örnek, yapılandırılmış seçeneklerle DOC'un TIFF'e nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## TIFF İkilileştirme Eşiği

[PixelFormat](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/pixelformat/) özelliği Format1bppIndexed piksel format tipine ve [TiffCompression](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/tiffcompression/) özelliği Ccitt3 veya Ccitt4'e ayarlanarak bir TIFF görüntüsü 1bpp siyah beyaz formatında kaydedilebilir.

Aspose.Words, görüntü segmentasyonu için en basit yöntemi olan eşiklemeyi kullanır. Bu yöntem, gri tonlamalı bir TIFF görüntüsünü bir eşik değeri kullanarak ikili görüntüye dönüştürür. Bu nedenle, bir belgenin TIFF dosya biçimine dönüştürülmesi gerektiğinde, [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/) özelliği aracılığıyla TIFF ikilileştirme eşiğini almak veya ayarlamak mümkündür. Bu özelliğin varsayılan değeri 128 olarak ayarlanmıştır ve bu değer ne kadar yüksek olursa görüntü o kadar koyu olur.

Aşağıdaki örnek, belirtilen eşikle TIFF ikilileştirmesinin nasıl gerçekleştirileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

Aşağıda, çeşitli eşik değerlerinde TIFF ikilileştirmesinin gerçekleştirildiği görüntüleri karşılaştırabilirsiniz:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="bir belgeyi çok sayfalı-tiff-aspose-words-net olarak kaydetme" style="width:800px"/>
