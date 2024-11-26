---
title: TrueTypeフォントの操作と置換
second_title: Aspose.WordsのためのJava
articleTitle: TrueTypeフォントの操作と置換
linktitle: TrueTypeフォントの操作と置換
description: "Aspose.WordsforJavaは、結果のドキュメントに正しいTrueTypeフォントを埋め込むことで、正確に表示されるようにしたり、適切なフォントの置換を検索したり、フォントフォールバックメカニズムを使用したりすることができます。"
type: docs
weight: 10
url: /ja/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words では、ドキュメントを固定ページ形式 (PDF や XPS など) にレンダリングするなど、さまざまなタスクに TrueType フォントが必要です。Aspose.Words がドキュメントをレンダリングする場合、結果のドキュメントに TrueType フォントの埋め込みとサブセット埋め込みを実行する必要があります。これは、一般的な PDF や XPS 形式を含むドキュメント生成時の通常の方法です。これにより、どの閲覧者に対してもドキュメントが同じように見えるようになります。さらに、XPS 仕様では、フォントを常にドキュメントに埋め込む必要があります。

Aspose.Wordsが文字を正確に測定し、関連するフォントを正常に埋め込むには、次の条件を満たす必要があります:

1. Aspose.Wordsはシステム上のTrueTypeフォントファイルを見つけてアクセスできるはずです。
1. Aspose.Wordsに利用可能な十分なTrueTypeフォントがなければならず、好ましくは文書で使用されているものと同じフォントファミリ名を持つ必要があります。

ドキュメント内のフォントは、`TrueType`フォント(物理フォント)エンティティとは異なるファミリ名、スタイル、サイズ、色などのエンティティを表します。 Aspose.Wordsは、処理のある段階で文書内のフォントを物理フォントに解決します。 これにより、特定のタスク、最も一般的にはレイアウト構築中にテキストサイズを計算し、固定ページ形式に埋め込む/サブセットするタスクが可能に 同様に、HTMLの読み込み中のフォントの解決や置換、一部のフロー形式への埋め込み/サブセット化など、あまり一般的ではない多くのタスクが有効にな

## フォントの操作とパフォーマンスの問題

使用可能なフォント操作メカニズムはすべて[FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/)クラスに含まれています。 このクラスは、以下で説明するように、定義されたフォントソース内のフォントの取得と、フォント置換プロセスを担当します。

フォントはいくつかのステップで解析されます:

1. 利用可能なすべてのフォントから解決し、フォントの情報を取得します。
1. 解決されたフォントを解析して、利用可能なグリフとメトリック（水平および垂直）を取得します。
1. 埋め込みとサブセットのために解決されたフォントを解析します。

Aspose.Wordsは、文書内で初めてフォントを検出すると、各フォントソースにあるフォントファイルから、フォントのフルネーム、ファミリ名、バージョン、スタイルなどの基本的なフォント情報を取得しようとします。 すべてのフォントが取得された後、Aspose.Wordsはこれらの詳細を使用して、必要なフォントデータまたは要求されたフォントの適切な置換を検索します。

上記の手順は時間がかかるため、最初の起動時のアプリケーションのパフォーマンスに悪影響を与える可能性があります。 ただし、**FontSettings**の各インスタンスには独自のキャッシュがあり、後続のドキュメントの処理時間を短縮することができます。 たとえば、異なるドキュメント間で**FontSettings**クラスのインスタンスを共有することができ、ドキュメントの読み込みを高速化できます。 次の例は、これを示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

**FontSettings**が明示的に定義されていない場合、Aspose.Wordsはデフォルトの**FontSettings**インスタンスを使用します。 このインスタンスは、ドキュメント間でも自動的に共有され、次のように抽出できます:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

すべての処理文書が同じフォント設定を必要とすることが確実な場合は、デフォルトの**FontSettings**インスタンスを設定して利用することをお勧めします。 すべてのドキュメントに同じフォントソースを使用する必要があるとします。 この場合、次のようにデフォルトのインスタンスを修正できます:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

カスタム**FontSettings**の優先度は既定のインスタンスよりも高くなります。

{{% /alert %}}

## フォントの可用性と置換

文書内のテキストは、Arial、Times New Roman、Verdanaなどのさまざまなフォントで書式設定できます。 Aspose.Wordsがドキュメントをレンダリングするとき、ドキュメントで指定されているフォントを選択しようとします。

ただし、正確なフォントが見つからず、代わりにAspose.Wordsが同様のフォントに置き換える必要がある状況があります。 Aspose.Wordsは、次のプロセスに従ってフォントを選択します:

1. Aspose.Wordsは、正確なフォント名を持つ利用可能なフォントソースの中からフォントを見つけようとします。
1. Aspose.Wordsは、元の文書に埋め込まれたフォントの中から必要なフォントを見つけようとします。 DOCXなどの一部の文書形式には、埋め込みフォントを含めることができます。
1. Aspose.Wordsが正確な名前が一致する必要なフォントを見つけることができず、このフォントに対して[AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName)プロパティが定義されている場合、Aspose.Wordsは[FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/)クラスから**AltName**で定義されたフォントを検索します。
1. Aspose.Wordsが定義されたフォントを見つけることができず、**AltName**も定義されていない場合、以下で説明するように、フォント置換ルールが1つずつ適用されます(適切な置換が見つかった場合、フォント置換プロセスは停止し、次のステップは実行されません)。:
   1. Aspose.Wordsは`FontConfig`ユーティリティを使用してOSフォント設定が利用可能な場合は適用を試みます。 この非Windows機能は、FontConfig互換のOSで使用する必要があります。 ほとんどすべてのUnixベースのOSには、システム全体のフォント構成、カスタマイズ、アプリケーションへのアクセスを提供するように設計された`FontConfig`ライ それ以外の場合は、このライブラリをユーザーが簡単にインストールできます。<br>
      Aspose.Wordsは、データをクエリし、FontConfigの結果を独自の目的で解釈する方法を知っています。 デフォルトでは、`FontConfig`ユーティリティは無効になっています。 次のようにして有効にできます:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. 次のステップは、[TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/)と呼ばれる単純ですが、非常に強力なメカニズムです。 デフォルトでは、この機能は有効であり、任意のOSで使用できます。 Aspose.Wordsは、異なるOSの基本的な置換規則を定義するXMLテーブルを使用します。 テーブル置換ルールに従って、代替フォント名のリストが使用されます。<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont-置換されるフォント、SubstituteFonts-コンマで区切られた置換バリアントのリスト。 最初に使用可能なフォントが置換に使用されます。<br>
      このルールの主な機能は、次の例に示すように、独自の置換テーブルをロードする機能です:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      既存のテーブルをjarから基本として取得するか、次の方法でプログラムで保存することができます:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      このメカニズムの柔軟性にもかかわらず、以下に示すように、それを無効にする方が良い場合があります:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. テーブル置換ルールがフォントを見つけることができない場合、**FontInfo**置換ルールが適用されます。 このメカニズムはデフォルトで有効になっています。 Aspose.Wordsは、特定の文書に含まれているフォント情報に従って、最も適したフォントを検索します。 この情報は、以下に示すように**FontInfo**クラスから取得できます:<br>
**Java**
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      ユーザーは、不十分な結果が発生した場合に無効にすることを決定しない限り、この機能のワークフローに干渉することはできません:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      不足しているフォントで**FontInfo**を使用できない場合、プロセスは停止します。
   1. **DefaultFont**置換ルールは、`FontInfo`置換も失敗した場合に適用されます。 このルールもデフォルトで有効になっています。 この規則に従って、Aspose.Wordsは[DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName)プロパティで指定された既定のフォントを使用しようとします。 ユーザーが独自のデフォルトフォントを選択していない場合は、「Times New Roman」がデフォルトフォントとして使用されます。 このルールは、以下に示すように無効にすることができます:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      現在の既定のフォントを確認するには、次を使用します:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      独自の代替オプションを設定するには、次の手順を適用します:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Aspose.Wordsがフォント置換を実行できない場合は、使用可能なフォントソースから最初に使用可能なフォントを取得しようとします。
1. 最後に、Aspose.Wordsが利用可能なフォントソースの中からフォントを見つけることができない場合は、Aspose.Wordsアセンブリに埋め込まれている無料のFanwoodフォントを使

{{% alert color="primary" %}}

**FontInfo**が使用可能な場合、*FontInfo substitution rule*は常にフォントを解決し、デフォルトのフォントルールを上書きします。 デフォルトのフォントルールを使用する場合は、*FontInfo substitution rule*を無効にする必要があります。 ほとんどの場合、*FontConfig substitution rule*はフォントを解決し、他のすべてのルールを上書きすることに注意してください。

{{% /alert %}}

## フォントが置き換えられたことを認識する方法

ドキュメントのレイアウトが変更された理由や、一部のフォントが期待どおりに表示されない理由が不明な場合があります。 このような場合、[IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/)インターフェイスによって実装されたフォント置換警告メッセージが救助に来ます。 これらには[FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION)警告タイプと標準の説明テキスト形式"Font'<OriginalFont>'has not been found."があります。 代わりに'<SubstitutionFont>'フォントを使用します。 理由:<Reason>"、次の理由があります:

- "文書からの代替名"-[AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)による置換の場合
- "fontconfig substitution"–フォント設定ルールによる置換の場合
- "テーブル置換"-テーブルルールによる置換の場合
- "font info substitution"-フォント情報ルールによる置換の場合
- "default font substitution"-デフォルトのフォントルールによる置換の場合
- "最初に利用可能なフォント"-最初に利用可能なフォントで置換するための

## XMLからのフォントFallBack設定

Aspose.Wordsには、フォント置換とフォントフォールバックという二つの異なるメカニズムが使用されています。 フォント置換は、上記のセクションで説明したように、文書で指定されたフォントがフォントソース間で見つからなかった場合に使用されます。 フォントフォールバックメカニズムは、フォントが解決されたときに使用されますが、特定の文字が含まれていません。 この場合、Aspose.Wordsはその文字にフォールバックフォントのいずれかを使用しようとします。

利用可能なフォントをスキャンしてフォールバック設定を自動的に構築する[BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic)メソッドがあります。 このメソッドは最適ではないフォールバック設定を生成する可能性があるため、[FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/)クラスのプロパティを使用してフォントフォールバックの動作を制 このクラスは、フォントフォールバックメカニズムの設定を指定します。 次のように**FontFallbackSettings**クラスのインスタンスを取得できます:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

*Table substitution rule*と同様に、このメカニズムは構成にXMLテーブルを使用します。 これらのXMLテーブルは、次の方法でロードおよび保存できます:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

Aspose.Wordsリリースには、*MsOfficeFallbackSetting.xml*と*NotoFallbackSetting.xml*の二つのテーブルが含まれています。

*MsOfficeFallbackSetting*テーブルは、Microsoft Wordで使用される戦略と同様の文字範囲の置換戦略を定義します。 したがって、この戦略ではMicrosoftOfficeフォントのインストールが必要です。 *MsOfficeFallbackSetting*は、次の方法を使用してアクティブにすることができます:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

*NotoFallbackSetting*テーブルは、特にGoogle Notoフォントで使用するために作成されます(次のセクションのGoogle Notoフォント設定の詳細を参照)。:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

次のコード例は、XMLファイルからフォントフォールバック設定を読み込む方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

上記のコード例では、次のXMLファイルが使用されています:

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

## Google Notoフォントの定義済みフォントFallBack設定

Aspose.Wordsは、Google Notoフォントの事前定義されたフォントフォールバック設定を提供します。 これらはSILOpen Font Licenseの下でライセンスされたフリーフォントで、Google NotoFontsからダウンロードできます。 **FontFallbackSettings**クラスは[LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings)メソッドを提供します。 以下のコード例に示すように、Google Notoフォントを使用する事前定義済みのフォールバック設定が読み込まれます:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

定義済みの設定では、通常の重みを持つSansスタイルのNotoフォントのみが使用されます。

{{% /alert %}}

## Aspose.Wordsがフォントを探す場所

Aspose.Wordsはファイルシステム上のTrueTypeフォントを自動的に検索しようとします。 通常、Aspose.Wordsのデフォルトの動作に依存して`TrueType`フォントを見つけることができますが、TrueTypeフォントを含む独自のフォルダを指定する必要がある場合があり ザ- [TrueTypeフォントの場所を指定します](/words/java/specify-truetype-fonts-location/) このトピックでは、Aspose.Wordsがフォントを検索する方法と場所、および独自のフォントの場所を指定する方法について説明します。

## Aspose.WordsとMicrosoft Wordのフォント形式の処理の違い

次の表に示すように、Aspose.WordsとMicrosoft Wordのフォント形式の処理にはいくつかの違いがあります:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueTypeフォントとOpenTypeフォントとTrueTypeアウトライン | サポートされています。 | サポートされています。 |
| OpenTypeフォントとPostScriptアウトライン | ほとんどのシナリオでサポートされています。 PDFやXPSなどの固定ページ形式への埋め込みはサポートされていません。 テキストはビットマップイメージに置き換えられます。 | 固定ページ形式への埋め込みなど、ほとんどのシナリオでサポートされています。 |
| OpenTypeフォントのバリエーション | 名前付きインスタンスのみがサポートされます。 連続バリエーションはサポートされていません。 | 既定のインスタンスのみでサポートされます。 名前付きインスタンスと連続バリエーションはサポートされていません。 |
| Type1フォント | 2013年以前のWindowsバージョンとMacOS バージョンでサポートされています。 2013年以降のWindowsバージョンではサポートが中止されました。 | サポートされていません。 |

## また見て下さい

- [Google Notoフォント](https://fonts.google.com/noto) フリーフォントをダウンロードするには


