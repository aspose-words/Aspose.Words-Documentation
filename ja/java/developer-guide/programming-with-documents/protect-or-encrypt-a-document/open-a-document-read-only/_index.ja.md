---
title: ドキュメントの読み取り専用を開く Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメント読み取り専用を開く
linktitle: ドキュメント読み取り専用を開く
description: "コンテンツがコピーまたは読み取れることができるように、ドキュメントを読み取り専用にしますが、使用して変更することはできません Javaお問い合わせ"
type: docs
weight: 10
url: /ja/java/open-a-document-read-only/
---

時々、レビューが必要な文書がある場合がありますが、レビュー担当者がコンテンツをランダムに変更する必要はありません。 Aspose.Words コンテンツがコピーまたは読み取れることができるように、ドキュメントの読み取り専用の許可を作成することができますが、変更することはできません。 これにより、コンテンツが削除されるか、文書に追加されるのを防ぐことができます。

{{% alert color="primary" %}}

ドキュメントに読み取り専用のオプションを適用しても、新しいコピーを作成して別の名前で保存することを防ぐことはできません。

{{% /alert %}}

この記事では、ドキュメントの読み込み専用を作成する方法について説明します。

## ドキュメントを読み取り専用にする

Aspose.Words パブリッククラス [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) 文書の書き込み保護設定を指定します。 このクラスのインスタンスを直接作成しません。

保護書は、著者が文書を読み取り専用として開封することを推奨しているか、文書を修正するためにパスワードを必要とするかを示します。

Aspose.Words ドキュメントを読み取り専用にすることで編集を制限することができます [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) プロパティとプロパティ [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) メソッド。

{{% alert color="primary" %}}

インスタグラム Microsoft Word, 両方の方法でRead-Onlyドキュメントを作成できます。

* ※「常に読み取り専用」(ファイル→情報→ドキュメントの保護)
*「変更するパスワード」(→ツール→一般オプション→パスワードとして保存)

{{% /alert %}}

{{% alert color="primary" %}}

ユーザーが選択して文書編集を制限することもできます [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) として **ReadOnly**, しかし、これはより高度な保護機能を提供する別の機能です。 こんな機能があります Microsoft Word, それぞれに実装されている Aspose.Wordsお問い合わせ

**ProtectionType** 次の記事の1つに「ドキュメントの編集を制限する」と記載します。

{{% /alert %}}

ザ・オブ・ザ・ **ReadOnlyRecommended** プロパティはパスワードで保護されますので、申請する前にパスワードを設定しない場合 **ReadOnlyRecommended** プロパティは、保護されていないかのように、他のユーザーは単に文書を開くことができます。 ドキュメント保護設定にアクセスし、書き込み保護パスワードを設定 **SetPassword** メソッド。

{{% alert color="primary" %}}

パスワードが設定されているのは、ドキュメントプロパティがアクセスされている場合に削除できるドキュメントのプロパティだけです。 したがって、そのようなパスワードは文書のセキュリティの保証ではありません。

{{% /alert %}}

ドキュメントが編集から制限する書き込み保護パスワードを持っているかどうかをチェックする必要がある場合は、 [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) プロパティ.

次のコードの例では、ドキュメントの読み込み専用を作成する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## 読み取り制限を解除

ユーザーがドキュメントを読み取り専用として開いたくない場合は、単に設定できます。 **ReadOnlyRecommened** プロパティ *false* または選択 **ProtectionType** として **NoProtection**お問い合わせ

次のコードの例では、ドキュメントの読み取り専用のアクセスを削除する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
