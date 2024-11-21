---
title: 文書のプロパティで作業 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: 文書のプロパティで作業
linktitle: 文書のプロパティで作業
description: "Aspose.Words お問い合わせ Java ドキュメントに関する有用な情報を保存することができます。 API バージョン番号または認証 Date, 組み込みまたはカスタムドキュメントプロパティ。"
type: docs
weight: 10
url: /ja/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

ドキュメントプロパティでは、ドキュメントに関する有用な情報を保存できます。 これらのプロパティは2つのグループに分けることができます。

* 文書のタイトル、著者名、文書の統計などを含む値を含むシステムまたはビルトイン
* 必須 user-defined または custom は name-value のペアとして提供され、ユーザーは名前と値の両方を定義できます。

情報を知ることは有用である API そして版番号は直接文書を出力するために書かれます。 たとえば、ドキュメントをPDFに変換すると、 Aspose.Words "Application" フィールドに "Aspose.Words「PDF プロデューサー」と「PDF プロデューサー」のフィールドAspose.Words お問い合わせ Java YY.M.N, ここで *YY.M.N* バージョンです。 Aspose.Words 変換に使用されます。 詳しくはこちらをご覧ください。 [出力文書に含まれるジェネレータまたはプロデューサー名](/words/ja/java/generator-or-producer-name-included-in-output-documents/)お問い合わせ

{{% alert color="primary" %}}

お問い合わせ **指示できない** Aspose.Words この情報を出力文書から変更または削除する。

{{% /alert %}}

## アクセス文書のプロパティ

ドキュメントプロパティへのアクセス Aspose.Words 使用:

* 必須 [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) ビルトインプロパティを取得する

* 必須 [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) カスタムプロパティを取得する

**BuiltInDocumentProperties** そして、 **CustomDocumentProperties** コレクション [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) オブジェクト。 これらのオブジェクトは、名前またはインデックスによってインデックスプロパティを介して取得できます。

**BuiltInDocumentProperties** さらに、適切なタイプの値を返す入力されたプロパティのセットを介してドキュメントプロパティへのアクセスを提供します。 **CustomDocumentProperties** ドキュメントプロパティを追加または削除することができます。

ザ・オブ・ザ・ [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) class では、ドキュメントプロパティの名前、値、種類を取得できます。 [値]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value????????????? {0} お問い合わせ {1}[フルーツ]](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) そして、 **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), 適切なタイプの値を取得する

次のコードの例では、すべての組み込みおよびカスタムプロパティをドキュメントに列挙する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)お問い合わせ

{{% /alert %}}

インスタグラム Microsoft Word, 「ファイル→プロパティ」メニューを使用してドキュメントプロパティにアクセスすることができます。

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## 文書のプロパティの追加または削除

組み込みのドキュメントプロパティを追加または削除することはできません。 Aspose.Wordsお問い合わせ 値を変更したり更新したりすることができます。

カスタムドキュメントプロパティを追加するには Aspose.Words, 使用して下さい [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) メソッドは、新しいプロパティ名と適切なタイプの値を渡します。 メソッドは新しく作成されたメソッドを返します。 **DocumentProperty** オブジェクト。

カスタムプロパティを削除するには、 [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) メソッドは、削除するプロパティ名を渡します。 [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) インデックスでプロパティを削除する方法。 また、すべてのプロパティーを削除することもできます。 [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) メソッド。

以下のコードの例では、特定の名前を持つカスタムプロパティがドキュメントに存在し、いくつかのカスタムドキュメントプロパティを追加します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)お問い合わせ

{{% /alert %}}

以下のコードの例では、カスタムドキュメントプロパティを削除する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## 組み込み文書のプロパティを更新する

Aspose.Words ドキュメントプロパティを自動的に更新しません。 Microsoft Word いくつかのプロパティで行いますが、統計的な組み込みのドキュメントプロパティを更新する方法を提供します。 お問い合わせ [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) 次のプロパティを再計算し、更新する方法:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## コンテンツにリンクされた新しいカスタムプロパティを作成する

Aspose.Words 提供して下さい [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) コンテンツにリンクされた新しいカスタムドキュメントプロパティを作成する方法。 このプロパティは新しく作成されたプロパティオブジェクトまたはnullを返します。 [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) 無効です。

以下のコードの例では、カスタムプロパティへのリンクを設定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## ドキュメント変数を取得する

ドキュメント変数のコレクションは、 [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) プロパティ. 変数名と値は文字列です。

次のコードの例では、ドキュメント変数を列挙する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)お問い合わせ

{{% /alert %}}

## 文書から個人情報を削除する

他の人とWord文書を共有したい場合は、作者名や会社などの個人情報を削除します。 これを行うには、 [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) プロパティは、そのフラグを示すフラグを設定する Microsoft Word 文書を保存することで、コメント、リビジョン、文書のプロパティからすべてのユーザー情報を削除します。

{{% alert color="primary" %}}

このオプションを設定すると、実際には個人情報を削除し、文書を処理します。 Aspose.Words そして影響だけ Microsoft Word 行動。

{{% /alert %}}
