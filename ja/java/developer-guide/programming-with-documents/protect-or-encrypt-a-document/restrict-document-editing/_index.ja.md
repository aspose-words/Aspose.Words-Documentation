---
title: ドキュメントの制限 編集する Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメントの編集を制限する
linktitle: ドキュメントの編集を制限する
description: "制限型の設定でドキュメントの編集を制限します。 また、保護を削除し、制限されていない編集可能な領域を使用することができます Javaお問い合わせ"
type: docs
weight: 30
url: /ja/java/restrict-document-editing/
---

時々、文書を編集する能力を制限し、特定のアクションのみをそれに許可する必要があります。 他の人があなたの文書の機密情報を編集することを防ぐのに便利です。

Aspose.Words 制限型を設定することで文書の編集を制限することができます。 その他、 Aspose.Words また、文書の書き込み保護設定を指定することもできます。

この記事では、使い方を説明しています Aspose.Words 制限タイプ、保護を追加または削除する方法、および制限されていない編集可能な領域を作成する方法を選択する。

## 制限タイプの編集を選択

Aspose.Words コンテンツの制限を制限する方法を制御することができます。 [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) enumerationパラメーター。 これにより、以下のような正確な保護タイプを選択することができます。

* 許可のみコメント
* AllowOnlyFormFields ディレクティブ
* 有料リビジョン
* 読み込み専用
* 提案

すべてのタイプはパスワードで保護されており、このパスワードが正しく入力されていない場合、ユーザーは文書の内容を合法的に変更することはできません。 したがって、必要なパスワードを提供する要件なしで文書があなたに返された場合、これは何かが間違っている兆候です。

セキュリティタイプを選択するときにパスワードを設定しなかった場合、他のユーザーは単にドキュメントの保護を無視することができます。

{{% alert color="primary" %}}

パスワードが設定されているのは、ドキュメントプロパティがアクセスされている場合に削除できるドキュメントのプロパティだけです。 したがって、そのようなパスワードは文書のセキュリティの保証ではありません。 ザ・オブ・ザ・ [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) メソッドはそれだけで表示されます。

{{% /alert %}}

## 文書の保護を追加

ドキュメントに保護を追加するのは、このセクションで詳細に保護方法のいずれかを適用する必要があるため、簡単なプロセスです。

Aspose.Words 変更から文書を保護することができます。 [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) メソッド。 この方法はセキュリティ機能ではなく、文書を暗号化しません。

{{% alert color="primary" %}}

インスタグラム Microsoft Word, 同様の方法で編集を制限することができます。

* 制限の編集(ファイル→情報→文書の保護)
* 代替機能 – 「制限の編集」 (レビュー → 保護 → 制限の編集)

{{% /alert %}}

次のコードの例では、ドキュメントにパスワード保護を追加する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

以下のコードの例では、ドキュメントの編集を制限する方法が示されているため、フォームフィールドで編集するだけです。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## 文書の保護の削除

Aspose.Words 文書から保護を簡単かつ直接文書の変更で削除することができます。 実際のパスワードを知らずにドキュメント保護を削除したり、ドキュメントのロックを解除するための正しいパスワードを提供することもできます。 [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) メソッド。 どちらの方法も違いはありません。

次のコードの例では、ドキュメントから保護を削除する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## 制限のない編集可能な地域を指定する

ドキュメントの編集を制限し、同時に選択した部分の変更を割り当てることができます。 そのため、ドキュメントを開いた人は、これらの制限されていない部分にアクセスし、コンテンツに変更を加えることができます。

Aspose.Words ドキュメントで変更できる部品をマークすることができます。 [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) そして、 [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange) メソッド。

次のコードの例では、ドキュメント全体を読み取り専用としてマークし、編集可能な領域を指定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

また、異なるセクションの異なる文書編集制限を選択することもできます。

次のコードの例では、ドキュメント全体に対する制限を追加し、セクションの1つに対する制限を解除する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
