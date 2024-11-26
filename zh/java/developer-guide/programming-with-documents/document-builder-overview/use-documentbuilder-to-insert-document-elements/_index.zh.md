---
title: 使用DocumentBuilder插入文档元素
second_title: Aspose.Words为Java
articleTitle: 使用DocumentBuilder插入文档元素
linktitle: 使用DocumentBuilder插入文档元素
type: docs
description: "使用Java中的文档构建器插入文档元素。"
weight: 10
url: /zh/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)用于修改文档。 本文解释并描述了如何执行许多任务。

## 插入文本字符串

只需将需要插入到文档中的文本字符串传递给[DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)）方法。 文本格式由`Font`属性决定。 此对象包含不同的字体属性（字体名称、字体大小、颜色等）。 一些重要的字体属性也由[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)属性表示，以允许您直接访问它们。 这些是布尔属性[Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold)，[Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic)和[Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline)。

{{% alert color="primary" %}}

请注意，您设置的字符格式将应用于从文档当前位置开始插入的所有文本。

{{% /alert %}}

下面的代码示例使用DocumentBuilder插入格式化文本。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## 插入段落

DocumentBuilder.writeln也将一串文本插入到文档中，但此外，它还添加了一个段落中断。 当前字体格式也由DocumentBuilder指定。getFont属性和当前段落格式由DocumentBuilder确定。getParagraphFormat属性。

下面的代码示例演示如何将段落插入到文档中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## 插入表

使用`DocumentBuilder`创建表的基本算法很简单:

1. 使用[DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)启动表。
1. 使用[DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell)插入单元格。 这会自动启动一个新行。 如果需要，请使用[DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat)属性指定单元格格式。
1. 使用`DocumentBuilder`方法插入单元格内容。
1. 重复步骤2和3，直到行完成。
1. 调用[DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)结束当前行。 如果需要，请使用[DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat)属性指定行格式。
1. 重复步骤2-5，直到表格完成。
1. 调用[DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)完成表构建。 下面描述了适当的DocumentBuilder表创建方法。

### 开始一张桌子

调用DocumentBuilder。startTable是构建表的第一步。 它也可以在单元格内部调用，在这种情况下，它启动一个嵌套表。 下一个要调用的方法是DocumentBuilder。insertCell.

### 插入单元格

调用DocumentBuilder后。insertCell，将创建一个新单元格，并且您使用`DocumentBuilder`类的其他方法添加的任何内容都将添加到当前单元格中。 要在同一行中启动新单元格，请调用DocumentBuilder。insertCell再次。 使用DocumentBuilder。getCellFormat属性用于指定单元格格式。 它返回一个[getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/)对象，表示表格单元格的所有格式。

### 结束一行

调用DocumentBuilder。endRow完成当前行。 如果调用DocumentBuilder。insertCell紧接着，然后表继续在新行上。 使用`DocumentBuilder.RowFormat`属性指定行格式。 它返回一个[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/)对象，表示表行的所有格式。

### 结束表

调用DocumentBuilder。endTable完成当前表。 此方法只应在DocumentBuilder之后调用一次。endRow被称为。 调用时，DocumentBuilder。endTable将光标移出当前单元格到表格后面的位置。 下面的示例演示如何构建包含2行和2列的格式化表。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## 插入中断

如果要显式开始新行、段落、列、节或页，请调用DocumentBuilder。insertBreak. 将需要插入的由`BreakType`枚举表示的中断类型传递给此方法。
下面的代码示例演示如何在文档中插入分页符。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## 插入图像

DocumentBuilder提供[DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte)方法的多个重载，允许您插入内联或浮动图像。 如果图像是EMF或WMF元文件，它将以元文件格式插入到文档中。 所有其他图像将以PNG格式存储。 的DocumentBuilder。insertImage方法可以使用来自不同来源的图像:

- 通过传递字符串参数从文件或`URL`
- 通过传递`Stream`参数从流
- 通过传递图像参数从图像对象
- 通过传递字节数组参数从字节数组
- 和其他人

对于DocumentBuilder中的每一个。insertImage方法，还有更多的重载，允许您使用以下选项插入图像:

- 在特定位置内联或浮动
- 百分比比例或自定义大小

此外，DocumentBuilder。insertImage方法返回刚刚创建并插入的[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)对象，以便您可以进一步修改形状的属性。

### 插入内联图像

将表示包含图像的文件的单个字符串传递给DocumentBuilder。insertImage将图像作为内联图形插入到文档中。 下面的代码示例演示如何将光标位置的内联图像插入到文档中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### 插入浮动（绝对定位）图像

此示例在指定位置和大小处插入文件或`URL`中的浮动图像。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## 插入书签

要在文档中插入书签，您应该执行以下操作:

1. 调用[DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String)，将所需的书签名称传递给它。
1. 使用`DocumentBuilder`方法插入书签文本。
1. 调用[DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String)传递与DocumentBuilder相同的名称。startBookmark.

书签可以重叠并跨越任何范围。 要创建一个有效的书签，您需要调用两个DocumentBuilder。startBookmark和DocumentBuilder。endBookmark具有相同的书签名称。

保存文档时，格式错误的书签或名称重复的书签将被忽略。

下面的代码示例演示如何使用文档生成器将书签插入到文档中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## 插入字段

Microsoft Word文档中的字段由字段代码和字段结果组成。 字段代码就像一个公式，字段结果是公式产生的值。 字段代码还可以包含字段开关，它们是执行特定动作的附加指令。 您可以使用键盘快捷键Alt+F9在Microsoft Word中的文档中显示字段代码和结果之间切换。 字段代码出现在花括号(`{ }`)之间。使用[DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)在文档中创建字段。 您需要指定字段类型、字段代码和字段值。 如果您不确定特定的字段代码语法，请先在Microsoft Word中创建字段，然后切换以查看其字段代码。
下面的代码示例使用DocumentBuilder将合并字段插入到文档中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## 插入`Form`字段

表单字段是允许与用户"交互"的Word字段的特定情况。 Microsoft Word中的表单字段包括textbox，Combobox和checkbox。DocumentBuilder提供了将每种类型的表单字段插入文档的特殊方法：[DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int)、[DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int)和[DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int)。 请注意，如果为表单字段指定名称，则会自动创建具有相同名称的书签。

### 插入文本输入

DocumentBuilder.insertTextInput在文档中插入文本框。 下面的代码示例演示如何将文本输入表单字段插入到文档中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### 插入`CheckBox`

调用DocumentBuilder。insertCheckBox在文档中插入checkbox。 下面的代码示例演示如何将checkbox表单字段插入到文档中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### 插入组合框

调用DocumentBuilder。insertComboBox在文档中插入组合框。 下面的代码示例演示如何将组合框表单字段插入到文档中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## 在字段级别插入区域设置

客户现在可以在字段级别指定区域设置，并且可以实现更好的控制。 区域设置Id可以与DocumentBuilder内的每个字段相关联。 下面的示例说明了如何使用此选项。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## 插入HTML

您可以轻松地将包含HTML片段或整个HTML文档的HTML字符串插入到Word文档中。 只需将此字符串传递给DocumentBuilder即可。insertHtml方法。 该方法的有用实现之一是将HTML字符串存储在数据库中，并在Mail Merge期间将其插入文档中，以获取添加的格式化内容，而不是使用文档构建器的各种方法构建 下面的代码示例显示使用DocumentBuilder将HTML插入到文档中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## 插入超链接

使用DocumentBuilder。insertHyperlink在文档中插入超链接。 此方法接受三个参数：要在文档中显示的链接的文本、链接目标（URL或文档内书签的名称）以及如果`URL`是文档内书签的名称，则应为true的布尔参数。DocumentBuilder.insertHyperlink内部调用DocumentBuilder。insertField. 该方法始终在URL的开头和结尾添加撇号。 请注意，您需要使用`Font`属性显式指定超链接显示文本的字体格式。 下面的代码示例使用DocumentBuilder将超链接插入到文档中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## 插入目录

您可以通过调用[DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String)方法将`TOC`（目录）字段插入到当前位置的文档中。 的DocumentBuilder。insertTableOfContents方法只会在文档中插入`TOC`字段。 为了构建目录并根据页码显示它们，必须在插入字段后调用both**Document.UpdateFields**方法。 下面的代码示例演示如何将目录字段插入到文档中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## 插入Ole对象

如果你想Ole对象调用[DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String)。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## 插入Ole对象时设置文件名和扩展名

如果OLE处理程序未知，OLE包是存储嵌入对象的传统和"未记录"方式。 早期的Windows版本，如Windows 3.1，95和98有Packager.exe应用程序，可用于将任何类型的数据嵌入到文档中。 现在，此应用程序从Windows中排除，但MSWord和其他应用程序仍然使用它来嵌入数据，如果OLE处理程序丢失或未知。 OlePackage类允许访问OLE Package属性。下面的代码示例演示如何设置OLE Package的文件名、扩展名和显示名称。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## 获取对OLE对象原始数据的访问

下面的代码示例演示如何使用`OleFormat.GetRawData`()方法获取OLE对象原始数据。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## 在文档中插入水平规则

下面的代码示例演示如何使用`DocumentBuilder.InsertHorizontalRule`方法将水平规则形状插入到文档中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## 使用形状

### 插入内联和自由浮动形状

您可以使用`DocumentBuilder.InsertShape`方法将具有指定类型和大小的内联形状以及具有指定位置、大小和文本换行类型的自由浮动形状插入到文档中。 `DocumentBuilder.InsertShape`方法允许将DML形状插入到文档模型中。 文档必须以支持DML形状的格式保存，否则这样的节点将在文档保存时转换为VML形状。 下面的代码示例演示如何将这些类型的形状插入到文档中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### 创建剪断角矩形

您可以使用Aspose.Words创建剪断角矩形。 形状类型是SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, 和DiagonalCornersRounded。 使用具有这些形状类型的`DocumentBuilder.InsertShape`方法创建DML形状。 这些类型不能用于创建VML形状。 尝试使用"Shape"类的公共构造函数创建形状会引发"NotSupportedException"异常。 下面的代码示例演示如何将这些类型的形状插入到文档中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### 将带有数学XML的形状作为形状导入DOM

您可以使用`LoadOptions.ConvertShapeToOfficeMath`属性将带有EquationXML的形状转换为Office Math对象。 此属性的默认值对应于MS字行为，即具有公式XML的形状不会转换为Office math对象。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
