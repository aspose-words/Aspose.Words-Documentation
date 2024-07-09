---
title: 指定真 类型字体位置 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 指定真 类型字体位置
linktitle: 指定真 类型字体位置
description: "指定各种 没错 输入字体来源:系统文件夹、用户来源、从流中装入字体、文件系统或使用内存 Java。 。 。 。"
type: docs
weight: 30
url: /zh/java/specify-truetype-fonts-location/
---

此话题描述默认行为 Aspose.Words 当它寻找TrueType字体时,包括操作系统特定差异,并演示如何指定用户字体来源.

那个 [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) 类用于指定各种字体来源。 已实施了若干项 **FontSourceBase** 类:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

下文将解释一些类别的实施细节。

## 从系统装入字体 {#loading-fonts-from-system}

有一个特殊的 [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) 类总是默认使用。 它代表系统上安装的所有TrueType字体. 因此,可以创建一个源列表,其中 **SystemFontSource** 和任何其他所需来源:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

单例 **SystemFontSource** 类默认定义在 [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/)。 。 。 在不同的操作系统中,字体可能位于不同的地方. 但是,使用 **FontSettings** 例如,对于每个文件来说,不是一个最佳的解决办法。 在大多数情况下,使用 [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) 应该够了。

只有在要求不同的文档使用不同的字体源时,才需要每个文档实例,这是罕见的情况. 使用多个 **FontSettings** 实例会因为不共享缓存而降低性能。

### 何处 Aspose.Words 正在寻找 TrueType 字体 Windows

在大多数情况下, Windows 用户不会面临丢失字体或错误布局的重大问题。 通常情况下, Aspose.Words 通过文档,当它遇到字体链接时,它会成功地从系统文件夹中获取字体数据。

打开 <span notrans="<span notrans=" Windows"=""></span>",> Aspose.Words 首先从 _ 取出所有可用的字体%windir%\Fonts 文件夹。 此设定在大部分时间里都会为您服务 。 您只指定您自己的字体文件夹 。 Aspose.Words 并查找在 HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts 注册密钥。 临Τ Windows 10允许为当前用户安装字体. 字体放置在 %userprofile%\AppData\Local\Microsoft\Windows\Fonts 文件夹,并在 HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts 登记,其中 Aspose.Words 将查找这些字体。

如果文档包含嵌入字体, Aspose.Words 能够从文档中读取相关的字体数据,并用来创建文档的版式。 文档还可能包含与系统文件夹中不包含的字体的链接,在这种情况下,下列情景将生效:

- 用户可以通过 **FontSettings** 类
- 怎么样? Aspose.Words 可以尝试用类似的字体替换丢失的字体

### 非- 上的字体Windows 系统

Aspose.Words 将查找系统字体文件夹中的字体。 这些文件夹的清单请参见: [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) 方法。 如果没有找到支持的字体, Aspose.Words 将使用内置默认字体 Fanwood.ttf。

自字体衡量标准以来 Windows 和非Windows 操作系统不同 Aspose.Words 尽可能找到一个类似的字体,并构建一个与原字体相似的布局。 然而,这并非总是可能的。 在这些情况下, **FontSettings** 类应用于添加自定义字体或替换规则。

#### 何处 Aspose.Words 正在寻找 TrueType 字体 Linux

不同 Linux 发行可能在不同文件夹中存储字体. Aspose.Words 寻找多个位置的字体。 默认 Aspose.Words 寻找下列所有地点的字体: */usr/share/fonts */usr/local/share/fonts */usr/X11R6/lib/X11/fonts 此默认行为将适用于大多数 Linux 分布,但不能保证全天工作,在这种情况下,可能需要指定地址。 true 明确输入字体。 要做到这一点,需要知道TrueType字体安装在什么地方 Linux 分发。

#### 何处 Aspose.Words 在 Mac OS X 上寻找 TrueType 字体

Aspose.Words 寻找/Library/Fonts文件夹中的字体,这是Mac OS X上TrueType字体的标准位置. 虽然此设置在大部分时间都会为您工作, 您可能需要在需要时指定自己的字体文件夹 。

#### 打开 TrueType 字体 Android

打开 Android, 字体工作流程在Typeface类中封装。
类型面有五种,每一种类型面代表一组相似的字体家族:

- 保卫
- 防守战队
- 摩纳哥
- SANS_SERIF(法语)
- 服务

例如,根据 Android’ [\.xml\\ xml\ x](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) 配置文件,"times"属于"serif"家族,因此,当请求"times"时,将使用NotoSerif-Regular.ttf:

**字体. xml**

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

为了搜索类似的字体,采用了前面描述的策略

除了他们 Aspose.Words 拥有它自己的替换清单 Android 平台。

假设文档包含PimingLiU-ExtB字体,首先, Aspose.Words 正在搜索系统来源中所需的字体。

默认列表 Android 字体文件夹为:

- 系统/泡沫
- 系统/font
- 数据/数据

那个 Aspose.Words 通过用户定义的源查看此方法设定的源:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

如果已明确指定替换者, Aspose.Words 用用户的建议替换缺失的字体:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

如果规则都行不通的话 Aspose.Words 检查内部替换表。 如果表格中包含一个好合身的信息,则字体会被替换. 就我们来说 Aspose.Words 将选择 `Typeface.SERIF`。 。 。 如果表格对要求的字体一无所知, Aspose.Words 根据特殊的MS Word规则或Panose空间中最接近的距离来拾取一个字体.

#### 打开 TrueType 字体 .NET Core 和 Xamarin

对于 .NET Core 和 Xamarin 同一规则适用于 Aspose.Words (单位:千美元) Java 版本。 默认情况下,应用程序运行的平台的所有系统字体都可以使用.
将进行搜索的文件夹列表可以通过调用方法找到:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## 从文件夹装入字体 {#loading-fonts-from-folder}

如果正在处理的文档包含与系统上没有的字体的链接,或者您不想将其添加到系统文件夹中,或者您没有权限,那么最好的解决方案就是使用此选项添加您自己的字体文件夹 `SetFontsSources` 方法。 这将允许以用户源取代系统源 。 Aspose.Words 将不再在登记册中查找字体,或者 Windows\Font 文件夹,而只扫描指定文件夹内的字体。 那个 `GetFontSources` 方法将返回相应的值。

### 指定一个或多个字体文件夹

那个 [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) 和 SetFontsFolders 方法为快捷键 **SetFontSources** 一个或若干个方法 [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) 实例。 使用这些方法说明何处 Aspose.Words 应当查找字体。 如果文件夹不存在或无法访问, Aspose.Words 只是忽略了这个文件夹。 如果所有文件夹,包括字体替代的来源都被忽略, Aspose.Words 将使用 Fanwood 字体作为默认值。

以下示例说明如何设置文件夹或源, 哪些 Aspose.Words 将随后用于在渲染或嵌入字体时查找 TrueType 字体:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)。 。 。 。

{{% /alert %}}

一个额外的布尔参数控制字体是否通过所有文件夹递归扫描,从而扫描指定文件夹的所有子文件夹. 以下例子说明如何设置 Aspose.Words 在多个文件夹中查找 TrueType 字体的渲染或嵌入字体时:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)。 。 。 。

{{% alert color="primary" %}}

注意优先事项。 如果不同字体来源中有相同姓氏和风格的字体,那么 Aspose.Words 将会以更高的优先级从源中选择字体。 参见下文"优先"字段的描述.

{{% /alert %}}

如果您根本不想使用系统字体, Aspose.Words 允许您忽略它们, 只使用您的字体:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### 优先财产

那个 [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) 当不同字体来源中有相同姓氏和风格的字体时,则使用属性。 在这种情况下 Aspose.Words 从优先级值较高的来源中选择字体。 例如,系统文件夹上有一个旧版本的字体,客户在一个自定义文件夹中添加了同一个字体的新版本.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## 从流中装入字体 {#loading-fonts-from-stream}

Aspose.Words 提供 [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) 类,允许从流中装入字体。 要使用流字体源,用户需要创建来自 **StreamFontSource** 执行《公约》的情况 [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) 方法。 那个 **OpenFontDataStream** 方法可以多次调用。 第一次,它会被称为何时 Aspose.Words 扫描所提供的字体来源,以获取可用的字体列表。 后来如果文档中使用字体来解析字体数据,并将字体数据嵌入到一些输出格式中,则可以称之为. **StreamFontSource** 可能有用,因为它只允许在需要时加载字体数据,而不让它存储在存储器中 `FontSettings` 一辈子

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** 是一种替代 [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) 由于总是可以装入溪流以内存并将其传递给 **MemoryFontSource**。 。 。 。 区别在于 **MemoryFontSource** 一直保存在记忆中, **StreamFontSource** 被装入要求 并立即处理。 但如上所述,它可能多次被装上. 在某些情况下 **MemoryFontSource** 更可取,在另一些情况下, **StreamFontSource**。 。 。 。

## 保存并装入字体搜索缓存

当第一次搜索字体时, Aspose.Words 在用户指定的字体来源上标注,并根据这些来源的数据形成字体搜索缓存。 因此,缓存会收集现有字体的信息:字体家族,风格,全字体名称等. 在后来的电话里 Aspose.Words 在字体搜索缓存中搜索想要的字体的名称,然后解析指定文件以使用字体。

解析所有可用的字体文件以初始化缓存的程序相当耗时. Aspose.Words 允许您使用 **FontSettings.SaveSearchCache** 解决性能问题的方法。 也就是说,用户可以从文件中装入先前保存的缓存,并跳过解析所有可用字体文件的步骤.

{{% alert color="primary" %}}

使用同样的 **SaveSearchCache** 用于更新缓存的方法。

{{% /alert %}}

{{% alert color="primary" %}}

当字体在网络上加载时,缓存也适合其他情景. 或者在无法储存时 `FontSettings` 带有已载入缓存的示例。

{{% /alert %}}


## 获取可用的字体列表 {#get-a-list-of-available-fonts}

如果您想要获得可用的字体列表, 例如, 可以用来渲染 PDF 文档, 您可以使用 [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) 方法,如下代码示例所示。 那个 [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) 类指定可用物理字体的信息 Aspose.Words 字体引擎:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
