---
title: Зашифрувати документ у Python
second_title: Aspose.Words для Python via .NET
articleTitle: Сшифрувати документ
linktitle: Сшифрувати документ
description: "Зашифруйте свій документ, використовуючи відповідні алгоритми шифрування для окремих форматів документів Pythonй"
type: docs
weight: 20
url: /uk/python-net/encrypt-a-document/
---

Шифрування - це процес, який переводить читабельний текст, щоб безглузді послідовності байтів, так що його можна прочитати лише особою, яка має ключ розшифрування або секретний код. Цей процес відіграє важливу роль у забезпеченні вашого вмісту. Допомагає зашифрувати зміст, перевірити походження документа, довести, що зміст не було змінено після його відправлення, і забезпечити, що дані з документа є безпечними.

У статті описано, як Aspose.Words дозволяє зашифрувати документ і як перевірити, чи має документ шифрування або ні.

## Зашифрувати пароль

Для шифрування документа використовуйте документ **Увійти** властивість забезпечити пароль, який функціонує як ключ шифрування. Це буде змінювати зміст вашого документа і зробити його нечитабельним. Зашифрований документ потрібно мати цей пароль до його відкриття.

{{% alert color="primary" %}}

Ви можете знайти відповідні **Увійти** майно для необхідного формату. Кожен документ зберігає формат у [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) Модуль має відповідний клас, що містить параметри збереження для цього формату. Наприклад, [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) нерухомість в [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) клас для DOC, або [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) нерухомість в [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) клас для DOCX, DOCM, DOTР, DOTM, та FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Зверніть увагу, що лише деякі формати документів підтримують шифрування. Наприклад, RTF не підтримує шифрування.

{{% /alert %}}

У таблиці нижче перераховують формати та алгоритми шифрування, що підтримуються Aspose.Words:

| Видання |  Підтримувані шифрування при завантаженні |  Підтримувані шифрування при збереженні |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  ДОК, DOT |  XOR шифрування40-bit RC4 шифруванняCryptoAPI RC4 Шифрування |  RC4 Шифрування (40-bit) |
|  ДОКС, DOTX, ДОМ, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376 Стандартний шифруванняECMA-376 Agile Encryption |  Стандартне шифрування ECMA-376 (AES128 + SHA1) |
|  ODT, OTT |  ODF шифрування (Blowfish/AES) |  ODF шифрування (AES256 + SHA256) |
|  Українська |                                                          |  RC4 Шифрування (40/128 біт) |

Приклад наступного коду показує, як зашифрувати документ з паролем:

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

## Перевірити, якщо документ є зашифровано

У деяких випадках ви можете мати непрочитаний документ і хочете бути впевнені, що документ зашифрований і не пошкоджений або стисненим.

Щоб визначити, чи зашифрований документ, і якщо потрібен пароль, можна використовувати [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) майно майна [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) клас. Ця властивість також дозволить вам виконати деякі дії перед завантаженням документа, наприклад, інформування користувача про надання пароля.

Приклад наступного коду показує, як виявити шифрування документа:

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

## Відкрийте документ з паролем

Коли ми переконалися, що документ зашифрований, ми можемо спробувати відкрити цей документ без пароля, який повинен привести до виключення.

Приклад коду показує, як спробувати відкрити зашифрований документ без пароля:

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

Після того, як ми побачили, що зашифрований документ не може бути відкритий без пароля, ми можемо спробувати відкрити його, вказавши пароль.

Приклад коду показує, як спробувати відкрити зашифрований документ з паролем:

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
