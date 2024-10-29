---
title: 插入 Checkboxes，文本输入或图像期间 Mail Merge
second_title: Aspose.Words 为 C++
articleTitle: 插入 Checkboxes、文本输入或图像
linktitle: 插入 Checkboxes、文本输入或图像
description: "期间插入复选框或文本输入字段 Mail Merge 使用 C++. 也从数据库中插入图像 Mail Merge 在 C++."
type: docs
weight: 40
url: /zh/cpp/insert-checkboxes-text-input-or-images-mail-merge/
---

合并引擎将文档作为输入，查找 `MERGEFIELD` 中的字段，并将其替换为从数据源获取的数据。 通常，纯文本和 HTML 被插入，但 Aspose.Words 用户还可以生成一个文档，用于处理更不寻常的情况 mail merge 菲尔兹。

强大 Aspose.Words 功能允许您扩展 mail merge 过程:

- 在文档中插入复选框和文本输入表单字段 mail merge
- 从任何自定义存储（文件）插入图像, BLOB 领域等。)

## 插入 Checkboxes和文本输入期间 Mail Merge

有时有必要执行一个 mail merge 操作，以便在合并字段中代替的不是文本，而是复选框或文本输入字段。 尽管这不是最常见的情况，但它对于某些任务来说非常方便。

Word文档的以下屏幕截图显示了具有合并字段的模板:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

下面Word文档的此屏幕截图显示了已经生成的文档:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

请注意，一些字段被替换为纯文本，一些字段被替换为复选框表单字段，以及 `Subject` 字段被替换为文本输入字段。

{{% /alert %}}

下面的代码示例演示如何在文档中插入复选框和输入文本字段 mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-HandleMergeField.cpp" >}}

## 期间插入图像 Mail Merge

当执行 mail merge 操作，您可以使用特殊图像将数据库中的图像插入到文档中 mail merge 菲尔兹。 图像 mail merge field是一个名为Image的合并字段:MyFieldName.

### 从数据库中插入图像

在一个 mail merge，当图像 mail merge 字段在文档中遇到， [FieldMergingCallback](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_fieldmergingcallback/) 事件被触发。 您可以响应此事件以将文件名、流或图像对象返回到 mail merge 引擎，以便它可以插入到文档中。

下面的代码示例演示如何插入存储在数据库中的图像 BLOB 字段到报告中:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageInsert.cpp" >}}

### 期间设置图像属性 Mail Merge

在合并图像合并字段时，有时可能需要控制各种图像属性，例如 [WrapType](https://reference.aspose.com/words/cpp/aspose.words.drawing/wraptype/).

目前，使用 [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args) 您只能分别设置图像宽度或高度属性。 为了克服这个问题, Aspose.Words 提供 [Shape](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/get_shape/) 属性，这便于获得对插入的图像或任何其他形状的完全控制。

下面的代码示例演示如何设置各种图像属性:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}