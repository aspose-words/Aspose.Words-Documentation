---
title: C++中的字体操作和性能问题
second_title: Aspose.Words对于C++
articleTitle: 字体操作和性能问题
linktitle: 字体操作和性能问题
description: "Aspose.Words对于C++ 使用字体全名，姓氏，版本，样式来查找所需的字体数据或所需字体的合适替代品。 FontSettings允许您加快文档的加载速度。"
type: docs
weight: 11
url: /zh/cpp/font-manipulation-and-performance-issues/
---

所有可用的字体操作机制都包含在[FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings)类中。 此类负责在定义的字体源中获取字体以及字体替换过程，如下所述。

## 解析解析的字体

字体分几个步骤解析:

1. 获取字体信息，从所有可用字体解析。
1. 解析解析的字体以获得可用的字形和度量（水平和垂直）。
1. 解析解析的字体进行嵌入和子集。

当Aspose.Words第一次在文档中遇到字体时，它会尝试从位于每个字体源中的字体文件中获取基本字体信息，例如字体全名、族名、版本、样式。 检索所有字体后，Aspose.Words使用这些详细信息查找所需的字体数据或所需字体的合适替换。

## 替换字体时的性能问题

由于上述过程非常耗时，因此可能会在首次启动时对应用程序性能产生负面影响。 但是，**FontSettings**的每个实例都有自己的缓存，这可以减少后续文档的处理时间。 例如，您可以在不同文档之间共享**FontSettings**类的实例，这样可以加快文档的加载速度。 下面的示例演示了这一点:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

在**FontSettings**未明确定义的情况下，Aspose.Words使用默认的**FontSettings**实例。 此实例也会在文档之间自动共享，并且可以按如下方式提取:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## 使用默认FontSettings实例

如果您确定所有处理文档都需要相同的字体设置，那么建议设置和使用默认的**FontSettings**实例。 假设您需要为所有文档使用相同的字体源。 在这种情况下，您只需修改默认实例，如下所示:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

自定义**FontSettings**的优先级高于默认实例。

{{% /alert %}}