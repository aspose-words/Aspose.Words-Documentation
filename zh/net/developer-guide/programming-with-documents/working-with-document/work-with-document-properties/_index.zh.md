---
title: 使用 C# 中的文档属性
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用文档属性
linktitle: 使用文档属性
description: "Aspose.Words for .NET 允许使用 C# 在内置或自定义文档属性中存储一些有关文档的有用信息，例如 API 和版本号或授权 Date。"
type: docs
weight: 10
url: /zh/net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

文档属性允许存储有关文档的一些有用信息。这些属性可以分为两组：

* 包含文档标题、作者姓名、文档统计信息等值的系统或内置。
* 用户定义或自定义，以名称-值对的形式提供，用户可以在其中定义名称和值。

知道有关 API 和版本号的信息直接写入输出文档是很有用的。例如，将文档转换为 PDF 时，Aspose.Words 在"应用程序"字段中填写"Aspose.Words"，在"PDF 制作者"字段中填写"Aspose.Words for .NET YY.MN"，其中 *YY.M.N* 是用于转换的 Aspose.Words 版本。有关更多详细信息，请参阅 [输出文档中包含的生成者或生产者名称](/words/zh/net/generator-or-producer-name-included-in-output-documents/)。

{{% alert color="primary" %}}

请注意，您可以通过 **无法指挥** Aspose.Words 更改或从输出文档中删除此信息。

{{% /alert %}}

## 访问文档属性

要访问 Aspose.Words 中的文档属性，请使用：

* [BuiltInDocumentProperties](https://reference.aspose.com/words/zh/net/aspose.words/document/builtindocumentproperties/) 获取内置属性。

* [CustomDocumentProperties](https://reference.aspose.com/words/zh/net/aspose.words/document/customdocumentproperties/) 获取自定义属性。

**BuiltInDocumentProperties** 和 **CustomDocumentProperties** 是 [DocumentProperty](https://reference.aspose.com/words/zh/net/aspose.words.properties/documentproperty/) 对象的集合。这些对象可以通过索引器属性按名称或索引获取。

**BuiltInDocumentProperties**还通过一组返回适当类型值的输入属性提供对文档属性的访问。 **CustomDocumentProperties** 使您能够在文档中添加或删除文档属性。

[DocumentProperty](https://reference.aspose.com/words/zh/net/aspose.words.properties/documentproperty/) 类允许您获取文档属性的名称、值和类型。 [Value](https://reference.aspose.com/words/zh/net/aspose.words.properties/documentproperty/value/) 返回一个对象，但有一组方法允许您将属性值转换为特定类型。了解属性的类型后，可以使用 **DocumentProperty.ToXXX** 方法之一（例如 **DocumentProperty.**[ToString](https://reference.aspose.com/words/zh/net/aspose.words.properties/documentproperty/tostring/) 和 **DocumentProperty.**[ToInt](https://reference.aspose.com/words/zh/net/aspose.words.properties/documentproperty/toint/)）来获取适当类型的值。

以下代码示例演示如何枚举文档中的所有内置和自定义属性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx)下载本示例的模板文件。

{{% /alert %}}

在 Microsoft Word 中，您可以使用"文件 → 属性"菜单访问文档属性。

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="工作与文档属性-1.png" style="width:400px"/>

## 添加或删除文档属性

您无法使用 Aspose.Words 添加或删除内置文档属性。您只能更改或更新它们的值。

要使用 Aspose.Words 添加自定义文档属性，请使用 [Add](https://reference.aspose.com/words/zh/net/aspose.words.properties/customdocumentproperties/add/#add/) 方法，传递新属性名称和适当类型的值。该方法返回新创建的 **DocumentProperty** 对象。

要删除自定义属性，请使用 [Remove](https://reference.aspose.com/words/zh/net/aspose.words.properties/documentpropertycollection/remove/) 方法，向其传递要删除的属性名称，或使用 [RemoveAt](https://reference.aspose.com/words/zh/net/aspose.words.properties/documentpropertycollection/remove/at) 方法按索引删除属性。您还可以使用 [Clear](https://reference.aspose.com/words/zh/net/aspose.words.properties/documentpropertycollection/clear/) 方法删除所有属性。

以下代码示例检查文档中是否存在具有给定名称的自定义属性，并添加更多自定义文档属性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx)下载本示例的模板文件。

{{% /alert %}}

以下代码示例演示如何删除自定义文档属性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## 更新内置文档属性

Aspose.Words 不会像 Microsoft Word 那样自动更新文档属性，但提供了更新某些统计内置文档属性的方法。调用[UpdateWordCount](https://reference.aspose.com/words/zh/net/aspose.words/document/updatewordcount/#updatewordcount/)方法重新计算并更新以下属性：

* [Characters](https://reference.aspose.com/words/zh/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/zh/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/zh/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/zh/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/zh/net/aspose.words.properties/builtindocumentproperties/lines/)

## 创建链接到内容的新自定义属性

Aspose.Words 提供 [AddLinkToContent](https://reference.aspose.com/words/zh/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) 方法来创建链接到内容的新自定义文档属性。该属性返回新创建的属性对象，如果 [LinkSource](https://reference.aspose.com/words/zh/net/aspose.words.properties/documentproperty/linksource/) 无效，则返回 null。

以下代码示例显示如何配置自定义属性的链接：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## 获取文档变量

您可以使用 [Variables](https://reference.aspose.com/words/zh/net/aspose.words/document/variables/) 属性获取文档变量的集合。变量名称和值是字符串。

以下代码示例展示了如何枚举文档变量：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx)下载本示例的模板文件。

{{% /alert %}}

## 从文档中删除个人信息

如果您想与其他人共享 Word 文档，您可能需要删除作者姓名和公司等个人信息。为此，请使用 [RemovePersonalInformation](https://reference.aspose.com/words/zh/net/aspose.words/document/removepersonalinformation/) 属性设置标志，指示 Microsoft Word 将在保存文档时从注释、修订和文档属性中删除所有用户信息。

以下代码示例展示了如何删除个人信息：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

设置此选项实际上不会在处理 Aspose.Words 文档时删除个人信息，并且仅影响 Microsoft Word 行为。

{{% /alert %}}
