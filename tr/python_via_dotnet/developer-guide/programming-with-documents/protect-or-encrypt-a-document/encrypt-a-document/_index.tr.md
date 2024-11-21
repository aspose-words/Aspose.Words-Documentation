---
title: Python'te bir Belgeyi Şifreleyin
second_title: Python via .NET için Aspose.Words
articleTitle: Belgeyi Şifrele
linktitle: Belgeyi Şifrele
description: "Python'teki belirli belge formatları için uygun şifreleme algoritmalarını kullanarak belgenizi şifreleyin."
type: docs
weight: 20
url: /tr/python-net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Şifreleme, okunabilir metni anlamsız bayt dizilerine dönüştüren ve böylece yalnızca şifre çözme anahtarına veya gizli koda sahip olan kişi tarafından okunabilen işlemdir. Bu süreç içeriğinizin güvenliğini sağlamada önemli bir rol oynar. İçeriğin kodlanmasına, bir belgenin kaynağının doğrulanmasına, içeriğin gönderildikten sonra değiştirilmediğinin kanıtlanmasına ve belgedeki verilerin güvenli olduğundan emin olunmasına yardımcı olur.

Bu makalede Aspose.Words'in bir belgeyi şifrelemenize nasıl izin verdiği ve bir belgenin şifrelemesi olup olmadığının nasıl kontrol edileceği açıklanmaktadır.

## Şifreyle Şifrele

Bir belgeyi şifrelemek için, şifreleme anahtarı işlevi gören bir parola sağlamak üzere **şifre** özelliğini kullanın. Bu, belgenizin içeriğini değiştirecek ve onu okunamaz hale getirecektir. Şifrelenmiş belgenin açılabilmesi için bu şifrenin girilmesi gerekecektir.

{{% alert color="primary" %}}

Gerekli format için uygun **şifre** özelliğini bulabilirsiniz. [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) modülündeki her belge kaydetme biçimi, bu biçim için kaydetme seçeneklerini içeren karşılık gelen bir sınıfa sahiptir. Örneğin, DOC için [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) sınıfındaki [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) özelliği veya DOCX, DOCM, DOTX, DOTM ve FlatOpc için [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) sınıfındaki [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) özelliği.

{{% /alert %}}

{{% alert color="primary" %}}

Yalnızca belirli belge biçimlerinin şifrelemeyi desteklediğini unutmayın. Örneğin RTF şifrelemeyi desteklemez.

{{% /alert %}}

Aşağıdaki tabloda Aspose.Words tarafından desteklenen formatlar ve şifreleme algoritmaları listelenmektedir:

| Biçim |  Yükleme Sırasında Desteklenen Şifreleme |  Kaydederken Desteklenen Şifreleme |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  XOR şifreleme40 bit RC4 ŞifrelemeCryptoAPI RC4 Şifreleme |  RC4 Şifreleme (40 bit) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376 Standart ŞifrelemeECMA-376 Çevik Şifreleme |  ECMA-376 Standart Şifreleme (AES128 + SHA1) |
|  ODT, OTT |  ODF Şifrelemesi (Blowfish/AES) |  ODF Şifrelemesi (AES256 + SHA256) |
|  PDF'ler |                                                          |  RC4 Şifreleme (40/128 bit) |

Aşağıdaki kod örneği, bir belgenin parolayla nasıl şifreleneceğini gösterir:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# DocSaveOptions only applies to Doc and Dot save formats.
options = aw.saving.DocSaveOptions(aw.SaveFormat.DOC);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.save(artifacts_dir + "DocSaveOptions.SaveAsDoc.doc", options)
{{< /highlight >}}

## Bir Belgenin Şifreli Olup Olmadığını Kontrol Edin

Bazı durumlarda okunamayan bir belgeniz olabilir ve belgenin şifrelendiğinden, bozulmadığından veya sıkıştırılmadığından emin olmak isteyebilirsiniz.

Bir belgenin şifrelenip şifrelenmediğini ve şifre gerekip gerekmediğini tespit etmek için [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) sınıfının [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) özelliğini kullanabilirsiniz. Bu özellik aynı zamanda bir belgeyi yüklemeden önce, örneğin kullanıcıya parola girmesini bildirmek gibi bazı eylemleri gerçekleştirmenize de olanak tanır.

Aşağıdaki kod örneği, belge şifrelemesinin nasıl algılanacağını gösterir:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
saveOptions = aw.saving.OdtSaveOptions(aw.SaveFormat.ODT)
saveOptions.password = "MyPassword"

doc.Save(artifacts_dir + "File.DetectDocumentEncryption.odt", saveOptions)
            
# Create a `FileFormatInfo` object for this document.
info = aw.FileFormatUtil.detect_file_format(artifacts_dir + "File.DetectDocumentEncryption.odt")

# Verify the encryption status of our document.
self.assertTrue(info.is_encrypted)
{{< /highlight >}}

## Parolalı veya Parolasız Bir Belgeyi Açma

Bir belgenin şifrelendiğinden emin olduğumuzda, bu belgeyi parola olmadan açmayı deneyebiliriz, bu da bir istisnaya yol açacaktır.

Aşağıdaki kod örneği, şifrelenmiş bir belgeyi parola olmadan açmanın nasıl deneneceğini gösterir:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# We will not be able to open this document with Microsoft Word or
# Aspose.Words without providing the correct password.
# The following line will throw an exception.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx"))
{{< /highlight >}}

Şifrelenmiş bir belgenin şifre olmadan açılamayacağını gördükten sonra şifreyi girerek açmayı deneyebiliriz.

Aşağıdaki kod örneği, şifrelenmiş bir belgenin parolayla nasıl açılacağını gösterir:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx", aw.loading.LoadOptions("MyPassword"))

self.assertEqual("Hello world!", doc.get_text().strip())
{{< /highlight >}}
