---
title: C# でのフォーム フィールドの操作
second_title: .NET用Aspose.Words
articleTitle: フォームフィールドの操作
linktitle: フォームフィールドの操作
description: "フォーム フィールド機能を理解し、C# を使用してフォーム フィールドを操作します。"
type: docs
weight: 380
url: /ja/net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

穴埋め（フィールド）を含む文書はフォームと呼ばれます。たとえば、ユーザーがエントリを選択できるドロップダウン リストを使用する登録フォームを Microsoft Word で作成できます。 `Form` フィールドは、名前やアドレスなどの特定の種類のデータが保存される場所です。 Microsoft Word のフォーム フィールドには、テキスト入力、コンボボックス、チェックボックスが含まれます。

プロジェクト内のフォーム フィールドを使用して、ユーザーと「通信」できます。たとえば、コンテンツは保護されているが、編集できるのはフォーム フィールドのみであるドキュメントを作成するとします。ユーザーはフォームフィールドにデータを入力し、ドキュメントを送信できます。 Aspose.Words を使用するアプリケーションは、フォーム フィールドからデータを取得して処理できます。

コードを使用してフォーム フィールドをドキュメントに配置するのは簡単です。 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) には、フォーム フィールドの種類ごとに 1 つずつ、それらを挿入するための特別なメソッドがあります。各メソッドは、フォーム フィールドの名前を表す文字列パラメータを受け入れます。名前は空の文字列にすることができます。ただし、フォーム フィールドの名前を指定すると、ブックマークが同じ名前で自動的に作成されます。

## フォームフィールドの挿入

フォーム フィールドは、ユーザーとの「対話」を可能にする Word フィールドの特殊なケースです。 Microsoft Word のフォーム フィールドには、テキスト ボックス、コンボ ボックス、チェックボックスが含まれます。

**DocumentBuilder** は、[InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/)、[InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/)、[InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/) などの各タイプのフォーム フィールドをドキュメントに挿入するための特別なメソッドを提供します。フォームフィールドの名前を指定すると、ブックマークが同じ名前で自動的に作成されることに注意してください。

次のコード例は、コンボボックス フォーム フィールドをドキュメントに挿入する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### テキスト入力を挿入する

**InsertTextInput** メソッドを使用して、ドキュメントにテキストボックスを挿入します。

次のコード例は、テキスト入力フォーム フィールドをドキュメントに挿入する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### チェックボックスを挿入する

**InsertCheckBox** を呼び出して、ドキュメントにチェックボックスを挿入します。

次のコード例は、チェックボックス フォーム フィールドをドキュメントに挿入する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### コンボボックスを挿入する

**InsertComboBox** を呼び出して、ドキュメントにコンボボックスを挿入します。

次のコード例は、コンボボックス フォーム フィールドをドキュメントに挿入する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## フォームフィールドの取得

フォーム フィールドのコレクションは、[FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/) プロパティを使用して取得できる [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) クラスによって表されます。これは、ドキュメント自体を含む任意のドキュメント ノードに含まれるフォーム フィールドを取得できることを意味します。

{{% alert color="primary" %}}

次の例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx) からダウンロードできます。

{{% /alert %}}

次のコード例は、フォーム フィールドのコレクションを取得する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

インデックスまたは名前によって特定のフォーム フィールドを取得できます。

次のコード例は、フォーム フィールドにアクセスする方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

**FormField** プロパティを使用すると、フォーム フィールド名、タイプ、結果を操作できます。

次のコード例は、フォーム フィールドの名前、型、および結果を操作する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## フォームフィールドのフォーマット

[FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) の [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) プロパティを使用すると、フィールド値を含む **FormField** 全体にフォント書式設定を適用できます。

次のコード例は、フォントの書式設定を **FormField** に適用する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
