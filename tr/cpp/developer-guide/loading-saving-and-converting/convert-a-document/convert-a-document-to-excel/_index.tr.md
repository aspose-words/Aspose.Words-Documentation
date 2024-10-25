---
title: Word'ü C++ içinde Excel'e dönüştürme
second_title: Aspose.Words için C++
articleTitle: Bir Belgeyi Excel'e Dönüştürme
linktitle: Bir Belgeyi Excel'e Dönüştürme
description: "PDF 'yi Excel'e, XML'ü Excel'e, DOCX'ı Excel C++'e dönüştürün. C++ kullanarak bir belgeyi çeşitli biçimlerde XLSX konumuna kaydedin."
type: docs
weight: 15
url: /tr/cpp/convert-a-document-to-excel/
---

Belgeleri bir formattan diğerine dönüştürmek Aspose.Words 'in en önemli özelliğidir. Belgeleri mevcut herhangi bir [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) formatta da XLSX formatına dönüştürebilirsiniz.

## Bir Belgeyi XLSX konumuna Dönüştürme

Bir belgeyi XLSX 'e dönüştürmek oldukça karmaşık bir işlemdir. Belgenizi Aspose.Words kullanarak XLSX biçimine kaydetmek için [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) numaralandırmasındaki **XlsxSaveOptions** sınıfını ve yeni `Xlsx` öğesini kullanın. Yukarıda belirtildiği gibi, belgeyi Aspose.Words ile XLSX arasında desteklenen herhangi bir yükleme biçiminde kaydedebilirsiniz.

Aşağıdaki kod örneği nasıl kaydedileceğini gösterir PDF için XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## XLSX'a Kaydederken Bul ve Değiştir

Ayrıca Aspose.Words kullanarak, belgenizde belirli bir dize veya normal ifade bulabilir ve onu ihtiyacınız olan eşleşen ifadeyle değiştirebilirsiniz. Ardından sonucu XLSX biçimine de kaydedebilirsiniz.

Aşağıdaki kod örneği, bul ve değiştir işleminin nasıl gerçekleştirileceğini ve sonucun XLSX değerine nasıl kaydedileceğini gösterir:

{{< highlight cpp >}}
auto doc = MakeObject<Document>();
auto builder = MakeObject<DocumentBuilder>(doc);

builder->Writeln(u"Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
auto options = MakeObject<FindReplaceOptions>();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options->set_MatchCase(true);

doc->get_Range()->Replace(u"Ruby", u"Jade", options);
doc->Save(ArtifactsDir + u"BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## XLSX'a Kaydederken Sıkıştırma Düzeyini Belirtin

**CompressionLevel** özelliğini kullanarak kaydederken sıkıştırma düzeyini de belirtebilirsiniz.

Aşağıdaki kod örneği, XLSX biçimine kaydederken sıkıştırma düzeyinin nasıl belirtileceğini gösterir:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Ayrıca bakınız

- Dokümantasyon bölümü [Bir Belgeyi Koruyun veya Şifreleyin](/words/cpp/protect-or-encrypt-a-document/) bir belgeyi koruma ve şifreleme hakkında daha fazla bilgi için
- Makale [Bul ve Değiştir](/words/cpp/find-and-replace/) istediğiniz içeriği bulma ve değiştirme hakkında daha fazla bilgi için
