---
title: TrueType フォントの操作と置換
second_title: Aspose.Words お問い合わせ Java
articleTitle: TrueType フォントの操作と置換
linktitle: TrueType フォントの操作と置換
description: "Aspose.Words お問い合わせ Java 正しい TrueType フォントを結果のドキュメントに埋め込むことで、適切なフォントの置換を正確に表示したり検索したり、フォントのフォールバック機構を使うことができます。"
type: docs
weight: 10
url: /ja/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words True が必要です 文書を固定ページ形式にレンダリングするなど、さまざまなタスクのフォントを入力します。 XPSお問い合わせ いつか Aspose.Words ドキュメントをレンダリングし、TrueType フォントの埋め込みとサブセットの埋め込みを結果文書に実行する必要があります。これは、一般的な PDF や XPS フォーマット。 これにより、ドキュメントがビューアと同じものになるようにします。 さらに、 XPS 指定は文書に常に埋め込まれる壷を要求します。

保障する Aspose.Words 文字を正確に測定し、関連するフォントを埋め込むと、次の条件を満たす必要があります。

1。 Aspose.Words システム上の TrueType フォントファイルを見つけてアクセスできるようにする必要があります。
1。 TrueType フォントは十分ある必要があります。 Aspose.Words, 文書で使用されているものと同じフォントファミリー名で好ましい。

ドキュメントのフォントは、家族の名前、スタイル、サイズ、色などのエンティティティを表しています。 `TrueType` フォント(物理フォント)の実体。 Aspose.Words 文書内のフォントを処理の段階にある物理的なフォントに解決します。 これは、特定のタスクを可能にし、ほとんどの一般的にレイアウト構造中にテキストサイズを計算し、固定ページフォーマットに埋め込む/サブセットを計算するタスク。 HTMLをロードしたり、いくつかのフローフォーマットにサブセットしたりしながら、フォントの解決や置換などの他のあまり人気のあるタスクの数が、同様に有効になっています。

## フォント操作とパフォーマンスの問題

すべての利用可能なフォント操作機構が含まれている [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) クラス。 このクラスは、以下のとおり、定義されたフォントソース内のフォントの取得、フォント置換プロセスの実行を担当しています。

フォントは複数のステップで区切られます。

1。 フォントの情報を入手し、利用可能なすべてのフォントから解決します。
1。 解決されたフォントをパースして利用できる glyphs とメトリック(水平および垂直)。
1。 組み込みとサブセットのための解決されたフォントをパースします。

いつか Aspose.Words フォントは、フォントのフルネーム、家族名、バージョン、スタイル、フォントの各フォントソースにあるフォントファイルから、基本的なフォント情報を取得しようとします。 すべてのフォントが取得されると、 Aspose.Words これらの詳細を使用して、要求されたフォントの必要なフォントデータまたは適切な置換を見つける。

上記の手順は時間がかかりますので、起動時にアプリケーションのパフォーマンスに悪影響を及ぼす可能性があります。 しかし、各インスタンスの **FontSettings** その後の文書の処理時間を減らすことができる独自のキャッシュを持っています。 例えば、インスタンスのインスタンスを共有できます。 **FontSettings** 異なる文書間のクラスは、文書の読み込みを高速化することができます。 次の例では、この例を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

場合の場合 **FontSettings** 明示的に定義されていない、 Aspose.Words デフォルトを使用する **FontSettings** インスタンス。 このインスタンスはドキュメント間で自動的に共有され、次のように抽出できます。

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

すべての処理文書が同じフォント設定を必要とすることを確信している場合は、デフォルトを設定して利用することをお勧めします。 **FontSettings** インスタンス。 すべての文書に同じフォントソースを使用する必要があるとします。 この場合、デフォルトインスタンスを以下のように変更できます。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

カスタム **FontSettings** デフォルトインスタンスよりも優先度が高い。

{{% /alert %}}

## フォントの可用性と置換

ドキュメント内のテキストは、Arial、Times New Roman、Verdana、など、さまざまなフォントでフォーマットできます。 いつか Aspose.Words ドキュメントをレンダリングし、ドキュメントで指定されたフォントを選択しようとします。

ただし、正確なフォントが見つからない場合や、 Aspose.Words 代わりに同様のフォントを置換する必要があります。 Aspose.Words 次のプロセスに従ってフォントを選択します。

1。 Aspose.Words 利用可能なフォントソースの中のフォントを正確にフォント名で見つけようとします。
1。 Aspose.Words 元の文書に埋め込まれたフォントの中で必要なフォントを見つけようとします。 DOCXなどのドキュメントフォーマットには、埋め込まれたフォントが含まれている場合があります。
1。 お問い合わせ Aspose.Words 必須のフォントを正式な名前の一致で見つけることができません。 [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) このフォントで定義されたプロパティ Aspose.Words で定義されたフォントを見つけます **AltName** から [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) フォント情報を指定するクラス。
1。 お問い合わせ Aspose.Words 定義されたフォントを見つけることができません。 **AltName** フォント置換ルールも定義されていないので、以下に示すように、フォント置換ルールは1対1で適用されます(適切な置換が見つかった場合、フォント置換プロセスは停止し、次のステップは実行されません)。
   1。 Aspose.Words 使用すると、OS フォントの設定を適用しようとします。 `FontConfig` ユーティリティ。 この非Windows 機能は FontConfig 互換 OS で使用する必要があります。 ほとんどすべてのUnixベースのOSは既に持っています `FontConfig` システム全体のフォント構成、カスタマイズ、およびアプリケーションへのアクセスを提供するように設計されていますライブラリ。 それ以外の場合、このライブラリはユーザが簡単にインストールできます。<br/>
      Aspose.Words データを照会し、FontConfig 結果を独自の目的のために解釈する方法を知っています。 デフォルトでは、 `FontConfig` ユーティリティは無効です。 次のように有効にすることができます。<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. 次のステップは単純ですが、信じられないほど強力なメカニズムです [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/)お問い合わせ デフォルトでは、この機能はどのOSでも有効で、利用できます。 Aspose.Words 異なるOSの基本的な置換ルールを定義するXMLテーブルを使用します。 テーブル置換ルールによると、置換フォント名のリストが使用されます。<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - 置換するフォント、SubstituteFonts - 置換の variant のリスト、コンマで区切る。 最初の利用可能なフォントは、置換に使用されます。<br/>
      このルールの主な機能は、次の例に示すように、独自の置換テーブルをロードする機能です。<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      jar から既存のテーブルを基礎にするか、次の方法でプログラム的に保存することができます。<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      このメカニズムの柔軟性にもかかわらず、以下に示すように、それを無効にする方がよい場合があります。<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1。 **FontInfo** テーブル置換ルールがフォントが見つからない場合は置換ルールが適用されます。 この仕組みはデフォルトで有効になっています。 Aspose.Words 特定の文書に含まれるフォント情報に応じて最適なフォントを見つけます。 この情報は、ここから入手できます。 **FontInfo** 以下に示すようにクラス:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      不満足な結果の場合、ユーザーがこの機能のワークフローを妨げることはできません。<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      お問い合わせ **FontInfo** 行方不明フォントでは利用できません。
   1。 **DefaultFont** 置換ルールは、場合において適用されます。 `FontInfo` 置換も失敗しました。 このルールはデフォルトで有効になっています。 この規則に従って、 Aspose.Words で指定されたデフォルトフォントを使用する試み [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) 宿泊施設 ユーザーが独自のデフォルトフォントを選択していない場合は、「Times New Roman」はデフォルトフォントとして使用されます。 以下に示すように、この規則は無効にすることができます。<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      現在のデフォルトフォントを確認するには、次のようにします。<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      独自の交換オプションを設定するには、以下を適用します。<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1。 お問い合わせ Aspose.Words フォント置換を実行できません。利用可能なフォントソースから最初の利用可能なフォントを取得しようとします。
1。 最後に、 Aspose.Words 利用可能なフォントソースの中で任意のフォントを見つけることができません, それは埋め込まれている無料のファンウッドフォントを使用して文書をレンダリングします Aspose.Words アセンブリ。

{{% alert color="primary" %}}

お問い合わせ **FontInfo** *FontInfoの置換ルール*は、常にフォントを解決し、デフォルトのフォントルールをオーバーライドします。 デフォルトのフォントルールを使用する場合は、*FontInfo 置換ルール* を無効にする必要があります。 *FontConfig 置換ルール* は、ほとんどの場合フォントを解決し、他のすべてのルールを上書きすることに注意してください。

{{% /alert %}}

## 認識する方法 フォントが置換されたこと

時々、文書のレイアウトが変更された理由や、フォントが期待どおりに見えない理由がわからない場合があります。 このような場合、フォント置換警告メッセージは、 [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) インターフェイスは救助に来ます。 彼らは持っています [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) 警告タイプと標準の説明テキスト形式、「フォント」<originalfont>' が見つかりませんでした。 ' を使う<substitutionfont>' フォントではなく。 理由: <reason>"、次の理由で:</reason></substitutionfont></originalfont>

- "ドキュメントからの代替名" - 置換による [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "fontconfig 置換" - フォントコンフィグルールによる置換
- "テーブル置換" - テーブルルールによる置換
- 「フォント情報置換」 - フォント情報ルールによる置換
- "デフォルトフォント置換" - デフォルトフォントルールによる置換
- "最初の利用可能なフォント" - 最初の利用可能なフォントを持つ置換

## フォントフォールバックXMLから設定

使用される2つの異なるメカニズムがあります Aspose.Words - フォント置換とフォントフォールバック。 フォント置換は、上記のセクションで説明したように、ドキュメントで指定されたフォントがフォントソースの中に見つからない場合に使用されます。 フォントが解決したときにフォントフォールバック機構が使用されますが、特定の文字は含まません。 この場合、 Aspose.Words 文字のフォールバックフォントの1つを使用しようとします。

そこにあります [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) 利用可能なフォントをスキャンすることにより、フォールバック設定を自動的に作成する方法。 このメソッドは非近似フォールバック設定を生成する可能性があるため、フォントフォールバックの挙動を制御できます。 [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) クラス。 このクラスでは、フォントフォールバック機構の設定を指定します。 インスタンスを取得する **FontFallbackSettings** 次のようにクラス:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

*Table置換ルール*と同様に、この機構はXMLテーブルを使用して構成します。 これらのXMLテーブルは、次のメソッドで読み、保存することができます。

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

ザ・オブ・ザ・ Aspose.Words リリースには2つのテーブルが含まれています。 *MsOfficeFallbackSetting.xml* そして、 *NotoFallbackSetting.xml*お問い合わせ

ザ・オブ・ザ・ *MsOfficeFallbackSetting* テーブルは、さまざまな文字の置換戦略を定義します。これは、 Microsoft Wordお問い合わせ したがって、戦略は、インストールが必要です Microsoft オフィスフォント。 *MsOfficeFallbackSetting* 次の方法を使用して活動化させることができます。

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

ザ・オブ・ザ・ *NotoFallbackSetting* テーブルは特に使用のために作成されます Google Noto フォント(詳細は参照) Google Noto 次のセクションでフォント設定を有効化することができます。

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

次のコードの例では、XMLファイルからフォントフォールバック設定をロードする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

上記のコード例では、次のXMLファイルが使用されます。

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

## 事前定義されたフォントフォールバック設定 Google Noto フォント

Aspose.Words あらかじめ定義されたフォントフォールバック設定を提供 Google Noto フォント。 これらは、SIL Open Font License でライセンスされている無料のフォントです。 Google Noto フォント ザ・オブ・ザ・ **FontFallbackSettings** クラスは [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) メソッド。 定義済みのフォールバック設定をロードします。 Google Noto 以下のコード例に示すようにフォント:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

サンズスタイルノトフォントのみ、通常の重量で定義済みの設定で使用されます。

{{% /alert %}}

## アクセス Aspose.Words フォントを探す

Aspose.Words ファイルシステムに TrueType フォントを自動的に検索しようとします。 通常、デフォルトの動作に依存することができます Aspose.Words 見つけるために `TrueType` フォントですが、TrueType フォントを含む独自のフォルダーを指定する必要があります。 ザ・オブ・ザ・ [真のフォント](/words/ja/java/specify-truetype-fonts-location/) トピックは、方法と場所を説明します Aspose.Words フォントだけでなく、独自のフォントの場所を指定する方法を探します。

## フォントフォーマットの処理の違い Aspose.Words そして、 Microsoft Word

フォントフォーマットの処理に若干の違いがあります Aspose.Words そして、 Microsoft Word 以下の表に示すように:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| TrueType フォントと OpenType フォントを TrueType のアウトラインで指定 | サポート | サポート |
| PostScript のアウトラインを持つ OpenType フォント | ほとんどのシナリオに対応 PDFなどの固定ページフォーマットに埋め込む XPS 対応していません。 テキストはビットマップ画像に置き換えられます。 | 固定ページフォーマットへの埋め込みを含むほとんどのシナリオに対応しました。 |
| OpenTypeフォントのバリエーション | 名前付きインスタンスのみがサポートされています。 継続的なバリエーションはサポートされていません。 | デフォルトインスタンスのみのサポート 名前付きインスタンスと継続的なバリエーションはサポートされていません。 |
| Type1 フォント | サポート Windows 2013年以前のバージョンとMacOSバージョン。 サポートが終了 Windows 2013年から始まるバージョン。 | サポートされていません。 |

## お問い合わせ

- - - [Google Noto フォント](https://fonts.google.com/noto) 無料フォントをダウンロードする


