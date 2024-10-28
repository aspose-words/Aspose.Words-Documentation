---
title: 许可和订阅
second_title: Aspose.Words为C++
articleTitle: 许可和订阅
linktitle: 许可和订阅
description: "Aspose.Words对于С++提供不同的购买计划或提供免费试用和使用许可和订阅策略进行评估的30天临时许可证。"
type: docs
weight: 60
url: /zh/cpp/licensing/
---

有时，为了更好地研究系统，您希望尽可能快地深入研究代码。 为了使这更容易，Aspose.Words提供不同的购买计划或提供免费试用和30天的临时许可证进行评估。

{{% alert color="primary" %}}

请注意，有许多一般政策和实践指导您如何评估、正确许可和购买我们的产品。 你可以在 [购买政策和FAQ](https://purchase.aspose.com/policies/) 节。

{{% /alert %}}

## 免费试用或临时许可证

Aspose.Words是令人难以置信的软件，开发人员可以在购买之前尝试。

### 免费试用

评估版本与购买的版本相同– [试用版](https://releases.aspose.com/words/) 当您添加几行代码来应用许可证时，只需获得许可。

没有指定许可证的Aspose.Words试用版提供完整的产品功能，但在加载和保存时在文档顶部插入评估水印，并将最大文档大小限制为几百个段落。

### 临时许可证

如果您希望在没有试用版限制的情况下测试Aspose.Words，您也可以申请30天的临时许可证。 有关详细信息，请参阅 [获得临时许可证](https://purchase.aspose.com/temporary-license/) 页。

## 购买许可证

购买后，您需要应用许可证文件或将许可证文件作为嵌入资源包含在内。 本节介绍了如何做到这一点的选项，以及对一些常见问题的评论。

{{% alert color="primary" %}}

您需要设置许可证:

* 每个应用程序域仅一次
* 在使用任何其他Aspose.Words类之前

{{% /alert %}}

{{% alert color="primary" %}}

你可在 [定价资料](https://purchase.aspose.com/pricing/words/family/) 页。

{{% /alert %}}

### 保护您购买的许可证

购买许可证后，您需要仔细阅读页面上的信息 [保护您购买的许可证](https://purchase.aspose.com/orders/protecting-your-license-file) 以保护您的许可证文件。 请注意，只有当您有付费许可证时，此页面才可供查看。

### 许可证申请选项

许可证可在不同地点申请:

* 显式路径
* 包含`Aspose.Words_\*.dll`文件的文件夹
* 包含调用`Aspose.Words_\*.dll`的程序集的文件夹
* 包含条目程序集的文件夹（您的`.exe`）
* 程序集中的嵌入资源称为`Aspose.Words_\*.dll`

通常，设置许可证的最简单方法是将许可证文件放在与`Aspose.Words_\*.dll`相同的文件夹中，只指定文件名而不指定路径。

{{% alert color="primary" %}}

使用[SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/)方法许可组件。

多次调用**SetLicense**并不有害，它只是浪费处理器时间。

{{% /alert %}}

#### 使用文件或流对象应用许可证

开发应用程序时，在使用Aspose.Words类之前，在启动代码中调用**SetLicense**。

##### 从文件加载许可证

使用[SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/)方法，您可以尝试在嵌入的资源或程序集文件夹中查找许可证文件以供进一步使用。

下面的代码示例演示如何从文件夹初始化许可证:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-file.h" >}}

##### 从流对象加载许可证

下面的代码示例演示如何使用另一个[SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/)方法从流初始化许可证:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-stream.h" >}}

#### 将许可证文件包含为嵌入资源

将许可证与您的应用程序打包并确保它不会丢失的一种巧妙方法是将其作为嵌入式资源包含在内。 嵌入和使用资源的方式取决于您的目标平台。

##### Windows

假设您已将许可证添加为资源，如下所示。

```
resource.h
#define IDR_ASPOSE_WORDS_LIC            101
```

```
resource.rc
IDR_ASPOSE_WORDS_LIC RCDATA "Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

您可以阅读有关如何在 [使用资源文件](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) 页。

{{% /alert %}}

下面的代码示例演示如何使用[SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/)方法从嵌入资源初始化许可证:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-windows.h" >}}

##### Linux

有一种类似的方法可以在可执行文件中嵌入Linux上的资源。

{{% alert color="primary" %}}

有关详细信息，请参阅 [使用GCC在可执行文件中嵌入资源](https://stackoverflow.com/questions/4158900/embedding-resources-in-executable-using-gcc/4158997#4158997).

{{% /alert %}}

下面的代码示例演示如何使用[SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/)方法从嵌入资源初始化许可证:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-linux.h" >}}

### 更改许可证文件名

许可证文件名不必是"Aspose.Words.LIC"。 您可以根据自己的喜好重命名它，并在应用程序中设置许可证时使用该名称。

### "找不到许可证文件名"异常

购买和下载许可证时，Aspose网站会将许可证文件命名为*"Aspose.Words.LIC"*。 您可以使用浏览器下载许可证文件。 在这种情况下，一些浏览器将许可证文件识别为XML并附加该文件。xml扩展到它，因此您的计算机上的完整文件名变为*"Aspose.Words.lic.XML"*。

当Microsoft Windows配置为隐藏已知文件类型的扩展名时（不幸的是，这是大多数Windows安装中的默认设置），许可证文件将在Windows Explorer中显示为*"Aspose.Words. LIC"*。 你可能会认为这是真正的文件名，并调用**SetLicense**传递它*"Aspose.Words.LIC"*，但没有这样的文件，因此例外。

要解决此问题，请重命名文件以删除不可见文件。xml扩展。 我们还建议您在Microsoft Windows中禁用"隐藏扩展"选项。

## 使用多种Aspose产品

如果您在应用程序中使用多个Aspose产品，例如Aspose.Words和`Aspose.Cells`，以下是一些有用的提示:

* 分别为每个Aspose产品设置许可证。 即使所有组件都有一个许可证文件，例如"Aspose.Total.lic"，您仍然需要为应用程序中使用的每个Aspose产品单独调用**SetLicense**。
* 使用完全限定的许可证类名称。 每个Aspose产品在其自己的命名空间中都有一个**License**类。 例如，Aspose.Words具有[Aspose.Words.License](https://reference.aspose.com/words/cpp/aspose.words/license/)，`Aspose.Cells`具有`Aspose.Cells`。许可证类。 使用完全限定的类名可以避免混淆哪个许可证适用于哪个产品。
