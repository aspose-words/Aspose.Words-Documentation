---
title: 使用DocumentBuilder插入文档元素
second_title: Aspose.Words对于C++
articleTitle: 使用DocumentBuilder插入文档元素
linktitle: 使用DocumentBuilder插入文档元素
type: docs
description: "使用 C++ 中的文档构建器插入文档元素。"
weight: 80
url: /zh/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

`DocumentBuilder`用于修改文档。 本文解释并描述了如何执行许多任务:

## 插入文本字符串

只需将需要插入到文档中的文本字符串传递给`DocumentBuilder.Write`方法即可。 文本格式由`Font`属性决定。 此对象包含不同的字体属性（字体名称、字体大小、颜色等）。 一些重要的字体属性也由DocumentBuilder属性表示，以允许您直接访问它们。 这些是布尔属性`Font.Bold`，`Font.Italic`和`Font.Underline`。

请注意，您设置的字符格式将应用于从文档当前位置开始插入的所有文本。

下面的示例使用DocumentBuilder插入格式化文本。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## 插入段落

 `DocumentBuilder.Writeln`也将文本字符串插入到文档中，但此外，它还添加了一个段落中断。 当前字体格式也由`DocumentBuilder.Font`属性指定，当前段落格式由`DocumentBuilder.ParagraphFormat`属性确定。 下面的示例演示如何在文档中插入段落。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## 插入表

使用DocumentBuilder创建表的基本算法很简单:

1. 使用`DocumentBuilder.StartTable`启动表。
1. 使用`DocumentBuilder.InsertCell`插入单元格。 这会自动启动一个新行。 如果需要，请使用`DocumentBuilder.CellFormat`属性指定单元格格式。
1. 使用`DocumentBuilder`方法插入单元格内容。
1. 重复步骤2和3，直到行完成。
1. 调用`DocumentBuilder.EndRow`结束当前行。 如果需要，请使用`DocumentBuilder.RowFormat`属性指定行格式。
1. 重复步骤2-5，直到表格完成。
1. 调用`DocumentBuilder.EndTable`完成表构建。 下面描述了适当的DocumentBuilder表创建方法。

### 开始一张桌子

调用`DocumentBuilder.StartTable`是构建表的第一步。 它也可以在单元格内部调用，在这种情况下，它会启动一个嵌套表。 下一个要调用的方法是`DocumentBuilder.InsertCell`。

### 插入单元格

调用`DocumentBuilder->InsertCell`后，将创建一个新单元格，并且使用`DocumentBuilder`类的其他方法添加的任何内容都将添加到当前单元格中。 要在同一行中启动新单元格，请再次调用`DocumentBuilder->InsertCell`。 使用`DocumentBuilder.CellFormat`属性指定单元格格式。 它返回一个`CellFormat`对象，表示表格单元格的所有格式。

### 结束一行

调用`DocumentBuilder.EndRow`完成当前行。 如果在那之后立即调用`DocumentBuilder->InsertCell`，则表将继续在新行上。

使用`DocumentBuilder.RowFormat`属性指定行格式。 它返回一个`RowFormat`对象，表示表行的所有格式。

### 结束表

调用`DocumentBuilder.EndTable`完成当前表。 此方法应在调用`DocumentBuilder->EndRow`后仅调用一次。 调用时，`DocumentBuilder.EndTable`将光标移出当前单元格到表格后面的位置。 下面的示例演示如何构建包含2行和2列的格式化表。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## 插入中断

如果要显式开始新行、段落、列、节或页，请调用`DocumentBuilder.InsertBreak`。 将需要插入的由`BreakType`枚举表示的中断类型传递给此方法。 下面的示例演示如何在文档中插入分页符。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## 插入图像

DocumentBuilder提供`DocumentBuilder->InsertImage`方法的多个重载，允许您插入内联或浮动图像。 如果图像是EMF或WMF元文件，它将以元文件格式插入到文档中。 所有其他图像将以PNG格式存储。 `DocumentBuilder->InsertImage`方法可以使用来自不同来源的图像:

- 通过传递字符串参数`DocumentBuilder->InsertImage`从文件或`URL`。
- 通过传递`Stream`参数`DocumentBuilder->InsertImage`来自流。
- 通过传递图像参数`DocumentBuilder->InsertImage`从图像对象。
- 通过传递字节数组参数`DocumentBuilder.InsertImage`从字节数组。对于每个`DocumentBuilder->InsertImage`方法，还有更多重载，允许您使用以下选项插入图像:
- 在特定位置内联或浮动，例如`DocumentBuilder->InsertImage`。
- 百分比比例或自定义大小，例如`DocumentBuilder.InsertImage`。 此外，`DocumentBuilder->InsertImage`方法返回刚刚创建和插入的`Shape`对象，以便您可以进一步修改形状的属性。

### 插入内联图像

将表示包含图像的文件的单个字符串传递到`DocumentBuilder->InsertImage`，以将图像作为内联图形插入到文档中。 下面的示例演示如何在光标位置插入内联图像到文档中。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### 插入浮动（绝对定位）图像

此示例在指定的位置和大小插入文件或`URL`中的浮动图像。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## 插入书签

要在文档中插入书签，您应该执行以下操作:

1. 调用`DocumentBuilder->StartBookmark`，将所需的书签名称传递给它。
1. 使用DocumentBuilder方法插入书签文本。
1. 调用`DocumentBuilder.EndBookmark`传递与**DocumentBuilder->StartBookmark**相同的名称。
1. 书签可以重叠并跨越任何范围。 要创建有效的书签，您需要使用相同的书签名称调用`DocumentBuilder->StartBookmark`和`DocumentBuilder->EndBookmark`。

{{% alert color="primary" %}}

保存文档时，格式错误的书签或名称重复的书签将被忽略。

{{% /alert %}}

下面的示例演示如何使用文档生成器将书签插入文档。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## 插入`Form`字段

表单字段是允许与用户"交互"的Word字段的特定情况。 Microsoft Word中的表单字段包括文本框，组合框和复选框。DocumentBuilder提供了将每种类型的表单字段插入文档的特殊方法：`DocumentBuilder.InsertTextInput`、`DocumentBuilder->InsertCheckBox`和`DocumentBuilder.InsertComboBox`。 请注意，如果为表单字段指定名称，则会自动创建具有相同名称的书签。

### 插入文本输入

 `DocumentBuilder.InsertTextInput`将文本框插入到文档中。 下面的示例演示如何将文本输入表单字段插入到文档中。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### 插入复选框

调用`DocumentBuilder.InsertCheckBox`将复选框插入到文档中。 下面的示例演示如何将复选框表单字段插入到文档中。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### 插入组合框

调用`DocumentBuilder.InsertComboBox`将组合框插入到文档中。 下面的示例演示如何将组合框表单字段插入到文档中。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## 在字段级别插入区域设置

客户现在可以在字段级别指定区域设置，并且可以实现更好的控制。 区域设置Id可以与DocumentBuilder内的每个字段相关联。 下面的示例说明了如何使用此选项。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## 插入超链接

使用`DocumentBuilder.InsertHyperlink`将超链接插入到文档中。 此方法接受三个参数：要在文档中显示的链接的文本、链接目标（URL或文档内书签的名称）以及如果`URL`是文档内书签的名称，则应为true的布尔参数。DocumentBuilder.InsertHyperlink内部调用`DocumentBuilder.InsertField`。该方法始终在URL的开头和结尾添加撇号。 请注意，您需要使用`Font`属性显式指定超链接显示文本的字体格式。 下面的示例使用DocumentBuilder将超链接插入到文档中。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## 插入Ole对象

如果你想Ole对象调用`DocumentBuilder.InsertOleObject`。 将`ProgId`与其他参数显式传递给此方法。 下面的示例演示如何将Ole对象插入到文档中。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## 插入Ole对象时设置文件名和扩展名

如果OLE处理程序未知，OLE包是存储嵌入对象的传统和"未记录"方式。 早期的Windows版本，如Windows3.1，95和98有Packager。exe应用程序，可用于将任何类型的数据嵌入到文档中。 现在，这个应用程序被排除在Windows之外，但是MSWord和其他应用程序仍然使用它来嵌入数据，如果OLE处理程序丢失或未知。 OlePackage类允许访问OLE包属性。 下面的示例演示如何为OLE包设置文件名、扩展名和显示名.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## 插入HTML

您可以轻松地将包含HTML片段或整个HTML文档的HTML字符串插入到Word文档中。 只需将此字符串传递给`DocumentBuilder->InsertHtml`方法即可。 该方法的有用实现之一是将HTML字符串存储在数据库中，并在mail merge期间将其插入文档中，以获取添加的格式化内容，而不是使用文档构建器的各种方法构建 下面的示例显示使用DocumentBuilder在文档中插入HTML。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## 在文档中插入水平规则

Below code示例演示如何使用`DocumentBuilder->InsertHorizontalRule`方法将水平规则形状插入文档。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
