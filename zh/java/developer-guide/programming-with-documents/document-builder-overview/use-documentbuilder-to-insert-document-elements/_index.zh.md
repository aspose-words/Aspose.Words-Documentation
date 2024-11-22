---
title: 使用 `DocumentBuilder` 插入文档元素
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 使用 `DocumentBuilder` 插入文档元素
linktitle: 使用 `DocumentBuilder` 插入文档元素
type: docs
description: "使用文档构建器插入文档元素 Java。 。 。 。"
weight: 10
url: /zh/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

那个 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 用于修改文档。 本条解释并描述了如何完成一些任务.

## 插入文本的字符串

只需将您需要插入文档的文本串传递到 [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String))方法。 文本格式由 `Font` 属性。 此对象包含不同的字体属性(font名称,字体大小,颜色等). 一些重要的字体属性也由 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 属性允许您直接访问它们。 这些是布尔属性 [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), 和 [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline)。 。 。 。

{{% alert color="primary" %}}

请注意,您设定的字符格式将适用于所有从文档当前位置插入的文本。

{{% /alert %}}

以下代码示例 使用文档构建器插入格式化文本 。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## 插入一个段落

文档Builder.writeln在文档中也插入一串文本,但除此之外,它还添加了一个段落间隔。 当前字体格式也由文档构建器指定. 起来 字体属性和当前段落格式由文档构建器.getFormat属性决定。

以下代码示例显示如何在文档中插入一个段落。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## 插入一个表格

使用 `DocumentBuilder` 简单:

一、导 言 使用 [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)。 。 。 。
一、导 言 使用 [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell)。 。 。 。 此自动启动新行 。 如果需要,请使用 [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) 属性以指定单元格格式。
一、导 言 使用单元格内容插入 `DocumentBuilder` 方法。 方法。 。
一、导 言 重复第二步和第三步,直到行完成.
一、导 言 调用 [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) 以结束当前行。 必要时使用 [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) 属性以指定行格式。
一、导 言 重复步骤2 - 5,直到表完成.
一、导 言 调用 [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) 完成桌楼。 下文介绍了适当的文档构建器表格创建方法。

### 开始表格

调用文档构建器. start 桌子是建造桌子的第一步。 也可以在一个细胞内叫,在这种情况下,它开始一个嵌入式的桌子. 下一个调用的方法是 DocumentBuilder. 插入Cell.

### 插入单元格

拨打文档库后. 插入 单元格,创建一个新单元格,并使用其他方法添加任何内容 `DocumentBuilder` 类将被添加到当前单元格中。 要在同一行开始一个新的单元格,请拨打文档构建器。 插入 又来手机了 使用文档构建器。 getCell 格式属性以指定单元格格式。 它返回一个 [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) 对象,它代表表格单元格的所有格式。

### 结束行

调用文档构建器. end 要完成当前行的行 。 若唤作文档建设者. 插入 紧接着的单元格,然后表格在新的行上继续. 使用 `DocumentBuilder.RowFormat` 属性以指定行格式。 它返回一个 [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) 对象表示表格行的所有格式。

### 结束一个表格

调用文档构建器. end 要填写当前表格的表格 。 这种方法只应在DocumentBuilder之后调用一次. endRow被调用。 当调用时, DocumentBuilder.end 表格将光标从当前单元格中移动到表格之后的位置。 下面的例子说明如何构建一个包含2行和2列的格式表格.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## 插入换行符

如果您想要明确启动新行, 段落, 列, 段落, 或页面, 请调用文档构建器 。 插入断层。 传递到此方法中您需要插入的换行类型为 `BreakType` 计数
以下代码示例显示如何在文档中插入分页符。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## 插入图像

文件构建器提供了数个超载 [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) 使您能够插入内置或浮动图像的方法。 如果图像是EMF或WMF metafile,将以metafile格式插入文档. 所有其他图像将以PNG格式存储. 文档构建器。 插入 图像方法可以使用不同来源的图像:

- 从文件或 `URL` 通过字符串参数
- 从溪流经过 `Stream` 参数
- 从图像对象通过图像参数
- 从字节数组通过字节数组参数
- 怎么样? 还有其他人

为各造文具. 插入 图像方法,还有更多的超载,允许您插入一个带有以下选项的图像:

- 内在或漂浮在特定位置
- 比例或自定义规模

此外,文件编制器。 图像方法返回 a [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 对象刚刚创建并插入,以便您进一步修改形状的属性。

### 插入内置图像

将一个代表图像的文件的单一字符串传递到文档构建器 。 插入 将图像作为内置图形插入文档的图像。 以下代码示例显示如何将光标位置的内置图像插入文档。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### 插入浮动( 绝对定位) 图像

此示例从文件中插入浮动图像或 `URL` 在指定的位置和大小。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## 插入书签

要在文档中插入书签,您应当做到以下几点:

一、导 言 调用 [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) 把它传到书签上
一、导 言 使用 `DocumentBuilder` 方法。 方法。 。
一、导 言 调用 [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) 与文档Builder. startBookmark使用的名称相同。

书签可以重叠,跨越任意范围. 要创建有效的书签, 您需要调用相同的书签名称的 DocumentBuilder. startBookmark 和 DocumentBuilder. endBookmark 。

不良形成的书签或带有重复名称的书签在保存文档时会被忽略.

以下代码示例显示如何使用文档构建器在文档中插入书签.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## 插入字段

域数 Microsoft Word 文档包含一个字段代码和一个字段结果。 字段代码就像一个公式,字段结果就是公式产生的值. 字段代码也可能包含字段开关,这些开关是执行特定动作的补充指示. 您可以在文档中显示字段代码和结果之间切换到 Microsoft Word 使用键盘快捷键 Alt+F9. 字段代码出现在卷曲括号之间( { } 使用。 [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) 在文档中创建字段。 您需要指定字段类型、字段代码和字段值。 如果您不确定特定字段代码语法,请在 Microsoft Word 首先切换到查看它的字段代码。
以下代码示例使用文档构建器将合并字段插入文档中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## 插入a `Form` 外地

窗体字段是Word字段的特例,允许与用户"交互". 格式字段在 Microsoft Word 包括文本框、Combox和复选框。 文档构建器提供了在文档中插入每一种窗体字段的特殊方法: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) , (中文). [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), 和 [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int)。 。 。 注意,如果指定窗体字段的名称,则自动创建同名书签.

### 插入文本输入

文档构建器。插入文本输入以插入到文档中。 以下代码示例显示如何在文档中插入文本输入窗体字段。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### 插入a `CheckBox`

调用文档构建器。 插入 检查框将一个复选框插入到文档中。 以下代码示例显示如何在文档中插入一个复选框窗体字段。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### 插入组合框

调用文档构建器。 插入ComboBox 在文档中插入组合框。 以下代码示例显示如何在文档中插入组合框窗体字段。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## 在外地一级插入语言

客户可以说明 地处外地,可以实现更好的控制。 语言 Ids可以和文档构建器中的每个字段关联. 下面的例子说明如何利用这一选择。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## 插入 HTML

您可以在 Word 文档中轻松插入包含 HTML 片段或整个 HTML 文档的 HTML 字符串。 把这个字符串传递给文档构建器 。 插入 Html方法 (英语). 方法的有用执行之一是将 HTML 字符串存储在数据库中,并在文档中插入 Mail Merge 要添加格式化的内容,而不是使用文档构建器的各种方法来构建。 以下代码示例显示使用文档构建器将 HTML 插入到文档中.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## 插入超链接

使用文档Builder. 插入Hyperlink在文档中插入超链接. 这种方法接受三个参数:文档中要显示的链接文本,链接目的地(URL或文档中书签的名称),以及布尔参数,应当为 true 如果 `URL` 是文档中书签的名称。 文档构建器 插入Hyperlink内部呼叫文档构建器 插入字段 。 该方法总是在 URL 的始末添加aposrophes. 请注意,您需要明确使用超链接显示文本的字体格式 `Font` 属性。 以下代码示例使用文档构建器在文档中插入超链接。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## 插入目录

您可以插入一个 `TOC` (目录)按当前位置在文档中填入 [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) 方法。 文档构建器。 插入 TableOf Contents 方法将只插入一个 `TOC` 字段输入文档。 为了构建目录并按页码显示,两者 **Document.UpdateFields**方法必须在插入字段后调用。 以下代码示例显示如何在文档中插入目录字段。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## 插入 Ole 对象

如果您想要 Ole 对象调用 [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String)。 。 。 。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## 插入 Ole 对象时设定文件名称和扩展名

OLE包是一种遗产和"无文件"的方式,如果OLE处理器未知,可以存储嵌入式对象. 早点 Windows 例如, Windows 3.1、95和98有包商。 执行可用于将任何类型数据嵌入文档的应用程序。 现在,这个应用程序被排除在 Windows 但是,如果OLE处理器缺失或未知,MS Word和其他应用程序仍然使用它来嵌入数据. OlePackage类允许访问OLE包属性. 以下代码示例显示如何设置OLE套件的文件名称,扩展名和显示名称.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## 获取 OLE 对象原始数据

以下代码示例演示如何获取 OLE 使用对象原始数据 `OleFormat.GetRawData`() 方法。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## 水平插入 规则为文档

以下代码示例显示如何使用 `DocumentBuilder.InsertHorizontalRule` 方法。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## 与形状合作

### 插入内线和自由浮动形状

您可以在文档中插入带有指定类型和大小以及带有指定位置、大小和文本包类型的自由浮动形状的内置形状。 `DocumentBuilder.InsertShape` 方法。 那个 `DocumentBuilder.InsertShape` 方法允许在文档模型中插入 DML 形状。 文档必须保存在支持DML形状的格式中,否则这样的节点会被转换成VML形状,同时保存文档. 以下代码示例显示如何在文档中插入这些类型的形状.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### 创建剪刀角矩形

您可以使用 Aspose.Words。 。 。 形状类型有:SingleCornerSnipt,TopCornersSnipt,diagonalCornersSnipt,TopCorners OneRounded 等. OneSnipt,SingleCornerRound,TopCornersRound,以及DiagonalCornersRound. 中国植物物种信息数据库. DML 形状是使用 `DocumentBuilder.InsertShape` 这些形状类型的方法。 这些类型不能用来创建VML形状. 试图通过使用"形状"类的公建器来创造形状,提出了"不支持的例外"例外. 以下代码示例显示如何在文档中插入这些类型的形状.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### 导入带有数学 XML 的形状为形状 DOM

你可以用来 `LoadOptions.ConvertShapeToOfficeMath` 属性将带有方程式XML的形状转换为 Office Math 对象。 此属性的默认值对应 MS Word 行为,即带有方程式 XML 的形状不转换为 Office 数学对象.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
