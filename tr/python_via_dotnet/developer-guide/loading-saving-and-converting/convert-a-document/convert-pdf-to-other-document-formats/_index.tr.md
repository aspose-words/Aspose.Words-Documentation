---
title: PDF'yi Diğer Belge Formatlarına Dönüştürme
second_title: Python via .NET için Aspose.Words
articleTitle: PDF'yi Diğer Belge Formatlarına Dönüştürme
linktitle: PDF'yi Diğer Belge Formatlarına Dönüştürme
type: docs
description: "PDF'yi DOCX, DOC gibi Word formatlarına, JPG veya PNG gibi görüntü formatlarına veya `Python.Words` kullanarak Aspose tarafından desteklenen diğer formatlara dönüştürün."
keywords: convert pdf to other formats python
weight: 45
url: /tr/python-net/convert-pdf-to-other-document-formats/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words, PDF gibi karmaşık bir formatı bile yükleyebilir. Bu, yeni fırsatların önünü açar: PDF'yi Word'e veya kullanıcıları birçok uygulamalı sorunun çözümünde çok ileri götüren diğer formatlara dönüştürmek mümkündür.

## PDF'yi Diğer Formatlara {#convert-pdf-to-other-formats}'e Dönüştür

PDF'den en popüler dönüştürme, DOCX, DOC gibi Microsoft Word formatlarının yanı sıra JPG veya PNG gibi görüntü formatlarına dönüştürmedir. Bununla birlikte, bir belgenin bir formattan diğerine dönüştürülmesi tanıdık bir şekilde gerçekleştirilir.

Aşağıdaki kod örneği, bir belgenin PDF'den DOCX'e nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## PDF {#specify-load-options-when-importing-pdf}'i İçe Aktarırken Yükleme Seçeneklerini Belirleme

Aspose.Words size, PDF belgelerinin nasıl yükleneceği konusunda daha hassas kontrol sağlayan [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) sınıfını sağlar.

Çoğu özellik, [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) sınıfında zaten mevcut olan özellikleri devralır veya aşırı yükler. Bunlara ek olarak PDF formatı için bir takım özellikler belirtilmiştir. Örneğin, bir PDF belgesinden yüklenecek sayfa aralığını tanımlamak için [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) ve [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) özelliklerini, PDF yüklenirken görüntülerin atlanıp atlanmayacağını kontrol etmek için [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) özelliklerini kullanabilirsiniz. Desteklenen diğer bir parametre, parola korumalı belgeler için sağlanması gereken [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/)'dur.

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

## Planlanan Özellikler {#planned-features}

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
|   *FileLoadException*               |  Bir PDF dosyası bazı nedenlerden dolayı işlenemiyor.<br /> {{% alert color="primary" %}} [Teknik Destek](/words/tr/python-net/technical-support/).{{% /alert %}} kullanarak konuyu detaylı inceleme için geliştirme ekibine bildirebilirsiniz |
|   *DrmProtectedFileException*       |  Bir PDF dosyası Adobe DRM tarafından korunur ve Pdf2Word tarafından kodu çözülemez |
|   *PasswordProtectedFileException*  |  Parola korumalı bir PDF için doğru parolanın sağlanması gerekir |


