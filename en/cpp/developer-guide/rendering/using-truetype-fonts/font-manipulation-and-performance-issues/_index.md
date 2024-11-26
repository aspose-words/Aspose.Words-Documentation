---
title: Font Manipulation and Performance Issues in C++
second_title: Aspose.Words for C++
articleTitle: Font Manipulation and Performance Issues
linktitle: Font Manipulation and Performance Issues
description: "Aspose.Words for C++ uses font full name, family name, version, style to find the required font data or a suitable replacement for the requested font. FontSettings allows you to speed up the loading of the documents."
type: docs
weight: 11
url: /cpp/font-manipulation-and-performance-issues/
timestamp: 2024-09-24-14-35-44
---

All available font manipulation mechanisms are contained in the [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) class. This class is responsible for fetching fonts within defined font sources as well as for the Font Substitution process, as described below.

## Parsing the Resolved Fonts

Fonts are parsed in several steps:

1. Obtaining info for font, resolving from all available fonts.
1. Parsing the resolved fonts to get available glyphs and metrics (horizontal and vertical).
1. Parsing the resolved fonts for embedding and subsetting.

When Aspose.Words encounters a font in the document for the first time, it attempts to obtain basic font information, such as the font full name, family name, version, style, from the font files located in each font source. After all the fonts are retrieved, Aspose.Words uses these details to find the required font data or a suitable replacement for the requested font.

## Performance Issue When Replacing Fonts

Since the procedure described above is time-consuming, it may negatively affect application performance at its first launch. However, each instance of **FontSettings** has its own cache, which could reduce the processing time of subsequent documents. For example, you can share an instance of the **FontSettings** class between different documents, which allows you to speed up the loading of the documents. The following example demonstrates this:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

In the case when **FontSettings** is not defined explicitly, Aspose.Words uses the default **FontSettings** instance. This instance is also automatically shared among documents, and can be extracted as follows:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## Using the Default FontSettings Instance

If you are sure that all processing documents require the same font settings, then it is recommended to set up and utilize the default **FontSettings** instance. Suppose that you need to use the same font sources for all your documents. In this case, you can just amend the default instance as follows:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

The custom **FontSettings** have higher priority than the default instance.

{{% /alert %}}
