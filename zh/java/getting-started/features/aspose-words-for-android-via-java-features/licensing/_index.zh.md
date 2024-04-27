---
title: 许可证发放
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 许可证发放
linktitle: 许可证发放
description: "许可证发放 Aspose.Words (单位:千美元) Android 通过 Java。 。 。 。"
type: docs
weight: 60
url: /zh/java/licensing-android/
---

有时,为了更好地研究系统,你想越快潜入代码. 为了让事情变得简单 Aspose.Words 提供不同的购买计划或提供免费审判和30天的临时评估许可证。

{{% alert color="primary" %}}

请注意,在如何评估、适当许可和购买我们的产品方面,有若干一般性政策和做法。 你可以找到他们 [采购政策和财务问题](https://purchase.aspose.com/policies/) 节。

{{% /alert %}}

## 免费审判或临时许可证

Aspose.Words 是开发者在购买前可以尝试的不可思议的软件。 您可以轻松下载/安装 Aspose.Words (单位:千美元) Java 和 Aspose.Words (单位:千美元) Android 通过 Java [从下载页面](https://releases.aspose.com/words/androidjava/) 用于评价。

评测版与购买版相同 - 当您添加几行代码以应用许可时, 试测版即可获得许可 。

{{% alert color="primary" %}}

了解更多关于自由审判或临时许可的细节 Aspose.Words (单位:千美元) Android 通过 Java 打开 [许可和订阅](/words/zh/java/licensing/)。 。 。 。

{{% /alert %}}

## 购买许可证

购买后,需要应用许可证文件或将许可证文件列为嵌入式资源. 本节介绍如何做到这一点的备选办法,并评论一些共同的问题。

{{% alert color="primary" %}}

许可是一个纯文本的XML文件,包含产品名称,许可开发者数量,订阅到期日等细节.

文件是数字签名的,所以不要修改文件. 即使无意中在文件中添加额外的换行符也会使其失效.

{{% /alert %}}

{{% alert color="primary" %}}

您需要设定许可证:

* 每个应用程序域只有一次
* 在使用任何其他之前 Aspose.Words 类

{{% /alert %}}

{{% alert color="primary" %}}

您可以在 [定价信息](https://purchase.aspose.com/pricing/words/family/) 页面。

{{% /alert %}}

### 保护您的购买许可证

在购买许可证后,您需要仔细阅读页面上的信息 [保护您的购买许可证](https://purchase.aspose.com/orders/protecting-your-license-file) 保护你的执照档案。 请注意,该页面仅在持有付费许可证的情况下才可供浏览。

### 许可证应用选项

可在下列地点申请许可证:

* 明确的路径
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 嵌入式资源
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 As a metered license - - 一个新的许可机制

#### 正在装入许可文件

内 Aspose.Words (单位:千美元) Android 通过 Java, 执照可以是: [许可和订阅](/words/zh/java/licensing/), 或从流中装入:

一、导 言 把许可证文件放在任何地点 **/mnt/纸牌/**。 。 。 。
一、导 言 创建引用文件的流 。
一、导 言 将流( 包含许可证文件) 传入 `SetLicense` 方法。

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

申请嵌入式资源许可证。 使用许可作为来源 Android 软件包文件:

一、导 言 将许可证文件添加到您的应用程序中 **重新/绘制** 文件夹。
   许可证文件应在 **重新/绘制** 文件夹。
一、导 言 使用以下代码样本从资源中访问/装入许可证 。

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### 应用测量许可证

Aspose.Words 允许开发者应用MIME密钥. 这是一种新的许可机制。 新的许可证发放机制将与现有的许可证发放方法一起使用。 顾客如果想根据 API 特性可以使用计量吸入器许可证。

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### 更改许可证文件名称

许可证文件名称不必是 'Aspose.Words。 。 。 。Android。 。 。 。Java.. . 执照. 你可以把它重新命名为任何你喜欢的,并在打电话时使用这个名字 `License.SetLicense`。 。 。 。

### 例外 - 找不到许可证文件名

当你下载你买的牌照时,牌照文件就叫 **Aspose.Words。 。 。 。Android。 。 。 。Java语言** 默认。 许可证文件通过您的浏览器下载,一些浏览器承认许可证文件为XML,并在名称中附加一个.xml扩展名. 下载的文件变为 **Aspose.Words。 。 。 。Android。 。 。 。Java.lic.XML 语言**。 。 。 。

何时 Microsoft Windows 配置以隐藏已知文件类型的扩展名( 不幸这在大多数情况下都是默认的) Windows 许可证文件列为 **Aspose.Words。 。 。 。Android。 。 。 。Java语言** 输入 Windows 探险家 它看起来像预期的文件名称。 如果你打电话 `License.SetLicense` 并且通过 'Aspose.Words。 。 。 。Android。 。 。 。Java.. .

要解决问题,请重新命名文件以删除隐形的.xml扩展名. 我们建议您在 Microsoft Windows。 。 。 。

## 使用多种配置产品

如果您在应用程序中使用了多个 Apose 产品, 例如 Aspose.Words 和 `Aspose.Cells`, 这里有一些有用的提示。

- 将每种库存产品的许可证分开。
  即使您拥有所有组件的单一许可证文件, 例如" Apose " 。 总计。Android。 。 。 。Java. lic',你还需要打电话 `License.SetLicense` 用于每个Apose产品的方法。
- 使用完全合格的许可类名称。
  每个 假设产品有一个 `License` 名称空间中的类。 举例来说, Aspose.Words 有口香糖。 词。 许可证和 `Aspose.Cells` 拥有 com.aspose. 细胞。 执照课 使用完全合格的类名,您可以避免对哪一种产品使用许可证有任何混淆。
