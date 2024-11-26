---
title: Python でドキュメントを暗号化する
second_title: Python via .NET用Aspose.Words
articleTitle: 文書を暗号化する
linktitle: 文書を暗号化する
description: "Python の特定のドキュメント形式に適切な暗号化アルゴリズムを使用してドキュメントを暗号化します。"
type: docs
weight: 20
url: /ja/python-net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

暗号化は、読み取り可能なテキストを意味のないバイトのシーケンスに変換して、復号化キーまたは秘密コードを持っている人だけが読み取ることができるようにするプロセスです。このプロセスは、コンテンツを保護する上で重要な役割を果たします。これは、コンテンツのエンコード、ドキュメントの出所の検証、送信後にコンテンツが変更されていないことの証明、ドキュメントのデータの安全性の確認に役立ちます。

この記事では、Aspose.Words を使用してドキュメントを暗号化する方法と、ドキュメントが暗号化されているかどうかを確認する方法について説明します。

## パスワードで暗号化する

ドキュメントを暗号化するには、**パスワード** プロパティを使用して、暗号化キーとして機能するパスワードを指定します。これにより、ドキュメントの内容が変更され、判読できなくなります。暗号化されたドキュメントを開く前に、このパスワードを入力する必要があります。

{{% alert color="primary" %}}

必要な形式に適切な **パスワード** プロパティを見つけることができます。 [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) モジュール内の各ドキュメント保存形式には、この形式の保存オプションを含む対応するクラスがあります。たとえば、DOC の場合は [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) クラスの [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) プロパティ、DOCX、DOCM、DOTX、DOTM、および FlatOpc の場合は [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) クラスの [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) プロパティです。

{{% /alert %}}

{{% alert color="primary" %}}

特定のドキュメント形式のみが暗号化をサポートしていることに注意してください。たとえば、RTF は暗号化をサポートしていません。

{{% /alert %}}

次の表に、Aspose.Words でサポートされている形式と暗号化アルゴリズムを示します。

| フォーマット |  ロード中の暗号化をサポート |  保存時の暗号化をサポート |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  文書、DOT |  XOR 暗号化40 ビット RC4 暗号化CryptoAPI RC4 暗号化 |  RC4 暗号化 (40 ビット) |
|  DOCX、DOTX、DOCM、DOTM、FlatOPC、FlatOpcTemplate、FlatOpcMacroEnabled、FlatOpcTemplateMacroEnabled |  ECMA-376 標準暗号化ECMA-376 アジャイル暗号化 |  ECMA-376 標準暗号化 (AES128 + SHA1) |
|  ODT、OTT |  ODF 暗号化 (Blowfish/AES) |  ODF 暗号化 (AES256 + SHA256) |
|  PDF |                                                          |  RC4 暗号化 (40/128 ビット) |

次のコード例は、パスワードを使用してドキュメントを暗号化する方法を示しています。

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

## ドキュメントが暗号化されているかどうかを確認する

場合によっては、読み取り不能な文書があり、その文書が暗号化されていて、破損または圧縮されていないことを確認したいことがあります。

ドキュメントが暗号化されているかどうか、およびパスワードが必要かどうかを検出するには、[FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) クラスの [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) プロパティを使用できます。このプロパティを使用すると、ドキュメントをロードする前に、ユーザーにパスワードを入力するように通知するなど、何らかのアクションを実行することもできます。

次のコード例は、ドキュメントの暗号化を検出する方法を示しています。

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

## パスワードありまたはパスワードなしでドキュメントを開く

ドキュメントが暗号化されていることを確認したら、パスワードなしでこのドキュメントを開こうとすると、例外が発生します。

次のコード例は、パスワードを使用せずに暗号化されたドキュメントを開いてみる方法を示しています。

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

暗号化されたドキュメントはパスワードなしでは開けないことがわかったら、パスワードを入力してドキュメントを開こうとします。

次のコード例は、パスワードを使用して暗号化されたドキュメントを開いてみる方法を示しています。

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
