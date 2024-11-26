---
title: C# 中的测量单位之间的转换
second_title: .NET 格式的 Aspose.Words
articleTitle: 测量单位之间的转换
linktitle: 测量单位之间的转换
description: "Aspose.Words for .NET 可以帮助您了解如何使用 C# 在测量单位之间进行转换，例如英寸到点、点到英寸、像素到点、点到像素。"
type: docs
weight: 20
url: /zh/net/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words API 中提供的大多数表示某种测量值的对象属性（例如宽度或高度、边距和各种距离）都接受以点为单位的值，其中 1 英寸等于 72 点。有时这并不方便，需要将点转换为其他单位。

Aspose.Words 提供了 [ConvertUtil](https://reference.aspose.com/words/zh/net/aspose.words/convertutil/) 类，该类提供了在各种测量单位之间进行转换的辅助函数。它可以转换：

- 英寸、像素和毫米转换为点
- 指向英寸和像素
- 从一种分辨率到另一种分辨率的像素

可以在 96 dpi（每英寸点数）分辨率或指定 dpi 分辨率下执行像素与点之间的转换，反之亦然。

**ConvertUtil** 类在设置各种页面属性时特别有用，因为例如，英寸是比点更常见的测量单位。

以下代码示例显示如何以英寸为单位指定页面属性：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}
