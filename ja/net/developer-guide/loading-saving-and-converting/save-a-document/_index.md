---
title: C# でドキュメントを保存する
second_title: .NET用Aspose.Words
articleTitle: ドキュメントを保存する
linktitle: ドキュメントを保存する
type: docs
description: "C# を使用して、サポートされている形式でドキュメントを保存します。"
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /ja/net/save-a-document/
---

Aspose.Words を使用して実行する必要があるタスクのほとんどには、ドキュメントの保存が含まれます。ドキュメントを保存するために、Aspose.Words は [Document](https://reference.aspose.com/words/net/aspose.words/document/) クラスの [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) メソッドを提供します。クライアント ブラウザーに送信するために、ドキュメントをファイル、ストリーム、または ASP.NET HttpResponse オブジェクトに保存できるオーバーロードがあります。ドキュメントは、Aspose.Words がサポートする任意の保存形式で保存できます。サポートされているすべての保存形式のリストについては、[SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) 列挙を参照してください。

## ファイルに保存 {#save-a-document-to-a-file}

ファイル名を指定して [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) メソッドを使用するだけです。 Aspose.Words は、指定したファイル拡張子から保存形式を決定します。

次のコード例は、ドキュメントをファイルにロードして保存する方法を示しています。

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc) からダウンロードできます。

{{% /alert %}}

## ストリーム{#save-a-document-to-a-stream}に保存

ストリーム オブジェクトを [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) メソッドに渡します。ストリームに保存する場合は、保存形式を明示的に指定する必要があります。

次のコード例は、ドキュメントをストリームにロードして保存する方法を示しています。

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) からダウンロードできます。

{{% /alert %}}

## ドキュメントをクライアント ブラウザ {#sending-a-document-to-a-client-browser} に送信する

ドキュメントをクライアント ブラウザに送信するには、ファイル名、保存形式、保存タイプ、ASP.NET HttpResponse オブジェクトの 4 つのパラメータを取る特別なオーバーロードを使用します。ドキュメントがユーザーに表示される方法は [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/) 列挙によって表され、ブラウザに送信されたドキュメントがブラウザで直接開くオプションを提供するか、ファイル拡張子に関連付けられたアプリケーションで開くオプションを提供するかを決定します。

次のコード例は、ASP.NET コードからクライアント ブラウザにドキュメントを送信する方法を示しています。

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) からダウンロードできます。

{{% /alert %}}

`Save` メソッドのこのオーバーロードは、.NET クライアント プロファイル DLL を使用する場合には使用できません。この DLL は **net3.5_クライアントプロファイル** フォルダーにあります。 .NET クライアント プロファイルでは **System.Web** などのアセンブリが除外されているため、**HttpResponse** は使用できません。これは完全に仕様によるものです。

これはエラーとして現れる場合があります。

**「メソッド 'Save' のオーバーロードは '4' パラメータを取ります。」**

ASP.NET アプリケーションで Aspose.Words を使用する必要がある場合は、この記事で説明されているように、適切なオーバーロードが利用可能な .NET 2.0 DLL を使用することをお勧めします。

## PCL {#save-a-document-to-pcl} に保存

Aspose.Words は、PCL (プリンター コマンド言語) へのドキュメントの保存をサポートしています。 Aspose.Words は、ドキュメントを PCL 6 (PCL 6 Enhanced または PCL XL) 形式で保存できます。 `PclSaveOptions` クラスを使用すると、ドキュメントを PCL 形式で保存するときに追加のオプションを指定できます。

次のコード例は、保存オプションを使用してドキュメントを PCL に保存する方法を示しています。

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## 関連項目

- ASP.NET [HTTPレスポンス](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8) オブジェクトに関する情報
