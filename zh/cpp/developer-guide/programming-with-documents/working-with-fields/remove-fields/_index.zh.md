---
title: 删除字段C++
second_title: Aspose.Words对于C++
articleTitle: 删除字段
linktitle: 删除字段
description: "了解如何在 C++ 中移除字段。使用 C++ API 以编程方式移除字段。"
type: docs
weight: 35
url: /zh/cpp/remove-fields/
timestamp: 2024-01-27-14-07-04
---

有时需要从文档中删除字段。 当需要替换为不同的字段类型或文档中不再需要该字段时，可能会发生这种情况。 例如保存到HTML时的`TOC`字段。

使用[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)删除插入到文档中的字段。[InsertField](https://reference.aspose.com/words/cpp/class/aspose.words/documentbuilder/insertfield/)，使用返回的[Field](https://reference.aspose.com/words/cpp/class/aspose.words.fields/field/)对象，它提供了一个方便的[Remove](https://reference.aspose.com/words/cpp/aspose.words.fields/field/remove/)方法，用于轻松地从文档中删除字段。

下面的代码示例演示如何从文档中删除字段:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RemoveField-RemoveField.cpp" >}}
