---
title: Python で Office アドインを使用する
second_title: Python via .NET用Aspose.Words
articleTitle: Office アドインの使用
linktitle: Office アドインの使用
description: "Aspose.Words for Python via .NET は、Office アドインを操作するためのさまざまなクラスを提供します。 Web 拡張機能を介してタスク ウィンドウを追加し、ウィンドウと拡張機能のプロパティをカスタマイズできます。"
type: docs
weight: 50
url: /ja/python-net/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

場合によっては、ドキュメントを変更するコードを実行するインターフェイス コントロールへのアクセスを許可したい場合があります。 Aspose.Words API は、Office アドインを表現するための XML 語彙を拡張する要素と属性をカスタマイズするためのさまざまなクラスを許可する [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/) モジュールを提供します。

WebExtensions 名前空間は、条件に応じて次のように分割できます。

* 作業ウィンドウを操作するためのオブジェクト
* Web 拡張機能を操作するためのオブジェクト

## タスクペインの使用

作業ウィンドウは、Microsoft Word のウィンドウの右側に表示されるインターフェイス サーフェスです。タスク ウィンドウを使用すると、ユーザーはコードを実行してドキュメントを変更できるインターフェイス コントロールにアクセスできます。

たとえば、Aspose.Words API を使用すると、作業ウィンドウ アドインを追加し、その外観をカスタマイズできます。

## Web 拡張機能の使用

Web 拡張機能は、Office アプリケーションの機能を拡張し、Office ドキュメントのコンテンツと対話するツールです。 Web 拡張機能は、ユーザー エクスペリエンスを向上させるための追加機能を Office クライアントに提供します。

Aspose.Words では、[WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/) クラスと [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/) クラスを使用してタスク ペイン タイプの Web 拡張機能を追加する機能が提供され、ペインと拡張機能のプロパティをカスタマイズすることもできます。

次のコード例は、作業ウィンドウを作成し、基本的なプロパティを使用して Web 拡張機能作業ウィンドウに追加する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

作業ウィンドウ アドインのリストを表示するには、[web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/) プロパティを使用します。

次のコード例は、このようなアドインのリストを取得する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}
