---
title: C# で Office アドインを使用する
second_title: .NET用Aspose.Words
articleTitle: Office アドインの使用
linktitle: Office アドインの使用
description: "Aspose.Words for .NET は、C# を使用して Office アドインを操作するためのさまざまなクラスを提供します。 Web 拡張機能を介してタスク ウィンドウを追加し、ウィンドウと拡張機能のプロパティをカスタマイズできます。"
type: docs
weight: 50
url: /ja/net/work-with-office-add-ins/
---

場合によっては、ドキュメントを変更するコードを実行するインターフェイス コントロールへのアクセスを許可したい場合があります。 Aspose.Words API は、Office アドインを表す XML ボキャブラリーを拡張する要素と属性をカスタマイズするためのさまざまなクラスを許可する `WebExtensions` 名前空間を提供します。

WebExtensions 名前空間は、条件に応じて次のように分割できます。

* 作業ウィンドウを操作するためのオブジェクト
* Web 拡張機能を操作するためのオブジェクト

## タスクペインの使用

作業ウィンドウは、Microsoft Word のウィンドウの右側に表示されるインターフェイス サーフェイスです。タスク ウィンドウを使用すると、ユーザーはコードを実行してドキュメントを変更できるインターフェイス コントロールにアクセスできます。

たとえば、Aspose.Words API を使用すると、作業ウィンドウ アドインを追加し、その外観をカスタマイズできます。

## Web 拡張機能の使用

Web 拡張機能は、Office アプリケーションの機能を拡張し、Office ドキュメントのコンテンツと対話するツールです。 Web 拡張機能は、ユーザー エクスペリエンスを向上させるための追加機能を Office クライアントに提供します。

Aspose.Words では、[WebExtension](https://reference.aspose.com/words/net/aspose.words.webextensions/webextension/) クラスと [TaskPane](https://reference.aspose.com/words/net/aspose.words.webextensions/taskpane/) クラスを使用してタスク ペイン タイプの Web 拡張機能を追加する機能が提供され、ペインと拡張機能のプロパティをカスタマイズすることもできます。

次のコード例は、作業ウィンドウを作成し、基本的なプロパティを使用して Web 拡張機能作業ウィンドウに追加する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

作業ウィンドウ アドインのリストを表示するには、[WebExtensionTaskPanes](https://reference.aspose.com/words/net/aspose.words/document/webextensiontaskpanes/) プロパティを使用します。

次のコード例は、このようなアドインのリストを取得する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
