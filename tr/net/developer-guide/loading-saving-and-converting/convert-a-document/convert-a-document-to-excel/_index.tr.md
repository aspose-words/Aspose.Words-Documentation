---
title: C#'te Word'ü Excel'e dönüştürün
second_title: .NET için Aspose.Words
articleTitle: Belgeyi Excel'e Dönüştürme
linktitle: Belgeyi Excel'e Dönüştürme
description: "PDF'yi Excel'e, XML'i Excel'e, DOCX'i Excel C#'ye dönüştürün. C# kullanarak bir belgeyi çeşitli formatlarda XLSX'e kaydedin."
type: docs
weight: 15
url: /tr/net/convert-a-document-to-excel/
---

Belgeleri bir formattan diğerine dönüştürmek Aspose.Words'in amiral gemisi özelliğidir. Mevcut herhangi bir [yükleme biçimi](https://reference.aspose.com/words/tr/net/aspose.words/loadformat/) formatındaki belgeleri XLSX formatına da dönüştürebilirsiniz.

## Bir Belgeyi XLSX'e Dönüştürme

Bir belgeyi XLSX'e dönüştürmek oldukça karmaşık bir işlemdir. Belgenizi Aspose.Words kullanarak XLSX biçiminde kaydetmek için [XlsxSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/xlsxsaveoptions/) sınıfını ve [SaveFormat](https://reference.aspose.com/words/tr/net/aspose.words/saveformat/) numaralandırmasındaki yeni `Xlsx` öğesini kullanın. Yukarıda belirtildiği gibi, belgeyi Aspose.Words'in desteklediği herhangi bir yükleme formatında XLSX'e kaydedebilirsiniz.

Aşağıdaki kod örneği, PDF'nin XLSX'e nasıl kaydedileceğini gösterir:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Bazen bir belgenin XLSX olarak kaydedilmesinin sonucunu etkileyebilecek ek seçeneklerin belirtilmesi gerekebilir. Bu seçenekler, XLSX çıkışının nasıl görüntüleneceğini belirleyen özellikleri içeren [XlsxSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/xlsxsaveoptions/) sınıfı kullanılarak belirtilebilir.

{{% /alert %}}

## XLSX'e Kaydederken Bul ve Değiştir

Ayrıca Aspose.Words'i kullanarak belgenizde belirli bir dize veya normal ifadeyi bulabilir ve onu ihtiyacınız olan eşleşen ifadeyle değiştirebilirsiniz. Daha sonra sonucu XLSX formatında da kaydedebilirsiniz.

Aşağıdaki kod örneği, bulma ve değiştirme işleminin nasıl gerçekleştirileceğini ve sonucun XLSX'e nasıl kaydedileceğini gösterir:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.Writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.MatchCase = true;

doc.Range.Replace("Ruby", "Jade", options);
doc.Save(ArtifactsDir + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## XLSX'e Kaydederken Sıkıştırma Düzeyini Belirleyin

[CompressionLevel](https://reference.aspose.com/words/tr/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/) özelliğini kullanarak kaydederken sıkıştırma düzeyini de belirleyebilirsiniz.

Aşağıdaki kod örneği, XLSX biçiminde kaydederken sıkıştırma düzeyinin nasıl belirtileceğini gösterir:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Ayrıca bakınız

- Bir belgeyi koruma ve şifreleme hakkında daha fazla bilgi için Dokümantasyon bölümü [Bir Belgeyi Koruyun veya Şifreleyin](/words/tr/net/protect-or-encrypt-a-document/)
- İstediğiniz içeriği bulma ve değiştirme hakkında daha fazla bilgi için [Bul ve Değiştir](/words/tr/net/find-and-replace/) makalesi
