---
title: Dịch Markdown sang DOM
second_title: Aspose.Words cho .NET
articleTitle: Dịch Markdown sang Document Object Model (DOM)
linktitle: Dịch Markdown sang Document Object Model (DOM)
type: docs
description: "Dịch tài liệu Markdown sang Document Object Model và ngược lại bằng C#. Vì vậy, bạn có thể làm việc với Markdown phức tạp hiện có và tạo tài liệu Markdown theo chương trình từ đầu."
weight: 20
url: /vi/net/translate-markdown-to-document-object-model/
---

Để đọc, thao tác và sửa đổi nội dung cũng như định dạng của tài liệu theo chương trình, bạn cần dịch tài liệu đó sang Aspose.Words Document Object Model (DOM).

Ngược lại với tài liệu Word, Markdown không tuân theo DOM được mô tả trong bài viết [Aspose.Words Document Object Model (DOM)](/words/vi/net/aspose-words-document-object-model/). Tuy nhiên, Aspose.Words cung cấp cơ chế dịch tài liệu Markdown sang DOM và ngược lại của riêng mình, để chúng tôi có thể làm việc thành công với các thành phần của chúng như định dạng văn bản, bảng, tiêu đề và các thành phần khác.

Bài viết này giải thích cách dịch các tính năng markdown khác nhau sang Aspose.Words DOM và quay lại định dạng Markdown.

## Độ phức tạp của bản dịch Markdown – DOM – Markdown

Khó khăn chính của cơ chế này không chỉ là dịch Markdown sang DOM mà còn thực hiện chuyển đổi ngược lại – lưu tài liệu trở lại định dạng Markdown với mức độ mất mát tối thiểu. Có những phần tử, chẳng hạn như dấu ngoặc kép đa cấp, mà việc chuyển đổi ngược lại không hề đơn giản.

Công cụ dịch của chúng tôi cho phép người dùng không chỉ làm việc với các phần tử phức tạp trong tài liệu Markdown hiện có mà còn tạo tài liệu của riêng họ ở định dạng Markdown với cấu trúc ban đầu từ đầu. Để tạo các phần tử khác nhau, bạn cần sử dụng các kiểu có tên cụ thể theo các quy tắc nhất định được mô tả ở phần sau của bài viết này. Những kiểu như vậy có thể được tạo theo chương trình.

## Nguyên tắc dịch thuật chung

Chúng tôi sử dụng định dạng [Font](https://reference.aspose.com/words/net/aspose.words/font/) cho các khối nội tuyến. Khi không có sự tương ứng trực tiếp cho tính năng Markdown trong Aspose.Words DOM, chúng tôi sử dụng kiểu ký tự có tên bắt đầu từ một số từ đặc biệt.

Đối với các khối vùng chứa, chúng tôi sử dụng tính kế thừa kiểu để biểu thị các tính năng Markdown lồng nhau. Trong trường hợp này, ngay cả khi không có đối tượng lồng nhau, chúng tôi cũng sử dụng kiểu đoạn văn có tên bắt đầu từ một số từ đặc biệt.

Danh sách có dấu đầu dòng và được sắp xếp cũng là các khối chứa trong Markdown. Việc lồng chúng được thể hiện trong DOM giống như đối với tất cả các khối vùng chứa khác sử dụng tính kế thừa kiểu. Tuy nhiên, ngoài ra, các danh sách trong DOM có định dạng số tương ứng theo kiểu danh sách hoặc định dạng đoạn văn.

## Khối nội tuyến

Chúng tôi sử dụng định dạng [Font](https://reference.aspose.com/words/net/aspose.words/font/) khi dịch các tính năng markdown nội tuyến **Bold**, *Italic* hoặc ~~Gạch ngang~~.

|  tính năng Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}}  ||
|  **Italic**<br /> `*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}}  ||
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} ||

Chúng tôi sử dụng kiểu ký tự có tên bắt đầu từ từ `InlineCode`, theo sau là dấu chấm `(.)` tùy chọn và một số dấu kiểm ngược ```(`)``` cho tính năng `InlineCode`. Nếu thiếu một số dấu tích ngược thì mặc định một dấu tích ngược sẽ được sử dụng.

|  tính năng Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  ||
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  Lớp [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  ||
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Lớp [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  ||
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Lớp [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  ||

## Khối chứa

Tài liệu là một chuỗi các khối chứa chẳng hạn như tiêu đề, đoạn văn, danh sách, dấu ngoặc kép và các khối khác. Các khối container có thể được chia thành 2 lớp: Khối lá và Container phức hợp. Khối lá chỉ có thể chứa nội dung nội tuyến. Ngược lại, các thùng chứa phức tạp có thể chứa các khối chứa khác, bao gồm cả các khối Lá.

### khối lá

Bảng bên dưới hiển thị các ví dụ về cách sử dụng khối Lá Markdown trong Aspose.Words:

|  tính năng Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Đây là một đoạn văn đơn giản có hình dạng Quy tắc ngang tương ứng:<br /> `DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, trong đó (1&lt;= N &lt;= 9).<br /> Điều này được dịch sang kiểu có sẵn và phải chính xác theo mẫu đã chỉ định (không cho phép hậu tố hoặc tiền tố).<br /> Nếu không, nó sẽ chỉ là một đoạn văn thông thường có kiểu dáng tương ứng |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (nếu là Heading cấp 1),<br /> `---` (nếu Tiêu đề cấp 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, dựa trên phong cách `“Heading N”`.<br /> Nếu (N &gt;= 2) thì `“Heading 2”` sẽ được sử dụng, nếu không thì `“Heading 1”`.<br /> Cho phép bất kỳ hậu tố nào, nhưng trình nhập Aspose.Words sử dụng các số "1" và "2" tương ứng |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

builder.ParagraphFormat.StyleName = "Heading 1";
builder.Writeln("This is an H1 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading1 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading1");
builder.ParagraphFormat.Style = setexHeading1;
builder.Document.Styles["SetextHeading1"].BaseStyleName = "Heading 1";
builder.Writeln("Setext Heading level 1");

builder.ParagraphFormat.Style = builder.Document.Styles["Heading 3"];
builder.Writeln("This is an H3 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading2 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading2");
builder.ParagraphFormat.Style = setexHeading2;
builder.Document.Styles["SetextHeading2"].BaseStyleName = "Heading 3";

// Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.Writeln("Setext Heading level 2");{{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-IndentedCode.cs" >}}  |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br /> `[.]` và `[info string]` là tùy chọn |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### Container phức tạp

Bảng bên dưới hiển thị các ví dụ về cách sử dụng Bộ chứa phức hợp Markdown trong Aspose.Words:

|  tính năng Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br /> Hậu tố trong tên kiểu là tùy chọn, nhưng trình nhập Aspose.Words sử dụng các số thứ tự 1, 2, 3, …. trong trường hợp dấu ngoặc kép lồng nhau.<br /> Việc lồng nhau được xác định thông qua các kiểu kế thừa |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default a document stores blockquote style for the first level.
builder.ParagraphFormat.StyleName = "Quote";
builder.Writeln("Blockquote");

// Create styles for nested levels through style inheritance.
Style quoteLevel2 = builder.Document.Styles.Add(StyleType.Paragraph, "Quote1");
builder.ParagraphFormat.Style = quoteLevel2;
builder.Document.Styles["Quote1"].BaseStyleName = "Quote";
builder.Writeln("1. Nested blockquote");{{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  Danh sách có dấu đầu dòng được thể hiện bằng cách đánh số đoạn văn:<br /> `ListFormat.ApplyBulletDefault()`<br /> Có thể có 3 loại danh sách có dấu đầu dòng. Chúng chỉ khác nhau ở định dạng đánh số ở cấp độ đầu tiên. Đó là: `‘-’`, `‘+’` hoặc `‘*’` tương ứng |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  Danh sách có thứ tự được thể hiện bằng cách đánh số đoạn văn:<br /> `ListFormat.ApplyNumberDefault()`<br /> Có thể có 2 dấu định dạng số: '.' Và ')'. Điểm đánh dấu mặc định là '.' |
|  {{< highlight csharp >}}Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = $"{(char) 0}.";
builder.ListFormat.List.ListLevels[1].NumberFormat = $"{(char) 1}.";

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b");{{< /highlight >}} |                                                                |

### Những cái bàn

Aspose.Words cũng cho phép dịch bảng sang DOM, như hình dưới đây:

|  tính năng Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `một | b`<br />`- | -`<br />`c | d` |  Các lớp [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) và [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Add the first row.
builder.InsertCell();
builder.Writeln("a");
builder.InsertCell();
builder.Writeln("b");

// Add the second row.
builder.InsertCell();
builder.Writeln("c");
builder.InsertCell();
builder.Writeln("d");{{< /highlight >}} |                                                                |

## Xem thêm

* [Làm việc với các tính năng của Markdown](/words/vi/net/working-with-markdown-features/)

