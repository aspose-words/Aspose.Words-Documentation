---
title: 在 Python 中使用 VBA 宏
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用 VBA 宏
linktitle: 使用 VBA 宏
description: "使用 Python 在文档中创建、读取、写入、克隆和管理 VBA 宏。"
type: docs
weight: 410
url: /zh/python-net/working-with-vba-macros/
---

Visual Basic for Applications (VBA) for Microsoft Word 是一种简单但功能强大的编程语言，可用于扩展功能。 Aspose.Words API 提供了三个类来访问 VBA 项目源代码：

- [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) 类提供对 VBA 项目信息的访问
- [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) 类返回 VBA 项目模块的集合
- [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) 类提供对 VBA 项目模块的访问
- [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) 枚举定义 VBA 项目中模型的类型。该模块可以是程序模块、文档模块、类模块或设计器模块

## 创建 VBA 项目

Aspose.Words API 提供 [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) 属性来获取或设置文档中的 [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/)。

以下代码示例演示如何创建 VBA 项目和 VBA 模块以及基本属性（例如 [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) 和 [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/)）：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## 读取宏

Aspose.Words 还为用户提供了读取 VBA 宏的能力。

以下代码示例显示如何从文档中读取 VBA 宏：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## 编写或修改宏

使用 Aspose.Words，用户可以修改 VBA 宏。

以下代码示例显示如何使用 [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/) 属性修改 VBA 宏：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## 克隆 VBA 项目

使用 Aspose.Words 还可以克隆 VBA 项目。

以下代码示例演示如何使用 [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) 属性克隆 VBA 项目，该属性创建现有项目的副本：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## 克隆 VBA 模块

如果需要，您还可以克隆 VBA 模块。

以下代码示例演示如何使用 [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) 属性克隆 VBA 模块，该属性创建现有项目的副本：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## 使用 VBA 项目参考

Aspose.Words API 提供 [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) 类来与代表 VBA 项目引用集合的 VBA 项目引用一起使用。

以下代码示例演示如何从 VBA 项目的引用集合中删除一些引用：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}