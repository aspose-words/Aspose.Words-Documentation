---
title: 产出中的生产者名称
second_title: Aspose.Words为C++
articleTitle: 输出文档中的生成器或生产者名称
linktitle: 输出文档中的生产者名称
description: "Aspose.Words为C++ 在文档中添加用于创建生成器的生成器名称和版本号。 这些数据可以在文档中以取决于输出文件格式的方式找到。"
type: docs
weight: 90
url: /zh/cpp/generator-or-producer-name-included-in-output-documents/
timestamp: 2024-10-21-11-17-44
---

你可以很容易地知道一个文档是否是通过使用 Aspose.Words为C++. 您还可以找到的版本号 Aspose.Words为C++ 这是用来创建一个特定的输出文档。 Aspose.Words直接将这些信息写入生成的文档中。

版本号以*YY.MM.N*或*YY.M.N*格式指定，例如23.12.0或24.1.0。<br />
这里*YY*是发布年份的最后两位数字，*M*或*MM*是发布月份(1-12)，*N*是次要发布编号。 通常，*N*是"0"。

{{% alert color="primary" %}}

请注意，您不能指示Aspose.Words从输出文档中更改或删除此信息。

{{% /alert %}}

根据输出文件格式，下表列出了您可以用来知道生成器名称和版本号的方法。

| SaveFormat值 | 文件中写入的字符串、注释或字段 | 如何找到 |
| :- | :- | :- |
| `Doc` | `AWC.YY.M.N`<br />For example,<br />`AWC.24.1.0` | Aspose.Words生成的DOC得到写入的8个字节。 您可以通过在某些二进制编辑器中打开文件来检查它。 |
| `Dot` | `AWC.YY.M.N`<br />For example,<br />`AWC.24.1.0` | Aspose.Words生成的DOT得到写入的8个字节。 您可以通过在某些二进制编辑器中打开文件来检查它。 |
| `Docx` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | 将文件重命名为.拉链。 提取ZIP。 打开~/Word/文档。xml以查看此注释。 |
| `Docm` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | 将文件重命名为.拉链。 提取ZIP。 打开~/Word/文档。xml以查看此注释。 |
| `Dotx` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | 将文件重命名为.拉链。 提取ZIP。 打开~/文档。xml以查看此注释。 |
| `Dotm` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | 将文件重命名为.拉链。 提取ZIP。 打开~/Word/文档。xml以查看此注释。 |
| `FlatOpc` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml文件包含此注释。 您可以在记事本中打开它以查看此注释。 |
| `FlatOpcMacroEnabled` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml文件包含此注释。 您可以在记事本中打开它以查看此注释。 |
| `FlatOpcTemplate` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml文件包含此注释。 您可以在记事本中打开它以查看此注释。 |
| `FlatOpcTemplateMacroEnabled` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml文件包含此注释。 您可以在记事本中打开它以查看此注释。 |
| `Rtf` | `{\*\generator Aspose.Words for C++ YY.M.N;}`<br />例如,<br />`{\*\generator Aspose.Words for C++ 24.1.0;}` | .rtf文件包含此注释。 您可以在记事本中打开它以查看此注释。 |
| `WordML` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml文件包含此注释。 您可以在记事本中打开它以查看此注释。 |
| Pdf | <ul><li>**Application:** Aspose.Words</li><li>**PDF Producer:**`Aspose.Words for C++ YY.M.N`，例如,<br />`Aspose.Words for C++ 24.1.0`</li></ul> | ![todo：image_alt_text](generator-or-producer-name-included-in-output-documents_1) |
| `Xps` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | 将文件重命名为.拉链。 提取ZIP。 在XPS中，此注释可以在~/Documents/1/Pages/1中找到。[医]fpage |
| `XamlFixed` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml文件包含此注释。 您可以在记事本中打开它以查看此注释。 |
| `Svg` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml文件包含此注释。 您可以在记事本中打开它以查看此注释。 |
| `HtmlFixed` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />例如,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | HTML文件包含此标记。 你可以在记事本中打开看看。 |
| `OpenXps` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | 将文件重命名为.拉链。 提取ZIP。 在OpenXps中，此注释可以在~/Documents/1/Pages/1中找到。[医]fpage |
| `Ps` | `%Generated by Aspose.Words for C++ YY.M.N`<br />例如,<br />`%Generated by Aspose.Words for C++ 24.1.0` | .ps文件包含此注释。 您可以在记事本中打开它以查看此注释。 |
| `Pcl` |  |  |
| `Html` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />例如,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | HTML文件包含此标记。 你可以在记事本中打开看看。 |
| `Mhtml` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />例如,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | MHTML文件包含此标记。 你可以在记事本中打开看看。 |
| `Epub` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />例如,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | 将文件重命名为.拉链。 提取ZIP。 转到~/OEBPS/<file_name>.html。 |
| `Odt` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | 将文件重命名为.拉链。 提取ZIP。 在~/内容中检查它。xml |
| `Ott` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | 将文件重命名为.拉链。 提取ZIP。 在~/内容中检查它。xml |
| `Text` |  |  |
| `XamlFlow` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml文件包含此注释。 您可以在记事本中打开它以查看此注释。 |
| `XamlFlowPack` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />例如,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml文件包含此注释。 您可以在记事本中打开它以查看此注释。 |
| `Markdown` |  |  |
| `Tiff` |  |  |
| `Png` |  |  |
| `Bmp` |  |  |
| `Emf` |  |  |
| `Jpeg` |  |  |
| `Gif` |  |  |

{{% alert color="primary" %}}

另外还有一个在表中显示的变体。 对于某些格式，Aspose.Words的版本号可以多写几个地方。 这取决于导出设置。

这些附加情况在上表中没有描述。

{{% /alert %}}