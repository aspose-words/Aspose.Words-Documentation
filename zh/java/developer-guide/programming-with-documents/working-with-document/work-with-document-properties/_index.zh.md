---
title: 使用Java中的文档属性
second_title: Aspose.Words为Java
articleTitle: 使用文档属性
linktitle: 使用文档属性
description: "Aspose.WordsforJava允许在内置或自定义文档属性中存储有关文档的一些有用信息，例如API和版本号或授权日期。"
type: docs
weight: 10
url: /zh/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

文档属性允许存储有关文档的一些有用信息。 这些属性可以分为两组:

* 包含文档标题、作者姓名、文档统计信息等值的系统或内置。
* 用户定义或自定义，作为名称-值对提供，用户可以在其中定义名称和值。

知道有关API和版本号的信息直接写入输出文档非常有用。 例如，将文档转换为PDF时，Aspose.Words用"Aspose.Words"填充"应用程序"字段，用"PDF生产者"字段用"Aspose.Words填充JavaYY。M.N"，其中*YY.M.N*是用于转换的Aspose.Words的版本。 有关更多详细信息，请参阅 [输出文档中包含的生成器或生产者名称](/words/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

请注意，您**cannot direct**Aspose.Words要从输出文档中更改或删除此信息。

{{% /alert %}}

## 访问文档属性

要访问Aspose.Words中的文档属性，请使用:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties)获取内置属性。

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties)获取自定义属性。

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

[DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/)类允许您获取文档属性的名称、值和类型。 [价值]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value）返回一个对象，但有一组方法允许您获取转换为特定类型的属性值。了解该方法是怎样的，可以使用**DocumentProperty.ToXXX**方法，例如**DocumentProperty.**[ToString](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString)和**DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt)，获取相应类型的值。

下面的代码示例演示如何枚举文档中的所有内置属性和自定义属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

在Microsoft Word中，您可以使用"文件→属性"菜单访问文档属性。

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## 添加或删除文档属性

不能使用Aspose.Words添加或删除内置文档属性。 您只能更改或更新它们的值。

要使用Aspose.Words添加自定义文档属性，请使用[Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean)方法，传递新的属性名称和相应类型的值。 该方法返回新创建的**DocumentProperty**对象。

若要删除自定义属性，请使用[Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String)方法，将要删除的属性名称传递给它，或使用[RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int)方法按索引删除属性。 您还可以使用[Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear)方法删除所有属性。

下面的代码示例检查文档中是否存在具有给定名称的自定义属性，并添加更多的自定义文档属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

下面的代码示例演示如何删除自定义文档属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## 更新内置文档属性

Aspose.Words不会像Microsoft Word对某些属性所做的那样自动更新文档属性，但提供了一种更新某些统计内置文档属性的方法。 调用[UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount)方法重新计算和更新以下属性:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## 创建链接到内容的新自定义属性

Aspose.Words提供[AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String)方法来创建链接到内容的新自定义文档属性。 此属性返回新创建的属性对象，如果[LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent)无效，则返回null。

下面的代码示例演示如何配置指向自定义属性的链接:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## 获取文档变量

您可以使用[Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables)属性获取文档变量的集合。 变量名和值是字符串。

下面的代码示例演示如何枚举文档变量:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## 从文档中删除个人信息

如果您想与其他人共享Word文档，您可能需要删除作者姓名和公司等个人信息。 为此，使用[RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation)属性设置标志，指示Microsoft Word将在保存文档时从注释、修订和文档属性中删除所有用户信息。

{{% alert color="primary" %}}

设置此选项实际上不会在Aspose.Words中处理文档时删除个人信息，并且只影响Microsoft Word行为。

{{% /alert %}}
