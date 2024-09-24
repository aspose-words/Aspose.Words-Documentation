---
title: MFont Availability and Substitution in C++
second_title: Aspose.Words for C++
articleTitle: Font Availability and Substitution
linktitle: Font Availability and Substitution
description: "When the exact substitution font cannot be found, Aspose.Words must substitute it for a similar font instead. This article describes the process of finding the most suitable font."
type: docs
weight: 12
url: /cpp/font-availability-and-substitution/
---

A text in a document can be formatted with various fonts, such as Arial, Times New Roman, Verdana, and others. When Aspose.Words renders a document, it attempts to select the fonts that are specified in the document.

However, there are situations when the exact font cannot be found and Aspose.Words must substitute it for a similar font instead. Aspose.Words selects the font according to the following process:

1. Aspose.Words tries to find a font among the available font sources with an exact font name.
1. Aspose.Words tries to find the required font among the fonts embedded in the original document. Some document formats such as DOCX can contain embedded fonts.
1. If Aspose.Words is unable to locate the required font with the exact name match, and the [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) property defined for this font, then Aspose.Words will find the font defined with **AltName** from the [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info) class, which specifies the font information.
1. If Aspose.Words is unable to locate the defined font, and **AltName** is not also defined, then the font substitution rules are applied one-by-one, as described below (when the appropriate replacement is found, the Font Substitution Process stops and the next step is not executed):
   1. Aspose.Words will attempt to apply OS font settings, if they are available, by using the `FontConfig` utility. This Non-Windows feature must be used with a FontConfig-compatible OS. Almost any Unix-based OS already has a `FontConfig` library that is designed to provide system-wide font configuration, customization, and access to applications. Otherwise, this library can be easily installed by the user.<br>
      Aspose.Words knows how to query data and interpret FontConfig results for its own purposes. By default, the `FontConfig` utility is disabled. You can enable it as follows:<br>
      **C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. The next step is a simple, but incredibly powerful mechanism called [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). By default, this feature is active and available for any OS. Aspose.Words uses XML tables which define basic substitution rules for different OS. According to the Table substitution rule, the list of substitute font names will be used.<br>
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
      **C++**<br>
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      You can take as a basis the existing table from the jar or save it programmatically in the following way:<br>
      **C++**<br>
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      Despite the flexibility of this mechanism, there are some cases when it is better to disable it, as shown below:<br>
      **C++**<br>
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. The **FontInfo** substitution rule will be applied if the table substitution rule cannot find the font. This mechanism is enabled by default. Aspose.Words finds the most suitable font according to the font information contained in a particular document. This information can be obtained from the **FontInfo** class as shown below:<br>
      **C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Users cannot interfere in the workflow of this feature unless they decide to disable it in case of unsatisfactory results:<br>
      **C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      If **FontInfo** is not available for the missing font, then the process stops.
   1. **DefaultFont** substitution rule will be applied in the case when the `FontInfo` substitution has also failed. This rule is also enabled by default. According to this rule, Aspose.Words will attempt to use the default font specified in the [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/) property. If the user has not chosen their own default font, then "Times New Roman" will be used as the default font. This rule can be disabled as shown below:<br>
      **C++**<br>
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      To check the current default font, use:<br>
      **C++**<br>
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      To set up your own replacement option, apply:<br>
      **C++**<br>
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. If Aspose.Words is unable to perform the font substitution, it tries to get the first available font from available font sources.
1. Finally, if Aspose.Words cannot find any fonts among the available font sources, it renders the document using the free Fanwood font that is embedded into the Aspose.Words assembly.

{{% alert color="primary" %}}

If **FontInfo** is available, the *FontInfo substitution rule* will always resolve the font and override the default font rule. If you want to use the default font rule, you should disable the *FontInfo substitution rule*. Note that the *FontConfig substitution rule* will resolve the font in most cases, and thus overrides all other rules.

{{% /alert %}}


