---
title: 启用 OpenType 特性于 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 启用 OpenType 特性
linktitle: 启用 OpenType 特性
description: "高级打字功能 Aspose.Words (单位:千美元) Java。 。 。 。"
type: docs
weight: 25
url: /zh/java/enable-opentype-features/
---



OpenType是一种字体格式,与PostScript和TrueType相比,采用它为国际语言和写作系统提供更好的支持. OpenType的布局特征通常被称为OpenType特征. Aspose.Words. 发抖.HarfBuzz 软件包为 OpenType 特性提供支持 Aspose.Words 使用 `HarfBuzz` 文本塑造引擎。

Aspose.Words 能够使用外部提供的文本形状器对象。 文本形状器代表字体,并计算文本的塑造信息。 文档通常指多个字体,因此需要文本形状器厂。 这套软件包中包括一个文本造型器工厂的安装,用于: Aspose.Words. Layout. Layout options. TextShaper Factory 属性. 星洲网.

{{% alert color="primary" %}}

文本形状仅在导出到 PDF 或 XPS 格式。

{{% /alert %}}

在典型的应用中,文本形状器厂的单一实例在所有文件实例中共享。 当创建文本形状器时,可以访问字体文件。 分析字体文件是一个昂贵的操作, 因此推荐缓存 。 Aspose.Words 执行 基本文本交换器 缓存类,用于包装文本形状器工厂执行,并缓存被包装工厂返回的文本形状器实例.

以下代码示例显示您如何打开 OpenType 特性的支持.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
