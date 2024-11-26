---
title: 插入字段为 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 插入字段
linktitle: 插入字段
description: "使用不同方式在文档中插入字段 Java。 。 。 。"
type: docs
weight: 20
url: /zh/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

在文档中插入字段有几种不同的方式:

- 使用 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- 使用 [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- 使用 [Aspose.Words Document Object Model (DOM)](/words/zh/java/aspose-words-document-object-model/)

在本篇文章中,我们将逐条详细审视和分析如何使用这些选项插入某些字段。

## 使用文档构建器将字段插入文档

内 Aspose.Words 联合国 [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean))的方法用于在文档中插入新字段。 第一个参数接受要插入的字段完整字段代码. 第二个参数是可选的,允许手动设置字段的字段结果. 如果不提供,则自动更新字段。 您可以将空或空的字段传递到此参数,以插入空字段值。 如果您不确定特定字段代码语法,请在 Microsoft Word 首先切换到查看它的字段代码。

{{% alert color="primary" %}}

如果您的字段代码有包含一个空格的参数, 它必须包含在语音标记中 。 否则两边的球场 Microsoft Word 和 Aspose.Words 可能无法如预期的那样工作,因为两者都被视为截断参数。

{{% /alert %}}

以下代码示例显示如何使用 **DocumentBuilder**编号:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

同样的技术用于插入嵌入其他球场的球场.

以下代码示例说明如何使用 **DocumentBuilder**编号:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### 指定外地一级的地点

语言标识符是一国或地理区域内该语言的标准国际数字缩写. 与 Aspose.Words, 您可以使用 [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) 属性,可以获取或设置字段的区位标识。

以下代码示例显示如何使用此选项:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### 插入无类型/ 空域

如果您想要插入未键入/ 空字段( O){}碞钩 Microsoft Word 允许,您可以使用 [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) 使用该方法 [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) 参数。 要在 Word 文档中插入字段,可以按"Ctrl + F9"键组合。

以下代码示例显示如何在文档中插入空字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### 插入 `COMPARE` 外地

那个 `COMPARE` 字段比较两个值,如果比较是 true 如果比较是 0 false。 。 。 。

以下代码示例显示如何添加 `COMPARE` 使用文档构建器的字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### 插入 `IF` 外地

那个 `IF` 字段可用于有条件地评价参数。

以下代码示例显示如何添加 `IF` 使用文档构建器的字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## 使用字段构建器将字段插入文档

插入字段到 Aspose.Words 这是 [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) 课。 它提供流畅的接口,将字段开关和参数值指定为文本,节点甚至嵌套字段.

以下代码示例显示如何使用 **FieldBuilder**编号:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## 使用 DOM

也可以使用 [Aspose.Words Document Object Model (DOM)](/words/zh/java/aspose-words-document-object-model/)。 。 。 。 在本节中,我们将研究几个例子。

### 插入合并 使用 DOM

`MERGEFIELD` Word 文档中的字段可以用 [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) 课。 你可以用来 **FieldMergeField** 进行下列操作的类:

- 指定合并字段的名称
- 指定合并字段的格式
- 指定合并字段分隔符和字段结尾之间的文字
- 指定合并字段后如果字段不是空白要插入的文字
- 如果合并字段不是空白,指定在合并字段之前插入的文字

{{% alert color="primary" %}}

详细情况见 [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) 类 API。 。 。 。

{{% /alert %}}

以下代码示例显示如何添加 `MERGE` 使用 DOM 改为:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### 插入 Mail Merge `ADDRESSBLOCK` 字段输入文档 DOM

那个 `ADDRESSBLOCK` 字段用于插入一个 Mail Merge Word 文档中的地址块。 `ADDRESSBLOCK` Word 文档中的字段可以用 [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) 课。 你可以用来 **FieldAddressBlock** 进行下列操作的类:

- 具体说明是否在外地列入国家/区域的名称;
- 具体说明是否按照POST*CODE(邮政联盟,2006年)定义的接收方国家/地区格式化地址;
- 指定被排除在外的国家/区域名称
- 指定名称和地址格式
- 指定用于格式化地址的语言ID

{{% alert color="primary" %}}

详细情况见 [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) 类 API。 。 。 。

{{% /alert %}}

以下代码示例显示如何添加 Mail Merge `ADDRESSBLOCK` 使用字段 DOM 改为:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### 插入 `ADVANCE` 不使用文档构建器而将字段输入文档

那个 `ADVANCE` 字段用于在左、右、上或下行内抵消随后的文字。 `ADVANCE` Word 文档中的字段可以用 [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) 课。 你可以用这个 **FieldAdvance** 用于执行下列操作的类:

- 指定从页面顶端垂直移动该字段之后的文本的点数
- 指定从列、框或文本框的左边缘水平移动随字段的文本的点数
- 指定左、右、上或下移动字段后文字的点数

{{% alert color="primary" %}}

详细情况见 [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) 类 API。 。 。 。

{{% /alert %}}

以下代码示例显示如何添加 `ADVANCE` 使用字段 DOM 改为:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### 插入 `ASK` 不使用文档构建器而将字段输入文档

那个 `ASK` 字段用于提示文本用户指定Word文档中的书签。 `ASK` Word 文档中的字段可以用 [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) 课。 你可以用来 **FieldAsk** 用于执行下列操作的类:

- 指定书签的名称
- 指定默认用户响应( 提示窗口中包含的初始值)
- 具体说明是否每次应收到用户的答复 Mail Merge 操作
- 指定即时文本(即时窗口的标题)

{{% alert color="primary" %}}

详细情况见 [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) 类 API。 。 。 。

{{% /alert %}}

以下代码示例显示如何添加 `ASK` 使用字段 DOM 改为:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### 插入 `AUTHOR` 不使用文档构建器而将字段输入文档

那个 `AUTHOR` 字段用于从 `Document` 属性。 `AUTHOR` Word 文档中的字段可以用 [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) 课。 你可以用来 **FieldAuthor** 用于执行下列操作的类:

- 指定文档作者姓名

{{% alert color="primary" %}}

详细情况见 [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) 类 API。 。 。 。

{{% /alert %}}

以下代码示例显示如何添加 `AUTHOR` 使用字段 DOM 改为:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### 插入 `INCLUDETEXT` 不使用文档构建器而将字段输入文档

那个 `INCLUDETEXT` 字段插入字段代码中命名的文档中的文字和图形。 您可以插入整个文档或书签提及的文档的一部分。 Word文档中的这个字段由INCLUDETEXT代表. 你可以用来 [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) 用于执行下列操作的类:

- 指定包含的文档的书签名称
- 指定文件的位置

{{% alert color="primary" %}}

详细情况见 [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) 类 API。 。 。 。

{{% /alert %}}

以下代码示例显示如何添加 `INCLUDETEXT` 使用 DOM 改为:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### 插入 `TOA` 不使用文档构建器而将字段输入文档

那个 `TOA` (* 当局表*)实地编制并插入当局表。 那个 `TOA` 字段收集以 `TA` (* 当局条目表*)字段。 Microsoft 办公室字插入 `TOA` 字段时,单击 * 插入 **当局列表** 组合在 **References** 选项卡。 当你看到 `TOA` 在文档中,语法是这样的:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

详细情况见 [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) 类 API。 。 。 。

{{% /alert %}}

以下代码示例显示如何添加 `TOA` 使用 DOM 改为文档中的段落。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
