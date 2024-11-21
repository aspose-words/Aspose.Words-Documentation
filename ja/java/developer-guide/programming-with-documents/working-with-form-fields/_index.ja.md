---
title: フォームフィールドでの作業 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: フォームフィールドと連携
linktitle: フォームフィールドと連携
description: "フォームフィールドの機能を理解し、フォームフィールドと連携 Javaお問い合わせ"
type: docs
weight: 380
url: /ja/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

記入欄(フィールド)を含む文書は、フォームとして知られています。 例えば、登録フォームを作成することができます。 Microsoft Word ユーザーがエントリを選択できるドロップダウンリストを使用します。 ザ・オブ・ザ・ `Form` フィールドは、名前やアドレスなどの特定のタイプのデータが保存される場所です。 フォームフィールド Microsoft Word テキスト入力、コンボボックス、チェックボックスが含まれます。

フォームフィールドをプロジェクト内で「communicate」に利用することができます。 たとえば、コンテンツが保護されているドキュメントを作成しますが、フォームフィールドのみ編集可能です。 ユーザーはフォームフィールドにデータを入力し、文書を提出することができます。 ご使用のアプリケーション Aspose.Words フォームフィールドからデータを取り出し、処理できます。

コードでフォームフィールドをドキュメントに簡単に配置できます。 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) それぞれのフォームフィールドタイプに1つずつ、それらをインサートするための特別な方法があります。 各メソッドは、フォームフィールドの名前を表す文字列パラメータを受け付けます。 名前は空の文字列になります。 しかし、フォームフィールドの名前を指定すると、ブックマークが同じ名前で自動的に作成されます。

## インサートフォームフィールド

フォームフィールドは、ユーザーが「インタラクション」できるWordフィールドの特定のケースです。 フォームフィールド Microsoft Word テキストボックス、コンボボックス、チェックボックスが含まれます。

**DocumentBuilder** 各フォームフィールドを文書に入力するための特別な方法を提供します。 [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) または [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int)お問い合わせ

以下のコード例では、コンボボックスフォームフィールドをドキュメントに差し込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### テキスト入力を入力

利用する **インサート テキスト入力** テキストボックスをドキュメントに差し込む方法。

次のコードの例では、テキスト入力フォームフィールドをドキュメントに書き込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### チェックボックスをインサート

電話番号 **インサートチェックボックス** チェックボックスをドキュメントに差し込む

以下のコードの例では、チェックボックスフォームフィールドをドキュメントに差し込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### コンボボックスをインサート

電話番号 **インサートComboBox** コンボボックスをドキュメントに差し込む。

以下のコードの例では、Combobox フォームフィールドをドキュメントに書き込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## フォームフィールドの取得

フォームフィールドのコレクションは、 [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) 取得できるクラス [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) 宿泊施設 つまり、ドキュメント自体を含む文書ノードに含まれるフォームフィールドを取得できます。

以下のコードの例では、フォームフィールドのコレクションを取得する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

以下の例のサンプルファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx)お問い合わせ

{{% /alert %}}

特定のフォームフィールドをインデックスまたは名前で取得できます。

以下のコードの例では、フォームフィールドへのアクセス方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

ザ・オブ・ザ・ **FormField** プロパティを使用すると、フォームフィールド名、タイプ、および結果で作業することができます。

次のコードの例では、フォームフィールド名、タイプ、および結果を扱う方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
