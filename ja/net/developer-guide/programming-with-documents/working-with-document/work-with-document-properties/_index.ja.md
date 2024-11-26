---
title: C# でのドキュメント プロパティの操作
second_title: .NET用Aspose.Words
articleTitle: ドキュメントのプロパティを操作する
linktitle: ドキュメントのプロパティを操作する
description: "Aspose.Words for .NET を使用すると、C# を使用して、API やバージョン番号、承認済み Date などのドキュメントに関する有用な情報を組み込みまたはカスタムのドキュメント プロパティに保存できます。"
type: docs
weight: 10
url: /ja/net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

ドキュメントのプロパティを使用すると、ドキュメントに関するいくつかの有用な情報を保存できます。これらのプロパティは、次の 2 つのグループに分類できます。

* ドキュメントのタイトル、作成者名、ドキュメントの統計などの値を含むシステムまたは組み込み。
* ユーザー定義またはカスタム。ユーザーが名前と値の両方を定義できる名前と値のペアとして提供されます。

API とバージョン番号に関する情報が出力ドキュメントに直接書き込まれることを知っておくと便利です。たとえば、ドキュメントを PDF に変換すると、Aspose.Words は「アプリケーション」フィールドに「Aspose.Words」を入力し、「PDF プロデューサー」フィールドに「Aspose.Words for .NET YY.MN」を入力します。ここで、*YY.M.N* は変換に使用された Aspose.Words のバージョンです。 。詳細については、「[出力ドキュメントに含まれるジェネレーターまたはプロデューサーの名前](/words/ja/net/generator-or-producer-name-included-in-output-documents/)」を参照してください。

{{% alert color="primary" %}}

出力ドキュメントからこの情報を変更または削除するには、**指揮できない** Aspose.Words を使用することに注意してください。

{{% /alert %}}

## ドキュメントのプロパティにアクセスする

Aspose.Words でドキュメントのプロパティにアクセスするには、次を使用します。

* [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) は組み込みプロパティを取得します。

* カスタム プロパティを取得するための [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/)。

**BuiltInDocumentProperties** と **CustomDocumentProperties** は [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) オブジェクトのコレクションです。これらのオブジェクトは、インデクサー プロパティを通じて名前またはインデックスによって取得できます。

さらに、**BuiltInDocumentProperties** は、適切なタイプの値を返す入力されたプロパティのセットを通じてドキュメント プロパティへのアクセスを提供します。 **CustomDocumentProperties** を使用すると、ドキュメントのプロパティをドキュメントに追加または削除できます。

[DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) クラスを使用すると、ドキュメント プロパティの名前、値、およびタイプを取得できます。 [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/) はオブジェクトを返しますが、特定の型に変換されたプロパティ値を取得できる一連のメソッドがあります。プロパティの型がわかったら、**DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) や **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/) などの **DocumentProperty.ToXXX** メソッドの 1 つを使用して、適切な型の値を取得できます。

次のコード例は、ドキュメント内のすべての組み込みプロパティとカスタム プロパティを列挙する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx) からダウンロードできます。

{{% /alert %}}

Microsoft Word では、「ファイル → プロパティ」メニューを使用してドキュメントのプロパティにアクセスできます。

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## ドキュメントのプロパティの追加または削除

Aspose.Words を使用して組み込みドキュメント プロパティを追加または削除することはできません。値の変更または更新のみが可能です。

Aspose.Words でカスタム ドキュメント プロパティを追加するには、[Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/) メソッドを使用して、新しいプロパティ名と適切な型の値を渡します。このメソッドは、新しく作成された **DocumentProperty** オブジェクトを返します。

カスタム プロパティを削除するには、[Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/) メソッドを使用して削除するプロパティ名を渡すか、[RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at) メソッドを使用してインデックスによってプロパティを削除します。 [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/) メソッドを使用してすべてのプロパティを削除することもできます。

次のコード例では、指定された名前のカスタム プロパティがドキュメント内に存在するかどうかを確認し、さらにいくつかのカスタム ドキュメント プロパティを追加します。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx) からダウンロードできます。

{{% /alert %}}

次のコード例は、カスタム ドキュメント プロパティを削除する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## 組み込みのドキュメントプロパティを更新する

Aspose.Words は、Microsoft Word の一部のプロパティとは異なり、ドキュメント プロパティを自動的に更新しませんが、一部の統計的な組み込みドキュメント プロパティを更新する方法を提供します。 [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/) メソッドを呼び出して、次のプロパティを再計算して更新します。

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## コンテンツにリンクされた新しいカスタム プロパティを作成する

Aspose.Words は、コンテンツにリンクされた新しいカスタム ドキュメント プロパティを作成する [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) メソッドを提供します。このプロパティは、新しく作成されたプロパティ オブジェクトを返すか、[LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) が無効な場合は null を返します。

次のコード例は、カスタム プロパティへのリンクを構成する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## ドキュメント変数の取得

[Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/) プロパティを使用してドキュメント変数のコレクションを取得できます。変数名と値は文字列です。

次のコード例は、ドキュメント変数を列挙する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx) からダウンロードできます。

{{% /alert %}}

## 文書から個人情報を削除する

Word 文書を他の人と共有する場合は、作成者名や会社などの個人情報を削除したい場合があります。これを行うには、[RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/) プロパティを使用して、文書の保存時に Microsoft Word がコメント、リビジョン、および文書プロパティからすべてのユーザー情報を削除することを示すフラグを設定します。

次のコード例は、個人情報を削除する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

このオプションを設定しても、Aspose.Words でのドキュメントの処理中に実際に個人情報は削除されず、Microsoft Word の動作にのみ影響します。

{{% /alert %}}
