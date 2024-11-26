---
title: 在文档属性中工作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 文档属性
linktitle: 文档属性
description: "Aspose.Words (单位:千美元) Java 允许存储文档中一些有用的信息, 例如 API 和版本编号或授权 Date, 在内置或自定义文档属性中。"
type: docs
weight: 10
url: /zh/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

文档属性允许存储您文档的一些有用信息 。 这些属性可分为两类:

* 包含文件标题、作者名称、文件统计等值的系统或内置系统。
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 用户定义或自定义,作为名称值对提供,用户可以在此同时定义名称和值.

了解关于 API 和版本编号直接写入输出文档。 例如,将文档转换为PDF时, Aspose.Words 在"应用"字段中填入"Aspose.Words",和"PDF制片人"字段与".Aspose.Words (单位:千美元) Java "YY. M. N.",这里 *YY.M.N* 是一个版本的 Aspose.Words 用于转换。 详情见 [输出文档中包含的生成器或生产者名称](/words/zh/java/generator-or-producer-name-included-in-output-documents/)。 。 。 。

{{% alert color="primary" %}}

请注意你 **无法直接** Aspose.Words 从输出文档中更改或删除此信息。

{{% /alert %}}

## 访问文档属性

访问文档属性 Aspose.Words 使用:

* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) 以获取内置属性。

* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) 以获取自定义属性。

**BuiltInDocumentProperties** 和 **CustomDocumentProperties** 用于收集 [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) 对象。 这些对象可以通过索引器属性通过名称或索引获取.

**BuiltInDocumentProperties** 另通过返回适当类型值的一组输入属性提供对文档属性的访问。 **CustomDocumentProperties** 允许您从文档中添加或删除文档属性。

那个 [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) 类允许您获取文档属性的名称、值和类型。 [https://reference.aspose.com/words/java/com.aspose.words/document 互联网档案馆的存檔,存档日期2013-03-02. QQ,QQ2013-03-02. (中文(简体) ). QQ,QQ2013-03-02. (中文(简体) ). {\fn黑体\fs22\bord1\shad0\3aHBE\4aH00\fscx67\fscy66\2cHFFFFFF\3cH808080}#fn\fs22\shad0\3aHBE\4aH00\fscx67\fscy66\2cHFFFFFF\3cH808080}#fn\fs22\shad0\3a)\fn黑体\fs22\bord1\shad0\3aHBE\4aH00\fscx67\fscy66\2cHFFFFFF\3cH808080}#fn\fs22\shad0\3a)\fn黑体\fs22\bord1\shad0\3aHBE\4aH00\fscx67\fscy66\2cHFFFFFF\3cH808080}#fn\fs22\shad0\3aHBE\4aH00\fscx67\fscy66\2cHFFFFFF\3cH808080} {0} +:1 226 个 {1}[1.2](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) 和 **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), 以获取相应类型的价值。

以下代码示例显示如何在文档中列出所有内置属性和自定义属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)。 。 。 。

{{% /alert %}}

内 Microsoft Word, 您可以使用"文件 − 属性"菜单访问文档属性。

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## 添加或删除文档属性

您无法使用 Aspose.Words。 。 。 。 您只能改变或更新他们的值 。

添加自定义文档属性 Aspose.Words, 使用 [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) 方法,传递新的属性名称和相应类型的价值。 方法返回新创建 **DocumentProperty** 对象。

要删除自定义属性,请使用 [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) 方法,传递去除的属性名称,或 [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) 按索引删除属性的方法。 您也可以使用 [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) 方法。

以下代码示例检查文档中是否存在一个带有特定名称的自定义属性,并添加一些额外的自定义文档属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)。 。 。 。

{{% /alert %}}

以下代码示例显示如何删除自定义文档属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## 更新内建文档属性

Aspose.Words 不自动更新文档属性, 因为 Microsoft Word 但提供了更新一些统计内置文档属性的方法。 打电话 [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) 用于重新计算和更新以下属性的方法:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## 创建与内容链接的新自定义属性

Aspose.Words 提供 [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) 创建新自定义文档属性的方法。 此属性返回新创建的属性对象, 如果 [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) 无效。

以下代码示例显示如何配置自定义属性的链接:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## 获取文档变量

您可以使用 [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) 属性。 可变名称和值为字符串.

以下代码示例显示如何列举文档变量:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)。 。 。 。

{{% /alert %}}

## 从文档中删除个人信息

如果您想与其他人共享 Word 文档, 您可能想要删除个人信息, 如作者名称和公司 。 要做到这一点,使用 [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) 属性来设置标记 Microsoft Word 保存文档时,将从注释、修订和文档属性中删除所有用户信息。

{{% alert color="primary" %}}

设置此选项不会在处理文档时实际删除个人信息 Aspose.Words 只影响 Microsoft Word 行为

{{% /alert %}}
