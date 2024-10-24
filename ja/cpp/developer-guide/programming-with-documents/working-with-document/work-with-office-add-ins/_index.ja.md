---
title: C++でのOfficeアドインの操作
second_title: C++の場合Aspose.Words
articleTitle: Officeアドインの操作
linktitle: Officeアドインの操作
description: "C++の場合Aspose.Words Officeアドインを操作するためのさまざまなクラスを提供します。 Web拡張機能を使用して作業ウィンドウを追加し、ペインと拡張機能のプロパティをカスタマイズできます。"
type: docs
weight: 50
url: /ja/cpp/work-with-office-add-ins/
---

場合によっては、ドキュメントを変更するコードを実行するインターフェイスコントロールへのアクセスを許可することができます。 Aspose.WordsAPIは`WebExtensions`名前空間を提供し、Officeアドインを表すためのXMLボキャブラリーを拡張する要素と属性をカスタマイズするためのさまざまなクラスを付与します。

WebExtensions名前空間は条件付きで次のように分割できます:

* 作業ウィンドウを操作するためのオブジェクト
* Web拡張機能を操作するためのオブジェクト

## タスクペインの使用

タスクペインは、ウィンドウの右側にMicrosoft Wordで表示されるインターフェイスサーフェスです。 作業ウィンドウでは、コードを実行してドキュメントを変更できるインターフェイスコントロールにアクセスできます。

たとえば、Aspose.WordsAPIを使用して、作業ウィンドウアドインを追加し、その外観をカスタマイズできます。

## Web拡張機能の使用

Web拡張機能は、Officeアプリケーションの機能を拡張し、Officeドキュメントコンテンツと対話するツールです。 Web拡張機能は、ユーザー体験を向上させるためのOfficeクライアントに追加の機能を提供します。

Aspose.Wordsは、[WebExtension](https://reference.aspose.com/words/cpp/aspose.words.webextensions/webextension/)クラスと[TaskPane](https://reference.aspose.com/words/cpp/aspose.words.webextensions/taskpane/)クラスを使用して作業ウィンドウタイプのWeb拡張機能を追加する機能を提供し、ペインと拡張機能のプロパティをカスタマイズす

次のコード例は、タスクペインを作成し、基本的なプロパティを使用してweb extensionタスクペインに追加する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cpp" >}}

作業ウィンドウアドインの一覧を表示するには、[WebExtensionTaskPanes](https://reference.aspose.com/words/cpp/aspose.words/document/get_webextensiontaskpanes/)プロパティを使用します。

次のコード例は、このようなアドインの一覧を取得する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-GetListOfAddins.cpp" >}}
