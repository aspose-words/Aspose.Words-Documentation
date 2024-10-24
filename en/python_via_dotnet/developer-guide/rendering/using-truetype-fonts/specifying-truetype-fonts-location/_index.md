---
title: Specify TrueType Fonts Location
second_title: Aspose.Words for Python via .NET
articleTitle: Specify TrueType Fonts Location
linktitle: Specify TrueType Fonts Location
description: "Specify various TrueType font sources: system folder, user sources, loading fonts from a stream, a file system or memory using Python."
type: docs
weight: 30
url: /python-net/specifying-truetype-fonts-location/
aliases: [/python/specifying-truetype-fonts-location/]
---

This topic describes the default behavior of Aspose.Words when it looks for TrueType fonts, including operating system specific differences, and demonstrates how to specify user font sources.

The [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) class is used to specify various font sources. There are several implementations of the [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) class:

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

Implementation details for some classes are explained below.

## Loading Fonts from System

There is a special [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) class that is always used by default. It represents all TrueType fonts installed on the system. Therefore, it is possible to create a source list with [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) and any other required sources:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

A single instance of the [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) class is defined by default in [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). On different operating systems, fonts may be located in different places. However, using a [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) instance for each document is not an optimal solution. In the majority of cases, using [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) should be enough.

Per-document instances are needed only if it is required to use different font sources for different documents, which is a rare case. Using several [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) instances decreases performance because they do not share cache.

### Where Aspose.Words Looks for TrueType Fonts on Windows

In most cases, Windows users do not face significant problems with missed fonts or incorrect layouts. Typically, Aspose.Words goes through a document, and when it encounters a font’s link, successfully fetches the font data from the system folder.

On Windows, Aspose.Words first takes all available fonts from the _%windir%\Fonts folder. This setting will work for you most of the time. You only specify your own fonts folders if you need to. Aspose.Words for .NET also looks for additional fonts registered in the *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts* registry key. In addition, Windows 10 enables installation of fonts for the current user. Fonts are placed into the *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* folder and also specified in the *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts* registry, where Aspose.Words will look for these fonts.

If a document contains embedded fonts, Aspose.Words can read relevant font data from the document and use it to create the document’s layout. Documents may also contain links to fonts that are not in the system folders, in which case the following scenarios come to work:

- Users can set up new font sources through the [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) class
- Aspose.Words can try to replace the missed font with a similar one


### Fonts on Non-Windows Systems

Aspose.Words will look for the fonts in the system font folders. A list of these folders may be seen by the [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/) method. If no supported fonts are found, Aspose.Words will use the built-in default font Fanwood.ttf.

Since the font metrics of Windows and non-Windows OS are different, Aspose.Words does everything possible to find a similar font and build a layout similar to the original. However, this is not always possible. In these cases, the [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) class should be used to add custom fonts or substitution rules.

#### Where Aspose.Words Looks for TrueType Fonts on Linux

Different Linux distributions may store fonts in different folders. Aspose.Words looks for fonts in several locations. By default, Aspose.Words looks for the fonts in all of the following locations: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*. This default behavior will work for most Linux distributions, but it is not guaranteed to work all of the time, in which case you might need to specify the location of true type fonts explicitly. To do this, you need to know where TrueType fonts are installed on your Linux distribution.

#### Where Aspose.Words Looks for TrueType Fonts on Mac OS X

Aspose.Words looks for fonts in the `/Library/Fonts` folder, which is the standard location for TrueType fonts on Mac OS X. While this setting will work for you most of the time, you may need to specify your own fonts folders in the case when you need to.

## Loading Fonts from Folder

If the document being processed contains links to fonts that are not on the system, or you don't want to add them to the system folder, or you lack permissions, then the best solution would be to add a folder with your own fonts using the [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) method. This will allow to replace the system source with a user source. Aspose.Words will no longer look for fonts in the registry or Windows\Font folder and instead only scan for fonts within the specified folder(s). The [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) method will return the corresponding values.

### Specifying One or Multiple Font Folders

The [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) and [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) methods are shortcuts to the [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) method with one or several [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/) instances. These methods are used to indicate where Aspose.Words should look for fonts. If a folder does not exist or is not accessible, Aspose.Words just ignores this folder. If all folders, including sources for the font substitution, were ignored, Aspose.Words will use Fanwood font as a default.

The following example demonstrates how to set the folder or source, which Aspose.Words will subsequently use to look for TrueType fonts during rendering or embedding of fonts:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

An extra Boolean parameter controls whether fonts are scanned recursively through all folders, hence scanning all child folders of a specified folder. The following example demonstrates how to set Aspose.Words to look in multiple folders for TrueType fonts when rendering or embedding fonts:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Note the priorities. If there are fonts with the same family name and style in different font sources, then Aspose.Words will select the font from the source with a higher priority. See the description of the "priority" field below.

If you don’t want to use system fonts at all, Aspose.Words allows you to ignore them and use your own fonts only:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Priority Property

The **priority** property is used when there are fonts with the same family name and style in different font sources. In this case Aspose.Words selects the font from the source with the higher priority value. For example, there is an old version of the font on the system folder and customer added a new version of the same font in a custom folder.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Getting a List of Available Fonts

If you want to get the list of available fonts, which, for example, can be used to render a PDF document, you can use the [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/) method, as shown in the following code example. The [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) class specifies information about the physical font available to Aspose.Words font engine:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
