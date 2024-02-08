---
title: 在 C# 中启用 OpenType 功能
second_title: .NET 格式的 Aspose.Words
articleTitle: 启用 OpenType 功能
linktitle: 启用 OpenType 功能
description: "使用 C# 的高级排版功能。"
type: docs
weight: 25
url: /zh/net/enable-opentype-features/
---

OpenType 是一种字体格式，旨在为国际语言和书写系统提供比 PostScript 和 TrueType 更好的支持。 OpenType 的布局功能通常称为 OpenType 功能。 Aspose.Words.Shaping.HarfBuzz 包使用 HarfBuzz 文本整形引擎为 Aspose.Words 中的 OpenType 功能提供支持。

Aspose.Words 能够使用外部提供的文本整形器对象。文本整形器表示字体并计算文本的整形信息。一个文档通常引用多种字体，因此文本整形器工厂是必要的。此包包含 Aspose.Words.Layout.LayoutOptions.TextShaperFactory 属性使用的文本整形器工厂的实现。

{{% alert color="primary" %}}

仅在导出为 PDF 或 XPS 格式时才执行文本整形。

{{% /alert %}}

在典型的应用程序中，文本整形器工厂的单个实例在所有文档实例之间共享。每当创建文本整形器时，都会访问字体文件。解析字体文件是一项昂贵的操作，因此建议使用缓存。 Aspose.Words 实现 BasicTextShaperCache 类，该类包装文本整形器工厂实现并缓存包装工厂返回的文本整形器实例。

以下代码示例向您展示如何打开对 OpenType 功能的支持。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}
