---
title: 许可和订阅
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 许可和订阅
linktitle: 许可和订阅
description: "Aspose.Words (单位:千美元) Java 提供不同的购买计划或提供免费审判和30天临时许可证,以便使用许可证和订阅政策进行评价。"
type: docs
weight: 60
url: /zh/java/licensing/
timestamp: 2024-01-31-14-23-37
---

有时,为了更好地研究系统,你想越快潜入代码. 为了让事情变得简单 Aspose.Words 提供不同的购买计划或提供免费审判和30天的临时评估许可证。

{{% alert color="primary" %}}

请注意,在如何评估、适当许可和购买我们的产品方面,有若干一般性政策和做法。 你可以找到他们 [采购政策和财务问题](https://purchase.aspose.com/policies/) 节。

{{% /alert %}}

## 免费审判或临时许可证

Aspose.Words 是开发者在购买前可以尝试的不可思议的软件。 您可以轻松下载/安装 Aspose.Words (单位:千美元) Java 和 Aspose.Words (单位:千美元) Android 通过 Java [从 Maven](https://releases.aspose.com/words/java/) 用于评价。

### 自由审判

评测版与购买版相同 - 当您添加几行代码以应用许可时, 试测版即可获得许可 。

审判版 Aspose.Words (单位:千美元) Java 和 Aspose.Words (单位:千美元) Android 通过 Java 在没有规定许可证的情况下,可提供完整的产品功能,但在文件顶端加载和保存时插入一个评价水印,并将文件的最大尺寸限制在几百段。

### 临时许可证

如果你想测试 Aspose.Words (单位:千美元) Java 和 Aspose.Words (单位:千美元) Android 通过 Java 您也可申请30天的临时许可。 详细情况见 [获取临时许可证](https://purchase.aspose.com/temporary-license/) 页面。

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
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 包含 * 的文件夹Aspose.Words JAR* 文件
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 嵌入式资源 JAR 叫做 *Aspose.Words JAR* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 As a metered license - - 一个新的许可机制

设定许可证的最简单方式往往是将许可证文件与 * 放在同一个文件夹中。Aspose.Words JAR* 并指定没有路径的文件名。

{{% alert color="primary" %}}

使用 [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) 用于发放组件许可证的方法。

通话 **SetLicense** 多次并不有害,它只是废物处理器时间。

通话 [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) 多重时间也不有害,而只是废物处理器时间,可能不适当地积累消耗。

{{% /alert %}}

#### 使用文件或流式对象应用许可证

{{% alert color="primary" %}}

调用 **SetLicense** 使用前在启动代码中 Aspose.Words 课程。

{{% /alert %}}

开发类库时,可以拨打 **SetLicense** 从您使用的类的静态构造器 Aspose.Words。 。 。 静态构造器将在即时切换您的课前执行,以确保 Aspose.Words 许可证安装正确 。

##### 从文件中装入许可证

使用 [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String) 在嵌入式资源或文件夹中找到包含 JARs) 您的应用程序供进一步使用.

以下代码示例显示如何从文件夹中初始化许可证:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### 装入许可证 `Stream` 对象

以下代码示例显示如何从流中初始化许可 。 [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) 方法:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### 将许可证文件包含为嵌入式资源

用您的应用程序包裹许可证并确保它不会丢失的简单方法就是将它列为嵌入式资源. 您可以简单地将 LIC 文件复制到您的项目的资源文件夹 。

重建工程应当将.lic文件嵌入应用程序.jar文件. 在此之后,您可使用下列代码申请许可证:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### 应用测量许可证

Aspose.Words 允许开发者应用一个 MIM 密钥。 这是一个新的许可机制。

新的许可证发放机制将与现有的许可证发放方法一起使用。 那些想通过使用 API 特性可以使用"计量许可证"。

在完成所有获取此类许可证的必要步骤后,您将收到钥匙,而不是许可证文件。 此密钥可以使用 [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) 为此专门开设的课程。

不要打电话 **SetMeteredKey** 经常使用这种方法,使这种许可证发放方法能够适当地积累消费并向我们报告。 即兴演奏 Aspose.Words 库,调用 **SetMeteredKey** 一次,然后离开库 即时并重新使用。

以下代码示例显示如何设置公钥和私钥:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

请注意,您必须有一个稳定的互联网连接,以便正确使用Metered许可证,因为Metered机制要求与我们的服务持续互动,以便进行正确的计算。

详情请参考 [经计量的许可证发放问题](https://purchase.aspose.com/faqs/licensing/metered/) 节。

{{% /alert %}}

### 更改许可证文件名称

许可证文件名不必"Aspose.Words. ". " 您可以在申请中设定许可证时重新命名并使用此名称 。

### "找不到许可证文件名" 例外

当您购买和下载许可证时, Aspose 网站将许可证文件命名为 * 。Aspose.Words.. .. .. 您使用您的浏览器下载许可证文件 。 在这种情况下,一些浏览器承认许可证文件为XML,并将.xml扩展附加在其中,所以你的计算机上的完整文件名称变为*".Aspose.Words.lic.XML"* (中文(简体) ).

何时 Microsoft Windows 被配置为隐藏已知文件类型的扩展名( 很不幸, 这是大多数文件的默认名) Windows , 许可证文件将显示为 * "Aspose.Words。 。 。 。 低收入国家"* Windows 探险家 你可能会认为这是真正的文件名和呼叫 **SetLicense** 传过*Aspose.Words.. ..

要解决问题,请重新命名文件以删除隐形的.xml扩展名. 我们也建议您禁用" 隐藏扩展" 选项 Microsoft Windows。 。 。 。

## 使用多种配置产品

如果您在应用程序中使用了多个Apose产品,例如 Aspose.Words 和 `Aspose.Cells`, 这里有一些有用的提示:

* 将每种财产的许可证分开。 即使所有组件都有一个单一的许可文件,例如"Aspose.total.lic",你仍然需要拨打 **SetLicense** 用于您在应用程序中使用的每个Apose产品。
* 使用完整的合格许可证类别名称。 每个 假设产品有一个 `License` 类在自己的命名空间。 举例来说, Aspose.Words 已经 **(原始内容存档于2018-09-26). com.aspose.words.License** 和 `Aspose.Cells` 拥有 com.aspose. 细胞。 执照课 使用完全合格的类名,您可以避免混淆许可适用于何种产品。
