---
title: Manipulate and Substitute TrueType Fonts
type: docs
weight: 10
url: /java/manipulate-and-substitute-truetype-fonts/
---

Aspose.Words requires TrueType fonts for a variety of tasks, including rendering documents to fixed-page formats, for example, PDF or XPS. When Aspose.Words renders a document, it needs to perform embedding and subset embedding of TrueType fonts into the resulting document, which is a normal practice during a document generation, including popular PDF or XPS formats. This ensures that the document will appear the same to any viewer. Moreover, the XPS specification requires fonts to always be embedded in the document.

To ensure Aspose.Words accurately measures the characters and successfully embeds relevant fonts, the following conditions must be met:

1. Aspose.Words should be able to find and access TrueType font files on the system.
1. There must be sufficient TrueType fonts available to Aspose.Words, preferably with the same font family names as the ones used in the document.

Note that the font in the document represents an entity, such as family name, style, size, color, that is different from the TrueType font (physical font) entity. Aspose.Words resolves the font in the document to a physical font at some stage of processing. This enables certain tasks, most commonly the task of calculating text size during layout construction and embedding/subsetting to fixed-page formats. A number of other less popular tasks, such as font resolving and substitution while loading HTML or embedding/subsetting to some flow formats, are likewise enabled.

## Font Manipulation and Performance Issues

All available font manipulation mechanisms are contained in the [FontSettings](https://apireference.aspose.com/words/java/com.aspose.words/FontSettings) class. This class is responsible for fetching fonts within defined font sources as well as for the Font Substitution process, as described below.

Fonts are parsed in several steps:

1. Obtaining info for font, resolving from all available fonts.
1. Parsing the resolved fonts to get available glyphs and metrics (horizontal and vertical).
1. Parsing the resolved fonts for embedding and subsetting.

When Aspose.Words encounters a font in the document for the first time, it attempts to obtain basic font information, such as the font full name, family name, version, style, from the font files located in each font source. After all the fonts are retrieved, Aspose.Words uses these details to find the required font data or a suitable replacement for the requested font.

Since the procedure described above is time-consuming, it may negatively affect application performance at its first launch. However, each instance of **FontSettings** has its own cache, which could reduce the processing time of subsequent documents. For example, you can share an instance of the **FontSettings** class between different documents, which allows you to speed up the loading of the documents. The following example demonstrates this:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

In the case when **FontSettings** is not defined explicitly, Aspose.Words uses the default **FontSettings** instance. This instance is also automatically shared among documents, and can be extracted as follows:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

If you are sure that all processing documents require the same font settings, then it is recommended to set up and utilize the default **FontSettings** instance. Suppose that you need to use the same font sources for all your documents. In this case, you can just amend the default instance as follows:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}} 

The custom **FontSettings** have higher priority than the default instance.

{{% /alert %}} 

## Font Availability and Substitution

A text in a document can be formatted with various fonts, such as Arial, Times New Roman, Verdana, and others. When Aspose.Words renders a document, it attempts to select the fonts that are specified in the document.

However, there are situations when the exact font cannot be found and Aspose.Words must substitute it for a similar font instead. Aspose.Words selects the font according to the following process:

1. Aspose.Words tries to find a font among the available font sources with an exact font name.
1. Aspose.Words tries to find the required font among the fonts embedded in the original document. Some document formats such as DOCX can contain embedded fonts.
1. If Aspose.Words is unable to locate the required font with the exact name match, and the [AltName](https://apireference.aspose.com/words/java/com.aspose.words/fontinfo#AltName) property defined for this font, then Aspose.Words will find the font defined with **AltName** from the [FontInfo](https://apireference.aspose.com/words/java/com.aspose.words/FontInfo) class, which specifies the font information.
1. If Aspose.Words is unable to locate the defined font, and **AltName** is not also defined, then the font substitution rules are applied one-by-one, as described below (when the appropriate replacement is found, the Font Substitution Process stops and the next step is not executed):
   1. Aspose.Words will attempt to apply OS font settings, if they are available, by using the FontConfig utility. This Non-Windows feature must be used with a FontConfig-compatible OS. Almost any Unix-based OS already has a FontConfig library that is designed to provide system-wide font configuration, customization, and access to applications. Otherwise, this library can be easily installed by the user.<br>
      Aspose.Words knows how to query data and interpret FontConfig results for its own purposes. By default, the FontConfig utility is disabled. You can enable it as follows:<br>
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. The next step is a simple, but incredibly powerful mechanism called [TableSubstitutionRule](https://apireference.aspose.com/words/java/com.aspose.words/TableSubstitutionRule). By default, this feature is active and available for any OS. Aspose.Words uses XML tables which define basic substitution rules for different OS. According to the Table substitution rule, the list of substitute font names will be used.<br>
      **XML**<br>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - a font to be replaced, SubstituteFonts - list of substitution variants, separated by a comma. The first available font is used for replacement.<br>
      The main feature of this rule is the ability to load your own substitution tables, as it is shown in the following example:<br>
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      You can take as a basis the existing table from the jar or save it programmatically in the following way:<br>
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Despite the flexibility of this mechanism, there are some cases when it is better to disable it, as shown below:<br>
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. The **FontInfo** substitution rule will be applied if the table substitution rule cannot find the font. This mechanism is enabled by default. Aspose.Words finds the most suitable font according to the font information contained in a particular document. This information can be obtained from the **FontInfo** class as shown below:<br>
      **Java**<br>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Users cannot interfere in the workflow of this feature unless they decide to disable it in case of unsatisfactory results:<br>
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      If **FontInfo** is not available for the missing font, then the process stops.
   1. **DefaultFont** substitution rule will be applied in the case when the FontInfo substitution has also failed. This rule is also enabled by default. According to this rule, Aspose.Words will attempt to use the default font specified in the [DefaultFontName](https://apireference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule#DefaultFontName) property. If the user has not chosen their own default font, then "Times New Roman" will be used as the default font. This rule can be disabled as shown below:<br>
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      To check the current default font, use:<br>
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      To set up your own replacement option, apply:<br>
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. If Aspose.Words is unable to perform the font substitution, it tries to get the first available font from available font sources.
1. Finally, if Aspose.Words cannot find any fonts among the available font sources, it renders the document using the free Fanwood font that is embedded into the Aspose.Words assembly.

{{% alert color="primary" %}} 

If **FontInfo** is available, the *FontInfo substitution rule* will always resolve the font and override the default font rule. If you want to use the default font rule, you should disable the *FontInfo substitution rule*. Note that the *FontConfig substitution rule* will resolve the font in most cases, and thus overrides all other rules.

{{% /alert %}} 

## How to Recognize That the Font Was Replaced

Sometimes, it may be unclear why the document layout has changed, or why some font does not look as expected. In such cases, font substitution warnings messages implemented by the [IWarningCallback](https://apireference.aspose.com/words/java/com.aspose.words/IWarningCallback) interface come to rescue. They have the [FontSubstitution](https://apireference.aspose.com/words/java/com.aspose.words/warningtype#FONT_SUBSTITUTION) warning type and the standard description text format, "Font '<OriginalFont>' has not been found. Using '<SubstitutionFont>' font instead. Reason: <Reason>", with the following reasons:

- "alternative name from the document" – for substitution by [AltName](https://apireference.aspose.com/words/java/com.aspose.words/fontinfo#AltName)
- "fontconfig substitution" – for substitution by font config rule
- "table substitution" – for substitution by table rule
- "font info substitution" – for substitution by font info rule
- "default font substitution" – for substitution by default font rule
- "first available font" – for substitution with first available font

## Font FallBack Settings from XML

There are two different mechanisms used in Aspose.Words — Font substitution and Font fallback. Font substitution is used when the font specified in the document could not be found among the font sources as it was described in the above sections. The Font fallback mechanism is used when the font is resolved, but it does not contain a specific character. In this case, Aspose.Words tries to use one of the fallback fonts for the character.

There is a [BuildAutomatic](https://apireference.aspose.com/words/java/com.aspose.words/fontfallbacksettings#buildAutomatic\(\)) method that automatically builds the fallback settings by scanning available fonts. Since this method may produce a non-optimal fallback setting, you can control the font fallback behavior by using the properties of the [FontFallbackSettings](https://apireference.aspose.com/words/java/com.aspose.words/FontFallbackSettings) class. This class specifies settings of the font fallback mechanism. You can get an instance of the **FontFallbackSettings** class as follows:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

Similarly to *Table substitution rule*, this mechanism uses XML tables for configuration. These XML tables can be loaded and saved with the following methods:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

The Aspose.Words release includes two tables: *MsOfficeFallbackSetting.xml* and *NotoFallbackSetting.xml*.

The *MsOfficeFallbackSetting* table defines a replacement strategy for a range of characters, which is similar to the strategy used by Microsoft Word. Thus, the strategy requires the installation of Microsoft Office fonts. *MsOfficeFallbackSetting* can be activated using the following method:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

The *NotoFallbackSetting* table is created especially for use with Google Noto fonts (see more about Google Noto font settings in the next section) and can be enabled as follows:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

The following code example demonstrates how to load font fallback settings from an XML file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

In the above code example, the following XML file is used:

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

## Predefined Font FallBack Settings for Google Noto Fonts

Aspose.Words provides predefined font fallback settings for Google Noto fonts. These are free fonts licensed under SIL Open Font License, that can be downloaded from Google Noto Fonts. The **FontFallbackSettings** class provides a [LoadNotoFallbackSettings](https://apireference.aspose.com/words/java/com.aspose.words/fontfallbacksettings#loadNotoFallbackSettings\(\)) method. It loads predefined fallback settings, which use Google Noto fonts as shown in the code example below:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}} 

Only Sans style Noto fonts with regular weight are used in predefined settings.

{{% /alert %}} 

## Where Aspose.Words Looks for Fonts

Aspose.Words attempts to find TrueType fonts on the file system automatically. Usually, you can rely on the default behavior of Aspose.Words to find the TrueType fonts, but sometimes you need to specify your own folders containing TrueType fonts. The ["Specify TrueType Fonts Location"](https://docs.aspose.com/words/java/specify-truetype-fonts-location/) topic describes how and where Aspose.Words looks for fonts, as well as how to specify your own font locations.

## Differences in Processing of Font Formats in Aspose.Words and Microsoft Word

There are some differences in the processing of font formats in Aspose.Words and Microsoft Word as shown in the table below:

| |Microsoft Word|Aspose.Words|
| :- | :- | :- |
|TrueType fonts and OpenType fonts with TrueType outlines|Supported.|Supported.|
|TrueType fonts with PostScript outlines|Embedding of PostScript fonts is not supported, but documents with embedded fonts of this type can be opened.|Supported embedding of fonts with PostScript outlines when embedding TrueType fonts in a document upon saving.|
|OpenType fonts with PostScript outlines|Supported for most scenarios. Embedding to fixed-page formats such as PDF and XPS are not supported. The text is replaced with bitmap images.|Supported for most scenarios, including embedding to fixed-page formats. Parsing of glyph data, required for rendering WordArt/3D text effects, and SVG font embedding is not supported.|
|OpenType Font Variations|Only named instances are supported. Continuous variations not supported.|Supported for the only default instance. Named instances and continuous variations are not supported.|
|Type1 fonts|Supported on Windows versions prior to 2013 and on MacOS versions. Support is dropped on Windows versions starting from 2013.|Not supported.|

## Typical Font-Related Problems and Solutions

The table below provides typical problems with rendering documents to PDF and XPS via Aspose.Words, as well as their respective solutions.

|Symptom|Problem|Solution|
| :- | :- | :- |
|The layout and fonts in the output document are different from the original.|The font may not be available, or the font format is supported by Microsoft Word but not supported by Aspose.Words.|<p>Aspose.Words will perform font substitution. To check if the font is missing:</p><p>- In Microsoft Word open the "Font Substitution" dialog box (File → Options → Advanced → Font Substitution).</p><p>- In Aspose.Words use the Font substitution warnings (for details, see the "How to Recognize That the Font Was Replaced" section).</p>|
||In APS.NET, there is no access to the system fonts folder in medium trust. |Users have to store fonts in their own folder.|
|Font fallback is not working on non-windows platforms. Unicode characters are replaced with .notdef glyph. This is usually a box or question glyph.|Microsoft Office fallback settings are selected by default, and Microsoft Office fonts are not available.|Users have to install Microsoft Office fonts or alter fallback settings.|
|Complex script text, such as Thai or Hebrew, may be displayed inaccurately for some reason, for example, the wrong position for diacritics, inaccurate ligatures.|Some complex script fonts require the Advanced Typography features to be processed in order to display them correctly. Advanced Typography is disabled in Aspose.Words by default.|Users have to enable Advanced Typography with [TextShaperFactory](https://apireference.aspose.com/words/java/com.aspose.words/layoutoptions#TextShaperFactory).|
When copying fonts, keep in mind that most fonts are copyrighted. Locate font licenses beforehand, and verify that they can be freely transferred to another machine.

## See Also

- [Google Noto Fonts](https://www.google.com/get/noto/) to download free fonts


