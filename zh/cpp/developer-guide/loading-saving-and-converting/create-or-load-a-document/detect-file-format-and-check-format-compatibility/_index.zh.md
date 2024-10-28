---
title: 检测文件格式并检查格式兼容性
second_title: Aspose.Words对于C++
articleTitle: 检测文件格式并检查格式兼容性
linktitle: 检测文件格式并检查格式兼容性
description: "如果您不确定文件的实际内容，或者要检查格式兼容性，请确定 C++ 中的文件格式。"
type: docs
weight: 20
url: /zh/cpp/detect-file-format-and-check-format-compatibility/
---

有时有必要在打开之前确定文档的格式，因为文件扩展名不能保证文件的内容是适当的。 例如，已知Crystal Reports经常以RTF格式输出文档，但给出了。doc扩展。

Aspose.Words提供了获取有关文件类型的信息的功能，以便在不确定文件的实际内容时避免异常。

## 无一例外地检测文件格式

当您处理各种文件格式的多个文档时，您可能需要将可以由Aspose.Words处理的文件与不能处理的文件分开。 您可能还想知道为什么某些文档无法处理。

如果您尝试将文件加载到[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)对象中，并且Aspose.Words无法识别文件格式或不支持该格式，Aspose.Words将引发异常。 您可以捕获这些异常并对其进行分析，但Aspose.Words还提供了[DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/)方法，使我们能够快速确定文件格式，而无需加载带有可能异常的文档。 此方法返回一个[FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/)对象，其中包含检测到的有关文件类型的信息。

{{% alert color="primary" %}}

DetectFileFormat只检查文件格式，但不验证文件格式。 无法保证文件将成功打开，即使**DetectFileFormat**返回它是支持的格式之一。 这是因为**DetectFileFormat**方法只读取部分文件格式数据，足以检查文件格式，但不足以完全验证。

{{% /alert %}}

## 检查文件格式兼容性

我们可以检查所选文件夹中所有文件的格式兼容性，并按格式将它们排序到相应的子文件夹中。

由于我们正在处理文件夹中的内容，因此我们需要做的第一件事是使用`Directory`类的**GetFiles**方法（来自`System.IO`命名空间）获取此文件夹中所有文件的集合。

下面的代码示例演示如何获取文件夹中所有文件的列表:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

当收集到所有文件时，其余的工作由**DetectFileFormat**方法完成，该方法检查文件格式。

下面的代码示例演示如何遍历收集的文件列表，检查每个文件的格式，并将每个文件移动到相应的文件夹:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

使用`File`类的`Move`方法，从相同的`System.IO`命名空间将文件移动到适当的子文件夹中。

上面的示例中使用了以下文件。 文件名在左边，其描述在右边:

| 文件组 | 输入文件 | 类型 |
| :- | :- | :- |
| 支持的文件格式 | Test File (DOC).doc | Microsoft Word95/6.0或Microsoft Word97-2003文件。 |
|  | Test File (DOT).dot | Microsoft Word95/6.0或Microsoft Word97-2003模板。 |
|  | Test File (DOCX).docx | Office打开XMLWordprocessingML文档没有宏。 |
|  | Test File (DOCM).docm | Office使用宏打开XMLWordprocessingML文档。 |
|  | Test File (DOTX).dotx | Office OpenXMLWordprocessingML模板。 |
|  | Test File (DOTM).dotm | Office使用宏打开XMLWordprocessingML模板。 |
|  | Test File (XML).xml | FlatOPCOOXML文档。 |
|  | Test File (RTF).rtf | 富文本格式文档。 |
|  | Test File (WordML).xml | Microsoft Word2003WordprocessingML文档。 |
|  | Test File (HTML).html | HTML文件。 |
|  | Test File (MHTML).mhtml | MHTML（Web存档）文档。 |
|  | Test File (ODT).odt | OpenDocument文本（OpenOffice作家）。 |
|  | Test File (OTT).ott | OpenDocument文档模板。 |
|  | 测试文件（DocPreWord60）。医生 | Microsoft Word2.0文件。 |
| 加密文档 | Test File (Enc).doc | 加密的Microsoft Word95/6.0或Microsoft Word97–2003文档。 |
|  | Test File (Enc).docx | 加密的Office OpenXMLWordprocessingML文档。 |
| 不支持的文件格式 | Test File (JPG).jpg | JPEG图像文件。 |

