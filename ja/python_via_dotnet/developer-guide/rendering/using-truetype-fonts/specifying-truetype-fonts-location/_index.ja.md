---
title: TrueType フォントの場所を指定する
second_title: Python via .NET用Aspose.Words
articleTitle: TrueType フォントの場所を指定する
linktitle: TrueType フォントの場所を指定する
description: "さまざまな TrueType フォント ソースを指定します: システム フォルダー、ユーザー ソース、ストリームからのフォントの読み込み、Python を使用したファイル システムまたはメモリ。"
type: docs
weight: 30
url: /ja/python-net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

このトピックでは、オペレーティング システム固有の違いを含め、TrueType フォントを検索するときの Aspose.Words のデフォルトの動作について説明し、ユーザー フォント ソースを指定する方法を示します。

[FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) クラスは、さまざまなフォント ソースを指定するために使用されます。 [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) クラスにはいくつかの実装があります。

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

一部のクラスの実装の詳細については、以下で説明します。

## システムからフォントをロードする

常にデフォルトで使用される特別な [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) クラスがあります。これは、システムにインストールされているすべての TrueType フォントを表します。したがって、[SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) およびその他の必要なソースを含むソース リストを作成できます。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

[SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) クラスの単一インスタンスはデフォルトで [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) に定義されます。オペレーティング システムが異なると、フォントが異なる場所に配置される場合があります。ただし、ドキュメントごとに [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) インスタンスを使用することは最適な解決策ではありません。ほとんどの場合、[default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) を使用すれば十分です。

ドキュメントごとのインスタンスは、ドキュメントごとに異なるフォント ソースを使用する必要がある場合にのみ必要になりますが、これはまれなケースです。複数の [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) インスタンスを使用すると、キャッシュが共有されないため、パフォーマンスが低下します。

### Aspose.Words が Windows 上の TrueType フォントを検索する場所

ほとんどの場合、Windows ユーザーはフォントの欠落やレイアウトの誤りなどの重大な問題に直面することはありません。通常、Aspose.Words はドキュメントを通過し、フォントのリンクに遭遇すると、システム フォルダーからフォント データを正常に取得します。

Windows では、Aspose.Words はまず、_%windir%\Fonts フォルダーから使用可能なすべてのフォントを取得します。ほとんどの場合、この設定が機能します。必要な場合にのみ、独自のフォント フォルダーを指定します。 Aspose.Words for .NET は、*HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts* レジストリ キーに登録されている追加のフォントも検索します。さらに、Windows 10 では、現在のユーザーがフォントをインストールできるようになります。フォントは *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* フォルダーに配置され、*HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts* レジストリでも指定されます。Aspose.Words はそこでこれらのフォントを検索します。

ドキュメントに埋め込みフォントが含まれている場合、Aspose.Words はドキュメントから関連するフォント データを読み取り、それを使用してドキュメントのレイアウトを作成できます。ドキュメントには、システム フォルダーにないフォントへのリンクが含まれている場合もあります。その場合は、次のシナリオが機能します。

- ユーザーは [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) クラスを通じて新しいフォント ソースをセットアップできます。
- Aspose.Words は、見つからないフォントを類似したフォントに置き換えることを試みることができます


### 非 Windows システムのフォント

Aspose.Words はシステム フォント フォルダーでフォントを検索します。これらのフォルダーのリストは、[SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/) メソッドで表示できます。サポートされているフォントが見つからない場合、Aspose.Words は組み込みのデフォルト フォント Fanwood.ttf を使用します。

Windows OS と非 Windows OS のフォント メトリックは異なるため、Aspose.Words は類似のフォントを見つけて、元のフォントに似たレイアウトを構築するために可能な限りのことを行います。ただし、これが常に可能であるとは限りません。このような場合、[FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) クラスを使用してカスタム フォントまたは置換ルールを追加する必要があります。

#### Aspose.Words が Linux 上の TrueType フォントを検索する場所

Linux ディストリビューションが異なると、フォントが異なるフォルダーに保存される場合があります。 Aspose.Words は、いくつかの場所でフォントを検索します。デフォルトでは、Aspose.Words は次のすべての場所でフォントを検索します: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*。このデフォルトの動作はほとんどの Linux ディストリビューションで機能しますが、常に機能することが保証されているわけではありません。その場合は、true タイプのフォントの場所を明示的に指定する必要がある場合があります。これを行うには、TrueType フォントが Linux ディストリビューション上のどこにインストールされているかを知る必要があります。

#### Aspose.Words が Mac OS X で TrueType フォントを探す場所

Aspose.Words は、*/Library/Fonts* フォルダでフォントを検索します。これは、Mac OS X 上の TrueType フォントの標準の場所です。ほとんどの場合、この設定で機能しますが、独自のフォント フォルダを必要な場合。

## フォルダーからフォントをロードする

処理中のドキュメントにシステムにないフォントへのリンクが含まれている場合、それらのフォントをシステム フォルダーに追加したくない場合、または権限がない場合、最善の解決策は、次のコマンドを使用して独自のフォントを含むフォルダーを追加することです。 [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/)方式。これにより、システム ソースをユーザー ソースに置き換えることができます。 Aspose.Words は、レジストリまたは Windows\Font フォルダー内のフォントを検索せず、指定されたフォルダー内のフォントのみをスキャンします。 [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) メソッドは対応する値を返します。

### 1 つまたは複数のフォント フォルダーの指定

[FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) メソッドと [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) メソッドは、1 つまたは複数の [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/) インスタンスを含む [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) メソッドへのショートカットです。これらのメソッドは、Aspose.Words がフォントを検索する場所を示すために使用されます。フォルダーが存在しない場合、またはアクセスできない場合、Aspose.Words はこのフォルダーを無視します。フォント置換のソースを含むすべてのフォルダーが無視された場合、Aspose.Words はデフォルトとして Fanwood フォントを使用します。

次の例は、フォントのレンダリングまたは埋め込み中に Aspose.Words が TrueType フォントを検索するために使用するフォルダーまたはソースを設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

追加のブール値パラメーターは、すべてのフォルダーでフォントを再帰的にスキャンするかどうかを制御します。つまり、指定したフォルダーのすべての子フォルダーをスキャンします。次の例は、フォントのレンダリングまたは埋め込み時に TrueType フォントを複数のフォルダーで検索するように Aspose.Words を設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

{{% /alert %}}

優先順位に注意してください。異なるフォント ソースに同じファミリ名とスタイルを持つフォントが存在する場合、Aspose.Words はソースからフォントを優先して選択します。以下の「優先度」フィールドの説明を参照してください。

システム フォントをまったく使用したくない場合、Aspose.Words ではそれらを無視して独自のフォントのみを使用できます。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### 優先物件

**優先度** プロパティは、異なるフォント ソースに同じファミリー名とスタイルのフォントが存在する場合に使用されます。この場合、Aspose.Words はソースから優先度の高いフォントを選択します。たとえば、システム フォルダに古いバージョンのフォントがあり、顧客が同じフォントの新しいバージョンをカスタム フォルダに追加したとします。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## 利用可能なフォントのリストの取得

たとえば、PDF ドキュメントのレンダリングに使用できる、使用可能なフォントのリストを取得する場合は、次のコード例に示すように、[get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/) メソッドを使用できます。 [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) クラスは、Aspose.Words フォント エンジンで使用できる物理フォントに関する情報を指定します。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
