---
title: C# でドキュメントを暗号化する
second_title: .NET用Aspose.Words
articleTitle: 文書を暗号化する
linktitle: 文書を暗号化する
description: "C# の特定のドキュメント形式に適切な暗号化アルゴリズムを使用してドキュメントを暗号化します。"
type: docs
weight: 20
url: /ja/net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

暗号化は、読み取り可能なテキストを無意味なバイトのシーケンスに変換して、復号化キーまたは秘密コードを持っている人だけが読み取ることができるようにするプロセスです。このプロセスは、コンテンツを保護する上で重要な役割を果たします。これは、コンテンツのエンコード、ドキュメントの出所の検証、送信後にコンテンツが変更されていないことの証明、ドキュメントのデータの安全性の確認に役立ちます。

この記事では、Aspose.Words を使用してドキュメントを暗号化する方法と、ドキュメントが暗号化されているかどうかを確認する方法について説明します。

## パスワードで暗号化する

ドキュメントを暗号化するには、**Password** プロパティを使用して、暗号化キーとして機能するパスワードを指定します。これにより、文書の内容が変更され、読めなくなります。暗号化されたドキュメントを開く前に、このパスワードを入力する必要があります。

{{% alert color="primary" %}}

必要な形式に適切な **Password** プロパティを見つけることができます。 [ネームスペースの保存](https://reference.aspose.com/words/net/aspose.words.saving/) 内の各ドキュメント保存形式には、この形式の保存オプションを含む対応するクラスがあります。たとえば、DOC の場合は [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) クラスの [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) プロパティ、DOCX、DOCM、DOTX、DOTM、および FlatOpc の場合は [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/) クラスの [Password](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/password/) プロパティです。

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
|  PDF |  -                                                            |  RC4 暗号化 (40/128 ビット) |

次のコード例は、パスワードを使用してドキュメントを暗号化する方法を示しています。

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## ドキュメントが暗号化されているかどうかを確認する

場合によっては、読み取り不能な文書があり、その文書が暗号化されていて、破損または圧縮されていないことを確認したいことがあります。

ドキュメントが暗号化されているかどうか、およびパスワードが必要かどうかを検出するには、[FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/) クラスの [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) プロパティを使用できます。このプロパティを使用すると、ドキュメントをロードする前に、ユーザーにパスワードを入力するように通知するなど、何らかのアクションを実行することもできます。

次のコード例は、ドキュメントの暗号化を検出する方法を示しています。

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## パスワードありまたはパスワードなしでドキュメントを開く

ドキュメントが暗号化されていることを確認したら、パスワードなしでこのドキュメントを開こうとすると、例外が発生します。

次のコード例は、パスワードを使用せずに暗号化されたドキュメントを開いてみる方法を示しています。

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

暗号化されたドキュメントはパスワードなしでは開けないことがわかったら、パスワードを入力してドキュメントを開こうとします。

次のコード例は、パスワードを使用して暗号化されたドキュメントを開いてみる方法を示しています。

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
