---
title: True を指定する タイプ フォントの場所 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: True を指定する タイプ フォントの場所
linktitle: True を指定する タイプ フォントの場所
description: "各種指定 ログイン タイプ フォント ソース: システム フォルダー, ユーザー ソース, ストリームからフォントをロードします。, ファイル システム, またはメモリ使用 Javaお問い合わせ"
type: docs
weight: 30
url: /ja/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

このトピックでは、デフォルトの動作について説明しています。 Aspose.Words オペレーティングシステムの特定の違いを含む TrueType フォントを探し、ユーザーフォントのソースを指定する方法を示します。

ザ・オブ・ザ・ [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) クラスは、さまざまなフォントソースを指定するために使用されます。 いくつかの実装があります。 **FontSourceBase** クラス:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

授業内容の実装は、以下のとおりです。

## システムからフォントを読み込む {#loading-fonts-from-system}

スペシャルがあります [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) デフォルトで常に使用されるクラス。 システムにインストールされているすべての TrueType フォントを表します。 そのため、ソースリストを作成することも可能です。 **SystemFontSource** その他必要な情報源:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

単一のインスタンス **SystemFontSource** クラスはデフォルトで定義されます。 [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/)お問い合わせ 異なるオペレーティングシステムでは、フォントは異なる場所に配置することができます。 しかし、 **FontSettings** 各ドキュメントのインスタンスは最適なソリューションではありません。 ほとんどの場合、使用 [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) 十分であるべき。

ドキュメントインスタンスは、異なる文書の異なるフォントソースを使用する必要がある場合にのみ必要です。 複数 **FontSettings** キャッシュを共有しないため、パフォーマンスが低下します。

### アクセス Aspose.Words TrueType フォントを探す Windows

ほとんどの場合、 Windows ユーザーは、欠落したフォントや誤ったレイアウトで重要な問題に直面しません。 通常, Aspose.Words 文書を通し、フォントのリンクに遭遇すると、システムフォルダからフォントデータが正常に取得されます。

お問い合わせ <span notrans="<span notrans=" Windows"=""></span>????? Aspose.Words まず、すべての利用可能なフォントを _%windir%\Fonts フォルダ。 この設定は、ほとんどの時間のために動作します。 必要な場合は、独自のフォントフォルダのみを指定します。 Aspose.Words また、登録した追加のフォントを探します HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts レジストリキー。 その他、 Windows 10 は、現在のユーザのフォントのインストールを有効にします。 フォントは、 %userprofile%\AppData\Local\Microsoft\Windows\Fonts フォルダおよびまたで指定されて HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts レジストリ、場所 Aspose.Words これらのフォントを探します。

文書に埋め込まれたフォントが含まれている場合、 Aspose.Words 文書から関連するフォントデータを読み、文書のレイアウトを作成するためにそれを使用することができます。 ドキュメントには、システムフォルダにないフォントへのリンクも含まれている場合があります。この場合、次のシナリオが機能します。

- ユーザーは新しいフォントソースを設定することができます **FontSettings** レッスン
- - - Aspose.Words 見逃されたフォントを同様のフォントに置き換えることを試みることができます

### 非フォントWindows システム

Aspose.Words システムフォントフォルダ内のフォントを探します。 これらのフォルダのリストは、 [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) メソッド。 サポートされているフォントが見つからない場合、 Aspose.Words 組み込みのデフォルトフォントFanwood.ttfを使用します。

フォントのメトリックから Windows および非Windows OSは異なります。 Aspose.Words 同様のフォントを見つけ、元のものと同様のレイアウトを構築することが可能なすべてを行います。 ただし、常に可能です。 これらの場合、 **FontSettings** クラスは、カスタムフォントや置換ルールを追加するために使用されます。

#### アクセス Aspose.Words TrueType フォントを探す Linux

コンテンツ Linux 配布は、異なるフォルダにフォントを保存することができます。 Aspose.Words 複数の場所でフォントを探します。 デフォルトでは、 Aspose.Words * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fonts のすべての場所にあるフォントを探します。 このデフォルト動作は、ほとんどの機能で動作します Linux 配布は、しかし、あなたが場所を指定する必要があるかもしれない場合、すべての時間に動作するように保証されていません true フォントを明示的にタイプします。 これを行うには、TrueTypeフォントがインストールされている場所を知る必要があります Linux 分布。

#### アクセス Aspose.Words Mac OS XでTrueTypeフォントを探します

Aspose.Words /Library/Fonts フォルダ内のフォントを探します。これは、Mac OS X の TrueType フォントの標準的な場所です。 この設定は、ほとんどの時間のために機能しますが、必要に応じて独自のフォントフォルダを指定する必要があります。

#### TrueType フォント Android

お問い合わせ Android, フォントワークフローは Typeface クラスでカプセル化されます。
型面には5種類ありますが、それぞれの型面は同じフォントファミリーのグループを表しています。

- デファルト
- DEFAULT_ボールド
- モノスペース
- サン・セリフ
- サーフィフ

例えば、に従って Androidお問い合わせ [フォント.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) config file は "times" が "serif" の家族に属しているので、NotoSerif-Regular.ttf は "times" が要求されるときに使用されます。

**フォント.xml**

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

同様のフォントを検索するには、先に説明した戦略が使用されます。

それらに加えて、 Aspose.Words 代替品の独自のリストを持っています Android プラットフォーム。

ドキュメントには、まず第一のPMingLiU-ExtBフォントが含まれているとします。 Aspose.Words システムソース内の必須フォントを探しています。

デフォルトリスト Android フォントのフォルダは次のとおりです。

- /システム/フォント
- /システム/フォント
- /data/fontsの

ザ・オブ・ザ・ Aspose.Words メソッドで設定されたユーザー定義のソースを調べます。

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

明示的な置換が指定されている場合、 Aspose.Words 欠落したフォントをユーザーの提案に置き換えます。

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

ルールのどれも働いたら、 Aspose.Words 内部置換テーブルを確認してください。 テーブルに良いフィットに関する情報が含まれている場合は、フォントが置換されます。 私達の場合 Aspose.Words 選択します `Typeface.SERIF`お問い合わせ しかし、テーブルが要求されたフォントについて何も知らなかった場合、 Aspose.Words 特別なMS Wordのルールやパンススペースの最も近い距離に基づいてフォントを選択します。

#### TrueType フォント .NET Core そして、 Xamarin

のために .NET Core そして、 Xamarin 同じルールは、 Aspose.Words お問い合わせ Java バージョン。 デフォルトでは、アプリケーションが利用できるプラットフォームのすべてのシステムフォント。
検索を実行するフォルダのリストは、メソッドを呼び出して見つけることができます。

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## フォルダからフォントを読み込む {#loading-fonts-from-folder}

ドキュメントが処理されると、システムにないフォントへのリンクが含まれているか、システムフォルダーに追加したくないか、権限が不足しているか、最善の解決策は、独自のフォントでフォルダーを追加することです。 `SetFontsSources` メソッド。 これにより、システムソースをユーザソースに置き換えることができます。 Aspose.Words もはやレジストリ内のフォントを探しません Windows\Font フォルダではなく、指定されたフォルダ内のフォントのみをスキャンします。 ザ・オブ・ザ・ `GetFontSources` メソッドは、対応する値を返します。

### 1つまたは複数のフォントフォルダーを指定します。

ザ・オブ・ザ・ [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) と SetFontsFolders メソッドは、ショートカットを **SetFontSources** 1つまたは複数の方法 [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) インスタンス。 これらのメソッドは、どこにいるかを示すために使用されます Aspose.Words フォントを探す必要があります。 フォルダが存在していないか、アクセスできないか、 Aspose.Words このフォルダを無視するだけです。 フォント置換のソースを含むすべてのフォルダが無視された場合、 Aspose.Words ファンウッドフォントをデフォルトとして使用します。

次の例では、フォルダーやソースを設定する方法を示します。 Aspose.Words その後、フォントのレンダリングまたは埋め込むときに TrueType フォントを探します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)お問い合わせ

{{% /alert %}}

追加のブーリアンパラメータは、フォントがすべてのフォルダを介して再帰的にスキャンされるかどうかを制御します。したがって、指定されたフォルダのすべての子フォルダをスキャンします。 次の例では、設定方法を示します Aspose.Words フォントをレンダリングまたは埋め込むときに、TrueType フォントの複数のフォルダーを参照するには:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

この例のテンプレートファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)お問い合わせ

{{% alert color="primary" %}}

優先事項に注意して下さい。 異なるフォントソースで同じ家族名とスタイルを持つフォントがある場合、 Aspose.Words ソースからフォントを選択し、優先度を高めます。 下の「優先」フィールドの説明を参照してください。

{{% /alert %}}

システムフォントをまったく使用したくないなら、 Aspose.Words それらを無視し、独自のフォントのみを使用することを可能にします。

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### 優先プロパティ

ザ・オブ・ザ・ [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) 異なるフォントソースで同じ家族名とスタイルを持つフォントがある場合にプロパティが使用されます。 この場合 Aspose.Words ソースからフォントを選択し、優先度が高い。 たとえば、システムフォルダにフォントの古いバージョンがあり、顧客はカスタムフォルダに同じフォントの新しいバージョンを追加しました。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## ストリームからフォントを読み込む {#loading-fonts-from-stream}

Aspose.Words 提供して下さい [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) クラスは、ストリームからフォントを読み込むことができます。 ストリームフォントソースを使用するには、ユーザは派生したクラスを作成する必要があります。 **StreamFontSource** の実装を提供して [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) メソッド。 ザ・オブ・ザ・ **OpenFontDataStream** メソッドは数回呼び出すことができます。 初めては、いつ呼び出されます Aspose.Words 提供されたフォントソースをスキャンして、利用可能なフォントのリストを取得します。 その後、フォントがフォントデータを解析し、フォントデータをいくつかの出力フォーマットに埋め込むために文書で使用されているかどうかを呼び出すことができます。 **StreamFontSource** 必要なときにのみフォントデータを読み込み、メモリに保存できるので便利です。 `FontSettings` 寿命。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** 代替手段 [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) ストリームをメモリにロードし、それを渡すことができるので、 **MemoryFontSource**お問い合わせ 違いは、 **MemoryFontSource** 常にメモリに保存され、 **StreamFontSource** 要求に積み込まれ、すぐに捨てられます。 しかし、上記のように数回読み込まれる場合があります。 場合によっては **MemoryFontSource** 好ましい、他では、 **StreamFontSource**お問い合わせ

## フォント検索キャッシュの保存と読み込み

フォントを初めて検索するときは、 Aspose.Words ユーザーが指定したフォントソースを反復し、これらのソースからデータに基づいてフォント検索キャッシュを形成します。 したがって、キャッシュは利用可能なフォントに関する情報を収集します。フォントファミリー、スタイル、フルフォント名など。 その後の呼び出しでは、 Aspose.Words フォント検索キャッシュの名称で目的のフォントに関する情報を検索します。その後、指定されたファイルをパースしてフォントを使用するようにします。

キャッシュを初期化するために利用可能なすべてのフォントファイルを解析するための手順は非常に時間がかかります。 Aspose.Words キャッシュを保存して読み込むことができます。 **FontSettings.SaveSearchCache** 性能問題の解決方法。 つまり、以前に保存したキャッシュをファイルから読み込んで、利用可能なすべてのフォントファイルを解析するステップをスキップすることができます。

{{% alert color="primary" %}}

同じ使用して下さい **SaveSearchCache** キャッシュを更新する方法

{{% /alert %}}

{{% alert color="primary" %}}

フォントがネットワーク上にロードされると、キャッシュも他のシナリオに適しています。 または保存方法がない場合のシナリオ `FontSettings` ロードされたキャッシュを持つインスタンス。

{{% /alert %}}


## 利用可能なフォントのリストを取得する {#get-a-list-of-available-fonts}

利用可能なフォントのリストを取得する場合は、たとえば、PDFドキュメントをレンダリングするために使用できるなど、 [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) メソッドは、次のコード例に示すようにします。 ザ・オブ・ザ・ [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) class は、利用可能な物理的なフォントに関する情報を指定します。 Aspose.Words フォント エンジン:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
