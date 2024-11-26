---
title: 许可和订阅
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 许可和订阅
linktitle: 许可和订阅
description: "Aspose.Words for Python via .NET 提供不同的购买计划，或提供免费试用版和 30 天临时许可证，以便使用许可和订阅策略进行评估。"
type: docs
weight: 40
url: /zh/python-net/licensing/
timestamp: 2024-01-31-14-23-37
---

有时，为了更好地研究系统，您希望尽快深入代码。为了使这一过程变得更容易，Aspose.Words 提供了不同的购买计划或提供免费试用和 30 天临时评估许可证。

{{% alert color="primary" %}}

请注意，有许多一般政策和实践可指导您如何评估、正确许可和购买我们的产品。您可以在 [购买政策和常见问题解答](https://purchase.aspose.com/policies/) 部分找到它们。

{{% /alert %}}

## 免费试用或临时许可证

Aspose.Words 是一款令人难以置信的软件，开发人员可以在购买前试用。

### 免费试用

评估版与购买的版本相同 - 当您添加几行代码来应用许可证时，试用版就会获得许可。

没有指定许可证的 Aspose.Words 试用版提供完整的产品功能，但在加载和保存时在文档顶部插入评估水印，并将最大文档大小限制为几百段。

### 临时牌照

如果您希望不受试用版限制地测试 Aspose.Words，您还可以请求 30 天的临时许可证。欲了解更多详情，请参阅 [获得临时许可证](https://purchase.aspose.com/temporary-license/) 页面。

## 购买许可证

购买后，您需要申请License文件或流。本节介绍如何完成此操作的选项，以及对一些常见问题的评论。

{{% alert color="primary" %}}

您需要设置许可证：

* 每个应用程序域仅一次

* 在使用任何其他 Aspose.Words 类之前

{{% /alert %}}

{{% alert color="primary" %}}

您可以在 [定价信息](https://purchase.aspose.com/pricing/words/family/) 页面上找到定价信息。

{{% /alert %}}

### 保护您购买的许可证

购买License后，您需要仔细阅读[保护您购买的许可证](https://purchase.aspose.com/orders/protecting-your-license-file)页面上的信息，以保护您的License文件。请注意，只有当您拥有付费许可证时才能查看此页面。

### 许可证申请选项

可以从不同地点申请许可证：

* 显式路径
* 包含调用Aspose.Words for Python via .NET的python脚本的文件夹
* 溪流
* 作为计量许可证 – 一种新的许可机制

{{% alert color="primary" %}}

使用 [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) 方法来许可组件。

多次调用 [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) 并没有什么害处，只是浪费处理器时间。

多次调用 [set_metered_key](https://reference.aspose.com/words/python-net/aspose.words/metered/set_metered_key/#str_str) 也没有什么害处，但只会浪费处理器时间并且可能会不正确地累积消耗。

{{% /alert %}}

#### 使用文件或流对象应用许可证

开发应用程序时，请在使用 Aspose.Words 类之前在启动代码中调用 [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/)。

##### 从文件加载许可证

使用[set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/)方法，您可以尝试在嵌入资源或程序集文件夹中查找许可证文件以供进一步使用。

以下代码示例显示如何从文件夹初始化许可证：

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-file.py" >}}

##### 从 `Stream` 对象加载许可证

以下代码示例演示如何使用另一种 [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) 方法从流初始化许可证：

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-stream.py" >}}

#### 申请计量许可证

Aspose.Words 允许开发人员应用计量密钥。这是一种新的许可机制。

新的发牌机制将与现有的发牌方法同时使用。想要根据 API 功能的使用情况进行计费的客户可以使用计量许可。

完成获取此类许可证的所有必要步骤后，您将收到密钥，而不是许可证文件。可以使用为此目的专门引入的 [Metered](https://reference.aspose.com/words/python-net/aspose.words/metered/) 类来应用此计量密钥。

不要频繁调用 **SetMeteredKey** 方法，以便此许可方法正确累积消耗并向我们报告。只需实例化 Aspose.Words 库，调用 **SetMeteredKey** 一次，然后让库实例化并重用它。

以下代码示例展示了如何设置计量公钥和私钥：

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-metered-license.py" >}}

{{% alert color="primary" %}}

请注意，您必须拥有稳定的互联网连接才能正确使用计量许可证，因为计量机制需要与我们的服务不断交互才能正确计算。有关更多详细信息，请参阅 [计量许可常见问题解答](https://purchase.aspose.com/faqs/licensing/metered/) 部分。

{{% /alert %}}

### 修改License文件名

许可证文件名不必是"Aspose.Words.Python.NET.lic"。您可以将其重命名为您喜欢的名称，并在应用程序中设置许可证时使用该名称。

### "找不到许可证文件名"异常

当您购买并下载许可证时，Aspose 网站会将许可证文件命名为 *"Aspose.Words.Python.NET.lic"*。您使用浏览器下载许可证文件。在这种情况下，某些浏览器会将许可证文件识别为 XML 并向其附加 .xml 扩展名，因此计算机上的完整文件名将变为 *"Aspose.Words.Python.NET.lic.XML"*。

当 Microsoft Windows 配置为隐藏已知文件类型的扩展名时（不幸的是，这是大多数 Windows 安装中的默认设置），许可证文件将在 Windows Explorer 中显示为"Aspose.Words.Python.NET.lic"*。您可能会认为这是真实的文件名并调用 [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) 传递它*"Aspose.Words.Python.NET.lic"*，但没有这样的文件，因此出现异常。

要解决此问题，请重命名该文件以删除不可见的 .xml 扩展名。我们还建议您禁用 Microsoft Windows 中的"隐藏扩展名"选项。

## 使用多个 Aspose 产品

如果您在应用程序中使用多个 Aspose 产品，例如 Aspose.Words 和 `Aspose.Cells`，这里有一些有用的提示：

* 为每个Aspose 产品单独设置许可证。即使您对所有组件都有一个许可证文件（例如"Aspose.Total.lic"），您仍然需要为应用程序中使用的每个 Aspose 产品单独调用 [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/)。
* 使用完全限定的许可证类别名称。每个 Aspose 产品在其自己的命名空间中都有一个 **License** 类。例如，Aspose.Words 有 [aspose.words.License](https://reference.aspose.com/words/python-net/aspose.words/license/)，`Aspose.Cells` 有 **aspose.cells.License** 类。使用完全限定的类名可以避免混淆哪个许可证适用于哪个产品。
