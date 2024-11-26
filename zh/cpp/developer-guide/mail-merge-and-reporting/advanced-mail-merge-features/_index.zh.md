---
title: 高级 Mail Merge 功能在 C++
second_title: Aspose.Words 为 C++
articleTitle: 高级 Mail Merge 特征
linktitle: 高级 Mail Merge 特征
type: docs
description: "Aspose.Words 为 C++ 提供了一些先进的 Mail Merge 允许您进一步执行的功能 Mail Merge 定制。 例如，获取有关模板结构的信息，设置规则，清理后 Mail Merge 操作，以及其他。"
keywords: "use advanced Mail Merge features c++"
weight: 50
url: /zh/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words 提供了一些额外的 Mail Merge 允许您执行进一步自定义的属性和方法 Mail Merge 过程要么简单 Mail Merge 或 Mail Merge 与地区。

高级 Mail Merge 征包括但不限于在执行一个 Mail Merge 操作，为a设置规则 Mail Merge 操作，并在一个 Mail Merge 操作。 本文将仅介绍几个属性和示例，向您展示如何使用高级功能。

## 为 Mail Merge 运作

向模板添加规则可以使工作流过程更加有效和灵活。 使用 Mail Merge 规则，您可以设置可以快速更改的内容并避免生成多个文档的需要。

Aspose.Words 允许您自定义 Mail Merge 基于在执行 Mail Merge 操作和控制合并信息。 例如，当您创建要发送给所有客户的电子邮件或信件时。 您可以设置一个规则，以便字母可以根据数据源的某些字段中的不同值包含各种数据。

看看一些 Mail Merge 您可以实施的规则。

### 实现下一个字段以合并当前文档中的数据记录

您可以实现 [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) 字段以将下一条数据记录合并到当前生成的合并文档中，而不是启动新的合并文档。 它用于在一个文档中显示多个记录。

### 实施；实施 NextIf 和 SkipIf 用于比较两个表达式的字段

你可以使用 [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) 场或 [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/) 字段如果要比较两个表达式（[right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/) 表达）由一些 [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words 将下一个数据记录合并到当前合并文档中，以及模板中所有在之后的合并字段 *NextIf* 字段将被下一个数据记录而不是当前数据记录的值替换。 | Aspose.Words 会将下一个数据记录合并到一个新的合并文档中。 |
| `SkipIf` | Aspose.Words 将取消当前合并文档，移动到数据源中的下一个数据记录，并启动新的合并文档。 | Aspose.Words 将继续当前合并文档。 |

## 获取有关模板结构的信息

Aspose.Words 允许您通过多种方法在模板中收集不同的信息。 例如，您可能需要获取模板中某些合并字段的名称或区域的层次结构。 现在我们将解释可能的变体，以从您的模板中获取一些特定信息。

### 获取合并字段名称

您可能会遇到一个场景，您将希望将数据与由其他人创建的合并字段合并，在这种情况下，您将不确定合并字段的确切名称。 因此，要实现 Mail Merge 目的，首先，您将需要读取并显示所有合并字段的名称。 Aspose.Words 允许您使用 [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/) 方法。

下面的代码示例演示如何获取模板中所有合并字段的名称:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### 获取有关合并区域的信息

您可能有一个场景，您想了解您的模板是如何通过指定的合并区域结构的。 您可以使用一些方法来收集有关合并区域的所有必要信息，或者在模板中获取合并区域层次结构，例如 [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/) 方法。 您可以使用 [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) 类。下面的代码示例演示如何获取合并区域层次结构:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 添加映射字段

Aspose.Words 允许您自动映射数据源中的字段名称和 Mail Merge 模板中的字段使用 [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/) 财产。 例如，如果您的模板中有一个名为"姓氏"的字段名称，并且在数据源中有字段名称"姓氏"或其他变体，如"Last_Name"或"LastName"，那么数据源中的字段会自动映射到对应的映射字段。 如果要将合并模板与许多数据源合并，则映射字段无需将字段重新输入模板以与数据库中的字段名称一致。

下面的代码示例演示如何使用 [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/) 模板中的合并字段和数据源中的数据字段具有不同名称时的方法:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
