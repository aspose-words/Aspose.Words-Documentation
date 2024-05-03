---
title: 网络应用程序安全 装入资源时
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 装入外部资源时网络应用程序安全
linktitle: 装入外部资源时网络应用程序安全
type: docs
description: "装入远程资源,这可能是安全风险的原因. 研究共同安全问题及其解决办法 Java。 。 。 。"
weight: 120
url: /zh/java/web-applications-security-when-loading-external-resources/
---

默认 Aspose.Words (单位:千美元) Java 可以在导入文档或使用文档构建器插入图像时装入远程资源,如图像,CSS样式,或外部 HTML 文档. 这种行为允许您对文档进行详细处理,但如果库是网络应用程序的一部分,则可能是一个安全风险的原因.

在本条中,我们审视在装载外部资源时可能出现的共同安全问题,并就如何避免这些问题提出建议。

{{% alert color="primary" %}}

Aspose.Words 不作为抗病毒软件。 因此,它没有提供文件中存在恶意组件的信息. 为了保证数据的安全,请亲自检查从外部来源获得的文件。 反过来, Aspose.Words 就如何处理在装入外部资源时可能出现的问题提出建议。

{{% /alert %}}

## 安全问题

装入外部资源时存在一些典型的安全问题.

### 信誉披露 通过链接图像

打开 Windows- 基于主机, 包含使用 \\ example.com\a\ b\\ 等 UNC 路径的资源引用的文档将默认处理 。 在域环境中,这将导致主机以散列格式将其域名证书发送给指定的服务器.

如果攻击者能够说服用户或服务器处理一个带有这种资源链接的文档,指向他们控制的宿主,攻击者将会收到用户或服务账户的NTLM散列格式的证书. 这样,这些数据就可以在典型的"通过"攻击中重新使用,使攻击者能够作为受害者的用户或服务账户获得任何资源。

如果相关账户使用微弱或可猜测的密码,攻击者可以额外进行密码破解攻击,以收回账户密码以进一步恶意使用.

### 本地图像披露 通过链接图像

与前一种情况类似,处理一个参考本地图像文件的文档将导致该文件被纳入最后文件。 这可能导致敏感的信息披露。

### 拒绝服务

一个攻击者可以上传一个文件,要么引用,要么包含极其庞大的图像--即所谓的"减压炸弹". 在处理这些图像时,库会消耗大量的内存和CPU时间.

### Server-Side Request Forgery Via 链接内容

一个攻击者可以创建一系列包含内部IP地址和端口常见组合的嵌入式链接的文档,然后将其提交到一个使用此功能的网络服务中. Aspose.Words 用于处理文档的库。

根据处理文档服务使用的时间长度,攻击者可以确定特定IP/Port组合是否被防火墙过滤:

- 较长的处理时间表明服务器发送的TCP SYN包被防火墙丢弃
- 快速处理时间表明已成功连接

## 安全问题的解决办法

为了解决上述问题和改善网络应用程序的安全,您可以使用 [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/)。 。 。 。

以下代码示例显示如何禁用外部图像加载:

**Java**
{{< highlight csharp >}}
public void loadDocument(String documentFilename) throws Exception
{
	LoadOptions disableExternalImagesOptions = new LoadOptions();
	disableExternalImagesOptions.setResourceLoadingCallback(new DisableExternalImagesHandler());

	Document doc = new Document(documentFilename, disableExternalImagesOptions);
}

public static class DisableExternalImagesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args)
	{
		// Skip external images loading.
		return (args.getResourceType() == ResourceType.IMAGE)
			? ResourceLoadingAction.SKIP
			: ResourceLoadingAction.DEFAULT;
	}
}
{{< /highlight >}}

以下代码示例显示如何禁用远程资源:

**Java**
{{< highlight csharp >}}
public void loadDocument2(String documentFilename) throws Exception
{
	LoadOptions disableRemoteResourcesOptions = new LoadOptions();
	disableRemoteResourcesOptions.setResourceLoadingCallback(new DisableRemoteResourcesHandler());
	
	Document doc = new Document(documentFilename, disableRemoteResourcesOptions);
}	

private static class DisableRemoteResourcesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args) throws Exception
	{
		return isLocalResource(args.getOriginalUri())
			? ResourceLoadingAction.DEFAULT
			: ResourceLoadingAction.SKIP;
	}

	// Simplified code.
	private static boolean isLocalResource(String fileName) throws Exception
	{
		String protocol = null;
	
		URI uri = new URI(fileName);
		if (uri.isAbsolute())
		{
			protocol = uri.getScheme();
		}
		else
		{
			URL url = new URL(fileName);
			protocol = url.getProtocol();
		}
	
		return "file".equalsIgnoreCase(protocol);
	}
}
{{< /highlight >}}

{{% alert color="primary" %}}

本文以咨询公司独立安全评估师为基础 [报告](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf)。 。 。 。

{{% /alert %}}

