---
title: Specify TrueType Fonts Location
description: "Aspose.Words for .NET enables you to specify various TrueType font sources: system folder, user sources, loading fonts from a stream, a file system or memory."
type: docs
weight: 30
url: /net/specifying-truetype-fonts-location/
---

This topic describes the default behavior of Aspose.Words when it looks for TrueType fonts, including operating system specific differences, and demonstrates how to specify user font sources.

The [FontSourceBase](https://apireference.aspose.com/net/words/aspose.words.fonts/fontsourcebase) class is used to specify various font sources. There are {several|multiple|a few|many|numerous} implementations of the **FontSourceBase** class:

- [SystemFontSource](https://apireference.aspose.com/net/words/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://apireference.aspose.com/net/words/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://apireference.aspose.com/net/words/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://apireference.aspose.com/net/words/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://apireference.aspose.com/net/words/aspose.words.fonts/memoryfontsource)

Implementation details for some classes are explained below.

## Loading Fonts from System

There is a special [SystemFontSource](https://apireference.aspose.com/net/words/aspose.words.fonts/systemfontsource) class that is always used by default. It represents all TrueType fonts installed on the system. Therefore, it is possible to create a source list with **SystemFontSource** and any other required sources:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

A single instance of the **SystemFontSource** class is defined by default in [FontSettings](https://apireference.aspose.com/net/words/aspose.words.fonts/fontsettings). On different operating systems, fonts may be located in different places. However, using a **FontSettings** instance for each document is not an optimal solution. In the majority of cases, using [DefaultInstance](https://apireference.aspose.com/net/words/aspose.words.fonts/fontsettings/properties/defaultinstance) should be enough.

Per-document instances are needed only if it is required to use different font sources for different documents, which is a rare case. Using several **FontSettings** instances decreases performance because they do not share cache.

### Where Aspose.Words Looks for TrueType Fonts on Windows

In most cases, Windows users do not face significant problems with missed fonts or incorrect layouts. Typically, Aspose.Words goes through a document, and when it encounters a font’s link, successfully fetches the font data from the system folder.

On Windows, Aspose.Words first takes all available fonts from the _%windir%\Fonts folder. This setting will work for you most of the time. You only specify your own fonts folders if you need to. Aspose.Words for .NET also looks for additional fonts registered in the HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts registry key. In addition, Windows 10 enables installation of fonts for the current user. Fonts are placed into the %userprofile%\AppData\Local\Microsoft\Windows\Fonts folder and also specified in the HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts registry, where Aspose.Words will look for these fonts.

If a document contains embedded fonts, Aspose.Words can read relevant font data from the document and use it to create the document’s layout. Documents may also contain links to fonts that are not in the system folders, in which case the following scenarios come to work:

- Users can set up new font sources through the **FontSettings** class
- Aspose.Words can try to replace the missed font with a similar one

{{% alert color="primary" %}} 

Aspose.Words rendering on a server will typically not work with an ASP.NET application configured to run under the Medium Trust level, because it prohibits access to registry and limits access to the file system.

{{% /alert %}} 

### Fonts on Non-Windows Systems

Aspose.Words will look for the fonts in the system font folders. A list of these folders may be seen by the [GetSystemFontFolders](https://apireference.aspose.com/net/words/aspose.words.fonts/systemfontsource/methods/getsystemfontfolders) method. If no supported fonts are found, Aspose.Words will use the built-in default font Fanwood.ttf.

Since the font metrics of Windows and non-Windows OS are different, Aspose.Words does everything possible to find a similar font and build a layout similar to the original. However, this is not always possible. In these cases, the **FontSettings** class should be used to add custom fonts or substitution rules.

#### Where Aspose.Words Looks for TrueType Fonts on Linux

Different Linux distributions may store fonts in different folders. Aspose.Words looks for fonts in {several|multiple|a few|many|numerous} locations. By default, Aspose.Words looks for the fonts in all of the following locations: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fontsThis default behavior will work for most Linux distributions, but it is not guaranteed to work all of the time, in which case you might need to specify the location of true type fonts explicitly. To do this, you need to know where TrueType fonts are installed on your Linux distribution.

#### Where Aspose.Words Looks for TrueType Fonts on Mac OS X

Aspose.Words looks for fonts in the /Library/Fonts folder, which is the standard location for TrueType fonts on Mac OS X. While this setting will work for you most of the time, you may need to specify your own fonts folders in the case when you need to.

## Loading Fonts from Folder

If the document being processed contains links to fonts that are not on the system, or you don't want to add them to the system folder, or you lack permissions, then the best solution would be to add a folder with your own fonts using the [SetFontsSources](https://apireference.aspose.com/net/words/aspose.words.fonts/fontsettings/methods/setfontssources) method. This will allow to replace the system source with a user source. Aspose.Words will no longer look for fonts in the registry or Windows\Font folder and instead only scan for fonts within the specified folder(s). The [GetFontSources](https://apireference.aspose.com/net/words/aspose.words.fonts/fontsettings/methods/getfontssources) method will return the corresponding values.

### Specifying One or Multiple Font Folders

The [SetFontsFolder](https://apireference.aspose.com/net/words/aspose.words.fonts/fontsettings/methods/setfontsfolder) and [SetFontsFolders](https://apireference.aspose.com/net/words/aspose.words.fonts/fontsettings/methods/setfontsfolders) methods are shortcuts to the **SetFontSources** method with one or several [FolderFontSource](https://apireference.aspose.com/net/words/aspose.words.fonts/folderfontsource) instances. These methods are used to indicate where Aspose.Words should look for fonts. If a folder does not exist or is not accessible, Aspose.Words just ignores this folder. If all folders, including sources for the font substitution, were ignored, Aspose.Words will use Fanwood font as a default.

The following example demonstrates how to set the folder or source, which Aspose.Words will subsequently use to look for TrueType fonts during rendering or embedding of fonts:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

An extra Boolean parameter controls whether fonts are scanned recursively through all folders, hence scanning all child folders of a specified folder. The following example demonstrates how to set Aspose.Words to look in {multiple|several|a few|many|numerous} folders for TrueType fonts when rendering or embedding fonts:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}} 

Note the priorities. If there are fonts with the same family name and style in different font sources, then Aspose.Words will select the font from the source with a higher priority. See the description of the "Priority" field below.

If you don’t want to use system fonts at all, Aspose.Words allows you to ignore them and use your own fonts only:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### Priority Property

The [Priority](https://apireference.aspose.com/net/words/aspose.words.fonts/fontsourcebase/properties/priority) property is used when there are fonts with the same family name and style in different font sources. In this case Aspose.Words selects the font from the source with the higher priority value. For example, there is an old version of the font on the system folder and customer added a new version of the same font in a custom folder.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Loading Fonts from Stream

Aspose.Words provides the [StreamFontSource](https://apireference.aspose.com/net/words/aspose.words.fonts/streamfontsource) class, which allows loading fonts from the stream. To use the stream font source, a user needs to create a derived class from **StreamFontSource** and provide an implementation of the [OpenFontDataStream](https://apireference.aspose.com/net/words/aspose.words.fonts/streamfontsource/methods/openfontdatastream) method. The **OpenFontDataStream** method could be called {several|multiple|a few|many|numerous} times. For the first time, it will be called when Aspose.Words scans the provided font sources to get a list of available fonts. Later it may be called if the font is used in the document to parse the font data and to embed the font data to some output formats. **StreamFontSource** may be useful because it allows loading the font data only when it is required, and not to store it in the memory for the [FontSettings](http://fontsettings/) lifetime.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** is an alternative to [MemoryFontSource](https://apireference.aspose.com/net/words/aspose.words.fonts/memoryfontsource) since it is always possible to load a stream to memory and pass it to **MemoryFontSource**. The difference is that the **MemoryFontSource** is stored in the memory all the time, and the **StreamFontSource** is loaded on demand and disposed right away. But it may be loaded {several|multiple|a few|many|numerous} times, as described above. In some cases **MemoryFontSource** is preferable, and in others, **StreamFontSource**.

## Getting a List of Available Fonts

If you want to get the list of available fonts, which, for example, can be used to render a PDF document, you can use the [GetAvailableFonts](https://apireference.aspose.com/net/words/aspose.words.fonts/fontsourcebase/methods/getavailablefonts) method, as shown in the following code example. The [PhysicalFontInfo](https://apireference.aspose.com/net/words/aspose.words.fonts/physicalfontinfo) class specifies information about the physical font available to Aspose.Words font engine:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
