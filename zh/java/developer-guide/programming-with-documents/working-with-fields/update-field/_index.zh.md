---
title: 更新字段为 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 更新字段
linktitle: 更新字段
description: "学习如何更新字段 Java。 。 。 。 程序更新字段或使用自动更新字段 Java API"
type: docs
weight: 30
url: /zh/java/update-field/
---

通常情况下,插入到 Microsoft Word 已包含最新值。 例如,如果字段是一个公式或一个页码,它将包含给定版本文档的正确计算值. 但是,如果有一个应用程序可以生成或修改一个文档,例如将两个文档合并起来或将其充斥到数据中,那么理想的情况是,所有字段都必须更新才能使文档有用。

## 如何更新字段

当文件被载入时, Aspose.Words 模仿行为 Microsoft Word 并关闭自动更新字段的选项。 行为可归纳如下:

- 当你打开/保存文档时,字段保持不变
- 您可以明确更新文档中的所有字段,例如重建 `TOC` 需要的时候
- 当打印/交给PDF或 XPS 在页眉/页脚中更新与页码有关的字段
- 当你执行 mail merge 所有字段自动更新

### 程序更新字段

要明确更新整个文件中的字段,只需调用 [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) 方法。 要更新文件部分内容中的字段,请访问 [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) 对象并调用 [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) 方法。 内 Aspose.Words, 你可以得到一个 **Range** 用于文档树上的任何节点,例如 [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), 例如,使用 [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) 属性。 您可以通过调用: [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) 方法。

### 在渲染过程中自动更新与页面相关的字段

当执行将文档转换为固定页格式,例如PDF或 XPS, 接下来 Aspose.Words 将自动更新与页面布局相关的字段 `PAGE`, `PAGEREF` 在文档页眉/页脚中找到。 这种行为模仿了 Microsoft Word 打印文档时。

如果您想要更新文档中的所有其他字段, 您需要调用 [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) 在制作文档之前。

以下例子说明如何在提供文档之前更新所有字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### 自动更新字段 Mail Merge

当你执行一个 <span notrans="<span notrans=" mail merge"=""></span>",> 文档中的所有字段将自动更新。 这是因为 mail merge 是一个字段更新的例子。 程序遇到一个 mail merge 字段,需要更新其结果,这涉及从数据源中获取值并将其插入到字段。 当然,逻辑更为复杂,例如,当文件/文件结尾时。mail merge 但还有更多的数据有待合并,然后需要复制该区域并更新新的一组领域。

## 更新带有肮脏属性的字段

w: dirty是一个字段级属性,它只会刷新文档打开时指定的字段. 它告诉MS Word在下次打开文档时只刷新此字段. 您可以使用 Load Options. set Update Dirty Fields () 属性来指定是否用脏属性更新字段 。 当装入可选的值. set Update Dirty Fields () 被设定为 <span notrans="<span notrans=" *true*"=""></span>",> 所有字段 *true* 数值 `Field.IsDirty` 或 `FieldChar.IsDirty` 属性在文档加载时更新。

以下代码示例显示如何更新具有脏属性的字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## 在保存前更新最后保存的时间属性

你可以用这个 [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) 属性是否更新相应的内置文档属性 [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) 当保存文档时。

以下代码示例显示如何更新此属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
