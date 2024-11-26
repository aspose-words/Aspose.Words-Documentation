---
title: C# でドキュメントを読み取り専用で開く
second_title: .NET用Aspose.Words
articleTitle: ドキュメントを読み取り専用で開く
linktitle: ドキュメントを読み取り専用で開く
description: "ドキュメントを読み取り専用にして、コンテンツをコピーまたは読み取りできるようにしますが、C# を使用して変更することはできません。"
type: docs
weight: 10
url: /ja/net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

レビューが必要なドキュメントがある場合でも、レビュー担当者に内容を無作為に変更されたくない場合があります。 Aspose.Words を使用すると、ドキュメントの権限を読み取り専用にして、コンテンツのコピーや読み取りは可能ですが、変更はできないようにすることができます。これにより、コンテンツがドキュメントに削除されたり、ドキュメントに追加されたりすることがなくなります。

{{% alert color="primary" %}}

ドキュメントに読み取り専用オプションを適用しても、誰かがそのドキュメントの新しいコピーを作成し、別の名前で保存することは妨げられません。

{{% /alert %}}

この記事では、ドキュメントを読み取り専用にする方法について説明します。

## ドキュメントを読み取り専用にする

Aspose.Words には、ドキュメントの書き込み保護設定を指定するパブリック クラス [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/) があります。このクラスのインスタンスは直接作成しません。

書き込み保護は、作成者がドキュメントを読み取り専用で開くことを推奨しているかどうか、および/またはドキュメントを変更するためにパスワードを要求しているかどうかを示します。

Aspose.Words では、[ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/) プロパティと [SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/) メソッドを使用して、ドキュメントを読み取り専用にして編集を制限できます。

{{% alert color="primary" %}}

Microsoft Word では、次の両方を使用して同様の方法で読み取り専用ドキュメントを作成できます。

* 「常に読み取り専用で開く」（ファイル→情報→文書の保護）
* 「変更するパスワード」（名前を付けて保存→ツール→一般オプション→パスワード）

{{% /alert %}}

{{% alert color="primary" %}}

ユーザーは [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) を **ReadOnly** として選択してドキュメントの編集を制限することもできますが、これはより高度な保護機能を提供する別の機能です。このような機能はMicrosoft Wordにそれぞれあり、Aspose.Wordsに実装されています。

**ProtectionType** については、次の記事のいずれか「ドキュメント編集の制限」で詳しく説明します。

{{% /alert %}}

**ReadOnlyRecommended** プロパティはパスワードで保護されているため、**ReadOnlyRecommended** プロパティを適用する前にパスワードを設定しないと、他のユーザーは保護されていない場合と同様にドキュメントを開くことができます。 **SetPassword** メソッドを使用して文書保護設定にアクセスし、書き込み保護パスワードを設定します。

{{% alert color="primary" %}}

設定されているパスワードは、ドキュメントのプロパティにアクセスすると削除できる単なるドキュメント内のプロパティであることに注意してください。したがって、そのようなパスワードは文書のセキュリティを保証するものではありません。

{{% /alert %}}

ドキュメントに編集を制限する書き込み保護パスワードが設定されているかどうかを確認する必要がある場合は、[IsWriteProtected](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/iswriteprotected/) プロパティを使用できます。

次のコード例は、ドキュメントを読み取り専用にする方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## 読み取り専用制限を解除する

ユーザーがドキュメントを読み取り専用として開くことを望まない場合は、**ReadOnlyRecommened** プロパティを *false* に設定するか、**ProtectionType** を **NoProtection** として選択するだけです。

次のコード例は、ドキュメントの読み取り専用アクセスを削除する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
