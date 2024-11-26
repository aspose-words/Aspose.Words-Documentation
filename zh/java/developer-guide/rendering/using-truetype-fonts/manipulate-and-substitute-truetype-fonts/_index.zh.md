---
title: 操纵和替换 TrueType 字体
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 操纵和替换 TrueType 字体
linktitle: 操纵和替换 TrueType 字体
description: "Aspose.Words (单位:千美元) Java 可以将正确的TrueType字体嵌入到产生的文档中,以确保它准确显示,或者搜索合适的字体替换,或者使用字体倒置机制."
type: docs
weight: 10
url: /zh/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words 需要真 为各种任务打字字体,包括将文档渲染成固定的页面格式,例如PDF或 XPS。 。 。 。 何时 Aspose.Words 生成文档,它需要执行 TrueType 字体的嵌入和子集嵌入到生成的文档中,这是文档生成过程中的通常做法,包括流行的 PDF 或 XPS 格式。 这保证了文档会在任何查看者面前显示相同. 此外, XPS 规格要求字体总是嵌入到文档中。

确保 Aspose.Words 准确测量字符并成功嵌入相关字体,必须符合以下条件: 1

一、导 言 Aspose.Words 应该能够查找和访问系统中的TrueType字体文件。
一、导 言 必须有足够的 TrueType 字体可供使用 Aspose.Words, 最好与文档中使用的字体姓氏相同.

请注意,文档中的字体代表着一个实体,如姓氏,样式,大小,颜色等,不同于 `TrueType` 字体(物理字体)实体。 Aspose.Words 在处理的某个阶段将文档中的字体解为物理字体。 这使得某些任务成为可能,最常见的是在布局构建过程中计算文本大小和嵌入/子设定固定页格式的任务. 其他一些不太受欢迎的任务,如将 HTML 或嵌入/子设置加载到某些流程格式时的字体解析和替换,也同样被启用。

## 字体操纵和性能问题

所有可用的字体操纵机制都载于 [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) 课。 此类负责在定义字体源内获取字体,以及字体替换过程,如下文所述.

字体分几个步骤解析:

一、导 言 获取字体信息, 从所有可用的字体中解析 。
一、导 言 解析已解析的字体以获取可用性 glyphs和度量衡(横向和纵向)。
一、导 言 解析已解析的字体用于嵌入和子设置 。

何时 Aspose.Words 在文档中首次遇到字体,它试图从每个字体源的字体文件中获取字体全称,姓氏,版本,样式等基本字体信息. 经过所有字体检索后, Aspose.Words 使用这些细节来查找所需的字体数据或对请求的字体进行合适的替换.

由于上述程序耗时,可能会对首次发射的应用性能产生不利影响。 然而,每个实例都是: **FontSettings** 拥有自己的缓存,这可以减少后续文件的处理时间。 例如,你可以分享一个实例 **FontSettings** 在不同的文档之间进行分类,这样可以加快文档的加载。 以下例子说明了这一点:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

如果是什么时候 **FontSettings** 没有明确的定义, Aspose.Words 使用默认值 **FontSettings** 举个例子。 此实例也自动在文档中共享,可以提取如下:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

如果您确信所有处理文档都需要相同的字体设置,则建议设置和使用默认 **FontSettings** 举个例子。 假设您需要对所有文档使用相同的字体源 。 在这种情况下,您只需修改默认实例如下:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

习惯 **FontSettings** 具有高于默认实例的优先权。

{{% /alert %}}

## 字体可用性和替换

文档中的文本可以用各种字体格式化,如Arial,Times New Roman,Verdana等. 何时 Aspose.Words 生成文档,它试图选择文档中指定的字体。

然而,有时无法找到确切的字体, Aspose.Words 必须代之以类似的字体。 Aspose.Words 根据以下进程选择字体:

一、导 言 Aspose.Words 尝试在有确切字体名称的字体来源中找到字体。
一、导 言 Aspose.Words 尝试在嵌入在原始文档中的字体中查找所需的字体。 一些文档格式如DOCX可以包含嵌入字体.
一、导 言 若为 Aspose.Words 无法找到与确切名称匹配的所需字体。 [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) 为此字体定义属性, 然后 Aspose.Words 查找定义的字体 **AltName** 从 [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) 类,指定字体信息。
一、导 言 若为 Aspose.Words 无法找到定义的字体,并且 **AltName** 也没有定义,然后逐个应用字体替换规则,如下文所述(在找到适当的替换时,字体替换进程停止,下一步不执行):
   一、导 言 Aspose.Words 如果有OS字体设置,将尝试使用这些设置。 `FontConfig` 实用性。 这个...Windows 特性必须使用FontConfig兼容的OS。 几乎所有基于Unix的操作系统已经有一个 `FontConfig` 用于提供全系统字体配置、定制和应用程序访问的库。 否则,这个库可以方便用户安装.<br/>
      Aspose.Words 懂得为自己的目的查询数据并解释FontConfig结果. 默认情况下, `FontConfig` 函数已禁用 。 您可以启用如下:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. 下一步是一个简单但极其强大的机制,称为: [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/)。 。 。 默认情况下,此功能是活动并可供任何OS使用. Aspose.Words 使用定义不同OS的基本替换规则的XML表格. 根据表格替换规则,将使用替代字体名称列表.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      原Font - 要替换的字体 代号Fonts - 替代变体列表,用逗号分隔. 第一个可用的字体用于替换.<br/>
      这一规则的主要特点是能够加载自己的替代表,如下例所示:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      您可以将罐子中的现有表格作为依据,或按程序将其保存如下:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      尽管这一机制具有灵活性,但在有些情况下最好将其禁用,如下所示:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. 决 定 **FontInfo** 如果表格替换规则找不到字体,则将适用替换规则。 默认启用此机制 。 Aspose.Words 根据特定文档中的字体信息找到最合适的字体。 这种资料可从下列来源获得: **FontInfo** 类别如下:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      用户不能干预此功能的工作流程, 除非他们决定在结果不能令人满意时禁用它:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      若为 **FontInfo** 对缺失的字体不可用,则进程停止。
   一、导 言 **DefaultFont** 替换规则将适用于下列情形: `FontInfo` 替换也失败 。 此规则也默认启用 。 根据这个规则, Aspose.Words 将尝试使用在 [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) 属性。 如果用户没有选择自己的默认字体,那么"Times New Roman"将被用作默认字体. 此规则可禁用如下:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      检查当前默认字体时,请使用:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      要设置自己的替换选项,请应用:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
一、导 言 若为 Aspose.Words 无法执行字体替换,它试图从可用的字体来源获取第一个可用的字体。
一、导 言 终于,如果 Aspose.Words 无法在可用的字体来源中找到任何字体, 它会使用嵌入到 Aspose.Words 组装。

{{% alert color="primary" %}}

若为 **FontInfo** 可用时, *FontInfo 替换规则* 将永远解决字体, 并覆盖默认字体规则。 如果您想要使用默认字体规则, 您应该禁用 *FontInfo 替换规则 * 。 注意 *FontConfig 替代规则* 在大多数情况下会解决字体,从而凌驾于所有其他规则之上.

{{% /alert %}}

## 如何认识 字体被替换

有时,可能不清楚文档布局为何改变,或者为什么有些字体看起来不像预期的那样. 在这种情况下,执行的字体替换警告信息 [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) 界面来救援。 他们有 [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) 警告类型和标准描述文本格式"Font"<originalfont>没有发现。 使用 '<substitutionfont>' 字体代替。 原因: <reason>" ,理由如下:</reason></substitutionfont></originalfont>

- "文档中的备选名称 " - 替换为: [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "fontconfig 替代" - 以字体config 规则替代
- "表替换"--按表规则替代
- "font信息替换" - 用字体信息规则替换
- "默认字体替换" - 用于默认字体规则的替换
- "第一个可用字体" - 替换第一个可用字体

## 来自 XML 的字体 FallBack 设置

使用两种不同的机制: Aspose.Words --字体替换和字体倒置. 当文档中指定的字体无法如以上各节所述在字体来源中找到时,则使用字体替换. 字体倒置机制在字体解决时使用,但不包含特定字符. 在这种情况下, Aspose.Words 尝试为字符使用一个倒置字体。

有一个 [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) 通过扫描现有字体,自动构建倒置设置的方法。 由于这种方法可能会产生非最佳的倒置设置,因此您可以通过使用字体的属性来控制字体倒置行为 [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) 课。 此类指定字体倒置机制的设置 。 你可以拿一个实例 **FontFallbackSettings** 分类如下:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

与*表替换规则*类似,这一机制使用XML表格进行配置. 这些 XML 表格可以通过下列方法加载和保存:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

那个 Aspose.Words 发布包括两个表格: *MsOfficeFallbackSetting.xml* 和 *NotoFallbackSetting.xml*。 。 。 。

那个 *MsOfficeFallbackSetting* 表格定义了一组字符的替换策略,这类似于 Microsoft Word。 。 。 。 因此,该战略要求安装 Microsoft 办公室字体。 *MsOfficeFallbackSetting* 可使用下列方法激活:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

那个 *NotoFallbackSetting* 表格的创建特别用于 Google Noto 字体( 更多关于 Google Noto 在下一节中字体设置),并且可以启用如下:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

以下代码示例演示了如何从 XML 文件装入字体回落设置:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

在上述代码示例中,使用了以下 XML 文件:

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

## 预定义的字体 FallBack 设置 Google Noto 字体

Aspose.Words 提供预定义字体倒置设置 Google Noto 字体。 这些是根据 SIL Open Font 许可证许可的自由字体,可以下载自 Google Noto 字形s. 那个 **FontFallbackSettings** 类提供 a [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) 方法。 它装入预定义的后退设置, 使用 Google Noto 以下代码示例所示字体:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

在预定义的设置中仅使用具有正则重的桑斯风格诺托字体.

{{% /alert %}}

## 何处 Aspose.Words 寻找字体

Aspose.Words 尝试在文件系统中自动查找 TrueType 字体。 通常,你可以依赖默认行为 Aspose.Words 寻找 `TrueType` 字体,但有时需要指定包含 TrueType 字体的自己的文件夹。 那个 [指定真 类型字体位置](/words/zh/java/specify-truetype-fonts-location/) 专题说明如何和在何处 Aspose.Words 寻找字体,以及如何指定自己的字体位置。

## 字体格式处理的差异 Aspose.Words 和 Microsoft Word

字体格式的处理有一些差异 Aspose.Words 和 Microsoft Word 如下表所示:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| TrueType 字体和带有 TrueType 大纲的 OpenType 字体 | 受供养. | 受供养. |
| 带有 PostScript 大纲的 OpenType 字体 | 支持大多数设想。 嵌入PDF和PDF等固定页面格式 XPS 不被支持。 文本被位图图像所取代. | 支持大多数设想方案,包括嵌入固定页格式。 |
| 打开字型字体变化 | 只支持命名实例 。 不支持持续变化。 | 支持唯一的默认实例 。 不支持命名实例和持续变化 。 |
| 类型1字体 | 获得支持 Windows 2013年之前的版本和在MacOS版本上. 放弃支持 Windows 版本从2013年开始. | 不支持 。 |

## 另见

- 怎么样? [Google Noto 字体](https://fonts.google.com/noto) 下载免费字体


