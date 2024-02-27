---
title: Python'te Word'ü Excel'e dönüştürün
second_title: Python via .NET için Aspose.Words
articleTitle: Belgeyi Excel'e Dönüştürme
linktitle: Belgeyi Excel'e Dönüştürme
description: "PDF'yi Excel'e, XML'i Excel'e, DOCX'i Excel Python'ye dönüştürün. Python kullanarak bir belgeyi çeşitli formatlarda XLSX'e kaydedin."
type: docs
weight: 15
url: /tr/python-net/convert-a-document-to-excel/
---

Belgeleri bir formattan diğerine dönüştürmek Aspose.Words'in amiral gemisi özelliğidir. Mevcut herhangi bir [yükleme biçimi](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) formatındaki belgeleri XLSX formatına da dönüştürebilirsiniz.

## Bir Belgeyi XLSX'e Dönüştürme

Bir belgeyi XLSX'e dönüştürmek oldukça karmaşık bir işlemdir. Belgenizi Aspose.Words kullanarak XLSX biçiminde kaydetmek için [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) sınıfını ve [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) numaralandırmasındaki yeni `Xlsx` öğesini kullanın. Yukarıda belirtildiği gibi, belgeyi Aspose.Words'in desteklediği herhangi bir yükleme formatında XLSX'e kaydedebilirsiniz.

Aşağıdaki kod örneği, PDF'nin XLSX'e nasıl kaydedileceğini gösterir:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Bazen bir belgenin XLSX olarak kaydedilmesinin sonucunu etkileyebilecek ek seçeneklerin belirtilmesi gerekebilir. Bu seçenekler, XLSX çıkışının nasıl görüntüleneceğini belirleyen özellikleri içeren [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) sınıfı kullanılarak belirtilebilir.

{{% /alert %}}

## XLSX'e Kaydederken Bul ve Değiştir

Ayrıca Aspose.Words'i kullanarak belgenizde belirli bir dize veya normal ifadeyi bulabilir ve onu ihtiyacınız olan eşleşen ifadeyle değiştirebilirsiniz. Daha sonra sonucu XLSX formatında da kaydedebilirsiniz.

Aşağıdaki kod örneği, bulma ve değiştirme işleminin nasıl gerçekleştirileceğini ve sonucun XLSX'e nasıl kaydedileceğini gösterir:

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.replacing import FindReplaceOptions

doc =  Document()

builder = DocumentBuilder(doc)
builder.writeln("Ruby bought a ruby necklace.")

# We can use a "FindReplaceOptions" object to modify the find - and -replace process.
options = FindReplaceOptions()

# Set the "match_case" flag to "True" to apply case sensitivity while finding strings to replace.
# Set the "match_case" flag to "False" to ignore character case while searching for text to replace.
options.match_case = True

doc.range.replace("Ruby", "Jade", options)
doc.save(ARTIFACTS_DIR + "BaseConversions.FindReplaceXlsx.xlsx")
{{< /highlight >}}

## XLSX'e Kaydederken Sıkıştırma Düzeyini Belirleyin

[CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/) özelliğini kullanarak kaydederken sıkıştırma düzeyini de belirleyebilirsiniz.

Aşağıdaki kod örneği, XLSX biçiminde kaydederken sıkıştırma düzeyinin nasıl belirtileceğini gösterir:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## Ayrıca bakınız

- Bir belgeyi koruma ve şifreleme hakkında daha fazla bilgi için Dokümantasyon bölümü [Bir Belgeyi Koruyun veya Şifreleyin](/words/tr/python-net/protect-or-encrypt-a-document/)
- İstediğiniz içeriği bulma ve değiştirme hakkında daha fazla bilgi için [Bul ve Değiştir](/words/tr/python-net/find-and-replace/) makalesi
