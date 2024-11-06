---
title: 在C#中操縱和替代TrueType字體
second_title: Aspose.Words for .NET
articleTitle: 操控和替換 TrueType 字型
linktitle: 操控和替換 TrueType 字型
description: "`.NET 的 Aspose.Words 可以將正確的 TrueType 字體嵌入到結果文件中，以確保使用 C# 時顯示準確。` 如果字體或特定字符不可用，Aspose.Words會尋找合適的字體替代品或使用字體回退機制。"
type: docs
weight: 10
url: /zh-hant/net/manipulating-and-substitution-truetype-fonts/
---

Aspose.Words 需要 TrueType 字體來執行各種任務，包括以固定頁面格式 render 文檔，例如 PDF 或 XPS。 當 Aspose.Words 渲染一篇文件時，它必須將 TrueType 字體嵌入成最終的文件中，或對這些字體進行子集嵌入，這是一種常見於文件生成過程中的做法，其中包括熱門的 PDF 或 XPS 格式。 這可保證該文件在任何閲覧者眼中會相同。 此外，XPS 規格也要求字體必須總是嵌入在文件中。

要確保 Aspose.Words 正確地測量字元並成功嵌入相關字體，以下條件必須符合：

1. Aspose.Words 應該能夠在系統中找到並存取 TrueType 字體檔案。
1. 必須有足夠的 TrueType 字體可用給 Aspose.Words，最好使用與該文件中使用的相同字體家族名稱。

請注意，在文件中使用的字體代表一個實體，例如姓氏、風格、大小或顏色，與`TrueType`字體（物理字體）實體不同。Aspose.Words 在處理過程中將文件中的字體轉換為物理字體。 這使某些工作能夠完成，通常是透過計算排版構建與嵌入/設定固定頁面格式。 其他較不流行的任務，例如在載入 HTML 時解決字體並進行替代，以及將一些流量格式嵌入/子集化，也會受限。

## 字型操作與效能問題

所有可用的字體操作機制都在 [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) 類別中。 此類別負責從定義的字體來源中獲取字體，以及如下所述的字體替換過程。

字體會以幾步方式解析：

1. 取得字型資訊，從所有可用的字型中解決。
1. 解析已解決的字体，以獲取可用字體和指標（水平和垂直）。
1. 解析已解決的書體以進行內嵌和子集化。

當 Aspose.Words 遇到文件中的字體時，它會試圖從字體存儲源中找到的每個字體檔案中取得基本的字體資訊，例如字體全名、字體系列名稱、版本及風格。 在所有字體獲取後，Aspose.Words 使用這些細節來尋找所需的字體資料或要求的字體的合適替換。

由於上述的過程耗費時間，它可能會影響首次開啟應用程式的效能。 不過，每個 **FontSettings** 的實例都有自己的快取記憶體，這可以減少後面文件的處理時間。 例如，您可以在不同文件間共享一個 **FontSettings** 類別的實例，這允許您加快文件的加載速度。 下面的例子示範了這點：

{{< gist "aspose-words-gists" "a08698f540d47082b4e2dbb1cb67fc1b" "load-option-font-settings.cs" >}}

在 **FontSettings** 並非明顯定義時， Aspose.Words 使用預設的 **FontSettings** 實例。 這個物件也在文書中自動共享，可以這樣提取：

{{< gist "aspose-words-gists" "a08698f540d47082b4e2dbb1cb67fc1b" "font-settings-default-instance.cs" >}}

如果你確定所有處理文件都需要相同的字體設定，那麼建議設置和使用預設的 **FontSettings** 實例。 假設您需要為所有文件使用相同的字體來源。 在這種情況下，您可以按照以下的方式修改預設實例：

{{< gist "aspose-words-gists" "a08698f540d47082b4e2dbb1cb67fc1b" "font-settings-font-source.cs" >}}

{{% alert color="primary" %}}

自訂 **FontSettings** 的優先權高於預設實例。

{{% /alert %}}

## 字體可用性與替換

在文件中的文字可以用各種不同的字體來格式化，例如Arial、Times New Roman、Verdana和其他的。。 當 Aspose.Words 渲染一篇文件時，它會嘗試選擇在文件中指定的書體。

然而，當正確的字體無法找到時，Aspose.Words 必須用類似的字體代替它。Aspose.Words 根據以下程序選擇字體：
1. Aspose.Words 會試著在可用字源中找到具有準確字型名稱的字體。
1. Aspose.Words 會在原文件中嵌入的字體中尋找所需的字體。 有些文書格式，例如 DOCX，可以包含嵌入字體。
1. 如果 Aspose.Words 無法使用正確的名稱匹配來定位所需的字體，且此字體中定義的 [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/altname/) 屬性， Aspose.Words 將從 [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) 類別中定位以 **AltName** 定義的字體，此字體會指定字體資訊。
1. 如果Aspose.Words無法找到定義的字體，而**AltName**也未定義，則字體替換規則將逐一應用，如下所述（當找到合適的替換時，字體替換過程停止，接下來的一步不會執行）：
   1. 首先，Aspose.Words嘗試處理字型名稱來取得替代，尤其是它嘗試去除以-及,為分隔符的尾接。<br>
      若此替換規則發生，字型 ' &lt;OriginalFont&gt;' 尚未找到。 使用 'SubstitutionFont' 字體替代。 警告會顯示：<br>理由：字型名稱替代。
{{< gist "aspose-words-gists" "a08698f540d47082b4e2dbb1cb67fc1b" "get-substitution-without-suffixes.cs" >}}
   1. 接著，Aspose.Words會試圖使用 **FontConfig** 工具來應用可用 operating system 的字體設定。 此非 Windows 功能必須與能相容於 FontConfig 的作業系統一起使用。 幾乎所有以Unix為基礎的作業系統，都已經有一個 `FontConfig` 程式庫，它設計用於提供系統全體的字型設定、客製化及讓應用軟體存取。 不然，這本書庫可以很容易地由使用者安裝。
      Aspose.Words 知道如何檢索資料並解讀 FontConfig 的結果，以作為自己目的使用。 預設中，`FontConfig` 這個工具是禁用的。 您可以按照以下方式啟用："<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.FontConfigSubstitution.Enabled = true;
      {{< /highlight >}}
   1. 接下來一步使用了一個簡單但強大的機制，叫作『**Table** 替換規則』。 預設此功能會啟用並適用於指定的作業系統。若 Aspose.Words 沒有使用 `FontConfig` 替換規則來替換字體，就會用這個規則來替換。<br>
      Aspose.Words 使用 XML 表格，這些表格定義了不同操作系統的基本替換規則。 根据表格替代規則, 會使用替代字型名稱列表 。<br/>
      **XML** <br>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
      	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      這個規則的主要特點是它可以載入自己的替換表，就像下面所示的示例一樣：<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Load("Table.xml");
      {{< /highlight >}}
      雖然這個機制具有彈性，但有一些情況下最好禁用它，如以下所示：<br>
      **.NET** <br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Enabled = false;
      {{< /highlight >}}
   1. **FontInfo**替換規則將被套用，如果表替換規則無法找到字體。 此機制是預設啟用。 Aspose.Words會根據特定文件所包含的書體資訊，找到最適合的書體。 這些資訊可以從以下所示的 **FontInfo** 類別取得：<br>
      **.NET**<br>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.FontInfos;
      {{< /highlight >}}
      使用者除非決定停用該功能，否則無法干預此功能的工作流程：<br>
      **.NET** <br>
      {{< highlight csharp >}}
            fontSettings.SubstitutionSettings.FontInfoSubstitution.Enabled = false;
      {{< /highlight >}}
      若缺字的書體 **FontInfo** 不存在，這個處理過程就停止。<br>
   1. **DefaultFont** 替換規則將被應用於當 `FontInfo` 替換也失敗時。 此規則也是預設啟用。 根據此規則， Aspose.Words 將嘗試使用 [DefaultFontName](https://reference.aspose.com/words/net/aspose.words.fonts/defaultfontsubstitutionrule/defaultfontname/) 屬性中指定的預設字體。 如果使用者尚未選擇自己的預設字型，那麼將使用 Times New Roman 作為預設字型。 此規則可如以下所示禁用:<br>
      **".NET"** <br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.Enabled = false;
      {{< /highlight >}}
      要檢查目前預設的書體，請使用：<br>
      **.Net** <br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName;
      {{< /highlight >}}
      若要設定自己的替換選項，請輸入："<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName = "Arial";
      {{< /highlight >}}
1. 如果 Aspose.Words 無法進行字體替換，它會嘗試從可用字體來源取得第一個可用的字體。
1. 最后, 如果 Aspose.Words 在可用的字体來源中找不到任何字型, 它會使文件使用嵌入 Aspose.Words 集合的 Fanwood 自由字型 。<br/>

若 **FontInfo** 可用，則 *FontInfo 字型替換規則* 將總是解決字型並蓋過預設字型規則。 若你要使用預設字型規則，你應該禁用 *FontInfo 子替換規則*。 請注意，*字型設定取代規則* 在多數情況下可解決字型問題，並因而蓋過所有其他規則。

## 如何辨識字體被替換

有時，可能不清楚為什麼文件的版面已改變或某些字體看起來與預期不同。 在這些情況下，由 [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) 介面實作的字型交換警告訊息可以派上用場。 他們具有[FontSubstitution](https://reference.aspose.com/words/net/aspose.words/warningtype/)警告類型和標準描述文本格式，字型 '<OriginalFont>' 找不到。 使用<SubstitutionFont>字型代替。 理由：<Reason>，原因如下：

"-"替代名稱從文件" –為用 [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/properties/altname)代替
"- 'fontconfig substitution' – 由字型設定規則替換"
"-表替換為以表格替換規則
"-字型資訊替換"–"用字型資訊替換規則"
-預設字型替代– 以預設字型規則進行替代
"-第一可用的字體–以第一可用的字體取代"

## 來自 XML 的字體備份設定

在 Aspose.Words 中使用了兩種不同的機制：字體替換和字體備援。 字體替換是當文件中指定的字體無法從字體來源中找到，而字體來源如上節錄所述時使用。 字型備援機制是在字型解析時使用的，但是它不包含特定字符。 在这种情况下， Aspose.Words 试图使用字符的备用字体之一。

有個 [BuildAutomatic](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/buildautomatic/) 方法，透過掃描可用字體自動建立回退設定。 由於此方法可能會產生非最佳的回退設定，您可以透過使用 [FontFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/) 類別的屬性來控制字型回退行為。 此類別指定字型退讓機制的設定。 您可以按照以下方式取得 **FontFallbackSettings** 類別的實例：

**.NET**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.FallbackSettings;
{{< /highlight >}}

與*表格替換規則*相似，此機制使用XML表格進行配置。 這些 XML 資料表可以使用以下方法載入和儲存：

**.Net**

{{< highlight csharp >}}
fontSettings.FallbackSettings.Load("MyNewFallbackTable.xml");
fontSettings.FallbackSettings.Save("Current_FallbackTable.xml");
{{< /highlight >}}

第 Aspose.Words 版包含兩種資料表： *MsOfficeFallbackSetting.xml* 和 *NotoFallbackSetting.xml*。

*MsOfficeFallbackSetting*這個表格定義了一個替換策略，用於一系列字符，和Microsoft Word所用的策略相似。 因此，此策略需要安裝 Microsoft 個 Office 字體。您可以使用以下方法啟用 *MsOfficeFallbackSetting*：

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadMsOfficeFallbackSettings();
{{< /highlight >}}

此 *NotoFallbackSetting* 表格是為了與 Google Noto 字型（請參閱下一段的 Google Noto 字型設定）使用，特別而作成，可按以下方式啟用：

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadNotoFallbackSettings();
{{< /highlight >}}

接下來的程式碼範例示範如何從 XML 檔案載入字型備援設定：

{{< gist "aspose-words-gists" "a08698f540d47082b4e2dbb1cb67fc1b" "font-fallback-settings.cs" >}}

在上述程式碼範例中，下列的 XML 檔案被使用：

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

## 預設字型備援設定：Google Noto 字型

Aspose.Words 提供預設的字體替代設定，供 Google Noto 字體使用。 這些是使用SIL Open Font License授權的免費字型，可從 Google Noto 字型下載。 **FontFallbackSettings**類別提供一個 [LoadNotoFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/loadnotofallbacksettings/) 方法。 它會加載預設的備用設定，這些設定使用以下代碼示例中顯示的 Google Noto 字體：

{{< gist "aspose-words-gists" "a08698f540d47082b4e2dbb1cb67fc1b" "noto-fallback-settings.cs" >}}

{{% alert color="primary" %}}

在預設設定中只使用標準字重的有衬線無衬線 Noto 字體。

{{% /alert %}}

## Where Aspose.Words Looks for Fonts

Aspose.Words 會自動在檔案系統上尋找 TrueType 字體。 通常你可以仰賴 Aspose.Words 的預設動作來找到 `TrueType` 字體，但有時你需要指定自己包含 TrueType 字體的資料夾。 [Specifying TrueType Fonts Location](/words/net/specifying-truetype-fonts-location/)這個話題描述Aspose.Words在哪裡尋找字體以及如何指定自己的字體位置。

## 在 Aspose.Words 和 Microsoft Word 中字型格式處理的差異

在 Aspose.Words 和 Microsoft Word 的字體格式處理上有些差異，如下表所示：

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
|  TrueType 字型和具有 TrueType 輪廓的 OpenType 字型 | 支援。 | 受支援。 |
| 具有PostScript線條的OpenType字型 | 支援大多數情境。 嵌入到固定頁格式，例如PDF和XPS，不受支援。 文字用位圖圖像取代。 | 支援大多數場景，包括將嵌入到固定頁面格式。 |
| 開型字體變體 | 只有命名實例才支援。 連續變數不支援。 | 僅支援預設实例。 命名實例和連續變體不支援。 |
| Type1 字體 | 在 Windows 版本中支援，在 2013 年之前以及 macOS 版本中。 支援從 2013 年開始的 Windows 版本，將會被撤除。 | 不支援。 |

## 見也

 - [Google Noto Fonts](https://fonts.google.com/noto) 下載免費字體
