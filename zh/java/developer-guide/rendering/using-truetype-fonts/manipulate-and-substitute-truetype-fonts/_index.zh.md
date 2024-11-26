---
title: 操作和替换TrueType字体
second_title: Aspose.Words为Java
articleTitle: 操作和替换TrueType字体
linktitle: 操作和替换TrueType字体
description: "Aspose.WordsforJava可以将正确的TrueType字体嵌入到生成的文档中，以确保其准确显示，或搜索合适的字体替换，或使用字体回退机制。"
type: docs
weight: 10
url: /zh/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words需要TrueType字体用于各种任务，包括将文档呈现为固定页面格式，例如PDF或XPS。 当Aspose.Words呈现文档时，它需要执行TrueType字体的嵌入和子集嵌入到结果文档中，这是文档生成期间的正常做法，包括流行的PDF或XPS格式。 这可确保文档对任何查看器都显示相同。 此外，XPS规范要求字体始终嵌入到文档中。

要确保Aspose.Words准确测量字符并成功嵌入相关字体，必须满足以下条件:

1. Aspose.Words应该能够在系统上查找和访问TrueType字体文件。
1. 必须有足够的TrueType字体可用于Aspose.Words，最好与文档中使用的字体系列名称相同。

请注意，文档中的字体表示一个实体，如family name，style，size，color，与`TrueType`font（物理字体）实体不同。 Aspose.Words在处理的某个阶段将文档中的字体解析为物理字体。 这可以实现某些任务，最常见的是在布局构建和嵌入/子集到固定页面格式期间计算文本大小的任务。 许多其他不太受欢迎的任务，例如加载HTML时的字体解析和替换或嵌入/子集到某些流格式，也同样启用。

## 字体操作和性能问题

所有可用的字体操作机制都包含在[FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/)类中。 此类负责在定义的字体源中获取字体以及字体替换过程，如下所述。

字体分几个步骤解析:

1. 获取字体信息，从所有可用字体解析。
1. 解析解析的字体以获得可用的字形和度量（水平和垂直）。
1. 解析解析的字体进行嵌入和子集。

当Aspose.Words第一次在文档中遇到字体时，它会尝试从位于每个字体源中的字体文件中获取基本字体信息，例如字体全名、族名、版本、样式。 检索所有字体后，Aspose.Words使用这些详细信息来查找所需的字体数据或所请求字体的合适替换。

由于上述过程非常耗时，因此可能会在首次启动时对应用程序性能产生负面影响。 但是，**FontSettings**的每个实例都有自己的缓存，这可以减少后续文档的处理时间。 例如，您可以在不同文档之间共享**FontSettings**类的实例，这使您可以加快文档的加载速度。 下面的示例演示了这一点:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

在**FontSettings**未明确定义的情况下，Aspose.Words使用默认的**FontSettings**实例。 此实例也会在文档之间自动共享，并且可以按如下方式提取:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

如果您确定所有处理文档都需要相同的字体设置，那么建议设置和使用默认的**FontSettings**实例。 假设您需要为所有文档使用相同的字体源。 在这种情况下，您只需修改默认实例，如下所示:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

自定义**FontSettings**的优先级高于默认实例。

{{% /alert %}}

## 字体可用性和替代性

文档中的文本可以使用各种字体进行格式化，例如Arial，Times New Roman，Verdana等。 当Aspose.Words呈现文档时，它会尝试选择文档中指定的字体。

但是，在某些情况下，无法找到确切的字体，并且Aspose.Words必须将其替换为类似的字体。 Aspose.Words根据以下过程选择字体:

1. Aspose.Words尝试在具有确切字体名称的可用字体源中查找字体。
1. Aspose.Words尝试在原始文档中嵌入的字体中查找所需的字体。 某些文档格式（如DOCX）可以包含嵌入字体。
1. 如果Aspose.Words无法找到名称完全匹配的所需字体，并且为此字体定义了[AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName)属性，则Aspose.Words将从[FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/)类中查找用**AltName**定义的字体，该类指定字体信息。
1. 如果Aspose.Words无法定位定义的字体，并且**AltName**也没有定义，则逐个应用字体替换规则，如下所述（当找到适当的替换时，字体替换过程停止，不执行下一步）:
   1. Aspose.Words将尝试使用`FontConfig`实用程序应用OS字体设置（如果它们可用）。 此非Windows功能必须与FontConfig兼容的OS一起使用。 几乎任何基于Unix的OS已经有一个`FontConfig`库，旨在提供系统范围的字体配置，自定义和访问应用程序。 否则，用户可以轻松安装此库。<br>
      Aspose.Words知道如何查询数据并为自己的目的解释FontConfig结果。 默认情况下，`FontConfig`实用程序处于禁用状态。 您可以按如下方式启用它:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. 下一步是一个简单但非常强大的机制，称为[TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/)。 默认情况下，此功能是活动的，可用于任何OS。 Aspose.Words使用XML表定义不同OS的基本替换规则。 根据表替换规则，将使用替换字体名称列表。<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont-要替换的字体，SubstituteFonts-替换变体列表，用逗号分隔。 第一个可用字体用于替换。<br>
      此规则的主要功能是能够加载您自己的替换表，如下例所示:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      您可以将jar中的现有表作为基础，也可以通过以下方式以编程方式保存:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      尽管此机制具有灵活性，但在某些情况下，禁用它会更好，如下所示:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. 如果表替换规则找不到字体，则将应用**FontInfo**替换规则。 默认情况下启用此机制。 Aspose.Words根据特定文档中包含的字体信息找到最合适的字体。 此信息可以从**FontInfo**类中获取，如下所示:<br>
**Java**
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      用户不能干预此功能的工作流程，除非他们决定在结果不满意的情况下禁用它:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      如果**FontInfo**对于缺失的字体不可用，则该过程停止。
   1. **DefaultFont**替换规则将在`FontInfo`替换也失败的情况下应用。 默认情况下也启用此规则。 根据此规则，Aspose.Words将尝试使用[DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName)属性中指定的默认字体。 如果用户没有选择自己的默认字体，那么"Times New Roman"将被用作默认字体。 可以禁用此规则，如下所示:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      要检查当前的默认字体，请使用:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      要设置自己的替换选项，请应用:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. 如果Aspose.Words无法执行字体替换，它会尝试从可用字体源获取第一个可用字体。
1. 最后，如果Aspose.Words在可用字体源中找不到任何字体，它将使用嵌入到Aspose.Words程序集中的免费Fanwood字体呈现文档。

{{% alert color="primary" %}}

如果**FontInfo**可用，则*FontInfo substitution rule*将始终解析字体并复盖默认字体规则。 如果要使用默认字体规则，则应禁用*FontInfo substitution rule*。 请注意，*FontConfig substitution rule*将在大多数情况下解析字体，从而复盖所有其他规则。

{{% /alert %}}

## 如何识别字体被替换

有时，可能不清楚为什么文档布局发生了变化，或者为什么某些字体看起来不像预期的那样。 在这种情况下，由[IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/)接口实现的字体替换警告消息来拯救。 他们有[FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION)警告类型和标准描述文本格式，"字体'<OriginalFont>'尚未找到。 使用'<SubstitutionFont>'字体代替。 原因：<Reason>"，原因如下:

- "文档中的替代名称–-用于替换[AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "fontconfig替换"-用于字体配置规则的替换
- "表替换"-用于按表规则替换
- "字体信息替换"-用于按字体信息规则替换
- "默认字体替换"-用于默认字体规则的替换
- "第一个可用字体"-用于替换为第一个可用字体

## 字体FallBack从XML设置

Aspose.Words中使用了两种不同的机制-字体替换和字体回退。 字体替换是在文档中指定的字体在字体源中找不到时使用的，如上面部分所述。 字体回退机制在字体解析时使用，但不包含特定字符。 在这种情况下，Aspose.Words尝试使用字符的后备字体之一。

有一个[BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic)方法，通过扫描可用字体自动构建回退设置。 由于此方法可能会产生非最佳回退设置，因此您可以使用[FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/)类的属性来控制字体回退行为。 此类指定字体回退机制的设置。 您可以获取**FontFallbackSettings**类的实例，如下所示:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

与*Table substitution rule*类似，此机制使用XML表进行配置。 可以使用以下方法加载和保存这些XML表:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

Aspose.Words版本包括两个表：*MsOfficeFallbackSetting.xml*和*NotoFallbackSetting.xml*。

*MsOfficeFallbackSetting*表定义了一系列字符的替换策略，类似于Microsoft Word使用的策略。 因此，该策略需要安装MicrosoftOffice字体。 *MsOfficeFallbackSetting*可以使用以下方法激活:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

*NotoFallbackSetting*表是专门为与Google Noto字体一起使用而创建的（请参阅下一节中有关Google Noto字体设置的更多信息），可以按如下方式启用:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

下面的代码示例演示如何从XML文件加载字体回退设置:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

在上面的代码示例中，使用了以下XML文件:

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

## Google Noto字体的预定义字体FallBack设置

Aspose.Words为Google Noto字体提供预定义的字体回退设置。 这些是根据SIL开放字体许可证授权的免费字体，可以从Google Noto字体下载。 **FontFallbackSettings**类提供[LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings)方法。 它加载预定义的回退设置，这些设置使用Google Noto字体，如下面的代码示例所示:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

在预定义设置中仅使用具有规则权重的Sans样式Noto字体。

{{% /alert %}}

## Aspose.Words查找字体的位置

Aspose.Words尝试自动在文件系统上查找TrueType字体。 通常，您可以依靠Aspose.Words的默认行为来查找`TrueType`字体，但有时您需要指定自己的包含TrueType字体的文件夹。 该 [指定TrueType字体位置](/words/java/specify-truetype-fonts-location/) 主题描述Aspose.Words查找字体的方式和位置，以及如何指定自己的字体位置。

## Aspose.Words和Microsoft Word中字体格式处理的差异

Aspose.Words和Microsoft Word中字体格式的处理存在一些差异，如下表所示:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType字体和带有TrueType轮廓的OpenType字体 | 支持。 | 支持。 |
| OpenType字体与PostScript轮廓 | 支持大多数情况。 不支持嵌入到固定页面格式，如PDF和XPS。 文本替换为位图图像。 | 支持大多数情况，包括嵌入到固定页面格式。 |
| OpenType字体变化 | 仅支持命名实例。 不支持连续变化。 | 支持唯一的默认实例。 不支持命名实例和连续变体。 |
| Type1字体 | 支持2013年之前的Windows版本和MacOS 版本。 从2013年开始，对Windows版本的支持将被删除。 | 不支持。 |

## 请参阅

- [Google Noto字体](https://fonts.google.com/noto) 下载免费字体


