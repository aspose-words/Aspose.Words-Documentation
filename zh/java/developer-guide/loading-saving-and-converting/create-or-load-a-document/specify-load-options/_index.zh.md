---
title: 在Java中指定加载选项
second_title: Aspose.Words为Java
articleTitle: 指定加载选项
linktitle: 指定加载选项
description: "使用Java加载文档时设置高级属性，以获得对过程的更精确控制。"
type: docs
weight: 10
url: /zh/java/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

加载文档时，可以设置一些高级属性。 Aspose.Words为您提供[LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/)类，它允许更精确地控制加载过程。 一些加载格式有一个相应的类，用于保存此加载格式的加载选项，例如，有[PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/)用于加载到PDF格式或[TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/)用于加载到TXT。 本文提供了使用**LoadOptions**类的选项的示例。

## 设置Microsoft Word版本以更改外观

不同版本的Microsoft Word应用程序可以以不同的方式显示文档。 例如，使用WPSOffice生成的DOCX或DOTX等OOXML文档存在一个众所周知的问题。 在这种情况下，必要的文档标记元素可能丢失或可能被不同地解释，导致Microsoft Word2019与Microsoft Word2010相比以不同的方式显示这样的文档。

默认情况下，Aspose.Words使用Microsoft Word2019规则打开文档。 如果您需要使文档加载显示为以前的Microsoft Word应用程序版本之一，则应使用**LoadOptions**类的[MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion)属性显式指定所需的版本。

下面的代码示例演示如何使用load选项设置Microsoft Word版本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## 设置语言首选项以更改外观

在Microsoft Word中显示文档的详细信息不仅取决于应用程序版本和**MswVersion**属性值，还取决于语言设置。 Microsoft Word根据"Office语言首选项"对话框设置，可以在"文件→选项→语言"中找到不同的文档显示方式。 使用此对话框，用户可以选择主要语言、校对语言、显示语言等。 Aspose.Words提供[LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences)属性作为此对话框的等价物。 如果Aspose.Words输出与Microsoft Word输出不同，请为**EditingLanguage**设置适当的值-这可以改进输出文档。

下面的代码示例演示如何将日语设置为**EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## 在加载文档时使用WarningCallback来控制问题

某些文档可能已损坏、包含无效条目或具有Aspose.Words当前不支持的功能。 如果您想了解加载文档时发生的问题，Aspose.Words提供[IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/)接口。

下面的代码示例演示**IWarningCallback**接口的实现:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

要获取有关整个加载时间内所有问题的信息，请使用[WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback)属性。

下面的代码示例演示如何使用此属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## 使用ResourceLoadingCallback控制外部资源加载

文档可能包含指向本地磁盘、网络或Internet上某处的图像的外部链接。 Aspose.Words自动将此类图像加载到文档中，但有些情况下需要控制此过程。 例如，决定我们是否真的需要加载某个图像，或者跳过它。 [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback)load选项允许您对此进行控制。

下面的代码示例演示[IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/)接口的实现:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

下面的代码示例演示如何使用**ResourceLoadingCallback**属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## 使用TempFolder避免内存异常

Aspose.Words支持具有数千页充满丰富内容的超大文档。 加载此类文档可能需要很多RAM。 在加载过程中，Aspose.Words需要更多的内存来保存用于解析文档的临时结构。

如果在加载文档时遇到内存不足异常问题，请尝试使用[TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder)属性。 在这种情况下，Aspose.Words将一些数据存储在临时文件而不是内存中，这可以帮助避免这样的异常。

下面的代码示例演示如何设置**TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## 显式设置编码

大多数现代文档格式将其内容存储在Unicode中，不需要特殊处理。 另一方面，仍然有许多文档使用一些预Unicode编码，有时要么错过编码信息，要么本质上甚至不支持编码信息。 Aspose.Words默认情况下尝试自动检测适当的编码，但在极少数情况下，您可能需要使用与我们的编码识别算法检测到的编码不同的编码。 在这种情况下，使用[Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding)属性来获取或设置编码。

下面的代码示例演示如何设置编码以复盖自动选择的编码:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## 加载加密文档

您可以加载使用密码加密的Word文档。 为此，请使用特殊的构造函数重载，它接受[LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/)对象。 此对象包含[Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword)属性，该属性指定密码字符串。

下面的代码示例演示如何加载使用密码加密的文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

如果您事先不知道文件是否已加密，则可以使用[FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/)类，该类提供用于处理文件格式的实用程序方法，例如检测文件格式或将文件扩展名转换为/从文件格式枚举。 要检测文档是否已加密并需要密码才能打开，请使用[IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted)属性。

下面的代码示例演示如何验证OpenDocument是否已加密:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
