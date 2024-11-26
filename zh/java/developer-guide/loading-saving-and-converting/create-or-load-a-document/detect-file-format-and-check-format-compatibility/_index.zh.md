---
title: 检测文件格式
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 检测文件格式和检查格式兼容性
linktitle: 检测文件格式和检查格式兼容性
description: "在打开文档格式之前获取关于文档格式的信息, 以避免在不确定文件实际内容使用时出现例外 Java。 。 。 。"
type: docs
weight: 20
url: /zh/java/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

有时需要在打开文件前确定文件的格式,因为文件扩展名不能保证文件的内容是适当的. 例如,人们知道,Crystal Reports经常以RTF格式输出文档,但给了它们.doc扩展.

Aspose.Words 提供了获取文件类型信息的能力,以避免在无法确定文件实际内容的情况下出现例外。

## 检测没有例外的文件格式

当您以各种文件格式处理多个文档时,您可能需要将可以处理的文件分开。 Aspose.Words 从那些不能。 您还想知道为什么某些文件无法处理 。

如果您试图将文件加载到 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 对象和 Aspose.Words 无法识别文件格式或格式不支持, Aspose.Words 将有一个例外。 你可以抓住这些例外 分析它们,但 Aspose.Words 还提供了 [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) 方法,使我们能够快速确定文件格式,而无需加载可能存在例外的文档。 此方法返回 a [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) 包含已检测到的文件类型信息的对象。

{{% alert color="primary" %}}

检测文件 格式只检查文件格式,但不验证文件格式. 即使 **DetectFileFormat** 返回为支持的格式之一。 这是因为 **DetectFileFormat** 方法只读取部分文件格式数据,足以检查文件格式,但不足以进行完整的验证.

{{% /alert %}}

## 检查文件格式兼容性

我们可以检查选中文件夹中所有文件的格式兼容性, 按格式排序到相应的子文件夹 。

既然我们处理的是一个文件夹中的内容,我们首先需要做的就是用这个文件夹中的所有文件集合起来. **GetFiles** 方法 `Directory` 类(从 `System.IO` 名称空间)。

以下代码示例显示如何获得文件夹中所有文件的列表:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

当收集所有文件时,剩下的工作由 **DetectFileFormat** 方法,用于检查文件格式。

以下代码示例显示如何在所收集的文件列表上进行排列,检查每个文件的格式,并将每个文件移动到相应的文件夹:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

使用 `Move` 方法 `File` 班级,从同一个 `System.IO` 名称空间。

以上示例使用以下文件. 文件名在左边,其描述在右边:

| Group 文档 | 输入文档 | 类型 |
|  :-  |  :-  |  :-  |
| 支持的文件格式 | 测试文件 (Doc).doc | Microsoft Word 95/6.0,或 Microsoft Word 97 - 2003年文件。 |
|  | 测试文件 (Dot).dot | Microsoft Word 95/6.0,或 Microsoft Word 97 - 2003 模板. |
|  | 测试文件 (Docx).docx | 办公室打开 XML 文字处理 没有宏的 ML 文档 。 |
|  | 测试文件 (Docm).docm | 办公室打开 XML 文字处理 带有宏的 ML 文档 。 |
|  | 测试文件 (Dotx).dotx | 办公室打开 XML 文字处理 ML模板. |
|  | 测试文件 (Dotm).dotm | 办公室打开 XML 文字处理 带有宏的ML模板. |
|  | 测试文件 (XML). xml | 平面OPC OOXML文档. |
|  | 测试文件 (RTF). trtf | 丰富的文本格式文档。 |
|  | 测试文件 (WordML).xml | Microsoft Word 2003. 文字处理 ML文档. |
|  | 测试文件 (HTML).html | HTML 文档. |
|  | 测试文件 (MHTML).mhtml | MHTML(Web存档)文档. |
|  | 测试文件 (Odt).odt | OpenDocument 文本( OpenOffice Writer). 存档副本. |
|  | 测试文件 (Ott).ott | 打开文档文档模板 。 |
|  | 测试文件 (DocPreWord60).doc | Microsoft Word 2.0文档. |
| 加密文档 | 测试文件 (Enc).doc | 已加密 Microsoft Word 95/6.0,或 Microsoft Word 97 - 2003年文件。 |
|  | 测试文件 (Enc).docx | 加密办公室打开 XML 文字处理 ML文档. |
| 不支持的文件格式 | 测试文件 (JPG). 页:1 | JPEG 图像文件 。 |

