---
title: Javaでのドキュメントプロパティの操作
second_title: Aspose.WordsのためのJava
articleTitle: ドキュメントプロパティの操作
linktitle: ドキュメントプロパティの操作
description: "Aspose.WordsforJavaを使用すると、APIやバージョン番号、承認された日付など、ドキュメントに関する有用な情報を組み込みまたはカスタムドキュメントプロパティ"
type: docs
weight: 10
url: /ja/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

ドキュメントプロパティを使用すると、ドキュメントに関する有用な情報を格納できます。 これらのプロパティは、2つのグループに分けることができます:

* 文書のタイトル、作成者名、文書の統計情報などの値を含むシステムまたは組み込み。
* ユーザーが名前と値の両方を定義できる名前と値のペアとして提供されます。

APIとバージョン番号に関する情報が出力文書に直接書き込まれることを知っておくと便利です。 たとえば、ドキュメントをPDFに変換すると、Aspose.Wordsは"Application"フィールドに"Aspose.Words"を入力し、"PDFProducer"フィールドに"Aspose.WordsforJavaYYを入力します。ここで、*YY.M.N*は変換に使用されるAspose.Wordsのバージョンです。 詳細については、以下を参照してください [出力文書に含まれるジェネレータ名またはプロデューサー名](/words/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

出力文書からこの情報を変更または削除するには、**cannot direct**Aspose.Wordsに注意してください。

{{% /alert %}}

## ドキュメントのプロパティへのアクセス

Aspose.Wordsのドキュメントプロパティにアクセスするには、次を使用します:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties)組み込みプロパティを取得します。

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties)カスタムプロパティを取得します。

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

[DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/)クラスを使用すると、ドキュメントプロパティの名前、値、および型を取得できます。 [値]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value）はオブジェクトを返しますが、プロパティ値を特定の型に変換できるメソッドのセットがあります。 プロパティの型がわかったら、**DocumentProperty.**[ToString]のような**DocumentProperty.ToXXX**メソッドのいずれかを使用できます](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString)と**DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt)は、適切な型の値を取得します。

次のコード例は、ドキュメント内のすべての組み込みプロパティとカスタムプロパティを列挙する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Microsoft Wordでは、"ファイル→プロパティ"メニューを使用して文書のプロパティにアクセスできます。

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## ドキュメントプロパティの追加または削除

Aspose.Wordsを使用して組み込みのドキュメントプロパティを追加または削除することはできません。 値を変更または更新できるのは、その値のみです。

Aspose.Wordsを使用してカスタムドキュメントプロパティを追加するには、[Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean)メソッドを使用して、新しいプロパティ名と適切な型の値を渡します。 このメソッドは、新しく作成された**DocumentProperty**オブジェクトを返します。

カスタムプロパティを削除するには、[Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String)メソッドを使用して削除するプロパティ名を渡すか、[RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int)メソッドを使用してインデックスごとにプロパティを削除します。 [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear)メソッドを使用してすべてのプロパティを削除することもできます。

次のコード例では、指定された名前のカスタムプロパティがドキュメントに存在するかどうかを確認し、さらにいくつかのカスタムドキュメントプ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

カスタムドキュメントプロパティを削除する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## 組み込みのドキュメントのプロパティを更新する

Aspose.Wordsは、Microsoft Wordのようにドキュメントプロパティを自動的に更新しませんが、一部の統計的な組み込みドキュメントプロパティを更新する方法を提供します。 次のプロパティを再計算して更新するには、[UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount)メソッドを呼び出します:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## コンテンツにリンクされた新しいカスタムプロパティを作成する

Aspose.Wordsは、コンテンツにリンクされた新しいカスタムドキュメントプロパティを作成するための[AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String)メソッドを提供します。 このプロパティは、新しく作成されたpropertyオブジェクトを返します。[LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent)が無効な場合はnullを返します。

次のコード例は、カスタムプロパティへのリンクを構成する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## ドキュメント変数の取得

[Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables)プロパティを使用してドキュメント変数のコレクションを取得できます。 変数名と値は文字列です。

次のコード例は、ドキュメント変数を列挙する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## 文書から個人情報を削除する

Word文書を他の人と共有する場合は、作成者名や会社などの個人情報を削除することをお勧めします。 これを行うには、[RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation)プロパティを使用して、文書の保存時にMicrosoft Wordがコメント、リビジョン、および文書のプロパティからすべてのユーザー情報を削除することを示すフラグを設定します。

{{% alert color="primary" %}}

このオプションを設定しても、Aspose.Words内のドキュメントの処理中に個人情報が実際に削除されることはなく、Microsoft Wordの動作にのみ影響します。

{{% /alert %}}
