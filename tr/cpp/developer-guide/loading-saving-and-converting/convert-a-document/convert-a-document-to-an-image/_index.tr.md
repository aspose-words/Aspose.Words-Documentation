---
title: Bir Belgeyi C++ içindeki Bir Görüntüye Dönüştürme
second_title: Aspose.Words için C++
articleTitle: Belgeyi Görüntüye Dönüştürme
linktitle: Belgeyi Görüntüye Dönüştürme
type: docs
description: "Bir belgeyi görüntü biçimine dönüştürün (JPG, PNG, vb.). Fatura göndermek için belge önizlemesi oluşturun veya belge taraması oluşturun."
weight: 43
url: /tr/cpp/convert-a-document-to-an-image/
---

Bazen DOCX veya PDF gibi diğer formatlardaki belgeler yerine bir görüntü elde etmek gerekir. Örneğin, web sitenize veya uygulamanıza herhangi bir belge sayfasının önizlemesini eklemeniz veya fatura göndermek için bir belgenin "taramasını" oluşturmanız gerekir. Bu, herhangi bir [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) içindeki bir belgeyi yine herhangi bir [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) içindeki bir görüntüye dönüştürmeniz gerekebileceği zamandır.

## Görüntü Biçimine Dönüştür

Daha önce açıklanan tüm dönüştürme örneklerinde olduğu gibi, yeni bir belge oluşturmanız veya mevcut bir belgeyi desteklenen herhangi bir biçimde yüklemeniz, gerekli değişiklikleri yapmanız ve mevcut herhangi bir görüntü biçiminde (örneğin JPEG, PNG veya BMP) kaydetmeniz gerekir.

Aşağıdaki kod örneği, DOCX öğesinin JPEG öğesine nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Görüntüye Dönüştürürken Kaydetme Seçeneklerini Belirtin

Aspose.Words size, belgelerin çeşitli görüntü biçimlerinde nasıl kaydedildiği üzerinde daha fazla kontrol sağlayan [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) sınıfını sağlar. Bu sınıfın bazı özellikleri, [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) veya [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/) gibi temel sınıfların özelliklerini devralır veya aşırı yükler, ancak görüntüleri kaydetmeye özgü seçenekler de vardır.

[PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/) özelliğini kullanarak görüntü biçimine dönüştürülecek sayfaları belirtmek mümkündür. Örneğin, yalnızca ilk veya belirli bir sayfa için önizlemeye ihtiyacınız varsa uygulanabilir.

Aşağıdaki özellikleri kullanarak çıktı görüntü kalitesini ve piksel biçimini kontrol etmek de mümkündür – [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), aşağıdaki özellikleri kullanarak görüntü rengi ayarlarını yapmanın yanı sıra - [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

Belirli bir biçime uygulanan özellikler de vardır, örneğin [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) veya [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

Aşağıdaki kod örneği, bazı ek ayarların uygulanmasıyla ilk belge sayfasının önizlemesinin nasıl oluşturulacağını gösterir:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
