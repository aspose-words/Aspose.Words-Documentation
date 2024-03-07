---
title: Bir Belgeyi Çok Sayfalı TIFF Olarak Kaydetme
second_title: Python via .NET için Aspose.Words
articleTitle: Bir Belgeyi Çok Sayfalı TIFF Olarak Kaydetme
linktitle: Bir Belgeyi Çok Sayfalı TIFF Olarak Kaydetme
description: "Python'i kullanarak bir belgeyi çok sayfalı TIFF'e dönüştürün. Belgenin görüntüde nasıl görüntüleneceğini belirlemek için ek seçenekleri belirtmeniz gerekir: çözünürlük, sayfa sayısı, görüntü ikilileştirme vb."
type: docs
weight: 30
url: /tr/python-net/saving-a-document-as-a-multipage-tiff/
---

Belgelerle çalışırken, genellikle belgenizi taramalı görüntü dosyalarına dönüştürmeniz gerekir. Bu, özellikle belgenizi okunabilir ve yazdırılabilir ancak düzenlenemeyen bir biçimde sunmanız gerekiyorsa geçerlidir. Örneğin, belgenizin ilk sayfasının taramalı görüntüsünü önizleme olarak kullanabilirsiniz. Bu makalede, en popüler görüntü formatlarından biri olan TIFF biçimi örneğini kullanarak bir belgenin taramalı görüntüye nasıl dönüştürüleceği açıklanmaktadır.

## DOC'u Çok Sayfalı TIFF'e Dönüştürme

Aspose.Words'te DOC'dan TIFF'e dönüşüm, tek satır kodla, "kaydetme yeri" yolunun ve ilgili dosya uzantısının [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) yöntemine aktarılmasıyla gerçekleştirilebilir. [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) yöntemi, [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/)'i yolda belirtilen dosya adı uzantısından otomatik olarak türetir. Aşağıdaki örnek, bir belgenin TIFF biçimine nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## TIFF Oluştururken Ek Seçenekleri Belirtme

Oluşturma sonucunu etkileyen ek seçenekleri sıklıkla belirtmeniz gerekir. Bu amaçla belgenin görüntüde nasıl görüntüleneceğini belirleyen özellikleri içeren [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) sınıfını kullanın. Aşağıdakileri belirtebilirsiniz:

- Mevcut seçeneklerin listesini belirlemek için formatı kaydedin ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Çözünürlük ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Sayfa sayısı ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Renk ve aydınlatma ayarları ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Görüntü kalitesi ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Görüntüyü ikili hale getirmek için kullanılan yöntem ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Oluşturulan görüntüler için piksel formatı ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/)) tarafından işlenen Windows meta dosyaları
- [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) sınıfında görebileceğiniz ek seçenekler

Aşağıdaki örnek, yapılandırılmış seçeneklerle DOC'un TIFF'e nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## TIFF İkilileştirme Eşiği

[pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) özelliği [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) piksel formatı tipine ve [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) özelliği [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) veya [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4)'ye ayarlanarak bir TIFF görüntüsü 1bpp siyah beyaz formatında kaydedilebilir.

Aspose.Words, görüntü segmentasyonu için en basit yöntemi olan eşiklemeyi kullanır. Bu yöntem, gri tonlamalı bir TIFF görüntüsünü bir eşik değeri kullanarak ikili görüntüye dönüştürür. Bu nedenle, bir belgenin TIFF dosya biçimine dönüştürülmesi gerektiğinde, [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/) özelliği aracılığıyla TIFF ikilileştirme eşiğini almak veya ayarlamak mümkündür. Bu özelliğin varsayılan değeri 128 olarak ayarlanmıştır ve bu değer ne kadar yüksek olursa görüntü o kadar koyu olur.

Aşağıdaki örnek, belirtilen eşikle TIFF ikilileştirmesinin nasıl gerçekleştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

Aşağıda, çeşitli eşik değerlerinde TIFF ikilileştirmesinin gerçekleştirildiği görüntüleri karşılaştırabilirsiniz:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="bir belgeyi çok sayfalı-tiff-aspose-words-net olarak kaydetme" style="width:800px"/>
