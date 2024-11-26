---
title: 许可和订阅
second_title: Aspose.Words为Java
articleTitle: 许可和订阅
linktitle: 许可和订阅
description: "Aspose.WordsforJava提供不同的购买计划或提供免费试用和30天临时许可证，以便使用许可和订阅策略进行评估。"
type: docs
weight: 60
url: /zh/java/licensing/
timestamp: 2024-01-31-14-23-37
---

有时，为了更好地研究系统，您希望尽可能快地深入研究代码。 为了使这更容易，Aspose.Words提供不同的购买计划或提供免费试用和30天的临时许可证进行评估。

{{% alert color="primary" %}}

请注意，有许多一般政策和实践指导您如何评估、正确许可和购买我们的产品。 你可以在 [购买政策和FAQ](https://purchase.aspose.com/policies/) 节。

{{% /alert %}}

## 免费试用或临时许可证

Aspose.Words是令人难以置信的软件，开发人员可以在购买之前尝试。 您可以通过Java轻松下载/安装Aspose.WordsforJava和Aspose.WordsforAndroid [从Maven](https://releases.aspose.com/words/java/) 进行评价。

### 免费试用

评估版本与购买的版本相同-当您添加几行代码以应用许可证时，试用版只是获得许可。

没有指定许可证的Aspose.WordsforJava和Aspose.WordsforAndroidviaJava的试用版提供了完整的产品功能，但在加载和保存时在文档顶部插入评估水印，并将最大文档大小限制为几百

### 临时许可证

如果您希望在没有试用版限制的情况下通过Java测试Aspose.WordsforJava和Aspose.WordsforAndroid，您也可以申请30天的临时许可证。 有关详细信息，请参阅 [获得临时许可证](https://purchase.aspose.com/temporary-license/) 页。

## 购买许可证

购买后，您需要应用许可证文件或将许可证文件作为嵌入资源包含在内。 本节介绍了如何做到这一点的选项，以及对一些常见问题的评论。

{{% alert color="primary" %}}

许可证是一个纯文本XML文件，其中包含产品名称、许可的开发人员数量、订阅到期日期等详细信息。

该文件经过数字签名，因此请勿修改该文件。 即使无意中在文件中添加了一个额外的换行符也会使其无效。

{{% /alert %}}

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
* 包含*Aspose.Words JAR*文件的文件夹
* JAR中的嵌入资源称为*Aspose.Words JAR*
* 作为计量许可证-一种新的许可机制

通常，设置许可证的最简单方法是将许可证文件放在与*Aspose.Words JAR*相同的文件夹中，只指定文件名而不指定路径。

{{% alert color="primary" %}}

使用[SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream)方法许可组件。

多次调用**SetLicense**并不有害，它只是浪费处理器时间。

多次调用[SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String)也不是有害的，但只是浪费处理器时间，并且可以不正确地累积消耗。

{{% /alert %}}

#### 使用文件或流对象应用许可证

{{% alert color="primary" %}}

在使用Aspose.Words类之前，在启动代码中调用**SetLicense**。

{{% /alert %}}

在开发类库时，您可以从使用Aspose.Words的类的静态构造函数调用**SetLicense**。 静态构造函数将在实例化类之前执行，以确保正确安装Aspose.Words许可证。

##### 从文件加载许可证

使用[SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String)方法，您可以尝试在包含应用程序的JARs的嵌入式资源或文件夹中查找许可证文件以供进一步使用。

下面的代码示例演示如何从文件夹初始化许可证:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### 从`Stream`对象加载许可证

下面的代码示例演示如何使用另一个[SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream)方法从流初始化许可证:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### 将许可证文件包含为嵌入资源

将许可证与您的应用程序打包并确保它不会丢失的一种巧妙方法是将其作为嵌入式资源包含在内。 您可以简单地将LIC文件复制到项目的资源文件夹中。

重建项目应该嵌入.lic文件到应用程序。jar文件。 之后，您可以使用以下代码申请许可证:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### 申请计量许可证

Aspose.Words允许开发人员应用计量密钥。 这是一种新的许可机制。

新的许可机制将与现有的许可方法一起使用。 那些希望根据使用API功能计费的客户可以使用计量许可。

完成获取此类许可证的所有必要步骤后，您将收到密钥，而不是许可证文件。 这个计量键可以使用专门为此目的引入的[Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/)类来应用。

不要频繁调用**SetMeteredKey**方法，以便此许可方法正确累积消耗并向我们报告。 只需实例化Aspose.Words库，调用**SetMeteredKey**一次，然后将库实例化并重新使用。

下面的代码示例演示如何设置计量公钥和私钥:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

请注意，您必须有一个稳定的互联网连接才能正确使用计量许可证，因为计量机制需要与我们的服务不断互动以进行正确的计算。

有关更多详情，请参阅 [计量许可FAQ](https://purchase.aspose.com/faqs/licensing/metered/) 节。

{{% /alert %}}

### 更改许可证文件名

许可证文件名不必是"Aspose.Words.LIC"。 您可以根据自己的喜好重命名它，并在应用程序中设置许可证时使用该名称。

### "找不到许可证文件名"异常

购买和下载许可证时，Aspose网站会将许可证文件命名为*"Aspose.Words.LIC"*。 您可以使用浏览器下载许可证文件。 在这种情况下，某些浏览器会将许可证文件识别为XML并附加该文件。xml扩展到它，因此您的计算机上的完整文件名变为*"Aspose.Words.lic.XML"*。

当Microsoft Windows配置为隐藏已知文件类型的扩展名时（不幸的是，这是大多数Windows安装中的默认设置），许可证文件将在Windows Explorer中显示为*"Aspose.Words. LIC"*。 你可能会认为这是真正的文件名，并调用**SetLicense**传递它*"Aspose.Words.LIC"*，但没有这样的文件，因此例外。

要解决此问题，请重命名文件以删除不可见文件。xml扩展。 我们还建议您在Microsoft Windows中禁用"隐藏扩展"选项。

## 使用多种Aspose产品

如果您在应用程序中使用多个Aspose产品，例如Aspose.Words和`Aspose.Cells`，以下是一些有用的提示:

* 分别为每个Aspose产品设置许可证。 即使所有组件都有一个许可证文件，例如"Aspose.Total.lic"，您仍然需要为应用程序中使用的每个Aspose产品单独调用**SetLicense**。
* 使用完全限定的许可证类名称。 每个Aspose产品在其自己的命名空间中都有一个`License`类。 例如，Aspose.Words具有**com.aspose.words.License**，`Aspose.Cells`具有com。阿斯波斯。细胞。许可证类。 使用完全限定的类名可以避免混淆哪个许可证适用于哪个产品。
