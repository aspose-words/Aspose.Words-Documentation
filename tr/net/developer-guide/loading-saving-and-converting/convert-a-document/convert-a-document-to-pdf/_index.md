---
title: C#'te Word'ü PDF'ye dönüştürün
second_title: .NET için Aspose.Words
articleTitle: Bir Belgeyi PDF'ye Dönüştürme
linktitle: Bir Belgeyi PDF'ye Dönüştürme
description: "C# kullanarak bir belgeyi PDF'ye dönüştürün. DOCX'i PDF C#'ye dönüştürün. Word, OpenOffice, Resim ve e-Kitap formatları dahil olmak üzere çeşitli giriş formatları desteklenir."
type: docs
weight: 10
url: /tr/net/convert-a-document-to-pdf/
---

Belgeleri bir formattan diğerine kolay ve güvenilir bir şekilde dönüştürme yeteneği Aspose.Words'in önemli bir özelliğidir. Dönüştürme için en popüler formatlardan biri, bir belgenin çeşitli platformlarda işlenmesi sırasında orijinal görünümünü koruyan sabit düzen formatı olan PDF'dir. "Rendering" terimi Aspose.Words'te bir belgenin sayfalandırılmış veya sayfa kavramına sahip bir dosya biçimine dönüştürülmesi sürecini tanımlamak için kullanılır.

## Word Belgesini PDF'ye Dönüştürme

Word'den PDF'ye dönüştürme, birkaç hesaplama aşaması gerektiren oldukça karmaşık bir işlemdir. Aspose.Words düzen motoru, Microsoft Word'nin sayfa düzeni motorunun çalışma biçimini taklit ederek PDF çıktı belgelerinin Microsoft Word'de gördüklerinize mümkün olduğunca yakın görünmesini sağlar.

Aspose.Words ile, Microsoft Office kullanmadan bir belgeyi DOC veya DOCX gibi Word biçimlerinden programlı olarak PDF'ye dönüştürebilirsiniz. Bu makalede bu dönüşümün nasıl gerçekleştirileceği açıklanmaktadır.

{{% alert color="primary" %}}

Bir belgedeki sayfa sayısının dönüştürme süresini etkilediğini unutmayın.

{{% /alert %}}

### DOCX veya DOC'yi PDF'ye dönüştürün

DOC veya DOCX belge formatından Aspose.Words'de PDF formatına dönüştürmek çok kolaydır ve yalnızca iki satır kodla gerçekleştirilebilir:

1. Belgenizi, biçim uzantısıyla birlikte belge adını belirterek yapıcılarından birini kullanarak bir [Document](https://reference.aspose.com/words/net/aspose.words/document/) nesnesine yükleyin.
1. **Document** nesnesinde [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) yöntemlerinden birini çağırın ve ".PDF" uzantılı bir dosya adı girerek istediğiniz çıktı formatını PDF olarak belirtin.

Aşağıdaki kod örneği, [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) yöntemini kullanarak bir belgenin DOCX'ten PDF'ye nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

{{% alert color="primary" %}}

Bazen bir belgeyi PDF olarak kaydetmenin sonucunu etkileyebilecek ek seçeneklerin belirtilmesi gerekebilir. Bu seçenekler, PDF çıktısının nasıl görüntüleneceğini belirleyen özellikleri içeren [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) sınıfı kullanılarak belirtilebilir.

Aynı teknikle herhangi bir akış düzeni formatındaki belgeyi PDF formatına dönüştürebileceğinizi unutmayın.

{{% /alert %}}

### Farklı PDF Standartlarına Dönüştürme

Aspose.Words, DOC veya DOCX'in çeşitli PDF formatı standartlarına (PDF 1.7, PDF 1.5 vb. gibi) dönüştürülmesini desteklemek için [PdfUyumluluk](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) numaralandırması sağlar.

Aşağıdaki kod örneği, PDF17 uyumluluğuyla [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) kullanarak bir belgenin PDF 1.7'ye nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## Görüntüleri PDF'ye Dönüştür

PDF'ye dönüştürme Microsoft Word belge formatlarıyla sınırlı değildir. Programlı olarak oluşturulanlar da dahil olmak üzere Aspose.Words tarafından desteklenen herhangi bir format da PDF'ye dönüştürülebilir. Örneğin, JPEG, PNG, BMP, EMF veya WMF gibi tek sayfalı görsellerin yanı sıra TIFF ve GIF gibi çok sayfalı görselleri de PDF'ye dönüştürebiliriz.

Aşağıdaki kod örneği, JPEG ve TIFF görüntülerinin PDF'ye nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

Bu kodun çalışması için projenize Aspose.Words ve `System.Drawing`'ye referanslar eklemeniz gerekir.

## PDF Çıktı Boyutunu Azaltın

PDF'ye kaydederken çıktıyı optimize etmek isteyip istemediğinizi belirtebilirsiniz. Bunu yapmak için [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) bayrağını true olarak ayarlamanız gerekir, ardından yedekli iç içe geçmiş tuvaller ve boş tuvaller kaldırılacak, aynı biçimlendirmeye sahip komşu glyph'ler birleştirilecektir.

Aşağıdaki kod örneği çıktının nasıl optimize edileceğini gösterir:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

**OptimizeOutput** özelliğinin kullanılması içerik görüntülemenin doğruluğunu etkileyebilir.

{{% /alert %}}

## Ayrıca bakınız

- Sabit sayfa ve akış düzeni formatları hakkında daha fazla bilgi için [İşleme](/words/tr/net/rendering/) makalesi
- Sayfa düzeni hakkında daha fazla bilgi için [Sabit Sayfa Formatına Dönüştürme](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) makalesi
- `PdfSaveOptions` sınıfını kullanma hakkında daha fazla bilgi için [PDF'ye Dönüştürürken İşleme Seçeneklerini Belirtin](/words/tr/net/specify-rendering-options-when-converting-to-pdf/) makalesi
- Hangi PDF standardının ve PDF için ilgili ISO standartlarının Aspose.Words'i desteklediğini açıklayan [PDF/A ve PDF/UA'ya Dönüştürmenin Özelliklerini Öğrenin](/words/tr/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) makalesi
- Hangi PDF standartlarının hangi durumlarda anlamlı olduğunu belirlemek için [Hangi PDF Standardını Seçmek Daha İyidir](/words/tr/net/which-pdf-standard-is-better-to-choose/) makalesi

- [PDF/A veya PDF/UA ile çalışma](/words/tr/net/working-with-pdfa-or-pdfua/) makalesi, PDF/A ve PDF/UA formatlarındaki belge içeriğine ilişkin gereksinimleri açıklamaktadır; esas olarak yapı ve yazı tiplerine ilişkin gereksinimler

- [PDF/A ve PDF/UA'ya Kaydederken Erişilebilirlik Sorunu Uyarıları](/words/tr/net/warnings-when-saving-to-pdfa-and-pdfua/) makalesi, PDF/A ve PDF/UA'nın hangi içerik erişilebilirlik gerekliliklerini gerektirdiğini açıklamaktadır
