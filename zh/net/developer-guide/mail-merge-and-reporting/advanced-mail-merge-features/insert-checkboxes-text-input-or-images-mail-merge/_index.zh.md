---
title: 在Mail Merge期间插入Checkboxes，文本输入或图像
second_title: Aspose.Words为.NET
articleTitle: 插入Checkboxes、文本输入或图像
linktitle: 插入Checkboxes、文本输入或图像
description: "使用C#在Mail Merge期间插入checkboxes或文本输入字段。 在C#中的Mail Merge期间也从数据库中插入图像。"
type: docs
weight: 40
url: /zh/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

合并引擎将文档作为输入，在其中查找`MERGEFIELD`字段，并将其替换为从数据源获取的数据。 通常，插入纯文本和HTML，但Aspose.Words用户也可以生成处理Mail Merge字段更不寻常的情况的文档。

强大的Aspose.Words功能允许您扩展Mail Merge进程:

- 在mail merge期间将checkboxes和文本输入表单字段插入文档
- 从任何自定义存储（文件，BLOB字段等）插入图像。)

## 在Mail Merge期间插入Checkboxes和文本输入

有时需要执行Mail Merge操作，以便在合并字段中替换的不是文本，而是checkbox或文本输入字段。 尽管这不是最常见的情况，但它对于某些任务来说非常方便。

下面的Word文档截图显示了一个包含合并字段的模板:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

下面Word文档的屏幕截图显示了已经生成的文档:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

请注意，某些字段被替换为纯文本，某些字段被替换为checkbox表单字段，`Subject`字段被替换为文本输入字段。

{{% /alert %}}

下面的代码示例演示如何在mail merge期间将checkboxes和输入文本字段插入到文档中:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## 在Mail Merge期间插入图像

执行Mail Merge操作时，可以使用特殊的图像Mail Merge字段将数据库中的图像插入到文档中。 ImageMail Merge字段是一个名为Image:MyFieldName的合并字段。

### 从数据库中插入图像

在mail merge期间，当在文档中遇到图像Mail Merge字段时，会触发[FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/)事件。 您可以响应此事件以将文件名、流或图像对象返回到Mail Merge引擎，以便将其插入到文档中。

下面的代码示例演示如何将数据库BLOB字段中存储的图像插入到报表中:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### 在Mail Merge期间设置图像属性

在合并图像合并字段时，有时可能需要控制各种图像属性，例如[WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/)。

目前，使用[ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/)只能分别设置图像宽度或高度属性。 为了解决这个问题，Aspose.Words提供了[Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/)属性，这有助于完全控制插入的图像或任何其他形状。

下面的代码示例演示如何设置各种图像属性:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
