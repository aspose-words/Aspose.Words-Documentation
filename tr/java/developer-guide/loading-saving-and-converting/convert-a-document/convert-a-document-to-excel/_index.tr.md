---
title: Word'i Excel'e dönüştürün Java
second_title: Aspose.Words için Java
articleTitle: Bir belgeyi Excel'e dönüştürün
linktitle: Bir belgeyi Excel'e dönüştürün
description: "PDF'yi Excel'e dönüştürün, XML'i Excel'e, DOCX'i Excel'e Java. Çeşitli biçimde bir belgeyi XLSX kullanarak kaydedin Java."
type: docs
weight: 15
url: /tr/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Bir biçimdeki belgeleri başka bir biçimde dönüştürmek [load format](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)'ın başlıksız özelliğidir. Aspose.Words'de mevcut olan herhangi bir belgeyi de XLSX biçimine dönüştürebilirsiniz.

## Bir belgeyi XLSX dönüştür

Bir belgeyi XLSX'e dönüştürmek oldukça karmaşık bir işlemdir. Belgeyi yukarıda belirtilen Aspose.Words kullanarak XLSX formatına kaydetmek için [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) sınıfını ve yeni `Xlsx` öğesini [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) numaralandırmasında kullanın. Yukarıda belirtildiği gibi, belgeyi Aspose.Words'in desteklediği herhangi bir yükleme formatında XLSX'e kaydedebilirsiniz.

Aşağıdaki kod örneğinde, bir PDF'i XLSX olarak kaydetmek nasıl yapılır gösterilmektedir:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Bazen bir dosyayı XLSX olarak kaydetme sonucunu etkileyebilecek ek seçenekleri belirtmek gerekir. Bu seçenekler [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) sınıfını kullanarak belirtilebilir ve bunlar, XLSX çıktısının nasıl gösterileceğini belirten özelliklere sahip bir sınıftır.

{{% /alert %}}

## XLSX'e Kaydetme Zamanında Bul ve Değiştir

Ayrıca Aspose.Words kullanarak, belgenizde özel bir dizge veya normal ifadeyi bulabilir ve eşleşen ihtiyacınız olan bir tane ile değiştirebilirsiniz. Sonra da sonucu XLSX biçimine kaydedebilirsiniz.

Aşağıdaki kod örneği, bul ve değiştir işlemini nasıl yapıldığını ve sonucu XLSX olarak kaydetmek gösteriyor:

{{< highlight java >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.setMatchCase(true);

doc.getRange().replace("Ruby", "Jade", options);
doc.save(getArtifactsDir() + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## XLSX'e Kaydetırken Sıkıştırma Düzeyini Belirtin

Kaydetmek için kullanırken [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) özelliğini kullanarak sıkıştırma seviyesini de belirtebilirsiniz.

Aşağıdaki kod örneği, XLSX formatına kaydetirken sıkıştırma seviyesini nasıl belirteceğinizi göstermektedir:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Ayrıca bakınız

- Belgelendirme bölümü [Protect or Encrypt a Document](/words/java/protect-or-encrypt-a-document/) hakkında bir belgeyi nasıl koruyacağınız ve şifreleyeceğiniz hakkında daha fazla bilgi için
- The article [Find and Replace](/words/java/find-and-replace/) için daha fazla bilgi bulmak ve içeriği aramak istediğiniz değiştirme hakkında
