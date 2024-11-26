---
title: Python でのフォーム フィールドの操作
second_title: Python via .NET用Aspose.Words
articleTitle: フォームフィールドの操作
linktitle: フォームフィールドの操作
description: "Python を使用して、ドキュメント内のフォーム フィールドを挿入、取得、または書式設定します。"
type: docs
weight: 380
url: /ja/python-net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

穴埋め（フィールド）を含む文書はフォームと呼ばれます。たとえば、ユーザーがエントリを選択できるドロップダウン リストを使用する登録フォームを Microsoft Word で作成できます。 `Form` フィールドは、名前やアドレスなどの特定の種類のデータが保存される場所です。 Microsoft Word のフォーム フィールドには、テキスト入力、コンボボックス、チェックボックスが含まれます。

プロジェクト内のフォーム フィールドを使用して、ユーザーと「通信」できます。たとえば、コンテンツは保護されているが、編集できるのはフォーム フィールドのみであるドキュメントを作成するとします。ユーザーはフォームフィールドにデータを入力し、ドキュメントを送信できます。 Aspose.Words を使用するアプリケーションは、フォーム フィールドからデータを取得して処理できます。

コードを使用してフォームフィールドをドキュメントに配置するのは簡単です。 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) には、フォーム フィールドの種類ごとに 1 つずつ、それらを挿入するための特別なメソッドがあります。各メソッドは、フォーム フィールドの名前を表す文字列パラメータを受け入れます。名前は空の文字列にすることができます。ただし、フォーム フィールドの名前を指定すると、ブックマークが同じ名前で自動的に作成されます。

## フォームフィールドの挿入

フォーム フィールドは、ユーザーとの「対話」を可能にする Word フィールドの特殊なケースです。 Microsoft Word のフォーム フィールドには、テキスト ボックス、コンボ ボックス、チェックボックスが含まれます。

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) は、[insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/)、[insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/)、[insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) などの各タイプのフォーム フィールドをドキュメントに挿入するための特別なメソッドを提供します。フォームフィールドの名前を指定すると、ブックマークが同じ名前で自動的に作成されることに注意してください。

次のコード例は、コンボボックス フォーム フィールドをドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### テキスト入力を挿入する

[insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) メソッドを使用して、ドキュメントにテキストボックスを挿入します。

次のコード例は、テキスト入力フォーム フィールドをドキュメントに挿入する方法を示しています。

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### チェックボックスを挿入する

[insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) を呼び出して、ドキュメントにチェックボックスを挿入します。

次のコード例は、チェックボックス フォーム フィールドをドキュメントに挿入する方法を示しています。

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### コンボボックスを挿入する

[insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) を呼び出して、ドキュメントにコンボボックスを挿入します。

次のコード例は、コンボボックス フォーム フィールドをドキュメントに挿入する方法を示しています。

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## フォームフィールドの取得

フォーム フィールドのコレクションは、[form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/) プロパティを使用して取得できる [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) クラスによって表されます。これは、ドキュメント自体を含む任意のドキュメント ノードに含まれるフォーム フィールドを取得できることを意味します。

{{% alert color="primary" %}}

次の例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx) からダウンロードできます。

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

インデックスまたは名前によって特定のフォーム フィールドを取得できます。

次のコード例は、フォーム フィールドにアクセスする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

[FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) プロパティを使用すると、フォーム フィールド名、タイプ、結果を操作できます。

次のコード例は、フォーム フィールドの名前、型、および結果を操作する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## フォームフィールドのフォーマット

[FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) の [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) プロパティを使用すると、フィールド値を含む [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) 全体にフォント書式設定を適用できます。

次のコード例は、フォントの書式設定を **FormField** に適用する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
