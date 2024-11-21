---
title: 在C++中指定TrueType字体位置
second_title: Aspose.Words为C++
articleTitle: 指定TrueType字体位置
linktitle: 指定TrueType字体位置
description: "指定各种TrueType字体源：系统文件夹、用户源、从流加载字体、文件系统或内存。"
type: docs
weight: 30
url: /zh/cpp/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

本主题描述查找TrueType字体时Aspose.Words的默认行为，包括操作系统特定的差异，并演示如何指定用户字体源。

[FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase)类用于指定各种字体源。 **FontSourceBase**类有几种实现:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

一些类的实现细节如下所述。

## 从系统{#loading-fonts-from-system}加载字体

有一个特殊的[SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)类始终默认使用。 它表示系统上安装的所有TrueType字体。 因此，可以使用**SystemFontSource**和任何其他所需的源创建源列表:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

**SystemFontSource**类的单个实例默认在[FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/)中定义。 在不同的操作系统上，字体可能位于不同的位置。 但是，为每个文档使用**FontSettings**实例并不是最佳解决方案。 在大多数情况下，使用[DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/)应该足够了。

仅当要求为不同的文档使用不同的字体源时，才需要每个文档实例，这是一种罕见的情况。 使用多个**FontSettings**实例会降低性能，因为它们不共享缓存。

### 其中Aspose.Words在Windows上查找TrueType字体

在大多数情况下，Windows用户不会遇到遗漏字体或不正确布局的重大问题。 通常，Aspose.Words通过文档，当它遇到字体的链接时，它会成功地从系统文件夹中获取字体数据。

在Windows上，Aspose.Words首先从_%windir%\Fonts文件夹中获取所有可用字体。 此设置大部分时间都适用于您。 如果需要，您只需指定自己的字体文件夹。 Aspose.Words还查找在HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts注册表项中注册的其他字体。 此外，Windows10允许为当前用户安装字体。 字体放在%userprofile%\AppData\Local\Microsoft\Windows\Fonts文件夹中，并在HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts注册表中指定，Aspose.Words将在其中查找这些字体。

如果文档包含嵌入字体，Aspose.Words可以从文档中读取相关字体数据，并使用它来创建文档的布局。 文档还可能包含指向不在系统文件夹中的字体的链接，在这种情况下，可以使用以下方案:

- 用户可以通过**FontSettings**类设置新的字体源
- Aspose.Words可以尝试用类似的字体替换错过的字体

{{% alert color="primary" %}}

服务器上的Aspose.Words呈现通常不适用于配置为在中等信任级别下运行的ASP.NET应用程序，因为它禁止访问注册表并限制对文件系统的访问。

{{% /alert %}}

### 非Windows系统上的字体

Aspose.Words将在系统字体文件夹中查找字体。 [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/)方法可以看到这些文件夹的列表。 如果没有找到支持的字体，Aspose.Words将使用内置的默认字体Fanwood。ttf。

由于Windows和非WindowsOS的字体度量是不同的，Aspose.Words千方百计地找到类似的字体并构建类似于原始的布局。 然而，这并不总是可能的。 在这些情况下，应使用**FontSettings**类来添加自定义字体或替换规则。

#### 其中Aspose.Words在Linux上查找TrueType字体

不同的Linux分布可能将字体存储在不同的文件夹中。 Aspose.Words在多个位置查找字体。 默认情况下，Aspose.Words在以下所有位置查找字体: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. 此默认行为适用于大多数Linux发行版，但不能保证它始终有效，在这种情况下，您可能需要显式指定true type字体的位置。 为此，您需要知道TrueType字体安装在Linux发行版上的位置。

#### 其中Aspose.Words在MacOSX上查找TrueType字体

Aspose.Words在`/Library/Fonts`文件夹中查找字体，这是MacOSx上TrueType字体的标准位置。虽然此设置大部分时间都适用于您，但您可能需要在需要时指定自己的字体文件夹。

#### Android上的TrueType字体

在Android上，字体工作流封装在Typeface类中。
有五种类型的字体，每种字体代表一组相似的字体族:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

例如，根据Android的 [字体。xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) 配置文件，"times"属于"serif"系列soNotoSerif-Regular。ttf将在请求"times"时使用:

**字体。xml**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

要搜索类似的字体，使用前面描述的策略。

除了它们之外，Aspose.Words还有自己的Android平台的替换列表。

假设文档包含PMingLiU-ExtB字体，首先，Aspose.Words正在系统源中查找所需的字体。

Android字体文件夹的默认列表是:

- /系统/字体
- /系统/字体
- /数据/字体

Aspose.Words通过使用该方法设置的用户定义的源进行查找:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

如果指定了显式替换，Aspose.Words将用用户的建议替换丢失的字体:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

如果没有规则工作，Aspose.Words检查内部替换表。 如果该表包含有关良好拟合的信息，则字体将被替换。 在我们的例子中Aspose.Words将选择`Typeface.SERIF`。 但是，如果表格对请求的字体一无所知，那么Aspose.Words会根据特殊的MS字规则或Panose空间中最近的距离来选择字体。

#### .NET Core和Xamarin上的TrueType字体

对于.NET Core和Xamarin，同样的规则适用于 Aspose.Words为Java 版本。 默认情况下，运行应用程序的平台的所有系统字体都可用。
可以通过调用该方法找到将执行搜索的文件夹列表:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## 从文件夹{#loading-fonts-from-folder}加载字体

如果正在处理的文档包含指向不在系统上的字体的链接，或者您不想将它们添加到系统文件夹，或者您缺乏权限，那么最好的解决方案是使用[SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/)方法添加 这将允许用用户源替换系统源。 Aspose.Words将不再在注册表或Windows\Font文件夹中查找字体，而是只扫描指定文件夹内的字体。 [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/)方法将返回相应的值。

### 指定一个或多个字体文件夹

[SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/)和[SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/)方法是具有一个或多个[FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)实例的**SetFontSources**方法的快捷方式。 这些方法用于指示Aspose.Words应该在哪里查找字体。 如果文件夹不存在或不可访问，Aspose.Words只是忽略此文件夹。 如果忽略了所有文件夹，包括字体替换的源，Aspose.Words将使用范伍德字体作为默认值。

下面的示例演示如何设置文件夹或源，Aspose.Words随后将使用该文件夹或源在呈现或嵌入字体期间查找TrueType字体:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

一个额外的布尔参数控制字体是否通过所有文件夹递归扫描，从而扫描指定文件夹的所有子文件夹。 下面的示例演示如何设置Aspose.Words在呈现或嵌入字体时在多个文件夹中查找TrueType字体:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

注意优先事项。 如果在不同的字体源中存在具有相同家族名称和样式的字体，那么Aspose.Words将从具有较高优先级的源中选择字体。 请参阅下面"优先级"字段的说明。

如果您根本不想使用系统字体，Aspose.Words允许您忽略它们并仅使用您自己的字体:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### 优先财产

当在不同字体源中存在具有相同族名和样式的字体时，使用[Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/)属性。 在这种情况下Aspose.Words从具有较高优先级值的源中选择字体。 例如，系统文件夹上有旧版本的字体，客户在自定义文件夹中添加了相同字体的新版本。

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## 从流{#loading-fonts-from-stream}加载字体

Aspose.Words提供[StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource)类，它允许从流加载字体。 要使用流字体源，用户需要从**StreamFontSource**创建派生类并提供[OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/)方法的实现。 可以多次调用**OpenFontDataStream**方法。 第一次，当Aspose.Words扫描提供的字体源以获取可用字体列表时，它将被调用。 稍后，如果在文档中使用字体来解析字体数据并将字体数据嵌入到某些输出格式，则可以调用它。 **StreamFontSource**可能很有用，因为它只允许在需要时加载字体数据，而不是在[FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/)生存期内将其存储在内存中。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## 保存并加载字体搜索缓存

第一次搜索字体时，Aspose.Words遍历用户指定的字体源，并根据来自这些源的数据形成字体搜索缓存。 因此，缓存将收集有关可用字体的信息：字体系列，样式，完整字体名称等。 在后续调用中，Aspose.Words通过字体搜索缓存中的名称搜索有关所需字体的信息，然后解析指定的文件以使用该字体。

解析所有可用字体文件以初始化缓存的过程相当耗时。 Aspose.Words允许您使用[SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/)方法保存和加载缓存以解决性能问题。 也就是说，用户可以从文件中加载先前保存的缓存，并跳过解析所有可用字体文件的步骤。

{{% alert color="primary" %}}

使用相同的**SaveSearchCache**方法更新缓存。

{{% /alert %}}

{{% alert color="primary" %}}

缓存也适用于通过网络加载字体的其他情况。 或者对于无法使用加载的缓存存储`FontSettings`实例的情况。

{{% /alert %}}

## 获取可用字体列表{#get-a-list-of-available-fonts}

如果要获取可用字体列表（例如，可用于呈现PDF文档），则可以使用[GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/)方法，如下面的代码示例所示。 [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo)类指定有关Aspose.Words字体引擎可用的物理字体的信息:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
