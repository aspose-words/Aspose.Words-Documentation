---
title: C++でのOLEオブジェクトの操作
second_title: C++の場合Aspose.Words
articleTitle: OLEオブジェクトの操作
linktitle: OLEオブジェクトの操作
description: "C++を使用して、ドキュメント内のOLE埋め込みを作成および変更します。"
type: docs
weight: 360
url: /ja/cpp/working-with-ole-objects/
---

OLE(Object Linking and Embedding)は、ユーザーがサードパーティのアプリケーションによって作成または編集された"オブジェクト"を含む文書を操作できる技術です。 つまり、OLEでは、編集アプリケーションがこれらの"オブジェクト"を別の編集アプリケーションにエクスポートし、追加のコンテンツと一緒にインポー

この記事では、OLEオブジェクトを挿入し、そのプロパティをドキュメントに設定する方法について説明します。

## OLEオブジェクトの挿入

OLEオブジェクトが必要な場合は、[InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/)メソッドを呼び出し、他のパラメータで明示的に**ProgId**を渡します。

Oleオブジェクトをドキュメントに挿入する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### OLEオブジェクトを挿入するときにファイル名と拡張子を設定する

OLEパッケージは、oleハンドラーが不明な場合に埋め込まれたオブジェクトを格納するためのレガシーで「文書化されていない」方法です。

Windows3.1、95、98などの初期のWindowsバージョンにはパッケージャがありました。ドキュメントに任意のタイプのデータを埋め込むために使用できるexeアプリケーション。 このアプリケーションはWindowsから除外されるようになりましたが、Microsoft Wordおよび他のアプリケーションは、OLEハンドラーがないか不明な場合にデータを埋め込むた `OlePackage`クラスを使用すると、ユーザーはOLEパッケージのプロパティにアクセスできます。

次のコード例は、OLEパッケージのファイル名、拡張子、および表示名を設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### OLEオブジェクトの生データへのアクセスを取得する

ユーザーは、`OleFormat`クラスのさまざまなプロパティとメソッドを使用してOLEオブジェクトデータにアクセスできます。 たとえば、`OLE`オブジェクトの生データ、またはリンクされたOLEオブジェクトのソースファイルのパスと名前を取得できます。

次のコード例は、[GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/)メソッドを使用してOLEオブジェクトの生データを取得する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### Oleオブジェクトをアイコンとして挿入する

OLEオブジェクトは、画像としてドキュメントに挿入することもできます。

Oleオブジェクトをアイコンとして挿入する方法を次のコード例に示します。 この目的のために、[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)クラスは[InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/)メソッドを公開します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

埋め込みOLEオブジェクトをストリームからドキュメントにアイコンとして挿入する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## 挿入オンラインビデオ

オンラインビデオは、*"Insert" > "Online Video"*タブからWord文書に挿入できます。 [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/)メソッドを呼び出すことで、現在の場所にあるドキュメントにオンラインビデオを挿入できます。

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)クラスには、このメソッドの4つのオーバーロードが導入されています。 最初のものは最も人気のあるビデオリソースで動作し、ビデオの`URL`をパラメータとして取ります。 例えば、最初の過負荷は、オンラインビデオの簡単な挿入をサポートしています [YouTube](https://www.youtube.com/) と [Vimeo](https://vimeo.com/) リソース。

次のコード例は、*Vimeo*のオンラインビデオをドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

第二のオーバーロードは、他のすべてのビデオリソースで動作し、パラメータとして埋め込まれたHTMLコードを取ります。 動画を埋め込むためのHTMLコードはプロバイダによって異なる場合がありますので、詳細については各プロバイダにお問い合わせください。

{{% alert color="primary" %}}

文書は自動的にビデオを表示するためにMS Word2013用に最適化されることに注意してください。

{{% /alert %}}

次のコード例は、このようなHTMLコードを使用してオンラインビデオをドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}