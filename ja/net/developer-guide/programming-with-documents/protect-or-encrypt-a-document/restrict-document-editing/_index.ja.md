---
title: C# でのドキュメント編集の制限
second_title: .NET用Aspose.Words
articleTitle: ドキュメントの編集を制限する
linktitle: ドキュメントの編集を制限する
description: "C# を使用して制限タイプを設定し、ドキュメントの編集を制限します。保護を解除して、無制限に編集可能な領域を作成することもできます。"
type: docs
weight: 30
url: /ja/net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

場合によっては、ドキュメントの編集機能を制限し、ドキュメントに対する特定のアクションのみを許可する必要がある場合があります。これは、他の人が文書内の機密情報を編集できないようにするのに役立ちます。

Aspose.Words では、制限タイプを設定することでドキュメントの編集を制限できます。さらに、Aspose.Words を使用すると、ドキュメントの書き込み保護設定を指定することもできます。

この記事では、Aspose.Words を使用して制限タイプを選択する方法、保護を追加または削除する方法、および制限のない編集可能領域を作成する方法について説明します。

## 編集制限タイプの選択

Aspose.Words では、[ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) 列挙パラメータを使用してコンテンツを制限する方法を制御できます。これにより、次のような保護の正確な種類を選択できるようになります。

* コメントのみ許可
*AllowOnlyFormFields
*AllowOnlyRevisions
* 読み取り専用
* 保護なし

すべてのタイプはパスワードで保護されており、このパスワードが正しく入力されないと、ユーザーは文書の内容を合法的に変更できなくなります。したがって、必要なパスワードの入力を求められずに文書が返送された場合、これは何か問題があることを示しています。

セキュリティの種類を選択するときにパスワードを設定しなかった場合、他のユーザーはドキュメントの保護を無視できます。

{{% alert color="primary" %}}

設定されているパスワードは、ドキュメントのプロパティにアクセスすると削除できる単なるドキュメント内のプロパティであることに注意してください。したがって、そのようなパスワードは文書のセキュリティを保証するものではありません。 [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) メソッドはまさにそれを示しています。

{{% /alert %}}

## ドキュメント保護の追加

このセクションで説明する保護方法の 1 つを適用するだけなので、ドキュメントに保護を追加するのは簡単なプロセスです。

Aspose.Words を使用すると、[Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/) メソッドを使用してドキュメントを変更から保護できます。この方法はセキュリティ機能ではないため、ドキュメントは暗号化されません。

{{% alert color="primary" %}}

Microsoft Word では、次の両方を使用して同様の方法で編集を制限できます。

* 編集を制限する (ファイル → 情報 → 文書の保護)
※代替機能「編集制限」（レビュー→保護→編集制限）

{{% /alert %}}

次のコード例は、ドキュメントにパスワード保護を追加する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

次のコード例は、フォーム フィールドでのみ編集できるようにドキュメントでの編集を制限する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## ドキュメント保護を削除する

Aspose.Words を使用すると、ドキュメントを簡単かつ直接変更して、ドキュメントから保護を削除できます。実際のパスワードを知らなくてもドキュメントの保護を解除することも、[Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) メソッドを使用して正しいパスワードを入力してドキュメントのロックを解除することもできます。どちらの削除方法にも違いはありません。

次のコード例は、ドキュメントから保護を削除する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## 無制限の編集可能領域を指定する

ドキュメントの編集を制限すると同時に、ドキュメントの選択した部分への変更を許可することができます。したがって、ドキュメントを開いた人は誰でも、これらの制限されていない部分にアクセスして、コンテンツを変更できるようになります。

Aspose.Words では、[StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) メソッドと [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/) メソッドを使用して、ドキュメント内で変更できる部分をマークできます。

次のコード例は、ドキュメント全体を読み取り専用としてマークし、その中で編集可能な領域を指定する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

セクションごとに異なるドキュメント編集制限を選択することもできます。

次のコード例は、ドキュメント全体に制限を追加し、いずれかのセクションの制限を削除する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
