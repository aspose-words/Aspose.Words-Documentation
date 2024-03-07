---
title: 指定 TrueType 字体位置
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 指定 TrueType 字体位置
linktitle: 指定 TrueType 字体位置
description: "指定各种 TrueType 字体源：系统文件夹、用户源、使用 Python 从流、文件系统或内存加载字体。"
type: docs
weight: 30
url: /zh/python-net/specifying-truetype-fonts-location/
---

本主题介绍 Aspose.Words 在查找 TrueType 字体时的默认行为，包括操作系统特定的差异，并演示如何指定用户字体源。

[FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) 类用于指定各种字体源。 [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) 类有多种实现：

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

下面解释了一些类的实现细节。

## 从系统加载字体

有一个特殊的 [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) 类始终默认使用。它代表系统上安装的所有 TrueType 字体。因此，可以使用 [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) 和任何其他所需的源创建源列表：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

默认情况下，在 [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) 中定义 [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) 类的单个实例。在不同的操作系统上，字体可能位于不同的位置。但是，为每个文档使用 [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) 实例并不是最佳解决方案。在大多数情况下，使用 [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) 就足够了。

仅当需要对不同文档使用不同字体源时才需要每个文档实例，这种情况很少见。使用多个 [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) 实例会降低性能，因为它们不共享缓存。

### Aspose.Words 在 Windows 上查找 TrueType 字体的位置

在大多数情况下，Windows 用户不会面临字体丢失或布局不正确等重大问题。通常，Aspose.Words 会遍历文档，当遇到字体的链接时，会成功从系统文件夹中获取字体数据。

在 Windows 上，Aspose.Words 首先从 _%windir%\Fonts 文件夹中获取所有可用字体。此设置在大多数情况下都适合您。您只需在需要时指定自己的字体文件夹。 Aspose.Words for .NET 还会查找 *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts* 注册表项中注册的其他字体。此外，Windows 10 允许为当前用户安装字体。字体放置在 *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* 文件夹中，并在 *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts* 注册表中指定，Aspose.Words 将在其中查找这些字体。

如果文档包含嵌入字体，Aspose.Words 可以从文档中读取相关字体数据并使用它来创建文档的布局。文档还可能包含系统文件夹中不存在的字体的链接，在这种情况下，将出现以下情况：

- 用户可以通过[FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)类设置新的字体源
- Aspose.Words 可以尝试用类似的字体替换丢失的字体


### 非 Windows 系统上的字体

Aspose.Words 将在系统字体文件夹中查找字体。通过 [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/) 方法可以看到这些文件夹的列表。如果未找到支持的字体，Aspose.Words 将使用内置默认字体 Fanwood.ttf。

由于Windows和非Windows操作系统的字体规格不同，Aspose.Words尽一切可能找到相似的字体并构建与原始相似的布局。然而，这并不总是可能的。在这些情况下，应使用 [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) 类来添加自定义字体或替换规则。

#### Aspose.Words 在 Linux 上查找 TrueType 字体的位置

不同的 Linux 发行版可能将字体存储在不同的文件夹中。 Aspose.Words 在多个位置查找字体。默认情况下，Aspose.Words 在以下所有位置查找字体：*/usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*。此默认行为适用于大多数 Linux 发行版，但不能保证始终有效，在这种情况下，您可能需要显式指定 true 类型字体的位置。为此，您需要知道 TrueType 字体安装在 Linux 发行版上的位置。

#### Aspose.Words 在 Mac OS X 上查找 TrueType 字体的位置

Aspose.Words 在 */Library/Fonts* 文件夹中查找字体，该文件夹是 Mac OS X 上 TrueType 字体的标准位置。虽然此设置在大多数情况下适合您，但您可能需要在当你需要的时候。

## 从文件夹加载字体

如果正在处理的文档包含系统上没有的字体的链接，或者您不想将它们添加到系统文件夹中，或者您缺乏权限，那么最好的解决方案是使用以下命令添加包含您自己的字体的文件夹[FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) 方法。这将允许用用户源替换系统源。 Aspose.Words 将不再在注册表或 Windows\Font 文件夹中查找字体，而是仅扫描指定文件夹中的字体。 [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) 方法将返回相应的值。

### 指定一个或多个字体文件夹

[FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) 和 [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) 方法是具有一个或多个 [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/) 实例的 [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) 方法的快捷方式。这些方法用于指示 Aspose.Words 应在何处查找字体。如果文件夹不存在或不可访问，Aspose.Words 将忽略该文件夹。如果忽略所有文件夹（包括字体替换源），Aspose.Words 将使用 Fanwood 字体作为默认字体。

以下示例演示如何设置文件夹或源，Aspose.Words 随后将在渲染或嵌入字体期间使用该文件夹或源来查找 TrueType 字体：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)下载本示例的模板文件。

额外的布尔参数控制是否在所有文件夹中递归扫描字体，从而扫描指定文件夹的所有子文件夹。以下示例演示如何设置 Aspose.Words 在渲染或嵌入字体时在多个文件夹中查找 TrueType 字体：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)下载本示例的模板文件。

{{% /alert %}}

注意优先事项。如果不同字体源中存在具有相同家族名称和样式的字体，则 Aspose.Words 将从源中选择具有较高优先级的字体。请参阅下面"优先级"字段的说明。

如果您根本不想使用系统字体，Aspose.Words 允许您忽略它们并仅使用您自己的字体：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### 优先财产

当不同字体源中存在具有相同系列名称和样式的字体时，将使用 **优先事项** 属性。在这种情况下，Aspose.Words 从具有较高优先级值的源中选择字体。例如，系统文件夹中有旧版本的字体，而客户在自定义文件夹中添加了相同字体的新版本。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## 获取可用字体列表

如果您想要获取可用字体的列表（例如，可用于呈现 PDF 文档），您可以使用 [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/) 方法，如以下代码示例所示。 [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) 类指定有关 Aspose.Words 字体引擎可用的物理字体的信息：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
