---
title: C# で TrueType フォントの場所を指定する
second_title: .NET用Aspose.Words
articleTitle: TrueType フォントの場所を指定する
linktitle: TrueType フォントの場所を指定する
description: "さまざまな TrueType フォント ソースを指定します: システム フォルダー、ユーザー ソース、ストリームからのフォントの読み込み、C# を使用したファイル システムまたはメモリ。"
type: docs
weight: 30
url: /ja/net/specifying-truetype-fonts-location/
---

このトピックでは、オペレーティング システム固有の違いを含め、TrueType フォントを検索するときの Aspose.Words のデフォルトの動作について説明し、ユーザー フォント ソースを指定する方法を示します。

[FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) クラスは、さまざまなフォント ソースを指定するために使用されます。 **FontSourceBase** クラスにはいくつかの実装があります。

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

一部のクラスの実装の詳細については、以下で説明します。

## システム {#loading-fonts-from-system} からフォントをロードする

常にデフォルトで使用される特別な [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/) クラスがあります。これは、システムにインストールされているすべての TrueType フォントを表します。したがって、**SystemFontSource** およびその他の必要なソースを含むソース リストを作成することができます。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

**SystemFontSource** クラスの単一インスタンスはデフォルトで [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) に定義されます。オペレーティング システムが異なると、フォントが異なる場所に配置される場合があります。ただし、ドキュメントごとに **FontSettings** インスタンスを使用することは最適な解決策ではありません。ほとんどの場合、[DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) を使用すれば十分です。

ドキュメントごとのインスタンスは、ドキュメントごとに異なるフォント ソースを使用する必要がある場合にのみ必要になりますが、これはまれなケースです。複数の **FontSettings** インスタンスを使用すると、キャッシュが共有されないため、パフォーマンスが低下します。

### Aspose.Words が Windows 上の TrueType フォントを検索する場所

ほとんどの場合、Windows ユーザーはフォントの欠落やレイアウトの誤りなどの重大な問題に直面することはありません。通常、Aspose.Words はドキュメントを通過し、フォントのリンクに遭遇すると、システム フォルダーからフォント データを正常に取得します。

Windows では、Aspose.Words はまず、_%windir%\Fonts フォルダーから使用可能なすべてのフォントを取得します。ほとんどの場合、この設定が機能します。必要な場合にのみ、独自のフォント フォルダーを指定します。 Aspose.Words for .NET は、HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts レジストリ キーに登録されている追加のフォントも検索します。さらに、Windows 10 では、現在のユーザーがフォントをインストールできるようになります。フォントは %userprofile%\AppData\Local\Microsoft\Windows\Fonts フォルダーに配置され、HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts レジストリでも指定されます。Aspose.Words はそこでこれらのフォントを検索します。

ドキュメントに埋め込みフォントが含まれている場合、Aspose.Words はドキュメントから関連するフォント データを読み取り、それを使用してドキュメントのレイアウトを作成できます。ドキュメントには、システム フォルダーにないフォントへのリンクが含まれている場合もあります。その場合、次のシナリオが機能します。

- ユーザーは **FontSettings** クラスを通じて新しいフォント ソースをセットアップできます。
- Aspose.Words は、失われたフォントを類似したフォントに置き換えることを試みることができます

{{% alert color="primary" %}}

通常、サーバー上の Aspose.Words レンダリングは、中信頼レベルで実行するように構成された ASP.NET アプリケーションでは機能しません。これは、レジストリへのアクセスが禁止され、ファイル システムへのアクセスが制限されるためです。

{{% /alert %}}

### 非 Windows システムのフォント

Aspose.Words はシステム フォント フォルダーでフォントを検索します。これらのフォルダーのリストは、[GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/) メソッドで表示できます。サポートされているフォントが見つからない場合、Aspose.Words は組み込みのデフォルト フォント Fanwood.ttf を使用します。

Windows OS と非 Windows OS のフォント メトリックは異なるため、Aspose.Words は類似のフォントを見つけて、元のフォントに似たレイアウトを構築するために可能な限りのことを行います。ただし、これが常に可能であるとは限りません。このような場合、**FontSettings** クラスを使用してカスタム フォントまたは置換ルールを追加する必要があります。

#### Aspose.Words が Linux 上の TrueType フォントを検索する場所

Linux ディストリビューションが異なると、フォントが異なるフォルダーに保存される場合があります。 Aspose.Words は、いくつかの場所でフォントを検索します。デフォルトでは、Aspose.Words は次のすべての場所でフォントを検索します。 * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fontsこのデフォルトの動作は、ほとんどの Linux ディストリビューションで機能します。ただし、常に動作することが保証されているわけではありません。その場合は、true タイプのフォントの場所を明示的に指定する必要がある場合があります。これを行うには、TrueType フォントが Linux ディストリビューション上のどこにインストールされているかを知る必要があります。

#### Aspose.Words が Mac OS X で TrueType フォントを探す場所

Aspose.Words は、Mac OS X 上の TrueType フォントの標準の場所である /Library/Fonts フォルダ内のフォントを検索します。ほとんどの場合、この設定で機能しますが、次のような場合には、独自のフォント フォルダを指定する必要がある場合があります。必要がある。

## フォルダー{#loading-fonts-from-folder}からフォントをロード

処理中のドキュメントにシステムにないフォントへのリンクが含まれている場合、それらのフォントをシステム フォルダーに追加したくない場合、または権限がない場合、最善の解決策は、次のコマンドを使用して独自のフォントを含むフォルダーを追加することです。 [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/)方式。これにより、システム ソースをユーザー ソースに置き換えることができます。 Aspose.Words は、レジストリまたは Windows\Font フォルダー内のフォントを検索せず、指定されたフォルダー内のフォントのみをスキャンします。 [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) メソッドは対応する値を返します。

### 1 つまたは複数のフォント フォルダーを指定する

[SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) メソッドと [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) メソッドは、1 つまたは複数の [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/) インスタンスを含む **SetFontSources** メソッドへのショートカットです。これらのメソッドは、Aspose.Words がフォントを検索する場所を示すために使用されます。フォルダーが存在しない場合、またはアクセスできない場合、Aspose.Words はこのフォルダーを無視します。フォント置換のソースを含むすべてのフォルダーが無視された場合、Aspose.Words はデフォルトとして Fanwood フォントを使用します。

次の例は、フォントのレンダリングまたは埋め込み中に Aspose.Words が TrueType フォントを検索するために使用するフォルダーまたはソースを設定する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

追加のブール値パラメーターは、すべてのフォルダーでフォントを再帰的にスキャンするかどうかを制御します。つまり、指定したフォルダーのすべての子フォルダーをスキャンします。次の例は、フォントのレンダリングまたは埋め込み時に TrueType フォントを複数のフォルダーで検索するように Aspose.Words を設定する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

{{% /alert %}}

優先順位に注意してください。異なるフォント ソースに同じファミリ名とスタイルを持つフォントが存在する場合、Aspose.Words はソースからフォントを優先して選択します。以下の「優先度」フィールドの説明を参照してください。

システム フォントをまったく使用したくない場合、Aspose.Words ではそれらを無視して独自のフォントのみを使用できます。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### 優先物件

[Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) プロパティは、異なるフォント ソースに同じファミリー名とスタイルのフォントが存在する場合に使用されます。この場合、Aspose.Words はソースから優先度の高いフォントを選択します。たとえば、システム フォルダに古いバージョンのフォントがあり、顧客が同じフォントの新しいバージョンをカスタム フォルダに追加したとします。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## ストリーム {#loading-fonts-from-stream} からフォントをロードする

Aspose.Words は、ストリームからフォントをロードできる [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/) クラスを提供します。ストリーム フォント ソースを使用するには、ユーザーは **StreamFontSource** から派生クラスを作成し、[OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/) メソッドの実装を提供する必要があります。 **OpenFontDataStream** メソッドは複数回呼び出される可能性があります。初めて、Aspose.Words が提供されたフォント ソースをスキャンして利用可能なフォントのリストを取得するときに呼び出されます。ドキュメント内でフォントが使用されている場合、後でこの関数を呼び出して、フォント データを解析し、フォント データをいくつかの出力形式に埋め込むことができます。 **StreamFontSource** は、必要な場合にのみフォント データをロードでき、[フォント設定](https://fontsettings/) の存続期間中はメモリに保存しないことができるため、便利です。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** は、ストリームをメモリにロードして **MemoryFontSource** に渡すことが常に可能なため、[MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/) の代替手段です。違いは、**MemoryFontSource** は常にメモリに保存され、**StreamFontSource** はオンデマンドでロードされ、すぐに破棄されることです。ただし、上で説明したように、複数回ロードされる可能性があります。 **MemoryFontSource** が望ましい場合もあれば、**StreamFontSource** が望ましい場合もあります。

## フォント検索キャッシュの保存とロード

初めてフォントを検索するとき、Aspose.Words はユーザーが指定したフォント ソースを反復処理し、これらのソースからのデータに基づいてフォント検索キャッシュを形成します。したがって、キャッシュは、フォント ファミリ、スタイル、完全なフォント名など、使用可能なフォントに関する情報を収集します。後続の呼び出しでは、Aspose.Words はフォント検索キャッシュ内の名前で目的のフォントに関する情報を検索し、その後、指定されたファイルを解析してフォントを使用します。

使用可能なすべてのフォント ファイルを解析してキャッシュを初期化する手順は、非常に時間がかかります。 Aspose.Words では、[SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) メソッドを使用してキャッシュを保存およびロードし、パフォーマンスの問題を解決できます。つまり、ユーザーは以前に保存したキャッシュをファイルからロードし、利用可能なすべてのフォント ファイルを解析するステップをスキップできます。

{{% alert color="primary" %}}

同じ **SaveSearchCache** メソッドを使用してキャッシュを更新します。

{{% /alert %}}

次のコード例は、フォント ソースを準備し、事前にフォント検索キャッシュを生成する方法を示しています。

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

次のコード例は、ドキュメントを処理する前にフォント ソースを設定し、検索キャッシュをロードする方法を示しています。

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

フォント検索キャッシュは、多くの制限があるため、AWS Lambda での Aspose.Words の統合に最適です。たとえば、メインコンテナのサイズと、その結果としてのフォントの数です。

キャッシュは、フォントがネットワーク経由で読み込まれる他のシナリオにも適しています。または、ロードされたキャッシュを含む `FontSettings` インスタンスを保存する方法がないシナリオの場合。

{{% /alert %}}

## 利用可能なフォントのリストを取得する {#get-a-list-of-available-fonts}

たとえば、PDF ドキュメントのレンダリングに使用できる、使用可能なフォントのリストを取得する場合は、次のコード例に示すように、[GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/) メソッドを使用できます。 [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) クラスは、Aspose.Words フォント エンジンで使用できる物理フォントに関する情報を指定します。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
