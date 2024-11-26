---
title: C++でのドキュメントプロパティの操作
second_title: C++の場合Aspose.Words
articleTitle: ドキュメントプロパティの操作
linktitle: ドキュメントプロパティの操作
description: "C++ の場合は Aspose.Words API やバージョン番号、承認日など、ドキュメントに関する有用な情報を組み込みまたはカスタムのドキュメント プロパティに保存できます。"
type: docs
weight: 10
url: /ja/cpp/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

ドキュメントプロパティを使用すると、ドキュメントに関する有用な情報を格納できます。 これらのプロパティは、2つのグループに分けることができます:

* 文書のタイトル、作成者名、文書の統計情報などの値を含むシステムまたは組み込み。
* ユーザーが名前と値の両方を定義できる名前と値のペアとして提供されます。

APIとバージョン番号に関する情報が出力ドキュメントに直接書き込まれることを知っておくと便利です。 たとえば、ドキュメントをPDFに変換すると、Aspose.Wordsは"Application"フィールドに"Aspose.Words"を入力し、"PDFProducer"フィールドに"PDF"を入力しますC++の場合Aspose.Words YY.ここで、*YY.M.N*は変換に使用されるAspose.Wordsのバージョンです。 詳細については、以下を参照してください [出力文書に含まれるジェネレータ名またはプロデューサー名](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

出力文書からこの情報を変更または削除するには、**cannot direct**Aspose.Wordsに注意してください。

{{% /alert %}}

## ドキュメントのプロパティへのアクセス

Aspose.Wordsのドキュメントプロパティにアクセスするには、次を使用します:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/)組み込みプロパティを取得します。

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/)カスタムプロパティを取得します。

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

[DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/)クラスを使用すると、ドキュメントプロパティの名前、値、および型を取得できます。 [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/)はオブジェクトを返しますが、特定の型に変換されたプロパティ値を取得できるメソッドのセットがあります。 プロパティの型がわかったら、**DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/)や**DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/)などの**DocumentProperty.ToXXX**メソッドのいずれかを使用して、適切な型の値を取得できます。

次のコード例は、ドキュメント内のすべての組み込みプロパティとカスタムプロパティを列挙する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Microsoft Wordでは、"ファイル→プロパティ"メニューを使用して文書のプロパティにアクセスできます。

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## ドキュメントプロパティの追加または削除

Aspose.Wordsを使用して組み込みのドキュメントプロパティを追加または削除することはできません。 値を変更または更新できるのは、その値のみです。

Aspose.Wordsを使用してカスタムドキュメントプロパティを追加するには、[Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/)メソッドを使用して、新しいプロパティ名と適切な型の値を渡します。 このメソッドは、新しく作成された**DocumentProperty**オブジェクトを返します。

カスタムプロパティを削除するには、[Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/)メソッドを使用して削除するプロパティ名を渡すか、[RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/)メソッドを使用してインデックスでプロパティを [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/)メソッドを使用してすべてのプロパティを削除することもできます。

次のコード例では、指定された名前のカスタムプロパティがドキュメントに存在するかどうかを確認し、さらにいくつかのカスタムドキュメントプ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

カスタムドキュメントプロパティを削除する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## 組み込みのドキュメントのプロパティを更新する

Aspose.Wordsは、Microsoft Wordのようにドキュメントプロパティを自動的に更新しませんが、一部の統計的な組み込みドキュメントプロパティを更新する方法を提供します。 次のプロパティを再計算して更新するには、[UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/)メソッドを呼び出します:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## コンテンツにリンクされた新しいカスタムプロパティを作成する

Aspose.Wordsは、コンテンツにリンクされた新しいカスタムドキュメントプロパティを作成するための[AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/)メソッドを提供します。 このプロパティは、新しく作成されたpropertyオブジェクトを返します。[LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/)が無効な場合はnullを返します。

次のコード例は、カスタムプロパティへのリンクを構成する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## ドキュメント変数の取得

[Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/)プロパティを使用してドキュメント変数のコレクションを取得できます。 変数名と値は文字列です。

次のコード例は、ドキュメント変数を列挙する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## 文書から個人情報を削除する

Word文書を他の人と共有する場合は、作成者名や会社などの個人情報を削除することをお勧めします。 これを行うには、[RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/)プロパティを使用して、文書の保存時にMicrosoft Wordがコメント、リビジョン、および文書のプロパティからすべてのユーザー情報を削除することを示すフラグを設定します。

次のコード例は、個人情報を削除する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

このオプションを設定しても、Aspose.Words内のドキュメントの処理中に個人情報が実際に削除されることはなく、Microsoft Wordの動作にのみ影響します。

{{% /alert %}}
