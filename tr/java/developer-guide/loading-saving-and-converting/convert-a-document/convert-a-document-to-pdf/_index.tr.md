---
title: Bir belgenin PDF'ye dönüştürülmesi Java içinde
second_title: Aspose.Words için Java
articleTitle: Bir belgesi PDF'ye dönüştürün
linktitle: Bir belgesi PDF'ye dönüştürün
description: "Bir belgeyi Word veya herhangi bir desteklenen biçimde PDF olarak dönüştürün, farklı platformlarda çeşitli platformlarda belgenin orijinal görünümünü korur Java kullanılarak."
type: docs
weight: 10
url: /tr/java/convert-a-document-to-pdf/
---

Bir belgeyi bir formattan başka bir formata kolayca ve güvenilir bir şekilde dönüştürme yeteneği Aspose.Words'ın temel özelliklerindendir. Dönüştürmede en popüler formatlardan biri PDF'dir; bir sabit düzen formatıdır, bu da bir belgenin çeşitli platformlarda görüntülenmesinin orijinal görünümünü korur. "Rendering" terimi Aspose.Words 'da bir belgeyi sayfalama veya sayfaların kavramına sahip olacak şekilde bir dosya formatına dönüştürme sürecini tanımlamak için kullanılır.

## Bir Word belgesini PDF'ye dönüştürün {#convert-a-word-document-to-pdf}

Word'den PDF'ye dönüştürme işlemi birkaç hesaplama aşamasını gerektiren oldukça karmaşık bir süreçtir. Aspose.Words düzeni motoru, Microsoft Word'deki sayfa düzeni motorunun nasıl çalıştığını taklit eder. Bu da PDF çıktısı belgeleri mümkün olduğunca Microsoft Word'de görebileceğiniz şeylere yakın görünmesini sağlar.

Bu Aspose.Words ile bir belgeyi Microsoft ofis olmadan DOC veya DOCX biçiminden PDF'ye programatik olarak dönüştürebilirsiniz. Bu makale bu dönüştürmeyi nasıl yapacağınızı açıklar.

{{% alert color="primary" %}}

Belgenin sayfalarının sayısının dönüştürücü süresini etkilediğini unutmayın.

{{% /alert %}}

### DOCX veya DOC'tan PDF'ye dönüştürme {#converting-doc-or-docx-to-pdf}

DOC veya DOCX belge biçimini PDF biçimine dönüştürmek Aspose.Words içinde çok kolay ve iki satır kod kullanarak yapılabilir:

1. Dokümanınızı bir [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) nesnesine, belirtilen belge adı ve dosya uzantısı ile bir oluşturucu kullanarak yükleyin.
1. Bir [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) yöntemini **Document** nesnesine çağırın ve istediğiniz çıktı biçimini PDF olarak belirtmek için bir dosya adı ile ".PDF" uzantısını girin.

Aşağıdaki kod örneği `Save` yöntemini kullanarak bir belgenin nasıl DOCX'ten PDF'ye dönüştürülünü göstermektedir:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc)'dan indirebilirsiniz.

{{% alert color="primary" %}}

Bazen bir belgeyi bir PDF olarak kaydetmek için ek seçenekleri belirtmek gerekir. Bu seçenekler [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) sınıfını kullanarak belirtilebilir ve bu sınıfın özellikleri PDF çıktısının nasıl gösterileceğini belirten özelliklere sahiptir.

Nihayetinde aynı tekniği kullanarak herhangi bir akış düzeni biçimli belgeyi PDF biçimine dönüştürebilirsiniz.

{{% /alert %}}

### Farklı PDF Standartlarına Dönüştür {#converting-to-various-pdf-standards}

Aspose.Words çeşitli PDF biçim standartlarını (örneğin, PDF 1.7, PDF 1.5 vb.) desteklemek için DOC veya DOCX'i dönüştürmek için [PdfCompliace ](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) numaralandırmasını sağlar.

Aşağıdaki kod örneği bir belgeyi PDF 1.7 formatına dönüştürmenin nasıl yapılacağını [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)'i kullanarak PDF17 uyumluluğuna sahip olarak göstermektedir:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Görüntüleri PDF'ye Dönüştür

PDF'ye dönüştürme Microsoft Word belge formatlarına bağlı değildir. Aspose.Words'tarafından desteklenen herhangi bir format, programatik olarak oluşturulan da dahil olmak üzere, aynı zamanda PDF'ye de dönüştürülebilir. Örneğin, tek sayfalık görüntüleri, örneğin JPEG, PNG, BMP, EMF veya WMF'yi, ayrıca TIFF ve GIF gibi çok sayfalı görüntüleri PDF'ye dönüştürebiliriz.

Aşağıdaki kod örneği, JPEG ve TIFF görüntülerini PDF olarak nasıl dönüştüreceğinizi gösterir:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Bu kodu çalıştırmak için projenize Aspose.Words, Java.awt.image ve javax.imageio sınıf paketlerine referans eklemeniz gerekir.

## PDF Çıktısı Azaltma Boyutu

PDF'ye kaydetme yaparken, çıktıyı optimize etmek istediğinizi belirtebilirsiniz. Bunu yapmak için, [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) bayrağını true'e ayarlamanız gerekir, ardından gereksiz iç içe geçmiş tuval ve boş tuval silinir ve aynı biçimlendirme ile komşusu olan glyph'ler birleştirilir.

Aşağıdaki kod örneği, çıktıyı nasıl optimize edeceğini göstermektedir:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

**OptimizeOutput** özelliğini kullanmak içerik görüntülenmesine etki edebilir.

{{% /alert %}}

## Ayrıca bakınız

- The article [Rendering](/words/java/rendering/) daha fazla bilgi için sabit-sayfa ve akış düzeni formatları
- Makale [Converting to Fixed-page Format](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) sayfa düzenine dair daha fazla bilgi için
- [Specify Rendering Options When Converting to PDF](/words/java/specify-rendering-options-when-converting-to-pdf/) makalesi daha fazla bilgi için, `PdfSaveOptions` sınıfını kullanma
