---
title: Ole オブジェクトを扱う
second_title: Aspose.Words お問い合わせ Java
articleTitle: Ole オブジェクトを扱う
linktitle: Ole オブジェクトを扱う
description: "ドキュメントで埋め込む OLE の作成と変更 Javaお問い合わせ"
type: docs
weight: 360
url: /ja/java/working-with-ole-objects/
---

OLEは「オブジェクトリンクとエンベディング」を意味します。 これは、ユーザーがサードパーティのアプリケーションによって作成または編集された「オブジェクト」を含む文書を扱うことができる技術です。 つまり、OLE では、この "objects" を別のアプリケーションにエクスポートし、追加コンテンツにインポートすることができます。

この記事では、OLEオブジェクトをインサートし、そのプロパティをドキュメントに設定することについて説明します。

## インサート Ole オブジェクト

OLE オブジェクトが必要な場合は、 [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) メソッドを渡すと、 **ProgId** 他のパラメータで明示的に。

次のコードの例では、OLE をインサートする方法を示します。 ドキュメントへのオブジェクト:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### OLEオブジェクトをインサートするときにファイル名と拡張子を設定します

OLEパッケージは、OLEハンドラが不明な場合、埋め込まれたオブジェクトを格納するレガシーで「unocumented」方法です。

早割 Windows などのバージョン Windows 3.1、95、98 は Packager を持っていた。 あらゆる種類のデータを文書に埋め込むために使用できるアプリケーションを実行します。 このアプリケーションは、今から除外されます Windows, しかし Microsoft Word OLEハンドラが欠落しているか、不明な場合は、他のアプリケーションでもデータを埋め込むために使用されます。 ザ・オブ・ザ・ `OlePackage` ユーザーは OLE Package プロパティにアクセスすることができます。

次のコードの例では、 OLE Package のファイル名、拡張子、表示名を設定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### OLE オブジェクトの未加工データにアクセスする

ユーザーは、さまざまなプロパティとメソッドを使用して OLE オブジェクトのデータにアクセスすることができます。 `OleFormat` クラス。 例えば、 `OLE` オブジェクトの生データまたはリンクされた OLE オブジェクトのソースファイルのパスと名前。

次のコードの例では、OLEを取得する方法を示します オブジェクトの生データを使用して [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) メソッド:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### インサート OLE Iconとしてのオブジェクト

OLEオブジェクトは、画像として文書に挿すこともできます。

以下のコード例では、OLE Object をアイコンとしてインサートする方法を示します。 この目的のために、 **DocumentBuilder** クラスは [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) メソッド。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

次のコードの例では、埋め込まれた OLE オブジェクトをストリームからドキュメントに差し込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## インサートオンラインビデオ

オンライン動画は、*「インサート」>「オンライン動画」*タブからWord文書に差し込むことができます。 オンラインビデオを現在の場所にあるドキュメントに電話をかけることで、 [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) メソッド:

ザ・オブ・ザ・ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) このメソッドの4つのオーバーロードを紹介します。 最も人気のあるビデオリソースで最初の1作品は、 `URL` パラメータとしてビデオの。 例えば、最初のオーバーロードは、オンライン動画の簡単なインサートをサポートしています。 [ツイート](https://www.youtube.com/) そして、 [ヴィメオ](https://vimeo.com/) リソース。

次のコードの例では、オンライン動画をインサートする方法を示します。 *Vimeo* ドキュメントへ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

2つ目のオーバーロードは、他のすべてのビデオリソースと連携し、埋め込まれたHTMLコードをパラメーターとして処理します。 動画を埋め込むためのHTMLコードは、プロバイダによって異なる場合がありますので、それぞれのプロバイダに詳細についてはお問い合わせください。

{{% alert color="primary" %}}

なお、MS Word 2013 では、動画をご覧いただけます。

{{% /alert %}}

次のコードの例では、このようなHTMLコードを使用して、オンラインビデオを文書に書き込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
