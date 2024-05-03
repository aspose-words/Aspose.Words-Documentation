---
title: FIPS 模式
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: FIPS 模式
linktitle: FIPS 模式
description: "Aspose.Words (单位:千美元) Java 在处理文档时使用数个密码学和散列算法来遵守FIPS标准."
type: docs
weight: 80
url: /zh/java/fips-mode/
---

Aspose.Words 处理文档时使用数个密码学和散列算法,这篇文章描述了它与FIPS标准的关系.

联邦信息处理标准(FIPS)是美国联邦政府制定的一套公开发布的标准,用于确定各种目的的要求,例如确保计算机安全和互操作性.

## 救世主的奔驰

Aspose.Words (单位:千美元) Java 和 Aspose.Words (单位:千美元) Android 使用 Bouncy 城堡 FIPS JAR 用于加密、解密和签署文件。 那个 JAR 已经设计和实施,以满足FIPS 140-2,一级要求。

FIPS 140-2是美国政府用于批准密码模块的计算机安全标准. 这一标准规定了加密模块将满足的安全要求,并提供了高度的安全,旨在涵盖广泛的潜在应用和环境。 关于FIPS 140-2的更多详情,请参见: [(原始内容存档于2019-09-31) (美国英语. NIST134号](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003)。 。 。 。

Aspose.Words (单位:千美元) .NET 在不支持FIPS的情况下使用一般的邦西城堡版本.

## FIPS 模式激活

从18.10版本开始 Aspose.Words 允许以两种模式工作:通用和FIPS。

默认 Aspose.Words 在通用模式下工作,因此在这种情况下对算法和密钥的使用没有限制.

你可以调换 Aspose.Words 使用下列方法从一般模式进入FIPS模式:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

出于安全原因,您无法在运行时将模式更改为通用 。

还注意到, Aspose.Words 无法自动识别您的操作系统是否为 FIPS 模式, 因此您必须切换 Aspose.Words 指定为 FIPS 模式。

使用以下方法确定 Aspose.Words (单位:千美元) Java 在 FIPS 模式中:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

当 FIPS 模式启动时, Aspore Words 将阻止您使用一些密码学算法和未批准长度的密钥.

例如,在FIPS模式活动时试图打开一个OTT加密文档时,可能会看到以下例外:

{{% alert color="primary" %}}

未经核准的安保行动 例外: 尝试打开使用 Blowfish 算法的 ODT 文件 。 这个算法不在FIPS批准的算法列表中.

{{% /alert %}}

因为Blowfish算法不在FIPS批准的算法列表中。

如果使用长度不当的密钥,也可能出现类似的例外:

未经核准的安保行动 例外: 在 FIPS 模式下,您不能使用大小为 1024 的 RSA 密钥 。

关于已核准的算法清单的更多详情,见: [弹跳 城堡用户指南](https://downloads.bouncycastle.org/fips-java/BC-FJA-UserGuide-1.0.1.pdf), "密码算法(对称)"。


