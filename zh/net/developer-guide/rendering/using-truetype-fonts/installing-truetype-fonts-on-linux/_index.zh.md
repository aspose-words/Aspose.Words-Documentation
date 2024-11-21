---
title: 在 C# 中的 Linux 上安装 TrueType 字体
second_title: .NET 格式的 Aspose.Words
articleTitle: 在 Linux 上安装 TrueType 字体
linktitle: 在 Linux 上安装 TrueType 字体
description: "Aspose.Words for .NET 允许使用 C# 以最佳精度在 Linux 机器上渲染使用 Microsoft Word 创建的文档。要实现此目的，请从 Windows 计算机复制字体文件或以 C# 格式将 `TrueType` 字体包安装到 Linux 计算机上。"
type: docs
weight: 20
url: /zh/net/installing-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

大多数情况下，您将使用 Aspose.Words 将 DOC 或 DOCX 文档转换为 PDF 格式。如果您需要在 Linux 机器上执行此操作，本主题将帮助您了解如何确保 Aspose.Words 以最佳准确性呈现文档。

最常见的是，需要转换的 DOC 和 DOCX 文档是在 Windows 或 Mac OS 操作系统上使用 Microsoft Word 创建的。因此，DOC 和 DOCX 文档中使用的大多数字体是"Windows 字体"或"Office 字体"，即随 Microsoft Windows 或 Microsoft Office 安装的字体。这些字体包括 Arial、Calibri、Cambria、Century Gothic、Courier New、Garamond、Tahoma、Verdana、Wingdings 等。

问题在于 Linux 发行版上默认情况下不安装上面列出的 `TrueType` 字体。如果您使用 Cambria 字体格式化的典型 DOCX 文档并尝试将其转换为 Linux 上的 PDF 格式，则 Aspose.Words 将使用不同的字体，因为 Cambria 不可用。因此，与原始 DOCX 文档相比，PDF 文档看起来会有所不同。为了确保 Aspose.Words 转换的文档尽可能接近原始文档，您需要在 Linux 系统上安装"Windows 字体"。

在 Linux 系统上获取 TrueType 字体有两种主要方法：

- 将 .TTF 和 .TTC 文件从 Windows 机器复制到 Linux 机器
- 安装`TrueType`字体包，例如*msttcorefonts*

## 从 Windows 机器复制字体

在 Linux 系统上获取 TrueType 字体的一种简单快捷的方法是将 .TTF 和 .TTC 文件从 Windows 计算机上的 `C:\Windows\Fonts` 目录复制到 Linux 计算机上的某个目录。您无需以任何方式在 Linux 上安装或注册这些字体；您只需使用 Aspose.Words 中的 [FontSettings](https://reference.aspose.com/words/zh/net/aspose.words.fonts/fontsettings/) 类指定字体的位置。

{{% alert color="primary" %}}

在任何 Linux 操作系统上安装 MS 字体之前，请验证是否需要字体许可，并仔细阅读 EULA。

{{% /alert %}}

## 安装 `TrueType` 字体包

有许多包含 Microsoft TrueType 字体的 Linux 软件包，您可以将其下载并安装到 Linux 计算机上。不同 Linux 发行版上的具体步骤可能有所不同。

- 在 Ubuntu 上，使用 Synaptic Package Manager 查找并安装 *ttf-mscorefonts-installer* 软件包。
- 在 openSUSE 上，使用 Yast2 → Software Management 查找并安装 *fetchmsttfonts* 包。
- 使用 OFL 许可的 Liberation 字体作为标准 Windows 字体的替代字体：Arial、Times New Roman 和 Courier New。
- 对于适合其他 Linux 发行版的字体包，请在 Internet 上搜索可用文档。

安装该软件包后，Aspose.Words 将在系统上的文件夹中找到这些字体，并在处理文档时使用它们。

## 也可以看看

- [解放字体](https://github.com/liberationfonts) 作为标准 Windows 字体的替代品
