---
title: 指定装入选项 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 指定装入选项
linktitle: 指定装入选项
description: "使用加载文档时设置高级属性 Java 对过程进行更精确的控制。"
type: docs
weight: 10
url: /zh/java/specify-load-options/
---

装入文档时,可以设置一些高级属性. Aspose.Words 为你提供 [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) class,它允许更精确地控制负载过程. 有些负载格式有一个相应的类,为这种负载格式持有负载选项,例如有 [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) 用于加载到 PDF 格式或 [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) 用于装入 TXT。 本条举例说明了与《公约》 **LoadOptions** 课。

## 设定 Microsoft Word 更改外观的版本

不同的版本 Microsoft Word 应用程序可以不同方式显示文档。 例如,OOXML文档存在众所周知的问题,如DOCX或 DOTX使用WPS办公室生产. 在这种情况下,基本文件标记要素可能缺失或可能被以不同方式解释,造成 Microsoft Word 2019年的文档显示方式与 Microsoft Word 2010 (英语).

默认 Aspose.Words 使用 Microsoft Word 2019年规则. 如果您需要使文档加载显示在前一个文档中 Microsoft Word 应用程序版本,请使用 [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) 财产和财产 **LoadOptions** 课。

以下代码示例显示如何设置 Microsoft Word 带有负载选项的版本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## 设置语言首选项以更改外观

显示文档的细节 Microsoft Word 不仅依赖于应用程序版本和 **MswVersion** 属性值以及语言设置。 Microsoft Word 可能根据" Office Languáge" 对话框设置显示不同的文档, 可以在" 文件 → 选项 → Languáge" 中找到 。 使用此对话框,一个用户可以选择主要语言,校对语言,显示语言等. Aspose.Words 提供 [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) 属性等同此对话框。 若为 Aspose.Words 输出与 Microsoft Word 输出,为 **EditingLanguage** – 这可以改进输出文档.

以下代码示例显示如何设置日语 **EditingLanguage**编号:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## 使用 WarningCallback 控制问题 装入文档时

有些文档可能损坏、包含无效的条目,或具有当前不支持的特性 Aspose.Words。 。 。 如果您想知道在装入文档时发生的问题, Aspose.Words 提供 [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) 接口。

以下代码示例显示执行 **IWarningCallback** 接口:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

要了解所有问题 整个负载时间,使用 [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) 属性。

以下代码示例显示如何使用此属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## 使用资源记录 回调控制外部资源加载

文档可能包含与位于本地磁盘、网络或互联网上的图像的外部链接。 Aspose.Words 自动将此类图像加载到文档中,但有时需要控制此进程。 例如,决定我们是否真的需要加载某个图像,或者也许跳过它. 那个 [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) 加载选项允许您控制此选项 。

以下代码示例显示执行 [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) 接口:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

以下代码示例显示如何使用 **ResourceLoadingCallback** 属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## 使用 TempFolder 来避免内存例外

Aspose.Words 支持拥有数千页丰富内容的极其庞大的文件。 装入这类文件可能需要大量的内存。 在装货过程中, Aspose.Words 需要更多的内存来保存用于解析文档的临时结构。

如果您在装入文档时对内存退出例外有问题, 请尝试使用 [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) 属性。 在这种情况下, Aspose.Words 将会将一些数据存储在临时文件中而不是存储,这可以帮助避免这样的例外。

以下代码示例显示如何设置 **TempFolder**编号:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## 明确设置编码

大多数现代文档格式将其内容存储在Unicode中,不需要特殊处理. 另一方面,仍有许多文档使用一些Unicode前的编码,有时或者错过编码信息,或者甚至不支持本质上的编码信息. Aspose.Words 尝试默认自动检测相应的编码,但在罕见的情况下,你可能需要使用不同于我们编码识别算法检测到的编码. 在这种情况下,使用 [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) 属性以获取或设置编码。

以下代码示例显示如何设置编码以覆盖自动选择的编码:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## 装入加密文档

你可以装入 Word 文档用密码加密 。 要做到这一点,请使用特殊的构造器超载,它接受 [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) 对象。 此对象包含 [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) 属性,指定密码字符串。

以下代码示例显示如何用密码加载加密的文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

如果您事先不知道文件是否加密, 您可以使用 [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) class,它提供了使用文件格式工作的实用方法,例如检测文件格式或将文件扩展名转换为/从文件格式引用. 要检测文档是否加密并需要密码才能打开,请使用 [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) 属性。

以下代码示例显示如何验证是否加密的 OpenDocument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
