---
title: 指定 C# 中的 TrueType 字体位置
second_title: .NET 格式的 Aspose.Words
articleTitle: 指定 TrueType 字体位置
linktitle: 指定 TrueType 字体位置
description: "指定各种 TrueType 字体源：系统文件夹、用户源、使用 C# 从流、文件系统或内存加载字体。"
type: docs
weight: 30
url: /zh/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

本主题介绍 Aspose.Words 在查找 TrueType 字体时的默认行为，包括操作系统特定的差异，并演示如何指定用户字体源。

[FontSourceBase](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontsourcebase/) 类用于指定各种字体源。 **FontSourceBase** 类有多种实现：

- [SystemFontSource](https://reference.aspose.com/words/zh/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/zh/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/zh/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/zh/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/zh/net/aspose.words.fonts/memoryfontsource)

下面解释了一些类的实现细节。

## 从系统 {#loading-fonts-from-system} 加载字体

有一个特殊的 [SystemFontSource](https://reference.aspose.com/words/zh/net/aspose.words.fonts/systemfontsource/) 类始终默认使用。它代表系统上安装的所有 TrueType 字体。因此，可以使用 **SystemFontSource** 和任何其他所需的源创建源列表：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

默认情况下，在 [FontSettings](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontsettings/) 中定义 **SystemFontSource** 类的单个实例。在不同的操作系统上，字体可能位于不同的位置。然而，为每个文档使用 **FontSettings** 实例并不是最佳解决方案。在大多数情况下，使用 [DefaultInstance](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontsettings/defaultinstance/) 就足够了。

仅当需要对不同文档使用不同字体源时才需要每个文档实例，这种情况很少见。使用多个 **FontSettings** 实例会降低性能，因为它们不共享缓存。

### Aspose.Words 在 Windows 上查找 TrueType 字体的位置

在大多数情况下，Windows 用户不会面临字体丢失或布局不正确等重大问题。通常，Aspose.Words 会遍历文档，当遇到字体的链接时，会成功从系统文件夹中获取字体数据。

在 Windows 上，Aspose.Words 首先从 _%windir%\Fonts 文件夹中获取所有可用字体。此设置在大多数情况下都适合您。您只需在需要时指定自己的字体文件夹。 Aspose.Words for .NET 还会查找在 HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts 注册表项中注册的其他字体。此外，Windows 10 允许为当前用户安装字体。字体放置在 %userprofile%\AppData\Local\Microsoft\Windows\Fonts 文件夹中，并在 HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts 注册表中指定，Aspose.Words 将在其中查找这些字体。

如果文档包含嵌入字体，Aspose.Words 可以从文档中读取相关字体数据并使用它来创建文档的布局。文档还可能包含系统文件夹中不存在的字体的链接，在这种情况下，将出现以下情况：

- 用户可以通过**FontSettings**类设置新的字体源
- Aspose.Words 可以尝试用类似的字体替换丢失的字体

{{% alert color="primary" %}}

服务器上的 Aspose.Words 渲染通常不适用于配置为在"中等信任"级别下运行的 ASP.NET 应用程序，因为它禁止访问注册表并限制对文件系统的访问。

{{% /alert %}}

### 非 Windows 系统上的字体

Aspose.Words 将在系统字体文件夹中查找字体。通过 [GetSystemFontFolders](https://reference.aspose.com/words/zh/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/) 方法可以看到这些文件夹的列表。如果未找到支持的字体，Aspose.Words 将使用内置默认字体 Fanwood.ttf。

由于Windows和非Windows操作系统的字体规格不同，Aspose.Words尽一切可能找到相似的字体并构建与原始相似的布局。然而，这并不总是可能的。在这些情况下，应使用 **FontSettings** 类来添加自定义字体或替换规则。

#### Aspose.Words 在 Linux 上查找 TrueType 字体的位置

不同的 Linux 发行版可能将字体存储在不同的文件夹中。 Aspose.Words 在多个位置查找字体。默认情况下，Aspose.Words 在以下所有位置查找字体： `/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts`此默认行为适用于大多数 Linux 发行版，但不能保证始终有效，在这种情况下，您可能需要显式指定 true 类型字体的位置。为此，您需要知道 TrueType 字体安装在 Linux 发行版上的位置。

#### Aspose.Words 在 Mac OS X 上查找 TrueType 字体的位置

Aspose.Words 在 /Library/Fonts 文件夹中查找字体，该文件夹是 Mac OS X 上 TrueType 字体的标准位置。虽然此设置在大多数情况下适合您，但在以下情况下您可能需要指定自己的字体文件夹：你需要。

## 从文件夹 {#loading-fonts-from-folder} 加载字体

如果正在处理的文档包含系统上没有的字体的链接，或者您不想将它们添加到系统文件夹中，或者您缺乏权限，那么最好的解决方案是使用以下命令添加包含您自己的字体的文件夹[SetFontsSources](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontsettings/setfontssources/) 方法。这将允许用用户源替换系统源。 Aspose.Words 将不再在注册表或 Windows\Font 文件夹中查找字体，而是仅扫描指定文件夹中的字体。 [GetFontSources](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontsettings/getfontssources/) 方法将返回相应的值。

### 指定一个或多个字体文件夹

[SetFontsFolder](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontsettings/setfontsfolder/) 和 [SetFontsFolders](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontsettings/setfontsfolder/s) 方法是具有一个或多个 [FolderFontSource](https://reference.aspose.com/words/zh/net/aspose.words.fonts/folderfontsource/) 实例的 **SetFontSources** 方法的快捷方式。这些方法用于指示 Aspose.Words 应在何处查找字体。如果文件夹不存在或不可访问，Aspose.Words 将忽略该文件夹。如果忽略所有文件夹（包括字体替换源），Aspose.Words 将使用 Fanwood 字体作为默认字体。

以下示例演示如何设置文件夹或源，Aspose.Words 随后将在渲染或嵌入字体期间使用该文件夹或源来查找 TrueType 字体：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)下载本示例的模板文件。

额外的布尔参数控制是否在所有文件夹中递归扫描字体，从而扫描指定文件夹的所有子文件夹。以下示例演示如何设置 Aspose.Words 在渲染或嵌入字体时在多个文件夹中查找 TrueType 字体：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)下载本示例的模板文件。

{{% /alert %}}

注意优先事项。如果不同字体源中存在具有相同家族名称和样式的字体，则 Aspose.Words 将从源中选择具有较高优先级的字体。请参阅下面"优先级"字段的说明。

如果您根本不想使用系统字体，Aspose.Words 允许您忽略它们并仅使用您自己的字体：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### 优先财产

当不同字体源中存在具有相同系列名称和样式的字体时，将使用 [Priority](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontsourcebase/priority/) 属性。在这种情况下，Aspose.Words 从具有较高优先级值的源中选择字体。例如，系统文件夹中有旧版本的字体，而客户在自定义文件夹中添加了相同字体的新版本。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## 从流 {#loading-fonts-from-stream} 加载字体

Aspose.Words 提供 [StreamFontSource](https://reference.aspose.com/words/zh/net/aspose.words.fonts/streamfontsource/) 类，允许从流加载字体。要使用流字体源，用户需要从 **StreamFontSource** 创建派生类并提供 [OpenFontDataStream](https://reference.aspose.com/words/zh/net/aspose.words.fonts/streamfontsource/openfontdatastream/) 方法的实现。 **OpenFontDataStream** 方法可以被调用多次。第一次，当 Aspose.Words 扫描提供的字体源以获取可用字体列表时，它将被调用。稍后如果文档中使用该字体，则可能会调用它来解析字体数据并将字体数据嵌入到某些输出格式中。 **StreamFontSource** 可能很有用，因为它允许仅在需要时加载字体数据，而不是在 [字体设置](https://fontsettings/) 生命周期内将其存储在内存中。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** 是 [MemoryFontSource](https://reference.aspose.com/words/zh/net/aspose.words.fonts/memoryfontsource/) 的替代方案，因为始终可以将流加载到内存并将其传递给 **MemoryFontSource**。不同之处在于，**MemoryFontSource** 始终存储在内存中，而 **StreamFontSource** 则按需加载并立即处理。但如上所述，它可能会被加载多次。在某些情况下，**MemoryFontSource** 更可取，而在其他情况下，**StreamFontSource** 更可取。

## 保存并加载字体搜索缓存

当第一次搜索字体时，Aspose.Words 会迭代用户指定的字体源，并根据这些源中的数据形成字体搜索缓存。因此，缓存将收集有关可用字体的信息：字体系列、样式、完整字体名称等。在后续调用中，Aspose.Words 按字体搜索缓存中的名称搜索所需字体的信息，然后解析指定的文件以使用该字体。

解析所有可用字体文件以初始化缓存的过程非常耗时。 Aspose.Words允许您使用[SaveSearchCache](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontsettings/savesearchcache/)方式保存和加载缓存，以解决性能问题。也就是说，用户可以从文件加载先前保存的缓存并跳过解析所有可用字体文件的步骤。

{{% alert color="primary" %}}

使用相同的 **SaveSearchCache** 方法来更新缓存。

{{% /alert %}}

以下代码示例展示了如何提前准备字体源并生成字体搜索缓存：

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

以下代码示例演示如何在处理文档之前设置字体源并加载搜索缓存：

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

由于存在许多限制，字体搜索缓存非常适合 AWS Lambda 中的 Aspose.Words 集成。例如，主容器的大小以及字体的数量。

缓存还适用于通过网络加载字体的其他场景。或者对于无法使用加载的缓存存储 `FontSettings` 实例的情况。

{{% /alert %}}

## 获取可用字体 {#get-a-list-of-available-fonts} 的列表

如果您想要获取可用字体的列表（例如，可用于呈现 PDF 文档），您可以使用 [GetAvailableFonts](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontsourcebase/getavailablefonts/) 方法，如以下代码示例所示。 [PhysicalFontInfo](https://reference.aspose.com/words/zh/net/aspose.words.fonts/physicalfontinfo/) 类指定有关 Aspose.Words 字体引擎可用的物理字体的信息：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
