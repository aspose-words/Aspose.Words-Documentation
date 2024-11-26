---
title: Javaで読み取り専用の文書を開く
second_title: Aspose.WordsのためのJava
articleTitle: ドキュメントを読み取り専用で開く
linktitle: ドキュメントを読み取り専用で開く
description: "ドキュメントを読み取り専用にして、コンテンツをコピーまたは読み取ることができますが、Javaを使用して変更しないようにします。"
type: docs
weight: 10
url: /ja/java/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

場合によっては、レビューが必要なドキュメントがありますが、レビュー担当者がコンテンツをランダムに変更しないようにすることがあります。 Aspose.Wordsドキュメントのアクセス許可を読み取り専用にすることで、コンテンツをコピーまたは読み取りできますが、変更はできません。Aspose.Wordsを使用すると、ドキ これにより、コンテンツが削除されたり、ドキュメントに追加されたりするのを防ぐことができます。

{{% alert color="primary" %}}

ドキュメントに読み取り専用オプションを適用しても、誰かが新しいコピーを作成して別の名前で保存することはできません。

{{% /alert %}}

この記事では、ドキュメントを読み取り専用にする方法について説明します。

## ドキュメントを読み取り専用にする

Aspose.Wordsには、文書の書き込み保護設定を指定するパブリッククラス[WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/)があります。 このクラスのインスタンスは直接作成しません。

書き込み保護は、作成者が文書を読み取り専用として開くことを推奨しているか、文書を変更するためにパスワードを必要としているかを示します。

Aspose.Wordsは、[ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended)プロパティと[SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String)メソッドを使用して、編集を制限するために文書を読み取り専用にすることができます。

{{% alert color="primary" %}}

Microsoft Wordでは、両方を使用して同様の方法で読み取り専用ドキュメントを作成できます:

* 「常に読み取り専用で開く」（ファイル→情報→文書の保護）
* "変更するパスワード"（名前を付けて保存→ツール→一般オプション→パスワード）

{{% /alert %}}

{{% alert color="primary" %}}

ユーザーは[ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/)を**ReadOnly**として選択することで文書の編集を制限することもできますが、これはより高度な保護機能を提供する別の機能です。 それぞれMicrosoft Wordにはそのような関数があり、Aspose.Wordsに実装されています。

**ProtectionType**

{{% /alert %}}

**ReadOnlyRecommended**プロパティはパスワードで保護されているため、**ReadOnlyRecommended**プロパティを適用する前にパスワードを設定しないと、他のユーザーは保護されていないかのように 文書保護設定にアクセスし、書き込み保護パスワードを設定するには、**SetPassword**メソッドを使用します。

{{% alert color="primary" %}}

設定されているパスワードは、ドキュメントのプロパティにアクセスした場合に削除できるドキュメント内のプロパティにすぎないことに注意してください。 したがって、そのようなパスワードは文書のセキュリティを保証するものではありません。

{{% /alert %}}

文書が編集を制限する書き込み保護パスワードを持っているかどうかを確認する必要がある場合は、[IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected)プロパティを使用できます。

次のコード例は、ドキュメントを読み取り専用にする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## 読み取り専用の制限を削除する

ユーザーがドキュメントを読み取り専用として開かないようにするには、**ReadOnlyRecommened**プロパティを*false*に設定するか、**ProtectionType**を**NoProtection**として選択します。

次のコード例は、ドキュメントの読み取り専用アクセスを削除する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
