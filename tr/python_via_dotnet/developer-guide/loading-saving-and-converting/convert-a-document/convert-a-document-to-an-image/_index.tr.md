---
title: Belgeyi Görüntüye Dönüştürme
second_title: Python via .NET için Aspose.Words
articleTitle: Belgeyi Görüntüye Dönüştürme
linktitle: Belgeyi Görüntüye Dönüştürme
type: docs
description: "Bir belgeyi resim formatına (JPG, PNG, vb.) dönüştürün. Python kullanarak fatura göndermek için bir belge önizlemesi oluşturun veya belge taraması oluşturun."
weight: 43
url: /tr/python-net/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Bazen DOCX veya PDF gibi diğer formatlardaki belgeler yerine resim almak gerekebilir. Örneğin, web sitenize veya uygulamanıza herhangi bir belge sayfasının önizlemesini eklemeniz veya fatura göndermek için bir belgenin "taranmasını" oluşturmanız gerekir. Bu, herhangi bir [desteklenen yükleme biçimi](https://reference.aspose.com/words/python-net/aspose.words/loadformat/)'deki bir belgeyi yine herhangi bir [desteklenen kaydetme biçimi](https://reference.aspose.com/words/python-net/aspose.words/saveformat/)'deki bir görüntüye dönüştürmeniz gerekebileceği zamandır.

## {#convert-to-image-format} Resim Formatına Dönüştür

Daha önce açıklanan tüm dönüştürme örneklerinde olduğu gibi, yeni bir belge oluşturmanız veya mevcut bir belgeyi desteklenen herhangi bir biçimde yüklemeniz, gerekli değişiklikleri yapmanız ve bunu JPEG, PNG veya BMP gibi mevcut herhangi bir görüntü biçiminde kaydetmeniz gerekir.

Aşağıdaki kod örneği PDF'nin JPEG'e nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Görüntü {#specify-save-options-when-converting-to-an-image}'sine Dönüştürürken Kaydetme Seçeneklerini Belirleme

Aspose.Words, belgelerin çeşitli görüntü formatlarında nasıl kaydedildiği konusunda daha fazla kontrol sağlayan [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) sınıfını sağlar. Bu sınıfın bazı özellikleri, [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) veya [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) gibi temel sınıfların özelliklerini devralır veya aşırı yükler; ancak görüntüleri kaydetmeye özel seçenekler de vardır.

[page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/) özelliğini kullanarak resim formatına dönüştürülecek sayfaları belirlemek mümkündür. Örneğin yalnızca ilk sayfa için veya belirli bir sayfa için önizlemeye ihtiyacınız varsa uygulanabilir.

Çıktı görüntü kalitesini ve piksel formatını şu özellikleri ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/)) kullanarak kontrol etmenin yanı sıra aşağıdaki özellikleri ([image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/)) kullanarak görüntü renk ayarlarını yapmak da mümkündür.

[jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) veya [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) gibi belirli bir formata uygulanan özellikler de vardır.

Aşağıdaki kod örneği, bazı ek ayarları uygulayarak ilk belge sayfasının önizlemesinin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
