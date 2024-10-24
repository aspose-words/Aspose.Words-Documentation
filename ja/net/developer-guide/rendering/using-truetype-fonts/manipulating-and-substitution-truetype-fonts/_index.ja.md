---
title: C# で TrueType フォントを操作および置換する
second_title: .NET用Aspose.Words
articleTitle: TrueType フォントの操作と置換
linktitle: TrueType フォントの操作と置換
description: "Aspose.Words for .NET は、結果として得られるドキュメントに正しい TrueType フォントを埋め込むことができ、C# を使用してドキュメントが正確に表示されるようにします。フォントまたは特定の文字が使用できない場合、Aspose.Words は適切な代替フォントを検索するか、フォント フォールバック メカニズムを使用します。"
type: docs
weight: 10
url: /ja/net/manipulating-and-substitution-truetype-fonts/
---

Aspose.Words では、ドキュメントを PDF や XPS などの固定ページ形式にレンダリングするなど、さまざまなタスクに TrueType フォントが必要です。 Aspose.Words がドキュメントをレンダリングするときは、結果のドキュメントに TrueType フォントの埋め込みとサブセット埋め込みを実行する必要があります。これは、一般的な PDF または XPS 形式を含むドキュメント生成時の通常の作業です。これにより、ドキュメントがどの閲覧者にとっても同じように見えるようになります。さらに、XPS 仕様では、フォントを常にドキュメントに埋め込む必要があります。

Aspose.Words が文字を正確に測定し、関連するフォントを正常に埋め込むには、次の条件を満たす必要があります。

1. Aspose.Words は、システム上の TrueType フォント ファイルを検索してアクセスできる必要があります。
1. Aspose.Words で使用できる十分な TrueType フォントが必要です。できればドキュメントで使用されているものと同じフォント ファミリ名を持つ必要があります。

ドキュメント内のフォントは、ファミリー名、スタイル、サイズ、色など、`TrueType` フォント (物理フォント) エンティティとは異なるエンティティを表すことに注意してください。 Aspose.Words は、処理のある段階でドキュメント内のフォントを物理フォントに解決します。これにより、特定のタスクが可能になります。最も一般的なタスクは、レイアウト構築中にテキスト サイズを計算し、固定ページ形式に埋め込み/サブセットするタスクです。 HTML のロード中のフォントの解決と置換、または一部のフロー形式への埋め込み/サブセットなど、他の多くのあまり一般的ではないタスクも同様に有効になります。

## フォントの操作とパフォーマンスの問題

利用可能なフォント操作メカニズムはすべて [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) クラスに含まれています。このクラスは、定義されたフォント ソース内のフォントのフェッチと、以下で説明するフォント置換プロセスを担当します。

フォントはいくつかの手順で解析されます。

1. フォントの情報を取得し、利用可能なすべてのフォントから解決します。
1. 解決されたフォントを解析して、利用可能な glyph とメトリクス (水平および垂直) を取得します。
1. 埋め込みとサブセット化のために解決されたフォントを解析します。

Aspose.Words は、ドキュメント内でフォントを初めて検出すると、各フォント ソースにあるフォント ファイルからフォントのフルネーム、ファミリー名、バージョン、スタイルなどの基本的なフォント情報を取得しようとします。すべてのフォントが取得された後、Aspose.Words はこれらの詳細を使用して、必要なフォント データまたは要求されたフォントの適切な代替物を見つけます。

上記の手順は時間がかかるため、アプリケーションの初回起動時にパフォーマンスに悪影響を与える可能性があります。ただし、**FontSettings** の各インスタンスには独自のキャッシュがあるため、後続のドキュメントの処理時間が短縮される可能性があります。たとえば、**FontSettings** クラスのインスタンスを異なるドキュメント間で共有すると、ドキュメントの読み込みを高速化できます。次の例はこれを示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOption.cs" >}}

**FontSettings** が明示的に定義されていない場合、Aspose.Words はデフォルトの **FontSettings** インスタンスを使用します。このインスタンスもドキュメント間で自動的に共有され、次のように抽出できます。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsDefaultInstance.cs" >}}

すべての処理ドキュメントに同じフォント設定が必要であることが確実な場合は、デフォルトの **FontSettings** インスタンスを設定して使用することをお勧めします。すべてのドキュメントに同じフォント ソースを使用する必要があるとします。この場合、デフォルトのインスタンスを次のように変更するだけです。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cs" >}}

{{% alert color="primary" %}}

カスタム **FontSettings** は、デフォルト インスタンスよりも高い優先度を持ちます。

{{% /alert %}}

## フォントの利用可能性と置換

ドキュメント内のテキストは、Arial、Times New Roman、Verdana などのさまざまなフォントで書式設定できます。 Aspose.Words はドキュメントをレンダリングするときに、ドキュメント内で指定されているフォントを選択しようとします。

ただし、正確なフォントが見つからず、Aspose.Words がそのフォントを類似のフォントに置き換えなければならない場合があります。 Aspose.Words は次のプロセスに従ってフォントを選択します。
1. Aspose.Words は、利用可能なフォント ソースの中から正確なフォント名を持つフォントを検索しようとします。
1. Aspose.Words は、元の文書に埋め込まれているフォントの中から必要なフォントを見つけようとします。 DOCX などの一部のドキュメント形式には、埋め込みフォントを含めることができます。
1. Aspose.Words が、名前が完全に一致し、このフォントに定義された [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/altname/) プロパティを持つ必要なフォントを見つけることができない場合、Aspose.Words は、フォント情報を指定する [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) クラスから **AltName** で定義されたフォントを検索します。
1. Aspose.Words が定義されたフォントを見つけることができず、**AltName** も定義されていない場合は、以下で説明するように、フォント置換ルールが 1 つずつ適用されます (適切な置換が見つかると、フォント置換プロセスが停止し、次のステップは実行されません):
   1. まず、Aspose.Words はフォント名を処理して置換を取得しようとします。特に、「-」と「,」区切り文字を含むサフィックスを削除しようとします。<br>
      この置換ルールが適用される場合、「フォント '&lt;OriginalFont&gt;' が見つかりません。代わりに '&lt;SubstitutionFont&gt;' フォントを使用します。理由: フォント名の置換。」警告が表示されます。<br>
            {{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersSystemAndCustomFolder-GetSubstitutionWithoutSuffixes.cs" >}}
   1. 次に、Aspose.Words は、**FontConfig** ユーティリティを使用して、OS フォント設定が利用可能な場合はその設定を適用しようとします。この非 Windows 機能は、FontConfig と互換性のある OS で使用する必要があります。ほとんどすべての Unix ベースの OS には、システム全体のフォント構成、カスタマイズ、アプリケーションへのアクセスを提供するように設計された `FontConfig` ライブラリがすでに組み込まれています。それ以外の場合、このライブラリはユーザーが簡単にインストールできます。
      Aspose.Words は、データをクエリし、FontConfig の結果を独自の目的で解釈する方法を知っています。デフォルトでは、`FontConfig` ユーティリティは無効になっています。次のように有効にできます。<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.FontConfigSubstitution.Enabled = true;
      {{< /highlight >}}
   1. 次のステップでは、**Table** 置換ルールと呼ばれるシンプルだが強力なメカニズムを使用します。デフォルトでは、この機能はアクティブであり、特定のオペレーティング システムで使用できます。 `FontConfig` 置換ルールでフォントが置換されていない場合、Aspose.Words はこのルールでフォントを置換します。<br>
      Aspose.Words は、さまざまな OS の基本的な置換ルールを定義する XML テーブルを使用します。テーブル置換ルールに従い、置換フォント名のリストが使用されます。<br>
      **XML**<br>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
      	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      このルールの主な機能は、次の例に示すように、独自の置換テーブルをロードできることです。<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Load("Table.xml");
      {{< /highlight >}}
      このメカニズムには柔軟性がありますが、次に示すように、無効にした方がよい場合もあります。<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Enabled = false;
      {{< /highlight >}}
   1. テーブル置換ルールでフォントが見つからない場合は、**FontInfo** 置換ルールが適用されます。このメカニズムはデフォルトで有効になっています。 Aspose.Words は、特定のドキュメントに含まれるフォント情報に従って、最適なフォントを見つけます。この情報は、次に示すように **FontInfo** クラスから取得できます。<br>
      **.NET**<br>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.FontInfos;
      {{< /highlight >}}
      ユーザーは、満足のいく結果が得られない場合に無効にすることを決定しない限り、この機能のワークフローに干渉することはできません。<br>
      **.NET**<br>
      {{< highlight csharp >}}
            fontSettings.SubstitutionSettings.FontInfoSubstitution.Enabled = false;
      {{< /highlight >}}
      見つからないフォントに **FontInfo** が使用できない場合、プロセスは停止します。<br>
   1. `FontInfo` 置換も失敗した場合、**DefaultFont** 置換ルールが適用されます。このルールはデフォルトでも有効になっています。この規則に従って、Aspose.Words は [DefaultFontName](https://reference.aspose.com/words/net/aspose.words.fonts/defaultfontsubstitutionrule/defaultfontname/) プロパティで指定されたデフォルトのフォントを使用しようとします。ユーザーが独自のデフォルト フォントを選択していない場合は、「Times New Roman」がデフォルト フォントとして使用されます。このルールは、以下に示すように無効にできます。<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.Enabled = false;
      {{< /highlight >}}
      現在のデフォルトのフォントを確認するには、次を使用します。<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName;
      {{< /highlight >}}
      独自の置換オプションを設定するには、次を適用します。<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName = "Arial";
      {{< /highlight >}}
1. Aspose.Words がフォント置換を実行できない場合は、利用可能なフォント ソースから最初に利用可能なフォントを取得しようとします。
1. 最後に、Aspose.Words が利用可能なフォント ソースの中にフォントが見つからない場合、Aspose.Words アセンブリに埋め込まれている無料の Fanwood フォントを使用してドキュメントをレンダリングします。<br>

**FontInfo** が使用可能な場合、*FontInfo 置換ルール* は常にフォントを解決し、デフォルトのフォント ルールをオーバーライドします。デフォルトのフォント ルールを使用する場合は、*FontInfo 置換ルール*を無効にする必要があります。ほとんどの場合、*FontConfig 置換ルール* によってフォントが解決されるため、他のすべてのルールがオーバーライドされることに注意してください。

## フォントが置き換えられたことを認識する方法

場合によっては、ドキュメントのレイアウトが変更された理由、または一部のフォントが期待どおりに表示されない理由が不明な場合があります。このような場合、[IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) インターフェイスによって実装されたフォント置換警告メッセージが役に立ちます。これらには [FontSubstitution](https://reference.aspose.com/words/net/aspose.words/warningtype/) 警告タイプと標準の説明テキスト形式「Font 」があります。<OriginalFont> 」は見つかりませんでした。 'を使用する<SubstitutionFont>' フォントを代わりに使用します。理由：<Reason> 」と、次のような理由があります。

- 「ドキュメントからの代替名」 – [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/properties/altname) による置換用
- 「fontconfig substitution」 – フォント構成ルールによる置換の場合
- 「テーブル置換」 – テーブルルールによる置換の場合
- 「フォント情報置換」 – フォント情報ルールによる置換の場合
- 「デフォルトのフォント置換」 – デフォルトのフォントルールによる置換の場合
- 「最初に使用可能なフォント」 – 最初に使用可能なフォントに置き換えます。

## XML からのフォント フォールバック設定

Aspose.Words では、フォント置換とフォント フォールバックという 2 つの異なるメカニズムが使用されます。フォントの置換は、上記のセクションで説明したように、ドキュメントで指定されたフォントがフォント ソースの中に見つからなかった場合に使用されます。フォント フォールバック メカニズムは、フォントが解決されたものの、特定の文字が含まれていない場合に使用されます。この場合、Aspose.Words は文字にフォールバック フォントの 1 つを使用しようとします。

利用可能なフォントをスキャンしてフォールバック設定を自動的に構築する [BuildAutomatic](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/buildautomatic/) メソッドがあります。このメソッドは最適ではないフォールバック設定を生成する可能性があるため、[FontFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/) クラスのプロパティを使用してフォント フォールバック動作を制御できます。このクラスは、フォント フォールバック メカニズムの設定を指定します。 **FontFallbackSettings** クラスのインスタンスは次のように取得できます。

**.NET**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.FallbackSettings;
{{< /highlight >}}

*テーブル置換ルール* と同様に、このメカニズムは構成に XML テーブルを使用します。これらの XML テーブルは、次の方法でロードおよび保存できます。

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.Load("MyNewFallbackTable.xml");
fontSettings.FallbackSettings.Save("Current_FallbackTable.xml");
{{< /highlight >}}

Aspose.Words リリースには、*MsOfficeFallbackSetting.xml* と *NotoFallbackSetting.xml* の 2 つのテーブルが含まれています。

*MsOfficeFallbackSetting* テーブルは、Microsoft Word で使用される戦略と同様の、文字範囲の置換戦略を定義します。したがって、この戦略では Microsoft Office フォントのインストールが必要です。 *MsOfficeFallbackSetting* は次の方法でアクティブ化できます。

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadMsOfficeFallbackSettings();
{{< /highlight >}}

*NotoFallbackSetting* テーブルは、特に Google Noto フォントで使用するために作成されており (Google Noto フォント設定の詳細については、次のセクションを参照してください)、次のように有効にすることができます。

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadNotoFallbackSettings();
{{< /highlight >}}

次のコード例は、XML ファイルからフォント フォールバック設定を読み込む方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetFontFallbackSettings.cs" >}}

上記のコード例では、次の XML ファイルが使用されます。

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

## Google Noto フォントの事前定義されたフォント フォールバック設定

Aspose.Words は、Google Noto フォント用の事前定義されたフォント フォールバック設定を提供します。これらは SIL Open Font License に基づいてライセンス供与されたフリー フォントであり、Google Noto Fonts からダウンロードできます。 **FontFallbackSettings** クラスは [LoadNotoFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/loadnotofallbacksettings/) メソッドを提供します。以下のコード例に示すように、Google Noto フォントを使用する事前定義されたフォールバック設定がロードされます。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetPredefinedFontFallbackSettings.cs" >}}

{{% alert color="primary" %}}

事前定義された設定では、通常のウェイトを持つ Sans スタイルの Noto フォントのみが使用されます。

{{% /alert %}}

## Aspose.Words がフォントを探す場所

Aspose.Words は、ファイル システム上で TrueType フォントを自動的に検索しようとします。通常、Aspose.Words のデフォルトの動作を利用して `TrueType` フォントを検索できますが、場合によっては、TrueType フォントを含む独自のフォルダを指定する必要があります。 [TrueType フォントの場所を指定する](/words/ja/net/specifying-truetype-fonts-location/) トピックでは、Aspose.Words がフォントを検索する方法と場所、および独自のフォントの場所を指定する方法について説明します。

## Aspose.WordsとMicrosoft Wordのフォント形式の処理の違い

以下の表に示すように、Aspose.Words と Microsoft Word ではフォント形式の処理にいくつかの違いがあります。

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| TrueType フォントおよび TrueType アウトラインを備えた OpenType フォント | サポートされています。 | サポートされています。 |
| PostScript アウトラインを備えた OpenType フォント | ほとんどのシナリオでサポートされています。 PDF や XPS などの固定ページ形式への埋め込みはサポートされていません。テキストはビットマップ画像に置き換えられます。 | 固定ページ形式への埋め込みなど、ほとんどのシナリオでサポートされています。 |
| OpenType フォントのバリエーション | 名前付きインスタンスのみがサポートされます。連続変化はサポートされていません。 | デフォルトのインスタンスのみでサポートされます。名前付きインスタンスと連続バリエーションはサポートされていません。 |
| Type1 フォント | 2013 年より前の Windows バージョンおよび MacOS バージョンでサポートされています。 2013 年以降、Windows バージョンではサポートが終了します。 | サポートされていません。 |

## 関連項目

- 無料のフォントをダウンロードするには [Google Noto フォント](https://fonts.google.com/noto)
