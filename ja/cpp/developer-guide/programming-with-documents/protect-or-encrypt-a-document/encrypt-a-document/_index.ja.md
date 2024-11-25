---
title: C++で文書を暗号化する
second_title: C++の場合Aspose.Words
articleTitle: 文書を暗号化する
linktitle: 文書を暗号化する
description: "特定の文書形式に適した暗号化アルゴリズムを使用して文書を暗号化します。"
type: docs
weight: 20
url: /ja/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

暗号化は、読み取り可能なテキストを無意味なバイトシーケンスに変換するプロセスであるため、復号化キーまたは秘密コードを持っている人だけが読み このプロセスは、コンテンツを保護する上で重要な役割を果たします。 これは、コンテンツをエンコードし、文書の起源を確認し、コンテンツが送信された後に変更されていないことを証明し、文書からのデータが安全である

この記事では、Aspose.Wordsを使用して文書を暗号化する方法と、文書に暗号化があるかどうかを確認する方法について説明します。

## パスワードで暗号化

文書を暗号化するには、**Password**プロパティを使用して、暗号化キーとして機能するパスワードを指定します。 これにより、文書の内容が変更され、判読不能になります。 暗号化された文書を開くには、このパスワードを入力する必要があります。

{{% alert color="primary" %}}

必要な形式に適した**Password**プロパティを見つけることができます。 [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving)内の各文書保存形式には、この形式の保存オプションを含む対応するクラスがあります。 たとえば、DOCの場合は[DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/)クラスの[Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/)プロパティ、[OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/)クラスの場合は[Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/)プロパティですDOCX, DOCM, DOTX, DOTM, とFlatOpc。

{{% /alert %}}

{{% alert color="primary" %}}

特定の文書形式のみが暗号化をサポートしていることに注意してください。 たとえば、RTFは暗号化をサポートしていません。

{{% /alert %}}

次の表は、Aspose.Wordsでサポートされている形式と暗号化アルゴリズムを示しています:

| フォーマット | 読み込み中の暗号化に対応 | 保存中の暗号化に対応 |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR暗号化40ビットRC4EncryptionCryptoAPI RC4暗号化 | RC4暗号化(40ビット) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376標準暗号化Ecma-376アジャイル暗号化 | ECMA-376標準暗号化(AES128+SHA1) |
| ODT, OTT | ODF暗号化（Blowfish/AES） | ODF暗号化(AES256+SHA256) |
| PDF | RC4暗号化(40/128ビット) |

次のコード例は、パスワードを使用してドキュメントを暗号化する方法を示しています:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## ドキュメントが暗号化されているかどうかを確認する

場合によっては、読めない文書があり、文書が暗号化されていて、破損または圧縮されていないことを確認したい場合があります。

ドキュメントが暗号化されているかどうか、およびパスワードが必要かどうかを検出するには、[FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo)クラスの[IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/)プロパティを使用できます。 このプロパティを使用すると、ドキュメントをロードする前に、パスワードを指定するようにユーザーに通知するなどのアクションを実行できます。

次のコード例は、ドキュメントの暗号化を検出する方法を示しています:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## パスワードの有無にかかわらず文書を開く

ドキュメントが暗号化されていることを確認したら、パスワードなしでこのドキュメントを開こうとすると、例外が発生する可能性があります。

次のコード例は、パスワードなしで暗号化されたドキュメントを開く方法を示しています:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

暗号化された文書はパスワードなしでは開くことができないことを確認した後、パスワードを入力して開くことができます。

次のコード例は、パスワードを使用して暗号化されたドキュメントを開く方法を示しています:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}