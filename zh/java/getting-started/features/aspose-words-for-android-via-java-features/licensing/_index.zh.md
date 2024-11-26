---
title: 发牌事宜
second_title: Aspose.Words为Java
articleTitle: 发牌事宜
linktitle: 发牌事宜
description: "通过Java为Android授权Aspose.Words。"
type: docs
weight: 60
url: /zh/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

有时，为了更好地研究系统，您希望尽可能快地深入研究代码。 为了使这更容易，Aspose.Words提供不同的购买计划或提供免费试用和30天的临时许可证进行评估。

{{% alert color="primary" %}}

请注意，有许多一般政策和实践指导您如何评估、正确许可和购买我们的产品。 你可以在 [购买政策和FAQ](https://purchase.aspose.com/policies/) 节。

{{% /alert %}}

## 免费试用或临时许可证

Aspose.Words是令人难以置信的软件，开发人员可以在购买之前尝试。 您可以通过Java轻松下载/安装Aspose.WordsforJava和Aspose.WordsforAndroid [从下载页面](https://releases.aspose.com/words/androidjava/) 进行评价。

评估版本与购买的版本相同-当您添加几行代码以应用许可证时，试用版只是获得许可。

{{% alert color="primary" %}}

通过Java了解有关Aspose.WordsforAndroid的免费试用或临时许可证的更多详细信息 [许可和订阅页面](/words/java/licensing/).

{{% /alert %}}

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
* 嵌入式资源
* 作为计量许可证-一种新的许可机制

#### 加载许可证文件

在Aspose.Words对于Android通过Java，许可证可以是 [作为资源嵌入](/words/java/licensing/)，或从流加载:

1. 将许可证文件放在**/mnt/sdcard/**上的任何位置。
1. 创建引用文件的流。
1. 将流（包含许可证文件）传递到`SetLicense`方法中。

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

从嵌入式资源应用许可证。 从Android包文件按名称访问许可证作为资源:

1. 将许可证文件作为资源添加到应用程序的**res/raw**文件夹中。
   许可证文件应在**res/raw**文件夹中可见。
1. 使用以下代码示例从资源访问/加载许可证。

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### 申请计量许可证

Aspose.Words允许开发人员应用计量密钥。 这是一种新的许可机制。 新的许可机制将与现有的许可方法一起使用。 那些希望根据API功能的使用情况计费的客户可以使用计量许可。

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

### 更改许可证文件名

许可证文件名不必是'Aspose.Words。Android.Java.莉克 您可以将其重命名为任何您喜欢的名称，并在调用`License.SetLicense`时使用该名称。

### 异常-找不到许可证文件名

下载购买的许可证时，默认情况下许可证文件名为**Aspose.Words.Android.Java.lic**。 许可证文件是通过您的浏览器下载的，一些浏览器将许可证文件识别为XML并附加一个。名称的xml扩展名。 下载的文件变为**Aspose.Words.Android.Java.lic.XML**。

当Microsoft Windows配置为隐藏已知文件类型的扩展名时（不幸的是，这在大多数Windows安装中是默认的），许可证文件在Windows Explorer中列为**Aspose.Words.Android.Java.lic**。 它看起来像预期的文件名。 如果调用`License.SetLicense`并传递'Aspose.Words。Android.Java.lic'，你会看到和例外，因为没有这样的文件。

要解决此问题，请重命名文件以删除不可见文件。xml扩展。 我们建议您在Microsoft Windows中禁用"隐藏扩展"选项。

## 使用多种Aspose产品

如果您在一个应用程序中使用多个Aspose产品，例如Aspose.Words和`Aspose.Cells`，这里有一些有用的提示。

- 分别为每个Aspose产品设置许可证。
  即使所有组件都有一个许可证文件，例如'Aspose.Total。Android.Java.lic'，您仍然需要为每个Aspose产品单独调用`License.SetLicense`方法。
- 使用完全限定的许可证类名。
  每个Aspose产品在其命名空间中都有一个`License`类。 例如，Aspose.Words有com。阿斯波斯。话。许可证和`Aspose.Cells`有com。阿斯波斯。细胞。许可证类。 使用完全限定类名可以避免对哪个产品应用哪个许可证的任何混淆。
