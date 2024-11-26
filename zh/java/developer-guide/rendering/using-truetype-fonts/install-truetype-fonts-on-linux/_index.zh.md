---
title: 安装真 打开字体 Linux 输入 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 安装真 打开字体 Linux
linktitle: 安装真 打开字体 Linux
description: "Aspose.Words (单位:千美元) Java 允许使用 Microsoft Word 时间: Linux 机器的准确度最高"
type: docs
weight: 20
url: /zh/java/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

通常你会使用 Aspose.Words 将 DOC 或 DOCX 文档转换为 PDF 格式。 如果你需要这样做 在一个 Linux 机器,这个话题将帮助您学习如何确保 Aspose.Words 正在使您的文档尽可能准确。

最经常的是,需要转换的DOC和DOCX文档是使用 Microsoft Word, 时间: Windows 或Mac OS操作系统. 因此,DOC和DOCX文档中使用的大多数字体都是".Windows 字体"或"Office字体",即安装的字体 Microsoft Windows 或 Microsoft 办公室 这些字体包括Arial,Calibri,Cambria,Century Gothic,Courier New,Garamond,Tahoma,Verdana,Wingdings等许多字体.

问题是 `TrueType` 上面列出的字体未默认安装 Linux 分发。 如果您选择了典型的 DOCX 文档, 其格式化为 Cambria 字体, 并尝试将其转换为 PDF 格式 Linux, (中文). Aspose.Words 将使用不同的字体,因为没有Cambria。 因此,PDF文档与原DOCX文档相比看起来会有所不同. 以确保文档由 Aspose.Words 显示尽可能接近原件,需要安装 "Windows 字体在您的上边 Linux 系统。

获取 TrueType 字体的两种主要方法 Linux 系统:

- 复制. TTF和. 来自 a 的 TTC 文件 Windows 机器进入您的 Linux 机器
- 安装一个 `TrueType` 字体软件包,例如 *msttcorefonts*

## 从 a 复制字体 Windows 机器

一个简单快捷的方法,将 TrueType 字体放到一个 Linux 系统是复制。 专题信托基金和. 来自 STC 文件 `C:\Windows\Fonts` 在一个目录 Windows 机器到您的目录 Linux 机器 机器 电脑 您不需要在 Linux ; 您只需要使用 [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) 类别 Aspose.Words。 。 。 。

{{% alert color="primary" %}}

验证是否需要字体许可,并在安装 MS 字体之前仔细阅读 EULA Linux 操作系统。

{{% /alert %}}

## 安装 a `TrueType` 字体软件包

有几个 Linux 软件包,包含 Microsoft TrueType 字体, 您可以下载并安装到您的 Linux 机器 机器 电脑 确切的步骤可能不同 在各种 Linux 分发。

- 打开 Ubuntu, 使用突触包管理器查找并安装 *ttf-mscorefonts-installer* 包.
- 在 OpenSUSE 上,使用 Yast2 → 软件管理来查找和安装 *fetchmsttfonts* 软件包。
- 使用 OFL 许可的解放字体,作为标准的替代办法 Windows 字体:Arial、Times New Roman和Courier New。
- 适用于其他字体包 Linux 在互联网上搜索现有文件。

在安装软件包后, Aspose.Words 将在您的系统中的文件夹中找到这些字体,并在处理文档时使用。

## 另见

- 怎么样? [解放字体](https://github.com/liberationfonts) 替代标准 Windows 字体
