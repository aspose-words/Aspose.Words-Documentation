---
title: Шифроване на документ в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Шифроване на документ
linktitle: Шифроване на документ
description: "Шифроване на вашия документ чрез подходящи алгоритми за криптиране за специфични формати на документи в Python."
type: docs
weight: 20
url: /bg/python-net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Шифроване е процес, който превежда четим текст до безсмислени последователности на байтове, така че тя може да бъде прочетена само от лицето, което има ключ декриптиране или таен код. Този процес играе важна роля в осигуряването на вашето съдържание. Той помага да се кодира съдържанието, да се провери произхода на документа, да се докаже, че съдържанието не е променено след изпращането му и да се гарантира, че данните от документа са безопасни.

Тази статия обяснява как Aspose.Words позволява да шифровате документ и как да проверите дали документът има криптиране или не.

## Шифроване с парола

За да шифровате документа, използвайте **парола** имот за предоставяне на парола, която функционира като ключ за криптиране. Това ще промени съдържанието на вашия документ и ще го направи нечетлив. Кодираният документ ще изисква тази парола да бъде въведена преди да бъде отворена.

{{% alert color="primary" %}}

Можете да намерите подходящото **парола** собственост за необходимия формат. Всеки документ запазва формат в [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) модулът има съответен клас, съдържащ опции за запазване на този формат. Например, [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) собственост в [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) клас за DOC или [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) собственост в [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) клас за DOCX, DOCM, DOTX, DOTM и FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Имайте предвид, че само определени формати на документи поддържат криптиране. Например RTF не поддържа криптиране.

{{% /alert %}}

Таблицата по-долу изброява форматите и алгоритмите за криптиране, поддържани от Aspose.Words:

| Формат |  Поддържане на криптиране при зареждане |  Поддържане на криптиране при запис |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  XOR криптиране40-bit RC4 криптиранеCryptoAPI RC4 Шифроване |  RC4 Шифроване (40- бита) |
|  DOX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376 Стандартно криптиранеECMA-376 Агилено криптиране |  ECMA-376 Стандартно криптиране (AES128 + SHA1) |
|  OTT, OTT |  криптиране на ODF (Blowfish/AES) |  криптиране на ODF (AES256 + SHA256) |
|  PDF |                                                          |  RC4 Шифроване (40/128 бита) |

Следният пример за код показва как да се кодира документ с парола:

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

## Проверка дали документът е шифрован

В някои случаи може да имате нечетлив документ и да искате да сте сигурни, че документът е криптиран и не е повреден или компресиран.

За да откриете дали документът е криптиран и ако е необходима парола, можете да използвате [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) собственост на [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) Клас. Този имот също така ще ви позволи да извършите някои действия преди зареждане на документ, например, информиране на потребителя да предостави парола.

Следният пример за код показва как да се открие криптиране на документа:

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

## Отваряне на документ със или без парола

Когато се уверим, че документът е криптиран, можем да се опитаме да отворим този документ без парола, което трябва да доведе до изключение.

Следният пример за код показва как да се опитате да отворите криптиран документ без парола:

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

След като видим, че криптиран документ не може да бъде отворен без парола, можем да се опитаме да го отворим чрез въвеждане на паролата.

Следният пример за код показва как да се опитате да отворите криптиран документ с парола:

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
