---
title: 在Java中启用OpenType功能
second_title: Aspose.Words为Java
articleTitle: 启用OpenType功能
linktitle: 启用OpenType功能
description: "Aspose.Words中的Java高级排版功能。"
type: docs
weight: 25
url: /zh/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType是一种字体格式，与PostScript和TrueType相比，它为国际语言和书写系统提供了更好的支持。 OpenType的布局特征通常称为OpenType特征。 Aspose.Words.塑造。HarfBuzz包使用`HarfBuzz`文本整形引擎为Aspose.Words中的OpenType要素提供支持。

Aspose.Words能够使用外部提供的文本整形器对象。 文本整形器表示字体并计算文本的整形信息。 一个文档通常是指多个字体，因此一个文本整形工厂是必要的。 该软件包包含Aspose.Words使用的文本整形器工厂的实现。布局。LayoutOptions.TextShaperFactory属性。

{{% alert color="primary" %}}

仅在导出为PDF或XPS格式时才执行文本整形。

{{% /alert %}}

在典型的应用程序中，文本整形器工厂的单个实例在所有文档实例之间共享。 每当创建文本整形器时，都会访问字体文件。 解析字体文件是一项昂贵的操作，因此建议使用缓存。 Aspose.Words实现BasicTextShaperCache类，该类包装文本整形器工厂实现并缓存由包装工厂返回的文本整形器实例。

下面的代码示例演示如何打开OpenType功能的支持。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
