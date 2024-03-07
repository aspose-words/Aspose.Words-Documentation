---
title: Bir Belgeyi C#'te Görüntüye Dönüştürme
second_title: .NET için Aspose.Words
articleTitle: Belgeyi Görüntüye Dönüştürme
linktitle: Belgeyi Görüntüye Dönüştürme
type: docs
description: "Bir belgeyi resim formatına (JPG, PNG, vb.) dönüştürün. C# kullanarak fatura göndermek için bir belge önizlemesi oluşturun veya belge taraması oluşturun."
weight: 43
url: /tr/net/convert-a-document-to-an-image/
---

Bazen DOCX veya PDF gibi diğer formatlardaki belgeler yerine resim almak gerekebilir. Örneğin, web sitenize veya uygulamanıza herhangi bir belge sayfasının önizlemesini eklemeniz veya fatura göndermek için bir belgenin "taranmasını" oluşturmanız gerekir. Bu, herhangi bir [desteklenen yükleme biçimi](https://reference.aspose.com/words/tr/net/aspose.words/loadformat/)'deki bir belgeyi yine herhangi bir [desteklenen kaydetme biçimi](https://reference.aspose.com/words/tr/net/aspose.words/saveformat/)'deki bir görüntüye dönüştürmeniz gerekebileceği zamandır.

## Resim {#convert-to-image-format}'e Dönüştür

Daha önce açıklanan tüm dönüştürme örneklerinde olduğu gibi, yeni bir belge oluşturmanız veya mevcut bir belgeyi desteklenen herhangi bir biçimde yüklemeniz, gerekli değişiklikleri yapmanız ve bunu JPEG, PNG veya BMP gibi mevcut herhangi bir görüntü biçiminde kaydetmeniz gerekir.

Aşağıdaki kod örneği PDF'nin JPEG'e nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## Görüntü {#specify-save-options-when-converting-to-an-image}'e Dönüştürürken Kaydetme Seçeneklerini Belirleyin

Aspose.Words, belgelerin çeşitli görüntü formatlarında nasıl kaydedildiği konusunda daha fazla kontrol sağlayan [ImageSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/) sınıfını sağlar. Bu sınıfın bazı özellikleri, [FixedPageSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/fixedpagesaveoptions/) veya [SaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/saveoptions/) gibi temel sınıfların özelliklerini devralır veya aşırı yükler; ancak görüntüleri kaydetmeye özel seçenekler de vardır.

[PageSet](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/pageset/) özelliğini kullanarak resim formatına dönüştürülecek sayfaları belirlemek mümkündür. Örneğin yalnızca ilk sayfa için veya belirli bir sayfa için önizlemeye ihtiyacınız varsa uygulanabilir.

Ayrıca şu özellikleri ([HorizontalResolution](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/pixelformat/)) kullanarak çıktı görüntü kalitesini ve piksel formatını kontrol etmek ve aşağıdaki özellikleri ([ImageBrightness](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/papercolor/)) kullanarak görüntü renk ayarlarını yapmak da mümkündür.

[JpegQuality](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/jpegquality/) veya [TiffCompression](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/tiffcompression/) gibi belirli bir formata uygulanan özellikler de vardır.

Aşağıdaki kod örneği, bazı ek ayarları uygulayarak ilk belge sayfasının önizlemesinin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
