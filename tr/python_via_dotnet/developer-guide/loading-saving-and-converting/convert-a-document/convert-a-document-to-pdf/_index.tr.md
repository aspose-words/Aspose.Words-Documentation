---
title: Python'te bir Belgeyi PDF'ye Dönüştürme
second_title: Python via .NET için Aspose.Words
articleTitle: Bir Belgeyi PDF'ye Dönüştürme
linktitle: Bir Belgeyi PDF'ye Dönüştürme
description: "Python'i kullanarak bir belgeyi PDF'ye dönüştürün. Word, OpenOffice, Resim ve e-Kitap formatları dahil olmak üzere çeşitli giriş formatları desteklenir."
type: docs
weight: 10
url: /tr/python-net/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

Belgeleri bir formattan diğerine kolay ve güvenilir bir şekilde dönüştürme yeteneği Aspose.Words'in önemli bir özelliğidir. Dönüştürme için en popüler formatlardan biri, bir belgenin çeşitli platformlarda işlenmesi sırasında orijinal görünümünü koruyan sabit düzen formatı olan PDF'dir. "Rendering" terimi Aspose.Words'te bir belgenin sayfalandırılmış veya sayfa kavramına sahip bir dosya biçimine dönüştürülmesi sürecini tanımlamak için kullanılır.

## Word Belgesini PDF {#convert-a-word-document-to-pdf}'e Dönüştürme

Word'den PDF'ye dönüştürme, birkaç hesaplama aşaması gerektiren oldukça karmaşık bir işlemdir. Aspose.Words mizanpaj motoru, Microsoft Word'nin sayfa mizanpajı motorunun çalışma şeklini taklit ederek PDF çıktı belgelerinin Microsoft Word'de gördüklerinize mümkün olduğunca yakın görünmesini sağlar.

Aspose.Words ile, Microsoft Office kullanmadan bir belgeyi DOC veya DOCX gibi Word biçimlerinden programlı olarak PDF'ye dönüştürebilirsiniz. Bu makalede bu dönüşümün nasıl gerçekleştirileceği açıklanmaktadır.

{{% alert color="primary" %}}

Bir belgedeki sayfa sayısının dönüştürme süresini etkilediğini unutmayın.

{{% /alert %}}

### DOC veya DOCX'i PDF {#convert-doc-or-docx-to-pdf}'ye dönüştürün

DOC veya DOCX belge formatından Aspose.Words'de PDF formatına dönüştürmek çok kolaydır ve yalnızca iki satır kodla gerçekleştirilebilir:

1. Belgenizi, biçim uzantısıyla birlikte belge adını belirterek yapıcılarından birini kullanarak bir [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) nesnesine yükleyin.
1. [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) nesnesinde [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) yöntemlerinden birini çağırın ve ".PDF" uzantılı bir dosya adı girerek istediğiniz çıktı formatını PDF olarak belirtin.

Aşağıdaki kod örneği, [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str) yöntemini kullanarak bir belgenin DOCX'ten PDF'ye nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

{{% alert color="primary" %}}

Bazen bir belgeyi PDF olarak kaydetmenin sonucunu etkileyebilecek ek seçeneklerin belirtilmesi gerekebilir. Bu seçenekler, PDF çıktısının nasıl görüntüleneceğini belirleyen özellikleri içeren [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) sınıfı kullanılarak belirtilebilir.

Aynı teknikle herhangi bir akış düzeni formatındaki belgeyi PDF formatına dönüştürebileceğinizi unutmayın.

{{% /alert %}}

### Çeşitli PDF Standartlarına Dönüştürme {#convert-to-various-pdf-standards}

Aspose.Words, DOC veya DOCX'in çeşitli PDF formatı standartlarına (PDF 1.7, PDF 1.5 vb. gibi) dönüştürülmesini desteklemek için [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) numaralandırması sağlar.

Aşağıdaki kod örneği, [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17) uyumlu [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) kullanarak bir belgenin PDF 1.7'ye nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## Görüntüleri PDF'ye Dönüştür

PDF'ye dönüştürme Microsoft Word belge formatlarıyla sınırlı değildir. Programlı olarak oluşturulanlar da dahil olmak üzere Aspose.Words tarafından desteklenen herhangi bir format da PDF'ye dönüştürülebilir. Örneğin, JPEG, PNG, BMP, EMF veya WMF gibi tek sayfalı görsellerin yanı sıra TIFF ve GIF gibi çok sayfalı görselleri de PDF'ye dönüştürebiliriz.

Aşağıdaki kod örneği, JPEG ve TIFF görüntülerinin PDF'ye nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

Bu kodun çalışması için projenize Aspose.Words ve `aspose.pydrawing`'ye referanslar eklemeniz gerekir.

## PDF Çıktı Boyutunu Azaltın

PDF'ye kaydederken çıktıyı optimize etmek isteyip istemediğinizi belirtebilirsiniz. Bunu yapmak için [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) bayrağını true olarak ayarlamanız gerekir, ardından yedekli iç içe geçmiş tuvaller ve boş tuvaller kaldırılacak, aynı biçimlendirmeye sahip komşu glyph'ler birleştirilecektir.

{{% alert color="primary" %}}

**OptimizeOutput** özelliğinin kullanılması içerik görüntülemenin doğruluğunu etkileyebilir.

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## PDF Çıktı Boyutunu Azaltın

PDF'ye kaydederken çıktıyı optimize etmek isteyip istemediğinizi belirtebilirsiniz. Bunu yapmak için [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) bayrağını true olarak ayarlamanız gerekir, ardından yedekli iç içe geçmiş tuvaller ve boş tuvaller kaldırılacak, aynı biçimlendirmeye sahip komşu glyph'ler birleştirilecektir.

{{% alert color="primary" %}}

**OptimizeOutput** özelliğinin kullanılması içerik görüntülemenin doğruluğunu etkileyebilir.

{{% /alert %}}

## Ayrıca bakınız

- Sabit sayfa ve akış düzeni formatları hakkında daha fazla bilgi için [İşleme](/words/tr/python-net/rendering/) makalesi
- Sayfa düzeni hakkında daha fazla bilgi için [Sabit Sayfa Formatına Dönüştürme](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) makalesi
- [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) sınıfını kullanma hakkında daha fazla bilgi için [PDF'ye Dönüştürürken İşleme Seçeneklerini Belirtin](/words/tr/python-net/specify-rendering-options-when-converting-to-pdf/) makalesi
