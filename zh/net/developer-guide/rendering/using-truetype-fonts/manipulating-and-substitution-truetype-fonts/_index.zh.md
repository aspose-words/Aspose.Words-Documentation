---
title: 在 C# 中操作和替换 TrueType 字体
second_title: .NET 格式的 Aspose.Words
articleTitle: 操作和替换 TrueType 字体
linktitle: 操作和替换 TrueType 字体
description: "Aspose.Words for .NET 可以将正确的 TrueType 字体嵌入到生成的文档中，以确保它使用 C# 准确显示。如果字体或特定字符不可用，Aspose.Words 会搜索合适的字体替换或使用字体回退机制。"
type: docs
weight: 10
url: /zh/net/manipulating-and-substitution-truetype-fonts/
---

Aspose.Words 需要 TrueType 字体来执行各种任务，包括将文档渲染为固定页面格式，例如 PDF 或 XPS。当 Aspose.Words 渲染文档时，它需要在生成的文档中执行 TrueType 字体的嵌入和子集嵌入，这是文档生成过程中的常见做法，包括流行的 PDF 或 XPS 格式。这可以确保文档对于任何查看者来说都是相同的。此外，XPS 规范要求字体始终嵌入到文档中。

为了确保Aspose.Words准确测量字符并成功嵌入相关字体，必须满足以下条件：

1. Aspose.Words 应该能够找到并访问系统上的 TrueType 字体文件。
1. 必须有足够的 Aspose.Words 可用的 TrueType 字体，最好与文档中使用的字体系列名称相同。

请注意，文档中的字体代表一个实体，例如家族名称、样式、大小、颜色，与 `TrueType` 字体（物理字体）实体不同。 Aspose.Words 在处理的某个阶段将文档中的字体解析为物理字体。这可以实现某些任务，最常见的是在布局构建期间计算文本大小以及固定页面格式的嵌入/子集化的任务。许多其他不太流行的任务，例如加载 HTML 时的字体解析和替换或嵌入/子集化到某些流格式，也同样启用。

## 字体操作和性能问题

所有可用的字体操作机制都包含在 [FontSettings](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontsettings/) 类中。此类负责在定义的字体源中获取字体以及字体替换过程，如下所述。

字体解析分几个步骤：

1. 获取字体信息，从所有可用字体中解析。
1. 解析解析的字体以获得可用的 glyph 和度量（水平和垂直）。
1. 解析解析后的字体以进行嵌入和子集化。

当 Aspose.Words 第一次在文档中遇到某种字体时，它会尝试从每个字体源中的字体文件中获取基本字体信息，例如字体全名、家族名称、版本、样式。检索到所有字体后，Aspose.Words 使用这些详细信息来查找所需的字体数据或所需字体的合适替代品。

由于上述过程非常耗时，因此可能会对应用程序首次启动时的性能产生负面影响。但是，**FontSettings** 的每个实例都有自己的缓存，这可以减少后续文档的处理时间。例如，您可以在不同文档之间共享 **FontSettings** 类的实例，这使您可以加快文档的加载速度。以下示例演示了这一点：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOption.cs" >}}

在未明确定义 **FontSettings** 的情况下，Aspose.Words 使用默认的 **FontSettings** 实例。该实例也会在文档之间自动共享，并且可以按如下方式提取：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsDefaultInstance.cs" >}}

如果您确定所有处理文档都需要相同的字体设置，那么建议设置并使用默认的 **FontSettings** 实例。假设您需要为所有文档使用相同的字体源。在这种情况下，您只需修改默认实例即可：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cs" >}}

{{% alert color="primary" %}}

自定义 **FontSettings** 的优先级高于默认实例。

{{% /alert %}}

## 字体可用性和替换

文档中的文本可以使用各种字体进行格式化，例如 Arial、Times New Roman、Verdana 等。当 Aspose.Words 呈现文档时，它会尝试选择文档中指定的字体。

然而，在某些情况下，无法找到确切的字体，Aspose.Words 必须将其替换为类似的字体。 Aspose.Words按照以下过程选择字体：
1. Aspose.Words 尝试在可用字体源中查找具有准确字体名称的字体。
1. Aspose.Words 尝试在原始文档中嵌入的字体中查找所需的字体。某些文档格式（例如 DOCX）可以包含嵌入字体。
1. 如果 Aspose.Words 无法找到名称完全匹配的所需字体以及为此字体定义的 [AltName](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontinfo/altname/) 属性，则 Aspose.Words 将从 [FontInfo](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontinfo/) 类中查找使用 **AltName** 定义的字体，[FontInfo](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontinfo/) 类指定了字体信息。
1. 如果 Aspose.Words 无法找到已定义的字体，并且 **AltName** 也未定义，则将一一应用字体替换规则，如下所述（当找到合适的替换时，字体替换过程将停止，并且下一步不执行）：
   1. 首先，Aspose.Words 尝试处理字体名称以进行替换，特别是尝试删除带有"-"和","分隔符的后缀。<br>
      如果发生此替换规则，则"未找到字体 '&lt;OriginalFont&gt;'。使用 '&lt;SubstitutionFont&gt;' 字体代替。原因：字体名称替换。"出现警告。<br>
            {{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersSystemAndCustomFolder-GetSubstitutionWithoutSuffixes.cs" >}}
   1. 然后，Aspose.Words 尝试使用 **FontConfig** 实用程序应用操作系统字体设置（如果可用）。此非 Windows 功能必须与 FontConfig 兼容的操作系统一起使用。几乎所有基于 Unix 的操作系统都已经具有 `FontConfig` 库，该库旨在提供系统范围的字体配置、自定义和对应用程序的访问。否则，用户可以轻松安装该库。
      Aspose.Words 知道如何查询数据并解释 FontConfig 结果以达到其自身目的。默认情况下，`FontConfig` 实用程序处于禁用状态。您可以按如下方式启用它：<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.FontConfigSubstitution.Enabled = true;
      {{< /highlight >}}
   1. 下一步使用一种简单但功能强大的机制，称为 **Table** 替换规则。默认情况下，此功能处于活动状态并且可用于给定的操作系统。如果 Aspose.Words 未使用 `FontConfig` 替换规则替换字体，则将使用此规则替换字体。<br>
      Aspose.Words 使用 XML 表，它定义了不同操作系统的基本替换规则。根据表替换规则，将使用替换字体名称列表。<br>
      **XML**<br>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
      	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      该规则的主要特点是能够加载您自己的替换表，如以下示例所示：<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Load("Table.xml");
      {{< /highlight >}}
      尽管此机制具有灵活性，但在某些情况下最好禁用它，如下所示：<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Enabled = false;
      {{< /highlight >}}
   1. 如果表格替换规则找不到字体，将应用 **FontInfo** 替换规则。该机制默认启用。 Aspose.Words根据特定文档中包含的字体信息找到最合适的字体。该信息可以从 **FontInfo** 类中获取，如下所示：<br>
      **.NET**<br>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.FontInfos;
      {{< /highlight >}}
      用户不能干预此功能的工作流程，除非他们决定在结果不满意的情况下禁用它：<br>
      **.NET**<br>
      {{< highlight csharp >}}
            fontSettings.SubstitutionSettings.FontInfoSubstitution.Enabled = false;
      {{< /highlight >}}
      如果 **FontInfo** 不可用于丢失的字体，则该过程将停止。<br>
   1. 当`FontInfo`替换也失败的情况下，将应用**DefaultFont**替换规则。该规则也是默认启用的。根据此规则，Aspose.Words 将尝试使用 [DefaultFontName](https://reference.aspose.com/words/zh/net/aspose.words.fonts/defaultfontsubstitutionrule/defaultfontname/) 属性中指定的默认字体。如果用户没有选择自己的默认字体，那么"Times New Roman"将被用作默认字体。可以禁用该规则，如下所示：<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.Enabled = false;
      {{< /highlight >}}
      要检查当前的默认字体，请使用：<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName;
      {{< /highlight >}}
      要设置您自己的替换选项，请应用：<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName = "Arial";
      {{< /highlight >}}
1. 如果 Aspose.Words 无法执行字体替换，它会尝试从可用字体源获取第一个可用字体。
1. 最后，如果 Aspose.Words 在可用字体源中找不到任何字体，它会使用嵌入到 Aspose.Words 程序集中的免费 Fanwood 字体来呈现文档。<br>

如果 **FontInfo** 可用，*FontInfo 替换规则* 将始终解析字体并覆盖默认字体规则。如果您想使用默认字体规则，您应该禁用*FontInfo 替换规则*。请注意，*FontConfig 替换规则* 将在大多数情况下解析字体，从而覆盖所有其他规则。

## 如何识别字体已被替换

有时，可能不清楚为什么文档布局发生了变化，或者为什么某些字体看起来不符合预期。在这种情况下，[IWarningCallback](https://reference.aspose.com/words/zh/net/aspose.words/iwarningcallback/) 接口实现的字体替换警告消息可以发挥作用。它们具有 [FontSubstitution](https://reference.aspose.com/words/zh/net/aspose.words/warningtype/) 警告类型和标准描述文本格式"Font '<OriginalFont> '尚未找到。使用 '<SubstitutionFont> ' 字体代替。原因：<Reason> "，原因如下：

- "文档中的替代名称" – 用于 [AltName](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontinfo/properties/altname) 替换
- "fontconfig replacement" – 用于通过字体配置规则进行替换
- "表替换" – 按表规则替换
- "字体信息替换" – 用于按字体信息规则替换
- "默认字体替换" – 用于按默认字体规则替换
- "第一个可用字体" – 用于替换为第一个可用字体

## XML 中的字体回退设置

Aspose.Words 使用两种不同的机制--字体替换和字体回退。当在字体源中找不到文档中指定的字体时，将使用字体替换，如上面各节所述。字体回退机制在字体解析时使用，但它不包含特定字符。在这种情况下，Aspose.Words 尝试使用该字符的后备字体之一。

有一种 [BuildAutomatic](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontfallbacksettings/buildautomatic/) 方法可以通过扫描可用字体自动构建后备设置。由于此方法可能会产生非最佳回退设置，因此您可以使用 [FontFallbackSettings](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontfallbacksettings/) 类的属性来控制字体回退行为。此类指定字体回退机制的设置。您可以按如下方式获取 **FontFallbackSettings** 类的实例：

**.NET**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.FallbackSettings;
{{< /highlight >}}

与*表替换规则*类似，该机制使用XML表进行配置。可以使用以下方法加载和保存这些 XML 表：

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.Load("MyNewFallbackTable.xml");
fontSettings.FallbackSettings.Save("Current_FallbackTable.xml");
{{< /highlight >}}

Aspose.Words 版本包括两个表：*MsOfficeFallbackSetting.xml* 和 *NotoFallbackSetting.xml*。

*MsOfficeFallbackSetting*表定义了一系列字符的替换策略，这与Microsoft Word使用的策略类似。因此，该策略需要安装 Microsoft Office 字体。 *MsOfficeFallbackSetting* 可以使用以下方法激活：

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadMsOfficeFallbackSettings();
{{< /highlight >}}

*NotoFallbackSetting* 表是专门为与 Google Noto 字体一起使用而创建的（请参阅下一节中有关 Google Noto 字体设置的更多信息），并且可以按如下方式启用：

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadNotoFallbackSettings();
{{< /highlight >}}

以下代码示例演示如何从 XML 文件加载字体后备设置：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetFontFallbackSettings.cs" >}}

在上面的代码示例中，使用了以下 XML 文件：

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

## Google Noto 字体的预定义字体回退设置

Aspose.Words 为 Google Noto 字体提供预定义的字体后备设置。这些是根据 SIL 开放字体许可证获得许可的免费字体，可以从 Google Noto Fonts 下载。 **FontFallbackSettings** 类提供了 [LoadNotoFallbackSettings](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontfallbacksettings/loadnotofallbacksettings/) 方法。它加载预定义的后备设置，该设置使用 Google Noto 字体，如下面的代码示例所示：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetPredefinedFontFallbackSettings.cs" >}}

{{% alert color="primary" %}}

预定义设置中仅使用具有常规粗细的 Sans 风格 Noto 字体。

{{% /alert %}}

## Aspose.Words 在哪里寻找字体

Aspose.Words 尝试自动在文件系统上查找 TrueType 字体。通常，您可以依靠 Aspose.Words 的默认行为来查找 `TrueType` 字体，但有时您需要指定自己的包含 TrueType 字体的文件夹。 [指定 TrueType 字体位置](/words/zh/net/specifying-truetype-fonts-location/) 主题描述了 Aspose.Words 查找字体的方式和位置，以及如何指定您自己的字体位置。

## Aspose.Words 和 Microsoft Word 字体格式处理的差异

Aspose.Words 和 Microsoft Word 对字体格式的处理存在一些差异，如下表所示：

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| TrueType 字体和带有 TrueType 轮廓的 OpenType 字体 | 支持的。 | 支持的。 |
| 具有 PostScript 轮廓的 OpenType 字体 | 支持大多数场景。不支持嵌入固定页面格式，例如 PDF 和 XPS。文本被位图图像替换。 | 支持大多数场景，包括嵌入到固定页面格式。 |
| OpenType 字体变体 | 仅支持命名实例。不支持连续变化。 | 仅支持默认实例。不支持命名实例和连续变体。 |
| Type1 字体 | 2013 年之前的 Windows 版本和 MacOS 版本受支持。从 2013 年开始，不再支持 Windows 版本。 | 不支持。 |

## 也可以看看

- [Google Noto 字体](https://fonts.google.com/noto) 下载免费字体
