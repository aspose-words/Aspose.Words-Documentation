---
title: C++でTrueTypeフォントの場所を指定する
second_title: C++の場合Aspose.Words
articleTitle: TrueTypeフォントの場所を指定します
linktitle: TrueTypeフォントの場所を指定します
description: "さまざまなTrueTypeフォントソースを指定します:システムフォルダ、ユーザーソース、ストリームからのフォントのロード、ファイルシステム、またはメモリ。"
type: docs
weight: 30
url: /ja/cpp/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

このトピックでは、オペレーティングシステム固有の違いを含むTrueTypeフォントを検索するときのAspose.Wordsの既定の動作について説明し、ユーザーフォントソースを指

[FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase)クラスは、さまざまなフォントソースを指定するために使用されます。 **FontSourceBase**クラスにはいくつかの実装があります:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

いくつかのクラスの実装の詳細は以下に説明されています。

## システム{#loading-fonts-from-system}からフォントを読み込む

デフォルトで常に使用される特別な[SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)クラスがあります。 システムにインストールされているすべてのTrueTypeフォントを表します。 したがって、**SystemFontSource**とその他の必要なソースを使用してソースリストを作成することができます:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

**SystemFontSource**クラスの単一のインスタンスは、[FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/)でデフォルトで定義されています。 オペレーティングシステムが異なれば、フォントは異なる場所に配置される場合があります。 ただし、各ドキュメントに**FontSettings**インスタンスを使用することは最適な解決策ではありません。 ほとんどの場合、[DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/)を使用するだけで十分です。

ドキュメントごとのインスタンスは、ドキュメントごとに異なるフォントソースを使用する必要がある場合にのみ必要ですが、これはまれなケースです。 複数の**FontSettings**インスタンスを使用すると、キャッシュを共有しないため、パフォーマンスが低下します。

### ここでAspose.WordsはWindowsのTrueTypeフォントを探します

ほとんどの場合、Windowsユーザーはフォントの欠落や誤ったレイアウトで重大な問題に直面することはありません。 通常、Aspose.Wordsはドキュメントを通過し、フォントのリンクに遭遇すると、システムフォルダからフォントデータを正常に取得します。

Windowsでは、Aspose.Wordsはまず_%windir%\Fontsフォルダから利用可能なすべてのフォントを取得します。 この設定は、ほとんどの場合、あなたのために動作します。 必要な場合にのみ、独自のフォントフォルダを指定します。 Aspose.Wordsは、HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fontsレジストリキーに登録されている追加のフォントも検索します。 また、Windows10では、現在のユーザーのフォントのインストールが有効になります。 フォントは%userprofile%\AppData\Local\Microsoft\Windows\Fontsフォルダに配置され、HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fontsレジストリでも指定されます。Aspose.Wordsはこれらのフォントを探します。

文書に埋め込みフォントが含まれている場合、Aspose.Wordsは文書から関連するフォントデータを読み取り、それを使用して文書のレイアウトを作成できます。 ドキュメントには、システムフォルダにないフォントへのリンクが含まれている場合もあります。:

- ユーザーは**FontSettings**クラスを使用して新しいフォントソースを設定できます
- Aspose.Wordsは、欠落したフォントを同様のフォントに置き換えることができます

{{% alert color="primary" %}}

サーバー上でのAspose.Wordsレンダリングは、通常、中程度の信頼レベルで実行するように構成されたASP.NETアプリケーションでは機能しません。

{{% /alert %}}

### Windows以外のシステム上のフォント

Aspose.Wordsはシステムフォントフォルダ内のフォントを探します。 これらのフォルダのリストは[GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/)メソッドで見ることができます。 サポートされているフォントが見つからない場合、Aspose.Wordsは組み込みのデフォルトフォントFanwoodを使用します。ttf.

WindowsとWindows以外のOSのフォントメトリックは異なるため、Aspose.Wordsは同様のフォントを見つけてオリジナルと同様のレイアウトを構築するために可能な限り ただし、これが常に可能であるとは限りません。 このような場合は、カスタムフォントまたは置換ルールを追加するために**FontSettings**クラスを使用する必要があります。

#### ここでAspose.WordsはLinuxのTrueTypeフォントを探します

Linuxディストリビューションが異なれば、フォントを異なるフォルダに格納することがあります。 Aspose.Words複数の場所でフォントを探します。 デフォルトでは、Aspose.Wordsは以下のすべての場所でフォントを探します。`/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts`. Thisデフォルトの動作はほとんどのLinuxディストリビューションで これを行うには、TrueTypeフォントがLinuxディストリビューションのどこにインストールされているかを知る必要があります。

#### Mac OS XでAspose.WordsがTrueTypeフォントを探す場所

Aspose.Wordsは、Mac OS X上のTrueTypeフォントの標準的な場所である/Library/Fontsフォルダ内のフォントを探します。

#### TrueTypeAndroid上のフォント

Androidでは、フォントワークフローはTypefaceクラスにカプセル化されています。
書体には5つのタイプがあり、各書体は類似のフォントファミリのグループを表しています:

- デフォルト
- DEFAULT_BOLD
- モノスペース
- サンセリフ
- セリフ

たとえば、Androidによると [フォント。xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) 設定ファイル、"times"は"serif"ファミリに属しているので、NotoSerif-Regular。ttfは、「times」が要求されたときに使用されます:

**フォント。xml**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

類似のフォントを検索するには、先に説明した戦略が使用されます。

それらに加えて、Aspose.WordsにはAndroidプラットフォームの代替品の独自のリストがあります。

文書にPMingLiU-ExtBフォントが含まれているとしましょう。Aspose.Wordsはシステムソース内で必要なフォントを探しています。

Androidフォントのフォルダのデフォルトのリストは次のとおりです:

- /システム/フォント
- /システム/フォント
- /データ/フォント

Aspose.Wordsは、メソッドで設定されたユーザー定義のソースを調べます:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

明示的な置換が指定されている場合、Aspose.Wordsは不足しているフォントをユーザーの提案に置き換えます:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

いずれのルールも機能しなかった場合は、Aspose.Words内部置換テーブルを確認します。 テーブルに適切な適合に関する情報が含まれている場合、フォントは置き換えられます。 私たちの場合、Aspose.Wordsは`Typeface.SERIF`を選択します。 しかし、テーブルが要求されたフォントについて何も知らない場合、Aspose.Wordsは特別なMS WordルールまたはPanose空間内の最も近い距離に基づいてフォントを取得します。

#### .NET CoreとXamarinのTrueTypeフォント

.NET CoreとXamarinの場合は、同じルールが適用されます Aspose.WordsのためのJava バージョン。 デフォルトでは、アプリケーションが実行されているプラットフォームのすべてのシステムフォントが使用可能です。
検索が実行されるフォルダのリストは、メソッドを呼び出すことで見つけることができます:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## フォルダ{#loading-fonts-from-folder}からフォントを読み込む

処理中のドキュメントに、システム上にないフォントへのリンクが含まれている場合、またはシステムフォルダに追加したくない場合、または権限がない場合は、[SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/)メソッドを使用して独自のフォントを含むフォルダを追加するのが最善の解決策です。 これにより、システムソースをユーザーソースに置き換えることができます。 Aspose.WordsはレジストリまたはWindows\Fontフォルダ内のフォントを検索せず、代わりに指定されたフォルダ内のフォントのみをスキャンします。 [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/)メソッドは対応する値を返します。

### 1つまたは複数のフォントフォルダを指定します

[SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/)メソッドと[SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/)メソッドは、一つまたは複数の[FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)インスタンスを持つ**SetFontSources**メソッドへのショートカットです。 これらのメソッドは、Aspose.Wordsがフォントを探す場所を示すために使用されます。 フォルダが存在しないか、アクセスできない場合、Aspose.Wordsはこのフォルダを無視します。 フォント置換のソースを含むすべてのフォルダが無視された場合、Aspose.WordsはデフォルトとしてFanwoodフォントを使用します。

次の例は、フォントのレンダリングまたは埋め込み中にAspose.Wordsがその後TrueTypeフォントを検索するために使用するフォルダまたはソースを設定する方法を示:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

余分なBooleanパラメータは、フォントがすべてのフォルダを再帰的にスキャンされるかどうかを制御し、指定されたフォルダのすべての子フ 次の例では、フォントのレンダリングまたは埋め込み時にTrueTypeフォントを複数のフォルダーで検索するようにAspose.Wordsを設定する方法を示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

優先順位に注意してください。 異なるフォントソースに同じファミリ名とスタイルのフォントがある場合、Aspose.Wordsはソースから優先度の高いフォントを選択します。 以下の"優先度"フィールドの説明を参照してください。

システムフォントをまったく使用したくない場合は、Aspose.Wordsを使用してそれらを無視し、独自のフォントのみを使用できます:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### 優先度プロパティ

[Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/)プロパティは、異なるフォントソースに同じファミリ名とスタイルを持つフォントがある場合に使用されます。 この場合、Aspose.Wordsは、優先度の高い値を持つソースからフォントを選択します。 たとえば、システムフォルダに古いバージョンのフォントがあり、顧客がカスタムフォルダに同じフォントの新しいバージョンを追加したとします。

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## ストリーム{#loading-fonts-from-stream}からフォントを読み込む

Aspose.Wordsは[StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource)クラスを提供し、ストリームからフォントを読み込むことができます。 ストリームフォントソースを使用するには、ユーザーは**StreamFontSource**から派生クラスを作成し、[OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/)メソッドの実装を提供する必要があります。 **OpenFontDataStream**メソッドは複数回呼び出すことができます。 Aspose.Wordsが提供されたフォントソースをスキャンして利用可能なフォントのリストを取得するときに初めて呼び出されます。 後で、フォントが文書内で使用されてフォントデータを解析し、フォントデータをいくつかの出力形式に埋め込む場合に呼び出されることがあります。 **StreamFontSource**は、フォントデータを必要なときにのみ読み込むことができ、[FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/)の存続期間中はメモリに格納しないため、便利です。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## フォント検索キャッシュの保存と読み込み

最初にフォントを検索するとき、Aspose.Wordsはユーザーが指定したフォントソースを反復処理し、これらのソースからのデータに基づいてフォント検索キャッシュを形成 したがって、キャッシュは利用可能なフォントに関する情報を収集します：フォントファミリ、スタイル、完全なフォント名など。 その後の呼び出しでは、Aspose.Wordsはフォント検索キャッシュ内の名前で目的のフォントに関する情報を検索し、その後、指定されたファイルを解析してフ

キャッシュを初期化するために使用可能なすべてのフォントファイルを解析する手順は非常に時間がかかります。 Aspose.Wordsを使用すると、パフォーマンスの問題を解決するために[SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/)メソッドを使用してキャッシュを保存およびロードできます。 つまり、ユーザーは以前に保存したキャッシュをファイルからロードし、使用可能なすべてのフォントファイルを解析する手順をスキップできます。

{{% alert color="primary" %}}

キャッシュを更新するには、同じ**SaveSearchCache**メソッドを使用します。

{{% /alert %}}

{{% alert color="primary" %}}

キャッシュは、フォントがネットワーク経由でロードされる場合の他のシナリオにも適しています。 または、ロードされたキャッシュで`FontSettings`インスタンスを格納する方法がないシナリオの場合。

{{% /alert %}}

## 利用可能なフォントのリストを取得{#get-a-list-of-available-fonts}

使用可能なフォントのリストを取得する場合、たとえばPDFドキュメントのレンダリングに使用できる場合は、次のコード例に示すように、[GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/)メソッドを使 [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo)クラスは、Aspose.Wordsフォントエンジンで使用可能な物理フォントに関する情報を指定します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
