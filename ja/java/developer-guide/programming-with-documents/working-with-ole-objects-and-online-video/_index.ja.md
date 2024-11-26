---
title: Oleオブジェクトの操作
second_title: Aspose.WordsのためのJava
articleTitle: Oleオブジェクトの操作
linktitle: Oleオブジェクトの操作
description: "Javaを使用して文書へのOLE埋め込みを作成および変更します。"
type: docs
weight: 360
url: /ja/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLEは"オブジェクトのリンクと埋め込み"を表します。 これは、ユーザーがサードパーティのアプリケーションによって作成または編集された「オブジェクト」を含むドキュメントを操作できるテクノロジです。 つまり、OLEを使用すると、アプリケーションはこれらの"オブジェクト"を別のアプリケーションにエクスポートして編集し、追加のコンテンツと一緒にイン

この記事では、OLEオブジェクトを挿入し、そのプロパティをドキュメントに設定する方法について説明します。

## Oleオブジェクトを挿入

OLEオブジェクトが必要な場合は、[InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream)メソッドを呼び出し、他のパラメータで明示的に**ProgId**を渡します。

次のコード例は、OLEオブジェクトをドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### OLEオブジェクトを挿入するときにファイル名と拡張子を設定する

OLEパッケージは、OLEハンドラが不明な場合に埋め込まれたオブジェクトを格納するためのレガシーで"文書化されていない"方法です。

Windows 3.1、95、98などの初期のWindowsバージョンには、任意のタイプのデータをドキュメントに埋め込むために使用できるPackager.exeアプリケーションがありました。 このアプリケーションはWindowsから除外されましたが、Microsoft Wordや他のアプリケーションはOLEハンドラーがないか不明な場合でもデータを埋め込むために使用します。 `OlePackage`クラスを使用すると、ユーザーはOLE Packageプロパティにアクセスできます。

次のコード例は、OLE Packageのファイル名、拡張子、および表示名を設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### OLEオブジェクトの生データへのアクセスを取得する

ユーザーは`OleFormat`クラスのさまざまなプロパティとメソッドを使用してOLEオブジェクトデータにアクセスできます。 たとえば、`OLE`オブジェクトの生データ、またはリンクされたOLEオブジェクトのソースファイルのパスと名前を取得することができます。

次のコード例は、[GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData)メソッドを使用してOLEオブジェクトの生データを取得する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### OLEオブジェクトをアイコンとして挿入する

OLEオブジェクトは画像として文書に挿入することもできます。

次のコード例は、OLEオブジェクトをアイコンとして挿入する方法を示しています。 この目的のために、**DocumentBuilder**クラスは[InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String)メソッドを公開します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

次のコード例は、埋め込みOLEオブジェクトをストリームからドキュメントにアイコンとして挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## 挿入オンラインビデオ

オンラインビデオは、*"Insert" > "Online Video"*タブからWord文書に挿入できます。 [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double)メソッドを呼び出すことで、現在の場所にあるドキュメントにオンラインビデオを挿入できます:

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)クラスには、このメソッドの4つのオーバーロードが導入されています。 最初のものは最も人気のあるビデオリソースで動作し、ビデオの`URL`をパラメータとして取ります。 例えば、最初の過負荷は、オンラインビデオの簡単な挿入をサポートしています [YouTube](https://www.youtube.com/) と [Vimeo](https://vimeo.com/) リソース。

次のコード例は、*Vimeo*のオンラインビデオをドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

2番目のオーバーロードは、他のすべてのビデオリソースで動作し、埋め込みHTMLコードをパラメータとして受け取ります。 ビデオを埋め込むためのHTMLコードはプロバイダーによって異なる場合がありますので、詳細については各プロバイダーにお問い合わせください。

{{% alert color="primary" %}}

ドキュメントは自動的にビデオを表示するためにMSWord2013用に最適化されることに注意してください。

{{% /alert %}}

次のコード例は、このようなHTMLコードを使用してオンラインビデオをドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
