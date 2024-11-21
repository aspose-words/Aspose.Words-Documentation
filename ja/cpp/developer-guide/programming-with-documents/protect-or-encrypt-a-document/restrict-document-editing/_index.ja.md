---
title: C++での文書編集の制限
second_title: C++の場合Aspose.Words
articleTitle: 文書の編集を制限する
linktitle: 文書の編集を制限する
description: "C++を使用して制限の種類を設定することで、文書の編集を制限します。 保護を解除して、無制限の編集可能領域を作成することもできます。"
type: docs
weight: 30
url: /ja/cpp/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

場合によっては、ドキュメントを編集する機能を制限し、特定のアクションのみを許可する必要がある場合があります。 これは、他の人がドキュメント内の機密情報や機密情報を編集できないようにするのに役立ちます。

Aspose.Words制限の種類を設定して文書の編集を制限できます。 また、Aspose.Wordsを使用すると、文書の書き込み保護設定を指定することもできます。

この記事では、Aspose.Wordsを使用して制限の種類を選択する方法、保護を追加または削除する方法、および無制限の編集可能領域を作成する方法について説明し

## 編集制限タイプの選択

Aspose.Wordsでは、[ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/)列挙パラメーターを使用してコンテンツを制限する方法を制御できます。 これにより、次のような正確なタイプの保護を選択できます:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

すべてのタイプはパスワードで保護されており、このパスワードが正しく入力されないと、ユーザーは文書の内容を合法的に変更することはできません。 したがって、必要なパスワードを提供する必要がなくてもドキュメントが返された場合、これは何かが間違っていることを示しています。

セキュリティタイプを選択するときにパスワードを設定しなかった場合、他のユーザーはドキュメントの保護を無視することができます。

{{% alert color="primary" %}}

設定されているパスワードは、ドキュメントのプロパティにアクセスした場合に削除できるドキュメント内のプロパティにすぎないことに注意してください。 したがって、そのようなパスワードは文書のセキュリティを保証するものではありません。 [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/)メソッドはそれだけを示しています。

{{% /alert %}}

## 文書保護の追加

このセクションで説明する保護方法のいずれかを適用するだけであるため、文書に保護を追加するのは簡単なプロセスです。

Aspose.Wordsを使用すると、[Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/)メソッドを使用して文書を変更から保護できます。 このメソッドはセキュリティ機能ではなく、ドキュメントを暗号化しません。

{{% alert color="primary" %}}

Microsoft Wordでは、両方を使用して同様の方法で編集を制限できます:

* 編集の制限（ファイル→情報→文書の保護）
* 代替機能–"編集を制限する"（レビュー→保護→編集を制限する）

{{% /alert %}}

次のコード例は、ドキュメントにパスワード保護を追加する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

次のコード例は、フォームフィールドでの編集のみが可能になるように、ドキュメントでの編集を制限する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## 文書の保護を削除する

Aspose.Wordsは、文書を簡単かつ直接的に変更して、文書から保護を解除できます。 実際のパスワードを知らずに文書の保護を削除するか、[Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/)メソッドを使用して文書のロックを解除するための正しいパスワードを指定できます。 どちらの削除方法にも違いはありません。

次のコード例は、ドキュメントから保護を削除する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## 無制限の編集可能領域の指定

ドキュメントの編集を制限すると同時に、選択した部分への変更を許可することができます。 そのため、ドキュメントを開いた人は誰でも、これらの無制限の部分にアクセスしてコンテンツを変更することができます。

Aspose.Wordsは、[StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/)メソッドと[EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/)メソッドを使用して、文書内で変更できる部分に印を付けることができます。

次のコード例は、ドキュメント全体を読み取り専用としてマークし、その中で編集可能な領域を指定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

また、セクションごとに異なる文書編集制限を選択することもできます。

次のコード例は、ドキュメント全体に制限を追加してから、いずれかのセクションの制限を削除する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
