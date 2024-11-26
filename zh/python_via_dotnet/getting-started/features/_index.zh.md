---
title: 特征
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 支持的功能
linktitle: 支持的功能
description: "Aspose.Words for Python via .NET 为用户提供了广泛的功能，从简单地转换和修改文档到创建结构化且具有视觉吸引力的文档或自动化报告。"
type: docs
weight: 30
url: /zh/python-net/features/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words 为用户提供了广泛的功能。用户可以执行大量与文档相关的任务 - 从简单地将文档从一种支持的格式转换为另一种支持的格式并在转换过程中修改这些文档到业务任务，例如创建结构化且具有视觉吸引力的文档或自动生成报告。

现代文档格式和标准很复杂，当您在项目中需要文档转换或其他文档处理功能时，唯一实用的解决方案通常是依赖实现所需功能的第三方组件。但使用第三方组件总是会带来一些风险。文档处理的独特风险之一是图书馆如何完整且正确地实施特定文档格式或标准的问题。

Aspose 致力于提供最完整、最准确的文档格式和标准实现。 Aspose.Words 团队通过提供跨多个平台支持的文档格式的详细实施说明，展示了他们对互操作性的承诺。

下表总结并比较了 Aspose.Words for Python via .NET 功能的可用性，并提供了详细功能描述的链接。

## 支持的平台

Aspose.Words for Python via .NET 平台可在 Windows x64 或 x86、macOS x86_x64 或 arm64 以及安装了 Python 3.5 或更高版本的各种 Linux 发行版上使用。对目标 Linux 和 macOS 平台还有其他要求：
- GCC-6 运行时库（或更高版本）
- .NET Core Runtime 的依赖性。安装 .NET Core Runtime 本身需要 `NOT`
- 对于 Python 3.5-3.7：需要 Python 的 `pymalloc` 版本。默认情况下启用 `--with-pymalloc` Python 构建选项。通常，Python 的 `pymalloc` 版本在文件名中标有 `m` 后缀。
- `libpython` 共享 Python 库。默认情况下禁用 `--enable-shared` Python 构建选项，某些 Python 发行版不包含 `libpython` 共享库。对于某些Linux平台，可以使用包管理器安装`libpython`共享库，例如：`sudo apt-get install libpython3.7`。常见问题是 `libpython` 库安装在与共享库的标准系统位置不同的位置。该问题可以通过在编译 Python 时使用 Python 构建选项设置备用库路径来解决，也可以通过在共享库的系统标准位置中创建指向 `libpython` 库文件的符号链接来解决。通常，对于 Python 3.5-3.7，`libpython` 共享库文件名为 `libpythonX.Ym.so.1.0`，对于 Python 3.8 或更高版本，则为 libpythonX.Y.so.1.0（例如：`libpython3.7m.so.1.0`、`libpython3.9.so.1.0`）。

如果您需要支持更多平台，请寻找"孪生兄弟"产品 Aspose.Words for .NET 或 Aspose.Words for Java。

## 文件格式和转换

全球许多客户都依赖 Aspose.Words 提供的全面的文档导入和导出功能。

|  特征 | 描述 | Python via .NET |
|  :-  |  :-  |  :-  |
| `Microsoft Word - DOC` | 您能找到的最快、最完整的 DOC 格式实现。 | {{< emoticons/tick >}} |
| `WordprocessingML - DOCX and XML` | Aspose.Words 提供全面的支持 OOXML、Flat OPC 以及 Word 2003 XML。 | {{< emoticons/tick >}} |
| `Rich Text Format - RTF` | 全面支持RTF格式与各种应用程序交互。 | {{< emoticons/tick >}} |
| `HTML, XHTML and MHTML` | 加载和保存 HTML/XHTML 以实现更高的互操作性。还可以另存为 MHTML。 | {{< emoticons/tick >}} |
| `OpenDocument - ODT` | Aspose.Words 可以加载和保存 `OpenDocument` 文本 (.odt) 格式的文档。 | {{< emoticons/tick >}} |
| `Adobe Portable Document Format - PDF` | 将任何文档高保真地转换为 PDF。支持 PDF/A。 | {{< emoticons/tick >}} |
| `XML Paper Specification - XPS` | 以高保真度将任何文档转换为 XPS。 | {{< emoticons/tick >}} |
| `Plain Text - TXT` | 通过以纯文本格式保存来轻松提取文本。 | {{< emoticons/tick >}} |
| `Digital Publishing EPUB` | EPUB 是一种流行的电子书格式。您可以将任何文档从 Aspose.Words 转换为 IDPF EPUB 格式。 | {{< emoticons/tick >}} |
| `Printer Command Language (PCL)` | Aspose.Words for .NET 支持将文档保存为 PCL 格式。 | {{< emoticons/tick >}} |

## 渲染和打印

Aspose.Words 现在提供文档页面的高保真渲染。

|  特征 | Python via .NET |
|  :-  |  :-  |
| 将文档以高保真度布局到页面中（就像 Microsoft Word® 所做的那样），以符合以下所有格式。 | {{< emoticons/tick >}} |
| 将单个页面或完整文档呈现为 PDF 或 XPS。 | {{< emoticons/tick >}} |
| 将文档页面渲染为 BMP 图像 | {{< emoticons/tick >}} |
| 将文档页面渲染为图像（PNG、EMF、JPEG、GIF）。 | {{< emoticons/tick >}} |
| 将文档中的各个形状渲染为光栅或矢量图像。 | {{< emoticons/tick >}} |
| 指定图像分辨率、质量、压缩和其他选项。 | {{< emoticons/tick >}} |
| 通过变换将页面或形状渲染为 .NET Graphics 对象，达到特定大小。 | {{< emoticons/tick >}} |
| 使用 .NET 打印基础设施打印文档页面。 | {{< emoticons/cross >}} |
| 在渲染或打印之前更新 `TOC`、页码和其他字段。 | {{< emoticons/tick >}} |

## 文档内容特点

Aspose.Words 提供了丰富的对象模型，由 100 多个公共类组成，允许您以编程方式生成、组合、修改、解析或以其他方式检查加载的文档。

|  特征 | Python via .NET |
|  :-  |  :-  |
| 访问、创建和修改段落和文本。 | {{< emoticons/tick >}} |
| 访问、创建和修改图像、文本框和形状。 | {{< emoticons/tick >}} |
| 访问、创建和修改表、行和单元格。 | {{< emoticons/tick >}} |
| 访问、创建和修改字段、表单字段、超链接和书签。 | {{< emoticons/tick >}} |
| 访问、创建和修改文档部分、页眉和页脚。 | {{< emoticons/tick >}} |
| 访问、创建和修改脚注、尾注和注释。 | {{< emoticons/tick >}} |
| 访问、创建和修改自定义 XML、智能标签和结构化文档标签（内容控件）。 | {{< emoticons/tick >}} |
| 使用类似 **XmlDocument** 的类和方法访问和修改所有文档元素。 | {{< emoticons/tick >}} |
| 更新字段结果 `IF`、公式和其他流行的字段类型。 | {{< emoticons/tick >}} |
| 重建和更新目录 (TOC) 字段与 Microsoft Word 完全相同。 | {{< emoticons/tick >}} |
| 在文档之间复制和移动文档元素。 | {{< emoticons/tick >}} |
| 连接和拆分文档。 | {{< emoticons/tick >}} |
| 获取和设置内置和自定义文档属性。 | {{< emoticons/tick >}} |
| 指定文档保护，打开受保护和加密的文档。 | {{< emoticons/tick >}} |
| 查找并替换文本，枚举文档内容。 | {{< emoticons/tick >}} |
| 接受文档中的所有修订。 | {{< emoticons/tick >}} |
| 从文档中保留或提取 OLE 对象和 ActiveX 控件。 | {{< emoticons/tick >}} |
| 从文档中保留或删除 VBA 宏。保留 VBA 宏数字签名。 | {{< emoticons/tick >}} |
| 检测并验证文档中的数字签名。 | {{< emoticons/tick >}} |
| 插入 HTML 文本。 | {{< emoticons/tick >}} |
| 从 Word 文档中提取 VBA 宏。 | {{< emoticons/tick >}} |

## 文档格式化功能

Aspose.Words 提供对所有文档元素的格式属性的详细编程访问。

|  特征 | Python via .NET |
|  :-  |  :-  |
| 访问和修改所有字符格式，包括字体、颜色、效果、边框和阴影。 | {{< emoticons/tick >}} |
| 访问和修改所有段落格式，包括缩进、间距、边框和底纹、制表位。 | {{< emoticons/tick >}} |
| 访问和修改所有项目符号和编号列表格式，包括编号和级别。 | {{< emoticons/tick >}} |
| 访问和修改表格格式，包括对齐方式、方向、边框和阴影。 | {{< emoticons/tick >}} |
| 访问和修改所有部分属性，包括纸张尺寸、边距和方向。 | {{< emoticons/tick >}} |
| 访问、创建和修改文档样式。 | {{< emoticons/tick >}} |
| 访问和修改绘图对象，包括位置、大小、线条和填充属性、图像字节。 | {{< emoticons/tick >}} |

## Mail Merge 特点

您可以单独使用 Aspose.Words 作为报告解决方案。在 Microsoft Word 中设计报告，然后让 Aspose.Words 使用来自各种数据源的数据填充文档。

|  特征 | Python via .NET |
|  :-  |  :-  |
| 在报告中使用所有标准 Microsoft Word Mail Merge 字段，包括 `MERGEFIELD`、`NEXT`、`NEXTIF`、`ADDRESSBLOCK`、GREETINGLINE。 | {{< emoticons/tick >}} |
| 对包含最复杂和嵌套的 `IF` 字段和公式的文档执行 mail merge。 | {{< emoticons/tick >}} |
| 使用 Mail Merge 区域从数据源填充并动态增长文档中的表或片段。 | {{< emoticons/cross >}} |
| 轻松生成包含主从（父子）数据（例如订单/订单详细信息）的报告。 | {{< emoticons/cross >}} |
| 使用来自任何 .NET 数据源（例如 DataSet、DataTable、DataView、DataReader 或 ADO Recordset）的数据填充文档。 | {{< emoticons/cross >}} |
| 通过实现 [IMailMergeDataSource](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/imailmergedatasource/) 接口，从任何数据源（例如 LINQ 查询、XML 文件或业务对象）填充文档。 | {{< emoticons/cross >}} |
| 使用事件对数据合并方式进行精确控制，例如数字格式。 | {{< emoticons/cross >}} |
| 在 Mail Merge 期间插入图像。 | {{< emoticons/tick >}} |
| 以编程方式创建或修改文档的 Microsoft Word Mail Merge 数据源。保留 Mail Merge 设置和数据源。 | {{< emoticons/tick >}} |
| 检索 Mail Merge 字段名称。 | {{< emoticons/tick >}} |

## 报告功能

LINQ 报告引擎是一种高级报告工具，使您能够根据模板文档和从各种来源获取的数据生成文档，这些来源包括数据库、XML、JSON、OData、自定义 CLR 类型的对象、外部文档等开箱即用的内容。

| 主要特征 | Python via .NET |
|  :-  |  :-  |
| 直接在模板中支持 C# 语法和 LINQ 扩展方法（甚至对于 `ADO.NET` 数据源） | {{< emoticons/tick >}} |
| 支持表、列表和通用内容的可重复和条件文档块（循环和条件） | {{< emoticons/tick >}} |
| 支持动态生成的图表和图像 | {{< emoticons/tick >}} |
| 支持将外部文档和 HTML 块插入到文档中 | {{< emoticons/tick >}} |
| 支持多个数据源（包括不同类型）生成单个文档 | {{< emoticons/tick >}} |
| 数据关系的内置支持（主从） | {{< emoticons/tick >}} |
| 全面支持直接在模板中进行分组、排序、过滤等各种数据操作 | {{< emoticons/tick >}} |
| 所见即所得：生成的文档保留与相应模板相同的元素格式 | {{< emoticons/tick >}} |
