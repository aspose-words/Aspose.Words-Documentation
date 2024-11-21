---
title: 安装
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 安装
linktitle: 安装
description: "使用 Manage NuGet Packages 或 Package Manager Console 等 Visual Studio 工具以及 MSI 安装程序安装 Aspose.Words for Python。使用 Full Trust 权限集。"
type: docs
weight: 10
url: /zh/python-net/installation/
timestamp: 2024-01-27-14-07-04
---

在开始之前，请确保您的机器符合 [系统要求](/words/zh/python-net/system-requirements/)。

本文介绍如何在计算机上安装 Aspose.Words for Python via .NET。

`pip` 是下载和安装 [Python via .NET 格式的 Aspose.Words](https://pypi.org/project/aspose-words/) API 的最简单方法。为此，请运行以下命令：

`pip install aspose-words`

安装模块后，您可以在 Python 代码中使用它：

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
