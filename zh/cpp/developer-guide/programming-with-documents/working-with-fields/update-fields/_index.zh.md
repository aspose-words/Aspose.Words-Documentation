---
title: 更新C++中的字段
second_title: Aspose.Words对于C++
articleTitle: 更新字段
linktitle: 更新字段
description: "了解如何使用 C++ 更新字段。以编程方式更新字段或使用 C++ API 自动更新字段。"
type: docs
weight: 30
url: /zh/cpp/update-fields/
---

通常，插入Microsoft Word的字段已包含最新值。 例如，如果字段是公式或页码，则它将包含给定文档版本的正确计算值。 但是，如果您有一个应用程序生成或修改具有字段（如合并两个文档或用数据填充它）的文档，那么理想情况下，必须更新所有字段才能使文档有用。

## 如何更新字段

加载文档时，Aspose.Words模仿Microsoft Word的行为，并关闭自动更新字段的选项。 行为可以总结如下:

- 当您打开/保存文档时，字段保持不变
- 您可以在需要时显式更新文档中的所有字段，例如，rebuild`TOC`
- 当您呈现为PDF或XPS时，与页眉/页脚中的页码相关的字段将更新
- 执行mail merge时，所有字段都会自动更新

### 以编程方式更新字段

要显式更新整个文档中的字段，只需调用[UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/)方法即可。 要更新文档部分中包含的字段，请获取[Range](https://reference.aspose.com/words/cpp/aspose.words/range/)对象并调用[UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/)方法。 在Aspose.Words中，您可以为文档树中的任何节点获取**Range**，例如[Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), 等。 使用[Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/)属性。您可以通过调用[Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/)方法来更新单个字段的结果。

### 渲染过程中自动更新页面相关字段

当您执行将文档转换为固定页面格式（例如PDF或XPS）时，Aspose.Words将自动更新文档页眉/页脚中与页面布局相关的字段`PAGE`，`PAGEREF`。 此行为模拟打印文档时Microsoft Word的行为。

如果要更新文档中的所有其他字段，则需要在呈现文档之前调用[UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/)。

下面的代码示例演示如何在呈现文档之前更新所有字段:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Mail Merge期间自动字段更新

当您执行mail merge时，文档中的所有字段都将自动更新。 这是因为mail merge是字段更新的情况。 程序遇到mail merge字段并需要更新其结果，这涉及从数据源中抓取值并将其插入到字段中。 逻辑当然更复杂，例如，当到达文档/mail merge区域的末尾但仍有进一步的数据要合并时，则需要复制该区域并更新新的字段集。

## 保存前更新LastSavedTime属性

保存文档时可以使用[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/)属性是否更新相应的内置文档属性[LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/)。

下面的代码示例演示如何更新此属性:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


