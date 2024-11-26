---
title: C# での OLE オブジェクトとオンライン ビデオの操作
second_title: .NET用Aspose.Words
articleTitle: OLE オブジェクトとオンライン ビデオの操作
linktitle: OLE オブジェクトとオンライン ビデオの操作
description: "C# を使用して、ドキュメント内の OLE 埋め込みを作成および変更します。"
type: docs
weight: 360
url: /ja/net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) は、ユーザーがサードパーティのアプリケーションによって作成または編集された「オブジェクト」を含むドキュメントを操作できるテクノロジです。つまり、OLE を使用すると、編集アプリケーションがこれらの「オブジェクト」を別の編集アプリケーションにエクスポートし、追加のコンテンツとともにインポートすることができます。

この記事では、OLE オブジェクトの挿入とそのプロパティの設定、およびドキュメントへのオンライン ビデオの挿入について説明します。

## OLE オブジェクトの挿入

OLE オブジェクトが必要な場合は、[InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) メソッドを呼び出し、他のパラメータを使用して **ProgId** を明示的に渡します。

次のコード例は、OLE オブジェクトをドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### OLE オブジェクト挿入時のファイル名と拡張子を設定する

OLE パッケージは、OLE ハンドラーが不明な場合に埋め込みオブジェクトを格納する従来の「文書化されていない」方法です。

Windows 3.1、95、98 などの初期の Windows バージョンには、あらゆる種類のデータをドキュメントに埋め込むために使用できる Packager.exe アプリケーションがありました。このアプリケーションは現在 Windows から除外されていますが、Microsoft Word およびその他のアプリケーションは、OLE ハンドラーが見つからない場合、または不明な場合にデータを埋め込むために引き続きこのアプリケーションを使用します。 `OlePackage` クラスを使用すると、ユーザーは OLE パッケージのプロパティにアクセスできます。

次のコード例は、OLE パッケージのファイル名、拡張子、および表示名を設定する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### OLE オブジェクトの生データへのアクセスを取得する

ユーザーは、`OleFormat` クラスのさまざまなプロパティとメソッドを使用して、OLE オブジェクト データにアクセスできます。たとえば、`OLE` オブジェクトの生データや、リンクされた OLE オブジェクトのソース ファイルのパスと名前を取得できます。

次のコード例は、[GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/) メソッドを使用して OLE オブジェクトの生データを取得する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### OLE オブジェクトをアイコンとして挿入

OLE オブジェクトは、画像としてドキュメントに挿入することもできます。

次のコード例は、OLE オブジェクトをアイコンとして挿入する方法を示しています。この目的のために、[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) クラスは [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/) メソッドを公開します。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

次のコード例は、埋め込み OLE オブジェクトをアイコンとしてストリームからドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

正しく表示するには、アイコンの最大サイズが 32x32 である必要があります。

{{% /alert %}}

## オンラインビデオを挿入

オンライン ビデオは、*[[挿入] &gt; [オンライン ビデオ]* タブから Word 文書に挿入できます。](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/) メソッドを呼び出すことで、ドキュメントの現在の場所にオンライン ビデオを挿入できます。

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) クラスでは、このメソッドの 4 つのオーバーロードが導入されています。 1 つ目は最も一般的なビデオ リソースで動作し、ビデオの `URL` をパラメータとして受け取ります。たとえば、最初のオーバーロードは、[YouTube](https://www.youtube.com/) および [ヴィメオ](https://vimeo.com/) リソースからのオンライン ビデオの単純な挿入をサポートします。

次のコード例は、*Vimeo* からドキュメントにオンライン ビデオを挿入する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

2 番目のオーバーロードは他のすべてのビデオ リソースで動作し、埋め込み HTML コードをパラメータとして受け取ります。動画を埋め込むためのHTMLコードはプロバイダーによって異なる場合がありますので、詳しくは各プロバイダーにお問い合わせください。

{{% alert color="primary" %}}

ドキュメントはビデオを表示するために MS Word 2013 用に自動的に最適化されることに注意してください。

{{% /alert %}}

次のコード例は、このような HTML コードを使用してオンライン ビデオをドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}
