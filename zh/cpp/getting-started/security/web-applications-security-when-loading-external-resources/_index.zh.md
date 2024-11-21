---
title: 加载资源时的Web应用程序安全性
second_title: Aspose.Words为C++
articleTitle: 加载外部资源时的Web应用程序安全性
linktitle: 加载外部资源时的Web应用程序安全性
type: docs
description: "加载远程资源，这可能是一个安全风险的原因。 查看C++中的常见安全问题及其解决方案。"
weight: 50
url: /zh/cpp/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-30-16-22-34
---

默认情况下, Aspose.Words为C++ 可以在导入文档或使用DocumentBuilder插入图像时加载图像、CSS样式或外部HTML文档等远程资源。 此行为允许您详细处理文档，但如果库是web应用程序的一部分，则可能会导致某些安全风险。

在本文中，我们将介绍加载外部资源时可能出现的常见安全问题，并提供有关如何避免此类问题的建议。

{{% alert color="primary" %}}

Aspose.Words不起防病毒软件的作用。 因此，它不提供有关文档中存在恶意组件的信息。 为确保您的数据安全，请自行检查从外部来源获得的文档。 反过来，Aspose.Words提供了有关如何处理加载外部资源时可能出现的问题的建议。

{{% /alert %}}

## 安全问题

加载外部资源时存在许多典型的安全问题。

### 通过链接图像进行凭证披露

在基于Windows的主机上，默认情况下将处理包含对使用UNC路径（如*'\\example.com\a\b*’）的资源的引用的文档。 在域环境中，这将导致主机以哈希格式将其域凭据发送到指定的服务器。

如果攻击者能够说服用户或服务器处理具有指向他们控制的主机的此类资源链接的文档，则攻击者将以NTLM哈希格式接收用户或服务帐户凭据。 这样的数据可以在经典的哈希传递攻击中重复使用，允许攻击者以受害用户或服务帐户的身份访问任何资源。

如果有问题的帐户使用弱或可猜测的密码，攻击者可以另外执行密码破解攻击以恢复帐户密码以供进一步恶意使用。

### 通过链接图像进行本地图像披露

与前面的情况类似，处理引用本地图像文件的文档将导致该文件包含在最终文档中。 这可能导致敏感信息泄露。

### 拒绝服务

攻击者可以上传一个引用或包含超大图像的文档–即所谓的"解压缩炸弹"。 在处理这些图像时，库将消耗大量内存和CPU时间。

### 通过链接内容的服务器端请求伪造

攻击者可以创建一系列文档，其中包含指向内部IP地址和端口的常见组合的嵌入链接，然后使用Aspose.Words库将它们提交到web服务以处理这些文档。

根据服务用于处理文档的时间长度，攻击者可以确定给定的IP/端口组合是否被防火墙过滤:

- 更长的处理时间表示服务器发送的TCPSYN数据包被防火墙丢弃
- 快速处理时间表示已成功连接

## 安全问题的解决方案

要解决上述问题并提高web应用程序的安全性，可以使用[IResourceLoadingCallback](https://reference.aspose.com/words/cpp/aspose.words.loading/iresourceloadingcallback/)控制或禁用外部资源的加载。

下面的代码示例演示如何禁用外部图像加载:

**C++**
{{< highlight cpp >}}
class DisableExternalImagesHandler : public IResourceLoadingCallback
{
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		// Skip external images loading.
		return args->get_ResourceType() == ResourceType::Image
			? ResourceLoadingAction::Skip
			: ResourceLoadingAction::Default;
		}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableExternalImagesHandler = System::MakeObject<LoadOptions>();

disableExternalImagesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableExternalImagesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableExternalImagesHandler);
}
{{< /highlight >}}

下面的代码示例演示如何禁用远程资源:

**C++**
{{< highlight cpp >}}
class DisableRemoteResourcesHandler : public IResourceLoadingCallback
{
	static bool IsLocalResource(const System::String& originalUri)
	{
		// CodePorting.CsToCpp.Native.API can handle only absolute uri
		auto uri = System::MakeObject<System::Uri>(originalUri);
		if (uri->get_IsAbsoluteUri())
		{
			return uri->get_Scheme().Equals(u"file", System::StringComparison::OrdinalIgnoreCase);
		}

		return false;
	}
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		return IsLocalResource(args->get_OriginalUri())
			? ResourceLoadingAction::Default
			: ResourceLoadingAction::Skip;
	}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableRemoteResourcesHandler = System::MakeObject<LoadOptions>();

disableRemoteResourcesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableRemoteResourcesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableRemoteResourcesHandler);
}
{{< /highlight >}}

{{% alert color="primary" %}}

本文基于咨询公司Independent Security Evaluators [报告书](ise-aspose-report.pdf).

{{% /alert %}}
