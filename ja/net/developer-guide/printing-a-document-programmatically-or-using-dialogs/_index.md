---
title: C# でのドキュメントの印刷
second_title: .NET用Aspose.Words
articleTitle: プログラムまたはダイアログを使用してドキュメントを印刷する
linktitle: プログラムまたはダイアログを使用してドキュメントを印刷する
description: "アンマネージド XpsPrint API を使用するか、C# の設定ダイアログと印刷プレビュー ダイアログを使用して選択したプリンターを介して、Server 上のドキュメントを印刷します。"
type: docs
weight: 55
url: /ja/net/print-a-document-programmatically-or-using-dialogs/
---

この記事では、Aspose.Words と `XpsPrint` API を使用して、ASP.NET または Windows サービス アプリケーションからワード プロセッシング ドキュメントを印刷する方法について説明します。また、[設定]、[印刷プレビュー]、および [印刷進行状況] ダイアログを使用してドキュメントを印刷する方法を示し、ドキュメントを印刷するための最初の呼び出しの時間を短縮する方法についても説明します。

## `XpsPrint` API を介して Server でドキュメントを印刷する

このセクションは、Aspose.Words を使用して .NET アプリケーションからアンマネージド XpsPrint API に XPS ドキュメントを送信したいユーザーを対象としています。

### ASP.NET または Windows サービス アプリケーションでのドキュメントの印刷の制限事項

印刷出力を生成する .NET アプリケーションを開発する場合、通常は、*System.Drawing.Printing* 名前空間で提供されるクラス、または Windows Presentation Foundation (WPF) クラスを使用できます。ただし、アプリケーションが ASP.NET または Windows サービス アプリケーションの場合、Microsoft ではこのアプローチの使用が推奨されないため、印刷のオプションは制限されます。 .NET Framework 印刷クラスは、サービス アプリケーションではサポートされていません。これには、通常、サーバー サービスのコンテキストで実行される ASP ページが含まれます。

*System.Drawing.Printing* 名前空間内のクラスは、Windows サービス、ASP.NET アプリケーションまたはサービス内での使用はサポートされていないため、これらを使用しようとすると、サービスのパフォーマンスの低下、実行時例外、その他の問題が発生する可能性があります。 WPF を使用して Windows サービスを構築することも同様にサポートされていません。 WPF はプレゼンテーション テクノロジであるため、Windows サービスには、ユーザーとの対話を伴う視覚的な操作を実行するための適切なアクセス許可が必要です。 Windows サービスにそのような権限がない場合、予期しない結果が生じる可能性があります。

Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) オブジェクトは、ドキュメントを印刷するための [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) メソッドのファミリーを提供します。これらのメソッドは、*System.Drawing.Printing* 名前空間で定義された .NET 印刷クラスを使用します。 Aspose.Words の顧客の中には、サーバー側アプリケーションでの印刷にこれらをうまく利用している人がたくさんいます。ただし、この記事では、Microsoft の推奨事項に準拠した別の印刷方法を示します。

### Server でドキュメントを印刷する方法

Microsoft に従ってドキュメントを印刷する適切な方法は、アンマネージド XpsPrint API を使用することです。この API は、Windows 7、Windows Server 2008 R2、および Windows Vista のプラットフォーム アップデートがインストールされている場合には Windows Vista で使用できます。

Aspose.Words はあらゆるドキュメントを XPS に簡単に変換できるため、XPS ドキュメントを `XpsPrint` API に渡すコードを記述するだけで済みます。唯一の問題は、`XpsPrint` API が管理されていないため、Platform Invoke テクノロジに関するある程度の知識が必要であることです。

ドキュメントを印刷するために、Aspose.Words は単純な Print メソッドを含む **XpsPrintHelper** クラスを提供します。このメソッドでは、次のパラメーターを指定するだけで済みます (詳細については、記事 [XPS API 経由でドキュメントを印刷](/words/net/missing-features-in-openxml/) を参照してください)。

- 印刷したい文書。
- プリンター名。
- ジョブ名 (オプション)。
- 印刷ジョブが完了するまでプログラムが待機するかどうかを指定するブール値。したがって、システムはドキュメントが正常に印刷されたかどうかを確認するか、印刷ジョブの送信後すぐに戻ります。最後のケースでは、印刷ジョブが成功したかどうかを識別することはできません。

ドキュメントの送信または印刷中に問題が発生すると、メソッドは例外をスローします。

以下のコード例は、**XpsPrintHelper** クラスを使用してドキュメントを印刷する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

プロジェクトを実行すると、指定したプリンターでサンプル ドキュメントが印刷され、コンソール ウィンドウが開いて印刷結果が表示されます。印刷ジョブが完了するかエラーが発生すると、システムは成功メッセージまたはスローされた例外のテキストを表示します。

[PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) クラスを使用して一部の印刷設定を行うこともできます。たとえば、Microsoft Word では、プリンタ トレイがセクションごとに定義され、プリンタに固有です。したがって、[FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) プロパティと [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/) プロパティを使用して、セクションごとにこれらの値をプログラムで変更できます。

{{% alert color="primary" %}}

場合によっては、Aspose.Words を使用せずにこのサンプルを使用する必要がある場合があります。たとえば、すでに XPS ドキュメントがあり、それを ASP.NET または Windows サービス アプリケーションから印刷したい場合などです。その後、`Print` メソッドを削除するだけです。

{{% /alert %}}

**XpsPrintHelper**.**Print** メソッドには 2 つのオーバーロードがあります。最初のオーバーロードは [Document](https://reference.aspose.com/words/net/aspose.words/document/) オブジェクトを取得し、それを XPS 形式で `MemoryStream` に保存します。 2 番目のオーバーロードは `Stream` オブジェクトを受け入れます。ストリームには、XPS 形式のドキュメントが含まれている必要があります。

メソッドのオーバーロードの例は [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip) からダウンロードできます。

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

## 設定ダイアログと印刷プレビューダイアログを使用してドキュメントを印刷する

ドキュメントを操作する場合、多くの場合、選択したプリンタでドキュメントを印刷する必要があります。印刷プレビュー ダイアログを利用して、印刷されたドキュメントがどのように表示されるかを視覚的に確認し、関連する印刷オプションを選択すると便利です。

Aspose.Words には組み込みのダイアログやフォームはありませんが、.NET **PrintDocument** クラスに基づいて [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) クラスを実装します。このクラスのインスタンスを **PrintPreviewDialog** フォームに渡して、ドキュメントをプレビューおよび印刷できます。また、[印刷プレビューダイアログ](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) クラスは、プリンターに送信する出力を定義します。

次の例は、これらのクラスを使用して、印刷プレビューおよび設定ダイアログを介して Aspose.Words からドキュメントを印刷する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

**AllowSomePages** プロパティの値が True の場合、**AllowSomePages** プロパティを使用すると、印刷するページの範囲を選択できます。デフォルトでは、範囲内のすべてのページが印刷対象として選択されます。

{{% /alert %}}

[印刷プレビュー] ダイアログ設定の外観を最適化するには、**PrintPreviewDialog** クラスのプロパティを指定します。

## 複数のページを 1 枚の用紙に印刷する

ドキュメントを印刷するときに柔軟性が高いことは常に有益です。 .NET と Aspose.Words を使用すると、印刷ページ上でのドキュメントの表示方法を定義することで、印刷操作を簡単に微調整してカスタム ロジックを実装できます。

前のセクションと同様に、Aspose.Words は .NET **PrintDocument** クラスに基づく **MultipagePrintDocument** クラスを実装します。これは、既存の .NET 印刷インフラストラクチャを、印刷および印刷プレビュー ダイアログで印刷前にドキュメントを視覚化できるように使用できることを意味します。 **MultipagePrintDocument** クラスは、1 枚の用紙に複数のページを印刷する機能を提供します。

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

このコード例の結果を以下に示します。

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## ドキュメントの印刷時に印刷進行状況ダイアログを非表示にする

[Print](https://reference.aspose.com/words/net/aspose.words/document/print/) 方式でドキュメントを印刷する場合、[印刷進行状況] ダイアログは表示されません。ただし、このダイアログは、別の [印刷](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) メソッドで印刷するときに表示されます。この場合、[印刷] ダイアログが表示されないようにするには、次の例に示すように、このメソッドで有効なプリンター設定と標準の印刷コントローラーを指定する必要があります。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

## ドキュメントを印刷するための最初の呼び出しの時間を短縮する方法

Aspose.Words は、印刷時間を短縮するために **PrinterSettings** の一部のフィールドを読み取り、キャッシュします。これは、[CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/) メソッドを呼び出すことで実現できます。このメソッドが以前に実行されていない場合は、印刷が開始される前に呼び出されます。このメソッドを呼び出した場合と呼び出さなかった場合の合計印刷時間はほぼ同じであることに注意してください。このメソッドを使用する目的は、[Print](https://reference.aspose.com/words/net/aspose.words/document/print/) メソッドの最初の呼び出し時間を短縮することです。次のコード例は、このメソッドの使用方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## 関連項目

- [Windows Vista のプラットフォームのアップデート](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
