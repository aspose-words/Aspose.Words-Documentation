---
title: 使用C++中的列表
second_title: Aspose.Words对于C++
articleTitle: 使用列表
linktitle: 使用列表
description: "编号格式化功能简介 Aspose.Words对于C++."
type: docs
weight: 200
url: /zh/cpp/working-with-lists/
---

Microsoft Word文档中的列表是一组列表格式属性。 列表可以在文档中用于格式化、排列和强调文本。 列表是在文档中组织数据的好方法，它们使读者更容易理解关键点。

每个列表最多可以有9级别和格式属性，如数字样式、开始值、缩进、标签位置等都是为每个级别单独定义的。

在Aspose.Words中，使用列表由[Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/)命名空间表示。 但是，[List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/)对象始终属于[ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/)集合。

本主题介绍如何使用Aspose.Words以编程方式处理列表。

## 指定列表级别的格式

创建列表时会自动创建列表级对象。 使用[ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/)类的属性和方法来控制列表各个级别的格式设置。

## 每个部分的重新启动列表

您可以使用[IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/)属性重新启动每个部分的列表。 请注意，此选项仅在RTF、DOC和DOCX文档格式中受支持。 只有当OoxmlCompliance高于Ecma376时，此选项才会写入DOCX。

下面的代码示例演示如何为每个部分创建一个列表并重新启动它:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
