---
title: Office Add-ins と連携 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: Office Add-ins と連携
linktitle: Office Add-ins と連携
description: "Aspose.Words お問い合わせ Java Office Add-ins と連携するためのさまざまなクラスを提供しています。 Web拡張機能でTask Paneを追加し、ペインとエクステンションプロパティをカスタマイズできます。"
type: docs
weight: 50
url: /ja/java/work-with-office-add-ins/
---

場合によっては、コードを実行して文書を変更するためのインタフェースコントロールへのアクセス権を与える場合があります。 Aspose.Words API 提供して下さい `WebExtensions` namespace は、Office Add-ins を表すために、XML 語彙を拡張する要素と属性をカスタマイズするために、さまざまなクラスを付与します。

WebExtensions の名前空間は、条件付きに分けられます。

* タスクペインを扱うオブジェクト
* Web拡張機能で動作するオブジェクト

## タスクパンを使用する

タスクペインは、ウィンドウの右側に表示されているインタフェース面です Microsoft Wordお問い合わせ タスクペインを使用すると、ユーザーは、コードを実行して文書を変更することができますインターフェイス制御にアクセスすることができます。

例えば、 Aspose.Words API, タスクペインアドオンを追加して外観をカスタマイズできます。

## Webエクステンションの使用

Webエクステンションは、Officeアプリケーションの機能を拡大し、Officeドキュメントコンテンツとやり取りするツールです。 Webエクステンションは、Officeクライアントにユーザーエクスペリエンスを改善するための追加機能を提供します。

Aspose.Words タスクペインタイプのWebエクステンションを追加する機能を提供します。 [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) そして、 [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) クラスは、ペインとエクステンションプロパティをカスタマイズすることもできます。

次のコードの例では、タスクペインを作成し、基本的なプロパティでWeb拡張タスクペインに追加する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

タスクペインアドインのリストを表示するには、 [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) プロパティ.

次のコードの例では、このようなアドインのリストを取得する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

