---
title: FIPS模式
second_title: Aspose.Words为Java
articleTitle: FIPS模式
linktitle: FIPS模式
description: "Aspose.WordsforJava在处理文档时使用多种加密和哈希算法以符合FIPS标准。"
type: docs
weight: 80
url: /zh/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Words在处理文档时使用了几种加密和哈希算法，本文描述了它与FIPS标准的关系。

联邦信息处理标准（FIPS）是由美国联邦政府制定的一组公开发布的标准，旨在建立各种目的的要求，例如确保计算机安全性和互操作性。

## BouncyCastle救援

Aspose.Words用于Java和Aspose.Words用于Android使用充气城堡FIPSJAR进行加密，解密和签名文档。 JAR的设计和实施是为了满足FIPS140-2,1级要求。

FIPS140-2是用于批准加密模块的美国政府计算机安全标准。 该标准规定了加密模块将满足的安全要求，并提供了高水平的安全性，旨在复盖广泛的潜在应用和环境。 有关FIPS140-2的更多详细信息，请参阅 [NIST出版物](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Wordsfor.NET使用一般的充气城堡版本，不支持FIPS。

## FIPS模式激活

从版本开始18.10Aspose.Words允许在两种模式下工作：常规和FIPS。

默认情况下Aspose.Words在常规模式下工作，因此在这种情况下对算法和密钥的使用没有限制。

您可以使用以下方法将Aspose.Words从常规模式切换到FIPS模式:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

出于安全原因，您不能在运行时将模式更改回常规模式。

另请注意，Aspose.Words无法自动识别您的操作系统是否处于FIPS模式，因此您必须显式地将Aspose.Words切换到FIPS模式。

使用以下方法确保Java的Aspose.Words处于FIPS模式:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

当FIPS模式开启时，Aspose Words将阻止您使用某些加密算法和具有非批准长度的密钥。

例如，当尝试在FIPS模式处于活动状态时打开ODT加密文档时，您可能会看到以下异常:

{{% alert color="primary" %}}

UnapprovedSecurityOperationException：尝试打开使用Blowfish算法的ODT文件。 此算法不在FIPS批准的算法列表中。

{{% /alert %}}

发生这种情况是因为Blowfish算法不在FIPS批准的算法列表中。

如果使用不适当长度的键，可能会出现类似的异常:

UnapprovedSecurityOperationException：您不能在FIPS模式下为RSA使用大小为1024的密钥。

有关批准算法列表的更多详细信息，请参阅 [BouncyCastle用户指南](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf)，"密码算法（对称）"。


