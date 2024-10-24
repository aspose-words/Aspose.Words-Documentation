---
title: C++でのフォームフィールドの操作
second_title: C++の場合Aspose.Words
articleTitle: フォームフィールドの操作
linktitle: フォームフィールドの操作
description: "フォームフィールドの機能を理解し、C++を使用してフォームフィールドを操作します。"
type: docs
weight: 380
url: /ja/cpp/working-with-form-fields/
---

入力空白(フィールド)を含むドキュメントは、フォームと呼ばれます。 たとえば、ユーザーがエントリを選択できるドロップダウンリストを使用する登録フォームをMicrosoft Wordに作成できます。 フォームフィールドは、名前や住所などの特定の種類のデータが格納される場所です。 Microsoft Wordのフォームフィールドには、テキスト入力、Combobox、checkboxが含まれます。

プロジェクトのフォームフィールドを使用して、ユーザーと"通信"することができます。 たとえば、コンテンツが保護されているが、フォームフィールドのみが編集可能なドキュメントを作成するとします。 ユーザーはフォームフィールドにデータを入力してドキュメントを送信できます。 Aspose.Wordsを使用するアプリケーションは、フォームフィールドからデータを取得して処理できます。

コードを介してフォームフィールドを文書に配置するのは簡単です。 [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)には、フォームフィールドの種類ごとに1つずつ挿入するための特別なメソッドがあります。 各メソッドは、フォームフィールドの名前を表す文字列パラメーターを受け入れます。 名前は空の文字列にすることができます。 ただし、フォームフィールドに名前を指定すると、同じ名前のブックマークが自動的に作成されます。

## フォームフィールドの挿入

フォームフィールドは、ユーザーとの"対話"を可能にする単語フィールドの特定のケースです。 Microsoft Wordのフォームフィールドには、textbox、combo box、checkboxが含まれます。

**DocumentBuilder**

Comboboxフォームフィールドをドキュメントに挿入する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## フォームフィールドの取得

フォームフィールドのコレクションは、[FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/)プロパティを使用して取得できる[FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/)クラスによって表されます。 これは、文書自体を含む任意の文書ノードに含まれるフォームフィールドを取得できることを意味します。

フォームフィールドのコレクションを取得する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

特定のフォームフィールドは、そのインデックスまたは名前で取得できます。

フォームフィールドにアクセスする方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

**FormField**プロパティを使用すると、フォームフィールド名、タイプ、および結果を操作できます。

次のコード例は、フォームフィールド名、型、および結果を操作する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
