---
title: PDF'yi C#'teki Diğer Belge Formatlarına Dönüştürme
second_title: .NET için Aspose.Words
articleTitle: PDF'yi Diğer Belge Formatlarına Dönüştürme
linktitle: PDF'yi Diğer Belge Formatlarına Dönüştürme
type: docs
description: "PDF'yi DOCX, DOC gibi Word formatlarına, JPG veya PNG gibi görüntü formatlarına veya C# kullanarak Aspose.Words tarafından desteklenen diğer formatlara dönüştürün."
keywords: convert pdf to other formats c#
weight: 45
url: /tr/net/convert-pdf-to-other-document-formats/
---

Aspose.Words, PDF gibi karmaşık bir formatı bile yükleyebilir. Bu, yeni fırsatların önünü açıyor: PDF'yi Word'e veya kullanıcıları birçok uygulamalı sorunun çözümünde çok ileri götüren diğer formatlara dönüştürmek mümkündür.

## Önkoşullar

* Aspose.Words.Pdf2Word.dll dosyasına Aspose.Words paketi ***VEYA*** referansı eklendi.
* En az .NET Framework 4.6.1 veya .NET Standard 2.0. .NET Core 2.x veya 3.0, .NET 5 ve Xamarin gibi hedefler de .NET Standard ile uyumluluk yoluyla desteklenir.

## PDF'yi Çeşitli Formatlara Dönüştür {#convert-pdf-to-other-formats}

PDF'den en popüler dönüştürme, DOCX, DOC gibi Microsoft Word formatlarının yanı sıra JPG veya PNG gibi görüntü formatlarına dönüştürmedir. Bununla birlikte, bir belgenin bir formattan diğerine dönüştürülmesi tanıdık bir şekilde gerçekleştirilir.

Aşağıdaki kod örneği, bir belgenin PDF'den DOCX'e nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## PDF {#specify-load-options-when-importing-pdf}'i İçe Aktarırken Yükleme Seçeneklerini Belirleme

Aspose.Words, PDF belgelerinin nasıl yükleneceği konusunda daha hassas kontrol sağlayan [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) sınıfını sağlar.

Çoğu özellik, `LoadOptions` sınıfında zaten mevcut olan özellikleri devralır veya aşırı yükler. Bunlara ek olarak PDF formatı için bir takım özellikler belirtilmiştir. Örneğin, bir PDF belgesinden yüklenecek sayfa aralığını tanımlamak için [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) ve [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) özelliklerini, PDF yüklenirken görüntülerin atlanıp atlanmayacağını kontrol etmek için [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) özelliklerini kullanabilirsiniz. Desteklenen diğer bir parametre ise [şifre korumalı belgeler](/words/net/protect-documents-and-parts-of-documents/) için sağlanması gereken [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/)'dur.

## Desteklenen PDF İçeriği {#supported-pdf-content}

PDF2Word eklentisi şu anda aşağıdaki veri türlerini desteklemektedir:

* Metin paragrafları
* Görüntüler
* Tablolar
* Listeler
* Üstbilgiler ve altbilgiler
* Dipnotlar
* Sayfa numaraları
* Sağdan sola metin (bazı sınırlamalarla)
* Aranabilir PDF'ler (arka plan metni yerine ön resimler kaldırılacaktır)

## Gelecek Özellikler {#planned-features}

Bazı özellikler hâlâ erken geliştirme aşamasındadır veya geliştirme yol haritasına dahil edilmiştir:

* İçindekiler
* Aranabilir ve Aranamayan PDF'ler için OCR
* İlerleme raporu
* Çok sütunlu metin
* Matematik formülleri
* Daha fazla otomatik alan (`PAGE` ve NUMPAGES dışında)

## PDF Yükleme İstisnaları

PDF belgesi dönüştürme sırasında aşağıdaki istisnalardan biri meydana gelebilir:

|  İstisna |  Tanım |
|  --------------------------------  |  ------------------------------------------------------------  |
|  `FileLoadException`               |  Bir PDF dosyası bazı nedenlerden dolayı işlenemiyor.<br /> {{% alert color="primary" %}} [Teknik Destek](/words/tr/net/technical-support/).{{% /alert %}} kullanarak konuyu detaylı inceleme için geliştirme ekibine bildirebilirsiniz |
|  `DrmProtectedFileException`       |  Bir PDF dosyası Adobe DRM tarafından korunur ve Pdf2Word tarafından kodu çözülemez |
|  `PasswordProtectedFileException`  |  Parola korumalı bir PDF için doğru parolanın sağlanması gerekir |

## Ayrıca bakınız

* [Aspose.Words'ye Nuget referansı](https://www.nuget.org/packages/Aspose.Words/)

