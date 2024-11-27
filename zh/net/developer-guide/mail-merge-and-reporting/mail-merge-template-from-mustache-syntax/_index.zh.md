---
title: Mail Merge模板从Mustache语法在C#
second_title: Aspose.Words为.NET
articleTitle: Mustache语法中的Mail Merge模板
linktitle: Mustache语法中的Mail Merge模板
type: docs
description: "使用C#使用Mustache语法创建模板。 Mustache语法是与不包含字段（HTML或TXT）的模板一起使用的唯一选项。 使用Word模板，您有两个选项：字段或Mustache语法。"
keywords: "mail merge template mustache syntax c#"
weight: 40
url: /zh/net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-07-11-08-07-06
---

除了熟悉的模板之外，Aspose.Words还允许您使用mustache语法创建模板。 Mustache是模板语法的另一种变体，它由包含模板数据的模型对象所括的标记名称组成。

Mustache语法是与不包含字段的模板（如HTML和TXT模板）一起使用的唯一选项。 使用Word模板，您有两个选项可以使用字段或Mustache语法。

Mustache语法支持*foreach*标记，这是将Mail Merge与区域一起使用的替代方法。 所以好处是，如果由于某种原因你不能或者只是你不想使用合并字段和合并区域，你可以使用mustache语法。

您还可以使用*foreach*标记将Mail Merge字段与一些其他字段组合在一起，如下图所示。

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## 创建Mustache模板

要澄清的第一个要点是Mustache不是模板引擎。 Mustache是另一种语法变体，可用于Aspose.Words支持的[load format](https://reference.aspose.com/words/net/aspose.words/loadformat/)中的任何模板。 因此，您可以以编程方式和通过接口创建这样的模板，您只需要包含某些语法并符合Mustache规范。

假设您需要向50个收件人发送相同的电子邮件，以便使用相应的名字个性化问候语。 您可以用一些占位符替换收件人的名字，如下所示:

> Dear {{FirstName}}
>
> I hereby...

这里的问题：如何从1个Mustache模板创建50封电子邮件？ 要回答这个问题，您需要执行带有区域的Mail Merge，以使用实际数据填充模板中占位符的花括号并生成输出文档。

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

正如您从上面的示例中注意到的那样，在Mustache中，当您顺时针旋转花括号90度时，您需要为占位符使用花括号，这些占位符看起来像mustache。

{{% /alert %}}

## 使用Mustache语法

Mustache表示为无逻辑顺序，因为它缺少任何特定的控制流语句，如*for*循环和*if*和*else*条件。 但是您可以使用section tags processing lists和lambdas来实现条件求值和循环。 因此，要在Mail Merge操作中包含Mustache语法，您需要使用[UseNonMergeFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/usenonmergefields/)属性并将其值设置为*True*。

下面的代码示例演示如何用特定数据替换Mustache标记:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "mustache-syntax-using-data-table.cs" >}}

在执行带有区域的Mail Merge以及应用**UseNonMergeFields**属性之前，您可以注意到文档之间的差异:

<img src="mustache-syntax-1.png" alt="mustache_syntax" style="width:400px"/>

{{% alert color="primary" %}}

一节以磅开始，以斜线结束。 也就是说，`{{#foreach list}}`开始一个"foreach"部分，而`{{/foreach list}}`结束它。

{{% /alert %}}

在应用带有区域的Mail Merge之后:

<img src="mustache-syntax-2.png" alt="mustache_syntax_result" style="width:300px"/>

## 使用`IF`字段使Mail Merge智能

Aspose.Words允许您将Mail Merge字段和Mustache标记与`IF`语句一起使用。 `IF`字段可以在任何Mail Merge文档中使用，以在字段为空时抑制不需要的空格和逗号。

`IF`字段公式如下所示:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

这里，条件可以是合并字段或Mustache标记。

例如，如果需要根据性别插入"his"，"her"，"he"或"she"，则可以使用`IF`字段如下所示:

**{ IF { MERGEFIELD Gender } = "MALE" "真文本" "假文本"}**

**{ IF "{{ GENDER }}" = "MALE" "真文本" "假文本"}**

下面的代码示例演示如何使用Mustache标记和`IF`字段执行Mail Merge操作:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "use-if-else-mustache.cs" >}}

在应用**UseNonMergeFields**属性之前，您可以注意到文档之间的差异:

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

并在应用**UseNonMergeFields**属性后:

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
