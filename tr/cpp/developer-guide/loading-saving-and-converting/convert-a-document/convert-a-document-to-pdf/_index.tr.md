---
title: Bir Belgeyi C++'de PDF'a Dönüştürün
second_title: Aspose.Words için C++
articleTitle: Bir Belgeyi PDF konumuna Dönüştürme
linktitle: Bir Belgeyi PDF konumuna Dönüştürme
description: "Bir belgeyi C++ kullanarak PDF'ye dönüştürün. Word, OpenOffice, Image ve eBook formatları dahil olmak üzere çeşitli giriş formatları desteklenir."
type: docs
weight: 10
url: /tr/cpp/convert-a-document-to-pdf/
timestamp: 2024-10-21-08-52-03
---

Belgeleri bir formattan diğerine kolayca ve güvenilir bir şekilde dönüştürme yeteneği Aspose.Words 'ın önemli bir özelliğidir. Dönüştürmek için en popüler biçimlerden biri PDF 'dir – bir belgenin çeşitli platformlarda oluşturulması sırasında orijinal görünümünü koruyan sabit mizanpaj biçimidir. "Oluşturma" terimi, bir belgeyi sayfalandırılan veya sayfa kavramına sahip bir dosya biçimine dönüştürme işlemini tanımlamak için Aspose.Words 'da kullanılır.

## Bir Word Belgesini PDF {#convert-a-word-document-to-pdf} konumuna Dönüştürme

Word'den PDF 'ye dönüştürme, birkaç hesaplama aşaması gerektiren oldukça karmaşık bir süreçtir. Aspose.Words düzen motoru, Microsoft Word 'ın sayfa düzeni motorunun çalışma şeklini taklit ederek PDF çıktı belgelerinin Microsoft Word'da görebildiğinize mümkün olduğunca yakın görünmesini sağlar.

Aspose.Words ile bir belgeyi Microsoft Office kullanmadan DOC veya DOCX biçiminden PDF biçimine programlı olarak dönüştürebilirsiniz. Bu makalede, bu dönüşümün nasıl gerçekleştirileceği açıklanmaktadır.

{{% alert color="primary" %}}

Bir belgedeki sayfa sayısının dönüştürme süresini etkilediğini unutmayın.

{{% /alert %}}

### DOCX veya DOC 'yi PDF {#converting-doc-or-docx-to-pdf}'a dönüştürme

DOC veya DOCX belge biçiminden Aspose.Words biçimindeki PDF biçimine dönüştürmek çok kolaydır ve yalnızca iki satırlık kodla gerçekleştirilebilir.:

1. Biçim uzantısına sahip belge adını belirterek oluşturucularından birini kullanarak belgenizi [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) nesnesine yükleyin.
1. **Document** nesnesindeki [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) yöntemlerinden birini çağırın ve "ile bir dosya adı girerek istediğiniz çıktı biçimini PDF olarak belirtin.PDF" uzantı.

Aşağıdaki kod örneği, `Save` yöntemini kullanarak bir belgenin DOCX 'den PDF'ye nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

Bu örneğin şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

Bazen bir belgenin PDF olarak kaydedilmesinin sonucunu etkileyebilecek ek seçenekler belirtmek gerekir. Bu seçenekler, PDF çıktısının nasıl görüntüleneceğini belirleyen özellikler içeren [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) sınıfının kullanılmasıyla belirtilebilir.

Aynı teknikle, herhangi bir akış düzeni biçimi belgesini PDF biçimine dönüştürebileceğinizi unutmayın.

{{% /alert %}}

### Farklı PDF Standartlara Dönüştür {#converting-to-various-pdf-standards}

Aspose.Words, DOC veya DOCX'in çeşitli PDF format standartlarına dönüştürülmesini desteklemek için [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) numaralandırmasını sağlar (ör. PDF 1.7, PDF 1.5, vb.).

Aşağıdaki kod örneği, bir belgenin PDF 17'ye uygun olarak [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) kullanılarak PDF 1.7'ye nasıl dönüştürüleceğini göstermektedir:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## Görüntüleri PDF {#convert-an-image-to-pdf}'a dönüştür

PDF 'e dönüştürme, Microsoft Word belge biçimleriyle sınırlı değildir. Programlı olarak oluşturulmuş olanlar da dahil olmak üzere Aspose.Words tarafından desteklenen herhangi bir biçim de PDF 'e dönüştürülebilir. Örneğin, aşağıdaki gibi tek sayfalık görüntüleri dönüştürebiliriz JPEG, PNG, BMP, EMF, veya WMF ve TIFF ve GIF gibi çok sayfalı görüntülerin yanı sıra PDF.

Aşağıdaki kod örneği, JPEG ve TIFF görüntülerinin PDF'ye nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

Bu kodun çalışması için projenize Aspose.Words ve `System.Drawing` başvuruları eklemeniz gerekir.

## Ayrıca bakınız

- Makale [İşleme](/words/cpp/rendering/) sabit sayfa ve akış düzeni biçimleri hakkında daha fazla bilgi için
- Makale [Sabit Sayfa Biçimine Dönüştürme](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) sayfa düzeni hakkında daha fazla bilgi için
- Makale [PDF'ye Dönüştürürken Oluşturma Seçeneklerini Belirtin](/words/cpp/specify-rendering-options-when-converting-to-pdf/) `PdfSaveOptions` sınıfını kullanma hakkında daha fazla bilgi için
