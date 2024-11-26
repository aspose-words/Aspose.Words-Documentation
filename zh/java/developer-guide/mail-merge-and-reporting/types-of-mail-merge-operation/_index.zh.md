---
title: Java中Mail Merge操作的类型
second_title: Aspose.Words为Java
articleTitle: Mail Merge操作的类型
linktitle: Mail Merge操作的类型
type: docs
description: "执行两种不同类型的Mail Merge操作：简单的Mail Merge和带有区域的Mail Merge。 简单的Mail Merge按每个数据源记录重复整个文档，而带有区域的Mail Merge使用Java只重复每个记录指定的区域。"
keywords: "how to execute Mail Merge java, Mail Merge Java, Simple Mail Merge"
weight: 20
url: /zh/java/types-of-mail-merge-operations/
timestamp: 2024-01-27-14-07-04
---

Mail Merge的主要思想是根据模板和从数据源获取的数据自动创建一个文档或多个文档。 Aspose.Words允许您执行两种不同类型的Mail Merge操作：简单的Mail Merge和带有区域的Mail Merge。

使用simpleMail Merge的最常见示例是，当您希望通过在文档的开头包含它们的名称来为不同的客户端发送文档时。 为此，您需要在模板中创建*First Name*和*Last Name*等合并字段，然后使用数据源中的数据填充它们。 而将Mail Merge与区域一起使用的最常见示例是，当您要发送包含特定订单的文档以及每个订单中所有项目的列表时。 为此，您需要为每个订单在模板自己的区域内创建合并区域，以便使用项目的所有必需数据填充该区域。

两个合并操作之间的主要区别在于简单的Mail Merge（不带区域）按每个数据源记录重复整个文档，而带有区域的Mail Merge仅按记录重复指定的区域。 您可以将简单的Mail Merge操作视为与唯一区域是整个文档的区域合并的特定情况。

{{% alert color="primary" %}}

[MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/)类表示Mail Merge功能。 使用其属性，您可以在执行Mail Merge操作之前自定义所需的行为。

{{% /alert %}}

## 简单Mail Merge操作 {#simple-mail-merge-operation}

一个简单的Mail Merge用于使用来自数据源（单表表示）的所需数据填充模板中的Mail Merge字段。 所以它类似于Microsoft Word中的经典Mail Merge。

您可以在模板中添加一个或多个合并字段，然后执行简单的Mail Merge操作。 如果您的模板不包含任何合并区域，建议使用它。

使用此类型的主要限制是整个文档内容将针对数据源中的每条记录重复。

### 如何执行简单的Mail Merge操作 {#how-to-execute-a-simple-mail-merge-operation}

模板准备就绪后，您可以开始执行简单的Mail Merge操作。 Aspose.Words允许您使用接受各种数据对象作为数据源的不同[执行方法](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-com.aspose.words.IMailMergeDataSource)执行简单的Mail Merge操作。

下面的代码示例演示如何使用[Execute](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-java.lang.String---java.lang.Object)方法之一执行简单的Mail Merge操作:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-ExecuteSimpleMailMerge.java" >}}

您可以在执行simplemail merge之前注意到文档之间的差异:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-1.png" alt="simple_mail_merge_template_aspose_words_java" style="width:300px"/>

并执行simplemail merge后:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge_aspose_words_java" style="width:300px"/>

### 如何创建多个合并文档

在Aspose.Words中，标准Mail Merge操作仅使用数据源中的内容填充单个文档。 因此，您需要多次执行Mail Merge操作以创建多个合并文档作为输出。

下面的代码示例演示如何在Mail Merge操作期间生成多个合并文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-ProduceMultipleDocumentsDuringMailMerge-ProduceMultipleDocumentsDuringMailMerge.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

## Mail Merge与区域

您可以在模板中创建不同的区域，以便具有可以简单地填充数据的特殊区域。 如果要插入具有重复数据的表和行，请使用带有区域的Mail Merge，通过在模板中指定这些区域，使文档动态增长。

您可以创建嵌套（子）区域以及合并区域。 使用这种类型的主要优点是动态增加文档中的部分。 在下一篇文章"NestedMail Mergewith Regions"中查看更多详细信息。

{{% alert color="primary" %}}

有关Mail Merge区域的信息可以使用[MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/)类获得。

{{% /alert %}}

### 如何使用区域执行Mail Merge

Mail Merge区域是文档中具有开始点和结束点的特定部分。 两个点都表示为具有特定名称*"TableStart:XXX"*和*"TableEnd:XXX"*的Mail Merge字段。 Mail Merge区域中包含的所有内容将自动为数据源中的每条记录重复。

Aspose.Words允许您使用接受各种数据对象作为数据源的不同[执行方法](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/)执行Mail Merge。

作为第一步，我们需要创建`DataSet`，以便稍后将其作为输入参数传递给`ExecuteWithRegions`方法:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-CreateDataSet.java" >}}

下面的代码示例演示如何使用[ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#executeWithRegions-com.aspose.words.net.System.Data.DataSet)方法执行带有区域的Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-MailMergeWithRegions.java" >}}

在使用区域执行Mail Merge之前，您可以注意到文档之间的差异:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template_aspose_words_java" style="width:850px"/>

并与区域执行Mail Merge后:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute_aspose_words_java" style="width:850px"/>

### Mail Merge与区域的限制

在执行带有区域的Mail Merge时，您需要考虑一些要点:

* 起点*TableStart:Orders*和终点*TableEnd:Orders*都需要位于同一行或单元格中。 例如，如果在表的单元格中开始合并区域，则必须在与第一个单元格相同的行中结束合并区域。
* 合并字段名称必须与DataTable中的列名称匹配。 除非指定了映射字段，否则对于名称与列名称不同的任何合并字段，带有区域的Mail Merge都不会成功。

如果这些规则之一被破坏，您将得到意外的结果，或者可能引发异常。

{{% alert color="primary" %}}

如果不使用Mail Merge区域，那么它将类似于Microsoft Wordmail merge，并且整个文档内容将针对数据源中的每条记录重复。

{{% /alert %}}

