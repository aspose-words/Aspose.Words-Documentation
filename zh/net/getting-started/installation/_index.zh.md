---
title: 安装
second_title: .NET 格式的 Aspose.Words
articleTitle: 安装
linktitle: 安装
description: "使用 Manage NuGet Packages 或 Package Manager Console 等 Visual Studio 工具以及 MSI 安装程序安装 Aspose.Words for .NET。使用 C# 中设置的 Full Trust 权限。"
type: docs
weight: 10
url: /zh/net/installation/
timestamp: 2024-01-27-14-07-04
---

在开始之前，请确保您的机器符合 [系统要求](/words/zh/net/system-requirements/)。

本文介绍如何在计算机上安装 Aspose.Words for .NET。

## 使用 Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget} 安装或更新 .NET 的 Aspose.Words

NuGet 是下载和安装 [.NET 格式的 Aspose.Words](https://www.nuget.org/packages/Aspose.Words/) API 的最简单方法。为此，请按照下列步骤操作：

1. 从菜单中打开 *Microsoft Visual Studio* 和 *Manage NuGet Packages* 以打开包管理器
2.搜索"aspose"或"aspose.words"找到所需的Aspose API<br>
   <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-单词-nuget" style="width:800px"/>
3. 选择所需的Aspose API并单击"安装"

所选的 API 将被下载并在您的项目中引用。

您还可以使用 *Manage NuGet Packages* 将 Aspose.Words for .NET 更新到所需版本。

## 使用 Package Manager Console 安装或更新 Aspose.Words

您还可以使用 *Package Manager Console* 安装或更新 .NET API 的 Aspose.Words。为此，请按照下列步骤操作：

1. 从菜单中打开 *Microsoft Visual Studio* 和 *Package Manager Console* 以打开包管理器控制台<br>
   <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-更新" style="width:600px"/>
2. 输入命令 `Install-Package Aspose.Words` 并按 Enter 将最新的完整版本安装到您的应用程序中<br>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br>
   {{% alert color="primary" %}} 另外，您可以在命令中添加 `-prerelease` 后缀，以指定还应安装最新版本，包括修补程序。{{% /alert %}}
3. 下载后，您将看到确认消息<br>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-已安装" style="width:600px"/><br>
   {{% alert color="primary" %}}如果您不熟悉[提出最终用户许可协议](https://about.aspose.com/legal/eula/)，建议阅读URL.{{% /alert %}}中引用的许可证
4. 现在您可能会发现Aspose.Words已成功添加并在您的应用程序中引用<br>
   <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-words-nuget-参考" style="width:400px"/>

在 *Package Manager Console* 中，您还可以使用 `Update-Package Aspose.Words` 命令检查 Aspose.Words 包的更新并安装它们（如果有）。您还可以添加 `-prerelease` 后缀来更新最新版本。

## 使用安装程序安装 Aspose.Words for .NET

Aspose.Words for .NET 可以通过直接从 [下载部分](https://releases.aspose.com/words/) 下载 MSI 安装程序来安装。

{{% alert color="primary" %}}

您必须登录才能下载安装程序。如果您还没有注册，您可以免费注册。

{{% /alert %}}

要安装 Aspose.Words for .NET，请按照下列步骤操作：

1. 从 [下载部分](https://releases.aspose.com/words/) 下载 `Aspose.Words_`{LatestVersion}.msi
2. 双击下载的文件，启动安装向导，按照安装向导的说明进行操作<br>
   <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-单词-setup-1" style="width:500px"/>
3. 当安装向导完成安装时，所需的文件将在提供的文件夹路径的文件夹中可用<br>
   <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-单词-setup-4" style="width:500px"/>
4. 在 Visual Studio 中打开您的解决方案/项目
5. 在"解决方案资源管理器"中右键单击您的项目，然后添加对已安装程序集的引用
6. Aspose.Words for .NET 安装的程序集将出现在程序集部分下的扩展中 – 只需选择所需的 DLL 组件<br>
   <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7.最后点击确定

## 在共享 Server 环境中运行时的注意事项

建议所有 Aspose .NET 组件以 *Full Trust* 权限集运行。这是因为Aspose .NET组件有时需要访问位于虚拟目录之外的注册表设置和文件，例如读取字体。此外，`Aspose.NET` 组件基于核心 .NET 系统类，其中一些在某些情况下还需要 *Full Trust* 权限才能运行。

托管来自不同公司的多个应用程序的互联网服务提供商大多强制执行"中等信任"安全级别。在 .NET 2.0 的情况下，这样的安全级别可能会施加以下限制，这可能会影响 Aspose.Words 正常执行的能力：

- **RegistryPermission** 不可用。这意味着您无法访问注册表，而渲染文档时需要使用注册表来枚举已安装的字体。
- **FileIOPermission** 受到限制。这意味着您只能访问应用程序虚拟目录层次结构中的文件。这也可能意味着导出期间无法读取字体。

由于上述原因，建议使用 Full Trust 权限运行 Aspose.Words。您可能会发现，某些库功能在执行具有中等信任度的不同任务时可以工作，而有些则不能，例如渲染。这可能与 GDI+ 图像处理调用有关。
