---
title: 更新Java中的字段
second_title: Aspose.Words为Java
articleTitle: 更新字段
linktitle: 更新字段
description: "了解如何更新Java中的字段。 以编程方式更新字段或使用JavaAPI使用自动字段更新"
type: docs
weight: 30
url: /zh/java/update-field/
timestamp: 2024-01-27-14-07-04
---

通常，插入Microsoft Word的字段已包含最新值。 例如，如果字段是公式或页码，则它将包含给定文档版本的正确计算值。 但是，如果您有一个应用程序生成或修改具有字段的文档，例如合并两个文档或用数据填充它，那么理想情况下，必须更新所有字段才能使文档有用。

## 如何更新字段

加载文档时，Aspose.Words模仿Microsoft Word的行为，并关闭自动更新字段的选项。 行为可以总结如下:

- 当您打开/保存文档时，字段保持不变
- 您可以显式更新文档中的所有字段，例如，在需要时重新生成`TOC`
- 当您打印/呈现为PDF或XPS时，与页眉/页脚中的页码相关的字段将更新
- 执行Mail Merge时，所有字段都会自动更新

### 以编程方式更新字段

要显式更新整个文档中的字段，只需调用[UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields)方法。 要更新文档部分中包含的字段，请获取[Range](https://reference.aspose.com/words/java/com.aspose.words/range/)对象并调用[UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields)方法。 在Aspose.Words中，您可以为文档树中的任何节点获取**Range**，例如[Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), 等。 使用[GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange)属性。 您可以通过调用[Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update)方法来更新单个字段的结果。

### 渲染过程中自动更新页面相关字段

当您执行将文档转换为固定页面格式（例如PDF或XPS）时，Aspose.Words将自动更新文档页眉/页脚中与页面布局相关的字段`PAGE`，`PAGEREF`。 此行为模拟打印文档时Microsoft Word的行为。

如果要更新文档中的所有其他字段，则需要在呈现文档之前调用[UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields)。

下面的示例演示如何在呈现文档之前更新所有字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Mail Merge期间自动字段更新

当您执行mail merge时，文档中的所有字段都将自动更新。 这是因为Mail Merge是字段更新的情况。 程序遇到Mail Merge字段并需要更新其结果，这涉及从数据源中抓取值并将其插入到字段中。 当然，逻辑更复杂，例如，当到达文档/mail merge区域的末尾但仍有进一步的数据要合并时，则需要复制该区域并更新新的字段集。

## 更新具有脏属性的字段

W:dirty是一个字段级属性，它将在打开文档时仅刷新您指定的字段。 它告诉MSWord仅在下次打开文档时刷新此字段。 您可以使用LoadOptions。setUpdateDirtyFields()属性，用于指定是否使用dirty属性更新字段。 LoadOptions的值时。setUpdateDirtyFields()设置为*true*，所有具有`Field.IsDirty`或`FieldChar.IsDirty`属性的*true*值的字段都会在文档加载时更新。

下面的代码示例演示如何更新具有dirty属性的字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## 保存前更新LastSavedTime属性

保存文档时可以使用[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty)属性是否更新相应的内置文档属性[LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime)。

下面的代码示例演示如何更新此属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
