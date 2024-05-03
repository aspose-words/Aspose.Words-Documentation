---
title: ドキュメントを暗号化する Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメントの暗号化
linktitle: ドキュメントの暗号化
description: "適切な暗号化アルゴリズムを使用して文書を暗号化し、特定の文書の形式を Javaお問い合わせ"
type: docs
weight: 20
url: /ja/java/encrypt-a-document/
---

暗号化は、読解可能なテキストをバイトの無意味なシーケンスに翻訳するプロセスで、復号化キーや秘密コードを持っている人だけが読むことができます。 コンテンツの確保に重要な役割を担っています。 コンテンツをエンコードし、文書の起源を検証し、送信された後にコンテンツが変更されていないことを証明し、文書からのデータが安全であることを確認するのに役立ちます。

この記事では、どのように説明する Aspose.Words ドキュメントを暗号化したり、ドキュメントが暗号化されていないかをチェックしたりすることができます。

## パスワードで暗号化する

ドキュメントを暗号化するには、 **Password** 暗号化キーとして機能するパスワードを提供するプロパティ。 これにより、文書の内容を変更し、読みやすくなります。 暗号化された文書は、このパスワードが開く前に入力されている必要があります。

{{% alert color="primary" %}}

適切な検索ができます。 **Password** 必要なフォーマットのプロパティ。 各ドキュメント保存形式には、この形式の保存オプションを含む対応するクラスがあります。 例えば、 [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) プロパティ [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) DOC、またはDOCのクラス [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) プロパティ [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) DOCX、DOCMのクラス、 DOTX、 DOTM、FlatOpc。

{{% /alert %}}

{{% alert color="primary" %}}

特定のドキュメントフォーマットのみが暗号化をサポートすることに注意してください。 例えば、RTFは暗号化をサポートしていません。

{{% /alert %}}

下の表は、フォーマットと暗号化アルゴリズムがサポートされているリストです。 Aspose.Words:::

| フォーマット |  読み込み中の暗号化をサポート |  保存中の暗号化をサポート |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  XORの暗号化40ビットRC4暗号化CryptoAPI RC4 暗号化 |  RC4暗号化(40ビット) |
|  DOCX, DOTX、DOCM、 DOTM、FlatOPC、FlatOpcTemplate、FlatOpcMacroEnabled、FlatOpcTemplateMacroEnabled |  ECMA-376標準暗号化ECMA-376アジャイル暗号化 |  ECMA-376 標準暗号化 (AES128 + SHA1) |
|  ODT、OTT |  ODFの暗号化(ブロフィッシュ/エイズ) |  ODFの暗号化(AES256 + SHA256) |
|  サイトマップ |  -                                                            |  RC4暗号化(40/128ビット) |

次のコードの例では、ドキュメントをパスワードで暗号化する方法を示します。

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## ドキュメントが暗号化されているかどうかをチェックする

場合によっては、未読の文書を持ち、文書が暗号化され、破損または圧縮されていないことを確認することができます。

ドキュメントが暗号化され、パスワードが必要な場合は、 [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) のプロパティ [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) クラス。 このプロパティは、ユーザーがパスワードを提供するように通知するなど、ドキュメントをロードする前に、いくつかのアクションを実行することもできます。

次のコードの例では、ドキュメントの暗号化を検出する方法を示します。

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## パスワードなしで文書を開く

文書が暗号化されていることを確認したら、パスワードなしでこの文書を開くようにしてください。例外につながるはずです。

次のコードの例では、パスワードなしで暗号化されたドキュメントを開く方法を示します。

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

暗号化された文書がパスワードなしで開くことができないことを確認した後、パスワードを入力して開くことができます。

次のコードの例では、暗号化されたドキュメントをパスワードで開く方法を示します。

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
