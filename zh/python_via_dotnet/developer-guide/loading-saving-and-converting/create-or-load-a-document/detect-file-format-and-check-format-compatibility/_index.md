---
title: 加载时检测文件格式
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 检测文件格式并检查格式兼容性
linktitle: 检测文件格式并检查格式兼容性
description: "如果您不确定文件的实际内容是什么，请确定 Python 中的文件格式，或检查格式兼容性。"
type: docs
weight: 20
url: /zh/python-net/detect-file-format-and-check-format-compatibility/
---

有时需要在打开之前确定文档的格式，因为文件扩展名并不能保证文件的内容是适当的。例如，众所周知，Crystal Reports 通常以 RTF 格式输出文档，但赋予它们 .doc 扩展名。

Aspose.Words 提供了获取有关文件类型的信息的功能，以避免在您不确定文件的实际内容是什么时出现异常。

## 检测文件格式无异常

当您处理各种文件格式的多个文档时，您可能需要将 Aspose.Words 可以处理的文件与不能处理的文件分开。您可能还想知道为什么某些文档无法处理。

如果尝试将文件加载到 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 对象中，而 Aspose.Words 无法识别该文件格式或不支持该格式，则 Aspose.Words 将引发异常。您可以捕获这些异常并对其进行分析，但是 Aspose.Words 还提供了 [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) 方法，使我们能够快速确定文件格式，而无需加载可能存在异常的文档。此方法返回一个 [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) 对象，其中包含检测到的有关文件类型的信息。

{{% alert color="primary" %}}

[detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/)仅检查文件格式，但不验证文件格式。即使 [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) 返回文件是受支持的格式之一，也不能保证文件能够成功打开。这是因为 [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) 方法仅读取部分文件格式数据，足以检查文件格式，但不足以进行完整验证。

{{% /alert %}}

## 检查文件格式兼容性

我们可以检查所选文件夹中所有文件的格式兼容性，并将它们按格式排序到相应的子文件夹中。

由于我们处理的是文件夹中的内容，因此我们需要做的第一件事是使用 **操作系统** 模块的 **列表目录** 方法获取该文件夹中所有文件的集合。

以下代码示例展示了如何获取文件夹中所有文件的列表：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-GetListOfFilesInFolder.py" >}}

当收集完所有文件后，剩下的工作由 [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) 方法完成，该方法检查文件格式。

以下代码示例演示如何迭代收集的文件列表、检查每个文件的格式并将每个文件移动到适当的文件夹：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-CheckFormatCompatibility.py" >}}

使用 **舒蒂尔** 模块的 **复制文件** 方法将文件移动到适当的子文件夹中。

上面的示例中使用了以下文件。文件名位于左侧，其描述位于右侧：

| 文件的 Group | 输入文件 | 类型 |
|  :-  |  :-  |  :-  |
| 支持的文件格式 | 测试文件（Doc）.doc | Microsoft Word 95/6.0 或 Microsoft Word 97 – 2003 文档。 |
| | 测试文件 (`Dot`).dot | Microsoft Word 95/6.0 或 Microsoft Word 97 – 2003 模板。 |
| | 测试文件 (Docx).docx | 不带宏的 Office Open XML WordprocessingML 文档。 |
| | 测试文件（Docm）.docm | 带有宏的 Office Open XML WordprocessingML 文档。 |
| | 测试文件 (Dotx).dotx | Office Open XML WordprocessingML 模板。 |
| | 测试文件 (Dotm).dotm | 带有宏的 Office Open XML WordprocessingML 模板。 |
| | 测试文件 (XML).xml | FlatOPC OOXML 文档。 |
| | 测试文件 (RTF).rtf | 富文本格式文档。 |
| | 测试文件 (WordML).xml | Microsoft Word 2003 WordprocessingML 文档。 |
| | 测试文件 (HTML).html | HTML 文档。 |
| | 测试文件 (MHTML).mhtml | MHTML（网络存档）文档。 |
| | 测试文件 (Odt).odt | OpenDocument 文本（OpenOffice Writer）。 |
| | 测试文件 (Ott).ott | OpenDocument 文档模板。 |
| | 测试文件 (DocPreWord60).doc | Microsoft Word 2.0 文档。 |
| 加密文件 | 测试文件（Enc）.doc | 加密的 Microsoft Word 95/6.0 或 Microsoft Word 97 – 2003 文档。 |
| | 测试文件 (Enc).docx | 加密的 Office Open XML WordprocessingML 文档。 |
| 不支持的文件格式 | 测试文件 (JPG).jpg | JPEG 图像文件。 |

