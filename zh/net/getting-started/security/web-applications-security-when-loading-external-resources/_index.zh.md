---
title: 加载资源时的 Web 应用程序安全性
second_title: .NET 格式的 Aspose.Words
articleTitle: 加载外部资源时的 Web 应用程序安全性
linktitle: 加载外部资源时的 Web 应用程序安全性
type: docs
description: "加载远程资源，这可能是安全风险的一个原因。使用 C# 查看常见安全问题及其解决方案。"
weight: 100
url: /zh/net/web-applications-security-when-loading-external-resources/
---

默认情况下，当使用 DocumentBuilder 导入文档或插入图像时，Aspose.Words for .NET 可以加载远程资源，例如图像、CSS 样式或外部 HTML 文档。此行为允许您详细处理文档，但如果该库是 Web 应用程序的一部分，则可能会导致一些安全风险。

在本文中，我们将了解加载外部资源时可能出现的常见安全问题，并提供有关如何避免此类问题的建议。

{{% alert color="primary" %}}

Aspose.Words 不具有防病毒软件的功能。因此，它不提供有关文档中是否存在恶意组件的信息。为了确保您的数据安全，请自行检查从外部来源获取的文档。反过来，Aspose.Words 提供了有关如何处理加载外部资源时可能出现的问题的建议。

{{% /alert %}}

## 安全问题

加载外部资源时存在许多典型的安全问题。

### 通过链接图像泄露凭证

在基于 Windows 的主机上，默认情况下将处理包含对使用 UNC 路径（例如 *'\\example.com\a\b*'）的资源的引用的文档。在域环境中，这将导致主机以散列格式将其域凭据发送到指定的服务器。

如果攻击者能够说服用户或服务器处理具有指向他们控制的主机的资源链接的文档，则攻击者将收到 NTLM 哈希格式的用户或服务帐户凭据。然后，此类数据可以在经典的哈希传递攻击中重复使用，从而允许攻击者以受害者用户或服务帐户的身份获得对任何资源的访问权限。

如果相关帐户使用弱密码或可猜测的密码，攻击者还可以执行密码破解攻击来恢复帐户密码以供进一步恶意使用。

### 通过链接图像公开本地图像

与前面的情况类似，引用本地图像文件处理文档将导致该文件包含在最终文档中。这可能会导致敏感信息泄露。

### 拒绝服务

攻击者可以上传引用或包含极大图像的文档，即所谓的"减压炸弹"。在处理这些图像时，该库将消耗大量的内存和CPU时间。

### 通过链接内容伪造 Server 端请求

攻击者可以创建一系列包含内部 IP 地址和端口常见组合的嵌入式链接的文档，然后将它们提交到使用 Aspose.Words 库的 Web 服务来处理这些文档。

根据服务处理文档的时间长度，攻击者可以确定给定的 IP/端口组合是否被防火墙过滤：

- 较长的处理时间表明服务器发送的 TCP SYN 数据包被防火墙丢弃
- 快速处理时间表明已成功连接

## 安全问题解决方案

为了解决上述问题，提高Web应用的安全性，您可以使用[IResourceLoadingCallback](https://reference.aspose.com/words/zh/net/aspose.words.loading/iresourceloadingcallback/)来控制或禁用外部资源的加载。

以下代码示例显示如何禁用外部图像加载：

**.NET**
{{< highlight csharp >}}

public class DisableExternalImagesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        // Skip external images loading.
        return (args.ResourceType == ResourceType.Image)
            ? ResourceLoadingAction.Skip
            : ResourceLoadingAction.Default;
    }
}
...
const string documentFilename = "input.docx";
var disableExternalImagesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableExternalImagesHandler()
};
var doc = new Document(documentFilename, disableExternalImagesOptions);

{{< /highlight >}}

以下代码示例显示如何禁用远程资源：

**.NET**
{{< highlight csharp >}}

private class DisableRemoteResourcesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        return IsLocalResource(args.OriginalUri)
            ? ResourceLoadingAction.Default
            : ResourceLoadingAction.Skip;
    }

    private static bool IsLocalResource(string fileName)
    {
        DirectoryInfo dirInfo;
        try
        {
            var dirName = Path.GetDirectoryName(fileName);
            if (string.IsNullOrEmpty(dirName))
                return false;
            dirInfo = new DirectoryInfo(dirName);
        }
        catch
        {
            return false;
        }
    
        foreach (DriveInfo d in DriveInfo.GetDrives())
        {
            if (string.Compare(dirInfo.Root.FullName, d.Name, StringComparison.OrdinalIgnoreCase) == 0)
                return d.DriveType != DriveType.Network;
        }
    
        return false;
    }
}
...
var disableRemoteResourcesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableRemoteResourcesHandler()
};
var doc = new Document(documentFilename, disableRemoteResourcesOptions);

{{< /highlight >}}

{{% alert color="primary" %}}

本文基于咨询公司 Independent Security Evaluators [报告](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf)。

{{% /alert %}}
