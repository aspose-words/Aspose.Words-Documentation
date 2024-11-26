---
title: Java中的高级Mail Merge功能
second_title: Aspose.Words为Java
articleTitle: 高级Mail Merge功能
linktitle: 高级Mail Merge功能
type: docs
description: "Aspose.WordsforJava提供了一些高级Mail Merge功能，允许您执行进一步的Mail Merge自定义。 例如，获取有关模板结构、设置规则、在Mail Merge操作后清理等信息。"
keywords: "use advanced Mail Merge features java, Mail Merge java"
weight: 50
url: /zh/java/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words提供了一些额外的Mail Merge属性和方法，允许您在简单的Mail Merge或带有区域的Mail Merge中执行Mail Merge过程的进一步自定义。

高级Mail Merge功能包括但不限于在执行Mail Merge操作之前获取有关模板结构的信息、为Mail Merge操作设置规则以及在Mail Merge操作期间进行清理。 本文将仅介绍几个属性和示例，向您展示如何使用高级功能。

## 为Mail Merge操作设置规则

向模板添加规则可使工作流过程更加有效和灵活。 使用Mail Merge规则，您可以设置可以快速更改的内容，并避免生成多个文档的需要。

Aspose.Words允许您根据执行Mail Merge操作时运行的规则自定义Mail Merge并控制合并信息。 例如，当您创建要发送给所有客户的电子邮件或信件时。 您可以设置一个规则，以便字母可以根据数据源的某些字段中的不同值包含各种数据。

看看你可以实现的一些Mail Merge规则。

### 实现下一个字段以合并当前文档中的数据记录

您可以实现[Next](https://reference.aspose.com/words/java/com.aspose.words/fieldnext/)字段以将下一个数据记录合并到当前生成的合并文档中，而不是启动新的合并文档。 它用于在一个文档中显示多个记录。

### 实现NextIf和SkipIf字段以比较两个表达式

如果要通过一些[operator](https://reference.aspose.com/words/java/com.aspose.words/fieldskipif/#getComparisonOperator)比较两个表达式（[right](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#getRightExpression)和[left](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#getLeftExpression)表达式），可以使用[NextIf](https://reference.aspose.com/words/java/com.aspose.words/fieldnextif/)字段或[SkipIf](https://reference.aspose.com/words/java/com.aspose.words/fieldskipif/)字段。

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words将下一个数据记录合并到当前合并文档中，模板中位于*NextIf*字段之后的所有合并字段将被下一个数据记录而不是当前数据记录的值替换。 | Aspose.Words将下一个数据记录合并到一个新的合并文档中。 |
| `SkipIf` | Aspose.Words将取消当前合并文档，移动到数据源中的下一个数据记录，并启动新的合并文档。 | Aspose.Words将继续当前合并文档。 |

下面的代码示例演示如何将两个表达式与**NextIf**或**SkipIf**进行比较:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-AdvancedMailMergeFeatures-CompareTwoExpressions.java" >}}

## 获取有关模板结构的信息

Aspose.Words允许您通过多种方法在模板中收集不同的信息。 例如，您可能需要获取模板中某些合并字段的名称或区域的层次结构。 现在我们将解释可能的变体，以从您的模板中获取一些特定信息。

### 获取合并字段名称

您可能会遇到一个场景，您将希望将数据与由其他人创建的合并字段合并，在这种情况下，您将不确定合并字段的确切名称。 因此，要实现Mail Merge目的，首先，您需要读取并显示所有合并字段的名称。 Aspose.Words允许您使用[GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/)方法获取合并字段名称的集合。

下面的代码示例演示如何获取模板中所有合并字段的名称:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}

### 获取有关合并区域的信息

您可能有一个场景，您想了解您的模板是如何通过指定的合并区域结构的。 您可以使用一些方法来收集有关合并区域的所有必要信息，或者在模板中获取合并区域层次结构，例如[GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy)方法。 可以使用[MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/)类的属性和方法。下面的代码示例演示如何获取合并区域层次结构:

**Java**
{{< highlight java >}}

MailMergeRegionInfo regionInfo = doc.getMailMerge().getRegionsHierarchy();

{{< /highlight >}}

下面的代码示例演示如何根据模板中的特定合并区域的名称获取它们:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ExecuteMailMergeWithRegions-GetRegionsByName.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

### 添加映射字段

Aspose.Words允许您使用[MappedDataFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getMappedDataFields)属性自动映射数据源中字段的名称和模板中Mail Merge字段的名称。 例如，如果您的模板中有一个名为"Last Name"的字段名称，并且在数据源中有字段名称"Last Name"或其他变体（如"Last_Name"或"LastName"），则数据源中的字段将自动映射到相应的映射字段。 如果要将合并模板与许多数据源合并，则映射字段无需将字段重新输入模板以与数据库中的字段名称一致。

下面的代码示例演示当模板中的合并字段和数据源中的数据字段具有不同名称时，如何使用[Add](https://reference.aspose.com/words/java/com.aspose.words/mappeddatafieldcollection/#add-java.lang.String-java.lang.String)方法添加映射字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-MappedFieldNames.java" >}}
