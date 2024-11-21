---
title: 使用 C++ 在 Linux 上安装 TrueType 字体
second_title: Aspose.Words对于C++
articleTitle: 在Linux上安装TrueType字体
linktitle: 在Linux上安装TrueType字体
description: "Aspose.Words对于C++ 允许在Linux机器上以最佳精度呈现使用Microsoft Word创建的文档。 要完成此操作，请从Windows计算机复制字体文件或将`TrueType`字体包安装到Linux计算机上。"
type: docs
weight: 20
url: /zh/cpp/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

大多数情况下，您将使用Aspose.Words将DOC或DOCX文档转换为PDF格式。 如果您需要在Linux计算机上执行此操作，本主题将帮助您学习如何确保Aspose.Words以最佳精度呈现文档。

大多数情况下，需要转换的DOC和DOCX文档是在Windows或MacOS操作系统上使用Microsoft Word创建的。 因此，DOC和DOCX文档中使用的大多数字体都是"Windows字体"或"Office字体"，即与Microsoft Windows或Microsoft Office一起安装的字体。 这些字体包括Arial，Calibri，Cambria，Century Gothic，Courier New，Garamond，Tahoma，Verdana，Wingdings等等。

问题是上面列出的`TrueType`字体默认情况下不会安装在Linux发行版上。 如果您采用使用Cambria字体格式化的典型DOCX文档，并尝试将其转换为Linux上的PDF格式，Aspose.Words将使用不同的字体，因为Cambria不可用。 因此，与原始DOCX文档相比，PDF文档看起来会有所不同。 为了确保由Aspose.Words转换的文档看起来尽可能接近原始文档，您需要在Linux系统上安装"Windows字体"。

在Linux系统上获取TrueType字体有两种主要方法:

- 收到。TTF和。TTC文件从Windows机器到您的Linux机器
- 安装`TrueType`字体包，如*msttcorefonts*

## 从Windows计算机复制字体

在Linux系统上获取TrueType字体的一种简单快捷的方法是复制。TTF和。TTC文件从Windows机器上的C:\Windows\Fonts目录到Linux机器上的某个目录。 您不需要以任何方式在Linux上安装或注册这些字体;您只需要使用Aspose.Words中的[FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings)类指定字体的位置。

{{% alert color="primary" %}}

验证是否需要字体许可，并在任何Linux操作系统上安装MS字体之前仔细阅读EULA。

{{% /alert %}}

## 安装`TrueType`字体包

有许多包含MicrosoftTrueType字体的Linux包，您可以下载并安装到Linux计算机上。 确切的步骤在各种Linux分布上可能不同。

- 在Ubuntu上，使用Synaptic软件包管理器查找并安装*ttf-mscorefonts-installer*软件包。
- 在openSUSE上，使用Yast2→软件管理查找并安装*fetchmsttfonts*包。
- 使用OFL下许可的Liberation字体，作为标准Windows字体的替代品：Arial，Times New Roman和Courier New。
- 对于适用于其他Linux发行版的字体包，请在internet上搜索可用的文档。

安装软件包后，Aspose.Words将在系统上的文件夹中找到这些字体，并在处理文档时使用它们。

## 请参阅

- [解放字体](https://github.com/liberationfonts) 作为标准Windows字体的替代品
