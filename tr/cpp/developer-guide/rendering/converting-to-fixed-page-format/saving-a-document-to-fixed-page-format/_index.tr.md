---
title: C++ biçiminde Sabit sayfa Biçimine Kaydetme
second_title: Aspose.Words için C++
articleTitle: Belgeyi Sabit Sayfa Biçimine Kaydetme
linktitle: Belgeyi Sabit Sayfa Biçimine Kaydetme
description: "Bir belgeyi sabit sayfa biçimine kaydetme – PDF, XPS, HTML, XAML, PostScript, ve PCL? Talimatlara bakın."
type: docs
weight: 15
url: /tr/cpp/saving-a-document-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Sayfa düzeni oluşturulduktan ve nesnelerin geometrisi ve sayfadaki konumları hesaplandıktan sonra, belge Aspose.Words tarafından desteklenen sabit sayfa biçiminde kaydedilebilir.

Belgeleri sabit sayfa biçimlerine kaydederken, tüm bu biçimlerde ortak olan oluşturma seçenekleri kullanılabilir. Kontrol etmeye izin veriyorlar:

- Çıktı belgesinde yer alan sayfa sayısı ve aralığı ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Sayfa sayfa belge kaydetme ilerlemesi ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- Sayıları oluşturmak için kullanılan bir karakter kümesi ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- Meta dosyası yürütücüsü ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). Daha fazla ayrıntı için bkz. [Windows Meta Dosyalarının işlenmesi](/words/cpp/handling-windows-metafiles/) makale.
- Seçilen kaydetme biçimine ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)) bağlı olarak değeri biraz farklı olabilen JPEG görüntüleri yeniden sıkıştırmak için bir kalite oranı.
- Aspose.Words çıktısında ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)) vektör grafiklerinin optimizasyonu.
- Tıff, Png, Bmp, Jpeg, Emf formatlarına kaydederken grafik seçenekleri ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Belgeyi gri tonlamalı olarak kaydetme ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- DrawingML şekillerinin oluşturulması ile geri dönüş şekilleri ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)) arasında geçiş yapma.
- DML efekt oluşturma modları arasında geçiş yapma ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

Aşağıdaki örnek, `Save` yöntemini ve oluşturma seçeneklerini kullanarak bir belgenin JPEG biçimine nasıl kaydedileceğini göstermektedir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
