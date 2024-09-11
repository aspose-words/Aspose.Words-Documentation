---
title: Bir belgeden bir görüntüye dönüştürün Java içinde
second_title: Aspose.Words için Java
articleTitle: Bir Belgeyi Görüntüye Dönüştür
linktitle: Bir Belgeyi Görüntüye Dönüştür
type: docs
description: "Bir belgeyi resim formatına (JPG, PNG vb.) dönüştürün`. `Belge önizlemesi oluşturun veya bir fatura göndermek için belge taraması oluşturmak Java kullanarak yapın."
weight: 35
url: /tr/java/convert-a-document-to-an-image/
---

Bazen bir belge yerine diğer formatlarda, örneğin DOCX ya da PDF gibi bir resim almak gerekir. Örneğin herhangi bir belgeden bir önizleme eklemeniz gerekiyor sitenize ya da uygulamanıza ya da bir belgeyi taramak için bir fatura göndermek istiyorsunuz. O zaman bir belgeyi herhangi bir [supported load format](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) ile bir resim, tekrar herhangi bir [supported save format](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) olarak dönüştürmeniz gerekebilir.

## Görüntü Biçimine Dönüştür

Tüm dönüştürme örnekleri gibi zaten açıklanan, yeni bir belge oluşturmanız ya da herhangi bir desteklenen biçimde mevcut bir belgeyi yüklemeniz, gerekli değişiklikleri yapmanız ve örneğin JPEG, PNG ya da BMP'de mevcut olan herhangi bir görüntü formatında kaydetmeniz gerekir.

Aşağıdaki kod örneği DOCX'den JPEG'e nasıl dönüştürüleceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Bir Görüntüye Dönüştürürken Kaydetme Seçeneklerini Belirtin

Aspose.Words size çeşitli görüntü formatlarında belgelerin nasıl kaydedileceği üzerinde daha fazla kontrol sağlayan [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) sınıfını sağlar. Bazı özellikler bu sınıf temel sınıfların özelliklerini devralabilir veya yükleyebilir, örneğin [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) ya da [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), ancak resim kaydetmeye özgü seçenekler de vardır.

Görüntü biçimine dönüştürülmesi gereken sayfaları belirtmek için [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) özelliğini kullanabilirsiniz. Örneğin, yalnızca bir önizleme için veya belirli bir sayfa için ihtiyacınız varsa buna uygulanabilir.

Aşağıdaki özelliklerle çıktı görüntü kalitesini ve piksel formatını kontrol etmek de mümkündür – [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), ayrıca aşağıdaki özellikleri kullanarak görüntü renk ayarlarını ayarlayın – [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

Bazı bir formattaki özellikler de vardır örneğin [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) veya [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

Aşağıdaki kod örneği bazı ek ayarları uygulayarak ilk belge sayfasının bir önizlemesini nasıl oluşturacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
