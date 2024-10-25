---
title: Bir Belgeyi C++ içinde Çok Sayfalı TIFF Olarak Kaydetme
second_title: Aspose.Words için C++
articleTitle: Belgeyi Çok Sayfalı Olarak Kaydetme TIFF
linktitle: Belgeyi Çok Sayfalı Olarak Kaydetme TIFF
description: "Bir belgeyi C++ kullanarak çok sayfalı TIFF sayfaya dönüştürün. Belgenin görüntüde nasıl görüntüleneceğini belirlemek için ek seçenekler belirtmeniz gerekir: çözünürlük, sayfa sayısı, görüntü ikilileştirme vb."
type: docs
weight: 40
url: /tr/cpp/saving-a-document-as-a-multipage-tiff/
---

Belgelerle çalışırken, genellikle belgenizi raster görüntü dosyalarına dönüştürmeniz gerekir. Bu, özellikle belgenizi okunabilir ve yazdırılabilir, ancak düzenlenebilir olmayan bir biçimde sunmanız gerekiyorsa geçerlidir. Örneğin, belgenizin ilk sayfasının raster görüntüsünü önizleme olarak kullanabilirsiniz. Bu makalede, daha popüler görüntü biçimlerinden biri olan TIFF biçimi örneğini kullanarak bir belgenin raster görüntüye nasıl dönüştürüleceği açıklanmaktadır.

## DOC'i Çok Sayfalı TIFF'a Dönüştürme

Aspose.Words 'te, DOC'ten TIFF'e dönüştürme, sadece "şuraya kaydet" yolunu ve ilgili dosya uzantısını [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) yöntemine geçirerek tek bir kod satırı ile gerçekleştirilebilir. **Save** yöntemi, `SaveFormat`'ı yolda belirtilen dosya adı uzantısından otomatik olarak türetir. Aşağıdaki örnek, bir belgenin TIFF biçimine nasıl dönüştürüleceğini göstermektedir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## TIFF Oluşturulurken Ek Seçenekler Belirtme

Genellikle oluşturma sonucunu etkileyen ek seçenekler belirtmeniz gerekir. Bu amaçla, belgenin görüntüde nasıl görüntüleneceğini belirleyen özellikler içeren [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) sınıfını kullanın. Aşağıdakileri belirtebilirsiniz:

- Kullanılabilir seçeneklerin listesini belirlemek için biçimi kaydet ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- Çözünürlük ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- Sayfa sayısı ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- Renk ve aydınlatma ayarları ([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- Görüntü kalitesi ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- Görüntüyü ikili hale getirmek için kullanılan yöntem ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- Oluşturulan görüntüler için piksel biçimi ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows tarafından işlenen meta dosyalar Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- **ImageSaveOptions** sınıfında görebileceğiniz ek seçenekler

Aşağıdaki örnek, yapılandırılmış seçeneklerle DOC'in TIFF'a nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## TIFF İkilileştirme Eşiği

Bir TIFF görüntü, [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) özelliğini 1 bppIndexed piksel biçim türünü Biçimlendir olarak ve `TiffCompression` özelliğini Ccıtt3 veya Ccıtt4 olarak ayarlayarak 1 bpp s / b biçiminde kaydedilebilir.

Görüntü segmentasyonu için Aspose.Words en basit yöntemi kullanır - eşik. Bu yöntem, bir eşik değeri kullanarak gri ölçekli bir TIFF görüntüyü ikili görüntüye dönüştürür. Bu nedenle, bir belgenin TIFF dosya biçimine dönüştürülmesi gerektiğinde, [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/) özelliği aracılığıyla TIFF ikilileştirme eşiğini almak veya ayarlamak mümkündür. Bu özelliğin varsayılan değeri 128 olarak ayarlanır ve bu değer ne kadar yüksek olursa görüntü o kadar koyu olur.

Aşağıdaki örnek, belirtilen bir eşikle TIFF ikilileştirmenin nasıl gerçekleştirileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

Aşağıda, çeşitli eşik değerlerinde TIFF ikilileştirmenin gerçekleştirildiği görüntüleri karşılaştırabilirsiniz:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
