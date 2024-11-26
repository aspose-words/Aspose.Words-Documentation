---
title: Javaのフォームフィールドの操作
second_title: Aspose.WordsのためのJava
articleTitle: フォームフィールドの操作
linktitle: フォームフィールドの操作
description: "フォームフィールド機能を理解し、Javaを使用してフォームフィールドを操作します。"
type: docs
weight: 380
url: /ja/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

入力空白(フィールド)を含むドキュメントは、フォームと呼ばれます。 たとえば、ユーザーがエントリを選択できるドロップダウンリストを使用する登録フォームをMicrosoft Wordに作成できます。 `Form`フィールドは、名前や住所などの特定の種類のデータが格納される場所です。 Microsoft Wordのフォームフィールドには、テキスト入力、combobox、checkboxが含まれます。

プロジェクトのフォームフィールドを使用して、ユーザーと"通信"することができます。 たとえば、コンテンツが保護されているが、フォームフィールドのみが編集可能なドキュメントを作成するとします。 ユーザーはフォームフィールドにデータを入力してドキュメントを送信できます。 Aspose.Wordsを使用するアプリケーションは、フォームフィールドからデータを取得して処理できます。

コードを介してフォームフィールドを文書に配置するのは簡単です。 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)には、フォームフィールドの種類ごとに1つずつ挿入するための特別なメソッドがあります。 各メソッドは、フォームフィールドの名前を表す文字列パラメーターを受け入れます。 名前は空の文字列にすることができます。 ただし、フォームフィールドに名前を指定すると、同じ名前のブックマークが自動的に作成されます。

## フォームフィールドの挿入

フォームフィールドは、ユーザーとの"対話"を可能にする単語フィールドの特定のケースです。 Microsoft Wordのフォームフィールドには、テキストボックス、コンボボックス、checkboxが含まれます。

**DocumentBuilder**

次のコード例は、comboboxフォームフィールドをドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### テキスト入力を挿入する

テキストボックスをドキュメントに挿入するには、**insertTextInput**メソッドを使用します。

次のコード例は、テキスト入力フォームフィールドをドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### チェックボックスを挿入する

**insertCheckBox**を呼び出して、文書にcheckboxを挿入します。

次のコード例は、checkboxフォームフィールドをドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### コンボボックスを挿入する

**insertComboBox**を呼び出して、文書にcomboboxを挿入します。

次のコード例は、Comboboxフォームフィールドをドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## フォームフィールドの取得

フォームフィールドのコレクションは、[Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields)プロパティを使用して取得できる[FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/)クラスによって表されます。 これは、文書自体を含む任意の文書ノードに含まれるフォームフィールドを取得できることを意味します。

フォームフィールドのコレクションを取得する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

以下の例のサンプルファイルは、以下からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

特定のフォームフィールドは、そのインデックスまたは名前で取得できます。

フォームフィールドにアクセスする方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

**FormField**プロパティを使用すると、フォームフィールド名、タイプ、および結果を操作できます。

次のコード例は、フォームフィールド名、型、および結果を操作する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
