---
title: TrueTypeフォントの場所をJavaに指定します
second_title: Aspose.WordsのためのJava
articleTitle: TrueTypeフォントの場所を指定します
linktitle: TrueTypeフォントの場所を指定します
description: "さまざまなTrueTypeフォントソースを指定します:システムフォルダ、ユーザーソース、ストリームからのフォントのロード、ファイルシステム、Javaを使用したメモリ。"
type: docs
weight: 30
url: /ja/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

このトピックでは、オペレーティングシステム固有の違いを含むTrueTypeフォントを検索するときのAspose.Wordsの既定の動作について説明し、ユーザーフォントソースを指

[FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/)クラスは、さまざまなフォントソースを指定するために使用されます。 **FontSourceBase**クラスにはいくつかの実装があります:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

いくつかのクラスの実装の詳細は以下に説明されています。

## システム {#loading-fonts-from-system}からフォントを読み込む

デフォルトで常に使用される特別な[SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)クラスがあります。 システムにインストールされているすべてのTrueTypeフォントを表します。 したがって、**SystemFontSource**とその他の必要なソースを使用してソースリストを作成することができます:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

**SystemFontSource**クラスの単一インスタンスは、デフォルトで[FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/)に定義されています。 オペレーティングシステムが異なれば、フォントは異なる場所に配置される場合があります。 ただし、各ドキュメントに**FontSettings**インスタンスを使用することは最適な解決策ではありません。 ほとんどの場合、[DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance)を使用するだけで十分です。

ドキュメントごとのインスタンスは、ドキュメントごとに異なるフォントソースを使用する必要がある場合にのみ必要ですが、これはまれなケースです。 複数の**FontSettings**インスタンスを使用すると、キャッシュを共有しないため、パフォーマンスが低下します。

### ここでAspose.WordsはWindows上のTrueTypeフォントを探します

ほとんどの場合、Windowsユーザーはフォントの欠落や誤ったレイアウトで重大な問題に直面することはありません。 通常、Aspose.Wordsはドキュメントを通過し、フォントのリンクに遭遇すると、システムフォルダからフォントデータを正常に取得します。

Windowsでは、Aspose.Wordsはまず_%windir%\Fontsフォルダから利用可能なすべてのフォントを取得します。 この設定は、ほとんどの場合、あなたのために動作します。 必要な場合にのみ、独自のフォントフォルダを指定します。 Aspose.Wordsは、HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fontsレジストリキーに登録されている追加のフォントも検索します。 さらに、Windows 10は現在のユーザーのフォントのインストールを有効にします。 フォントは%userprofile%\AppData\Local\Microsoft\Windows\Fontsフォルダに配置され、HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fontsレジストリでも指定されます。Aspose.Wordsはこれらのフォントを探します。

文書に埋め込みフォントが含まれている場合、Aspose.Wordsは文書から関連するフォントデータを読み取り、それを使用して文書のレイアウトを作成できます。 ドキュメントには、システムフォルダにないフォントへのリンクが含まれている場合もあります。:

- ユーザーは**FontSettings**クラスを使用して新しいフォントソースを設定できます
- Aspose.Wordsは、欠落したフォントを同様のフォントに置き換えることができます

### Windows以外のシステム上のフォント

Aspose.Wordsはシステムフォントフォルダ内のフォントを探します。 これらのフォルダのリストは[GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders)メソッドで見ることができます。 サポートされているフォントが見つからない場合、Aspose.Wordsは組み込みのデフォルトフォントFanwoodを使用します。ttf.

WindowsとWindows以外のOSのフォントメトリックは異なるため、Aspose.Wordsは同様のフォントを見つけて元のフォントに似たレイアウトを構築するために可能な限り ただし、これが常に可能であるとは限りません。 このような場合は、カスタムフォントまたは置換ルールを追加するために**FontSettings**クラスを使用する必要があります。

#### ここでAspose.WordsはLinux上のTrueTypeフォントを探します

異なるLinuxディストリビューションは異なるフォルダにフォントを格納することがあります。 Aspose.Words複数の場所でフォントを探します。 既定では、Aspose.Wordsは次のすべての場所でフォントを検索します: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. このデフォルトの動作はほとんどのLinuxディストリビューションで動作しますが、常に動作することは保証されていません。 これを行うには、TrueTypeフォントがLinuxディストリビューションのどこにインストールされているかを知る必要があります。

#### ここでAspose.WordsはMac OS X上のTrueTypeフォントを探します

Aspose.Wordsは、Mac OS X上のTrueTypeフォントの標準的な場所である`/Library/Fonts`フォルダ内のフォントを探します。 この設定はほとんどの場合機能しますが、必要に応じて独自のフォントフォルダを指定する必要がある場合があります。

#### TrueTypeのフォントAndroid

Androidでは、フォントワークフローはTypefaceクラスにカプセル化されます。
書体には5つのタイプがあり、各書体は類似のフォントファミリのグループを表しています:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

たとえば、Androidによると [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) 設定ファイル、"times"は"serif"ファミリに属しているので、NotoSerif-Regular。ttfは、「times」が要求されたときに使用されます:

**Fonts.xml**

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
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

明示的な置換が指定されている場合、Aspose.Wordsは不足しているフォントをユーザーの提案に置き換えます:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

いずれのルールも機能しなかった場合は、Aspose.Words内部置換テーブルを確認します。 テーブルに適切な適合に関する情報が含まれている場合、フォントは置き換えられます。 私たちの場合、Aspose.Wordsは`Typeface.SERIF`を選択します。 しかし、テーブルが要求されたフォントについて何も知らない場合、Aspose.Wordsは特別なMSワードルールまたはパノース空間内の最も近い距離に基づいてフォントを

#### .NET CoreとXamarinのTrueTypeフォント

.NET CoreとXamarinの場合は、JavaバージョンのAspose.Wordsと同じ規則が適用されます。 デフォルトでは、アプリケーションが実行されているプラットフォームのすべてのシステムフォントが使用可能です。
検索が実行されるフォルダのリストは、メソッドを呼び出すことで見つけることができます:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## フォルダ {#loading-fonts-from-folder}からフォントを読み込む

処理中のドキュメントに、システム上にないフォントへのリンクが含まれている場合、またはシステムフォルダに追加したくない場合、または権限がない場合は、`SetFontsSources`メソッドを使用して独自のフォントを含むフォルダを追加するのが最善の解決策です。 これにより、システムソースをユーザーソースに置き換えることができます。 Aspose.WordsはレジストリまたはWindows\Fontフォルダ内のフォントを検索せず、代わりに指定されたフォルダ内のフォントのみをスキャンします。 `GetFontSources`メソッドは対応する値を返します。

### 1つまたは複数のフォントフォルダを指定します

[SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean)メソッドとSetFontsFoldersメソッドは、一つまたは複数の[FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)インスタンスを持つ**SetFontSources**メソッドへのショートカットです。 これらのメソッドは、Aspose.Wordsがフォントを探す場所を示すために使用されます。 フォルダが存在しないか、アクセスできない場合、Aspose.Wordsはこのフォルダを無視します。 フォント置換のソースを含むすべてのフォルダが無視された場合、Aspose.WordsはデフォルトとしてFanwoodフォントを使用します。

次の例は、フォントのレンダリングまたは埋め込み中にAspose.Wordsがその後TrueTypeフォントを検索するために使用するフォルダまたはソースを設定する方法を示:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

余分なBooleanパラメータは、フォントがすべてのフォルダを再帰的にスキャンされるかどうかを制御し、指定されたフォルダのすべての子フ 次の例では、フォントのレンダリングまたは埋め込み時にTrueTypeフォントを複数のフォルダーで検索するようにAspose.Wordsを設定する方法を示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

優先順位に注意してください。 異なるフォントソースに同じファミリ名とスタイルのフォントがある場合、Aspose.Wordsはソースから優先度の高いフォントを選択します。 以下の"優先度"フィールドの説明を参照してください。

{{% /alert %}}

システムフォントをまったく使用したくない場合は、Aspose.Wordsを使用してそれらを無視し、独自のフォントのみを使用できます:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### 優先度プロパティ

[Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/)プロパティは、異なるフォントソースに同じファミリ名とスタイルを持つフォントがある場合に使用されます。 この場合、Aspose.Wordsは、優先度の高い値を持つソースからフォントを選択します。 たとえば、システムフォルダに古いバージョンのフォントがあり、顧客がカスタムフォルダに同じフォントの新しいバージョンを追加したとします。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## ストリーム {#loading-fonts-from-stream}からフォントを読み込む

Aspose.Wordsは[StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)クラスを提供し、ストリームからフォントを読み込むことができます。 ストリームフォントソースを使用するには、ユーザーは**StreamFontSource**から派生クラスを作成し、[OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream)メソッドの実装を提供する必要があります。 **OpenFontDataStream**メソッドは複数回呼び出すことができます。 Aspose.Wordsが提供されたフォントソースをスキャンして利用可能なフォントのリストを取得するときに初めて呼び出されます。 後で、フォントが文書内で使用されてフォントデータを解析し、フォントデータをいくつかの出力形式に埋め込む場合に呼び出されることがあります。 **StreamFontSource**は、フォントデータを必要なときにのみ読み込むことができ、`FontSettings`の存続期間中はメモリに格納しないため、便利です。**StreamFontSource**は、フォントデータを必要なときにのみ読み込むことができます。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource**

## フォント検索キャッシュの保存と読み込み

最初にフォントを検索するとき、Aspose.Wordsはユーザーが指定したフォントソースを反復処理し、これらのソースからのデータに基づいてフォント検索キャッシュを形成 したがって、キャッシュは利用可能なフォントに関する情報を収集します：フォントファミリ、スタイル、完全なフォント名など。 その後の呼び出しでは、Aspose.Wordsはフォント検索キャッシュ内の名前で目的のフォントに関する情報を検索し、その後、指定されたファイルを解析してフ

キャッシュを初期化するために使用可能なすべてのフォントファイルを解析する手順は非常に時間がかかります。 Aspose.Wordsを使用すると、パフォーマンスの問題を解決するために**FontSettings.SaveSearchCache**メソッドを使用してキャッシュを保存およびロードできます。 つまり、ユーザーは以前に保存したキャッシュをファイルからロードし、使用可能なすべてのフォントファイルを解析する手順をスキップできます。

{{% alert color="primary" %}}

キャッシュを更新するには、同じ**SaveSearchCache**メソッドを使用します。

{{% /alert %}}

{{% alert color="primary" %}}

キャッシュは、フォントがネットワーク経由でロードされる場合の他のシナリオにも適しています。 または、ロードされたキャッシュで`FontSettings`インスタンスを格納する方法がないシナリオの場合。

{{% /alert %}}


## 利用可能なフォントのリストを取得 {#get-a-list-of-available-fonts}

使用可能なフォントのリストを取得する場合、たとえばPDFドキュメントのレンダリングに使用できる場合は、次のコード例に示すように、[GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts)メソッドを使 [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/)クラスは、Aspose.Wordsフォントエンジンで使用可能な物理フォントに関する情報を指定します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
