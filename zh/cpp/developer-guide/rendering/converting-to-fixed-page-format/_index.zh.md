---
title: 在C++中转换为固定页面格式
second_title: Aspose.Words对于C++
articleTitle: 转换为固定页格式
linktitle: 转换为固定页格式
description: "将文档保存到PDF, XPS, HTML, XAML, PostScript, 和PCL格式。"
type: docs
weight: 10
url: /zh/cpp/converting-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words实现自己的页面布局引擎。 在深入研究其规范之前，首先在高层次上讨论文档是值得的。

## 什么是文件？

当考虑一个文档时，用户通常会想象一些包含单词、图像、表格和图表的纸张。 文档可以是各种类型的，例如文本、电子表格、幻灯片、CAD绘图、流程图，因此，可以具有本质上不同的布局。 大多数应用程序允许将文档发送到打印机；这是用户可以实际查看文档的最终预期外观的时候。

## 在各种应用程序中显示文档

各种文档查看或发布应用程序允许用户打开（Adobe Acrobat，XPS查看器），有时编辑（AdobeInDesign）特定格式的文档。 这些应用程序通常产生所谓的"固定页"格式文档。 这种文档格式精确地描述了文档内容在每页上的位置。 在内部，PDF或XPS格式包含每个页面的描述，以及绘图说明，指定页面上内容的布局。 这类似于图像格式，描述内容以栅格或矢量形式显示的位置。

相反，一些文本编辑应用程序不支持查看文档的页面。 例如，Microsoft Notepad除了简单地显示，编辑和打印文本之外，还支持很少的功能。 这里的重要观察是，这样的应用程序既不能显示文档的页面，也不能告诉用户将打印多少页面，只允许查看文档内容。 文档可以以纯文本格式保存，并且可以被许多其他应用程序打开。 使用允许查看任意文件的二进制内容的应用程序可以看到文档文件中存储的内容–它只是纯文本，其中没有其他内容。

稍微复杂一点的文本编辑应用程序（如Microsoft WordPad）以富文本格式（RTF）保存文档，该格式支持更多的格式设置功能，如插入图像、字符格式、段落边距和间距。 但是，RTF格式也只包含文档的内容，没有关于页面的信息。

Microsoft Word是当今Windows中最先进的文本编辑应用程序。 它以DOCX格式格式化文件，灵活而广泛地描述文档的内容，允许用户指定页面大小，文档部分的方向，作为WYSIWYG应用程序甚至可以在屏幕上显示文档页面。 尽管如此，仍然没有关于文档内容如何在文档文件中可用的页面上显示的信息。 文档文件仅描述内容本身，以及文档对象彼此之间的关系，以及一些几何约束。 因此，在显示文档之前，Microsoft Word会自行计算该信息。 这就是页面布局发挥作用的地方。

## 请参阅

* [什么是页面布局](/words/cpp/what-is-a-page-layout/)
* [创建页面布局](/words/cpp/creating-a-page-layout/)
* [将文档保存为固定页面格式](/words/cpp/saving-a-document-to-fixed-page-format/)
* [指定布局选项](/words/cpp/specify-layout-options/)