---
title: Dịch Markdown sang DOM
second_title: Aspose.Words cho Python via .NET
articleTitle: Dịch Markdown sang Document Object Model (DOM)
linktitle: Dịch Markdown sang Document Object Model (DOM)
type: docs
description: "Chuyển tài liệu Markdown sang Document Object Model và quay lại bằng Python. Vì vậy, bạn có thể làm việc với Markdown phức tạp hiện có và tạo tài liệu Markdown theo chương trình từ đầu."
weight: 20
url: /vi/python-net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Để đọc, thao tác và sửa đổi nội dung cũng như định dạng của tài liệu theo chương trình, bạn cần dịch tài liệu đó sang Aspose.Words Document Object Model (DOM).

Ngược lại với tài liệu Word, Markdown không tuân theo DOM được mô tả trong bài viết [Aspose.Words Document Object Model (DOM)](/words/vi/python-net/aspose-words-document-object-model/). Tuy nhiên, Aspose.Words cung cấp cơ chế dịch tài liệu Markdown sang DOM và ngược lại của riêng mình, để chúng tôi có thể làm việc thành công với các thành phần của chúng như định dạng văn bản, bảng, tiêu đề và các thành phần khác.

Bài viết này giải thích cách dịch các tính năng markdown khác nhau sang Aspose.Words DOM và quay lại định dạng Markdown.

## Độ phức tạp của bản dịch Markdown – DOM – Markdown

Khó khăn chính của cơ chế này không chỉ là dịch Markdown sang DOM mà còn thực hiện chuyển đổi ngược lại – lưu tài liệu trở lại định dạng Markdown với mức độ mất mát tối thiểu. Có những phần tử, chẳng hạn như dấu ngoặc kép đa cấp, mà việc chuyển đổi ngược lại không hề đơn giản.

Công cụ dịch của chúng tôi cho phép người dùng không chỉ làm việc với các phần tử phức tạp trong tài liệu Markdown hiện có mà còn tạo tài liệu của riêng họ ở định dạng Markdown với cấu trúc ban đầu từ đầu. Để tạo các phần tử khác nhau, bạn cần sử dụng các kiểu có tên cụ thể theo các quy tắc nhất định được mô tả ở phần sau của bài viết này. Những kiểu như vậy có thể được tạo theo chương trình.

## Nguyên tắc dịch thuật chung

Chúng tôi sử dụng định dạng [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) cho các khối nội tuyến. Khi không có sự tương ứng trực tiếp cho tính năng Markdown trong Aspose.Words DOM, chúng tôi sử dụng kiểu ký tự có tên bắt đầu từ một số từ đặc biệt.

Đối với các khối vùng chứa, chúng tôi sử dụng tính kế thừa kiểu để biểu thị các tính năng Markdown lồng nhau. Trong trường hợp này, ngay cả khi không có đối tượng lồng nhau, chúng tôi cũng sử dụng kiểu đoạn văn có tên bắt đầu từ một số từ đặc biệt.

Danh sách có dấu đầu dòng và được sắp xếp cũng là các khối chứa trong Markdown. Việc lồng chúng được thể hiện trong DOM giống như đối với tất cả các khối vùng chứa khác sử dụng tính kế thừa kiểu. Tuy nhiên, ngoài ra, các danh sách trong DOM có định dạng số tương ứng theo kiểu danh sách hoặc định dạng đoạn văn.

## Khối nội tuyến

Chúng tôi sử dụng định dạng [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) khi dịch các tính năng markdown nội tuyến **Bold**, *Italic* hoặc ~~Gạch ngang~~.

|  tính năng Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.bold = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Bold.
builder.font.bold = True
builder.writeln("This text will be Bold")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bold_text_example.md"){{< /highlight >}} |  |
|  **Italic**<br /> `*italic text*` |  `Font.italic = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Italic.
builder.font.italic = True
builder.writeln("This text will be Italic")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.italic_text_example.md"){{< /highlight >}} |  |
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.strike_through = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Strikethrough.
builder.font.strike_through = True
builder.writeln("This text will be Strikethrough")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.strikethrough_text_example.md"){{< /highlight >}} |  |

Chúng tôi sử dụng kiểu ký tự có tên bắt đầu từ từ `InlineCode`, theo sau là dấu chấm `(.)` tùy chọn và một số dấu kiểm ngược ```(`)``` cho tính năng `InlineCode`. Nếu thiếu một số dấu tích ngược thì mặc định một dấu tích ngược sẽ được sử dụng.

|  tính năng Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.style_name = "InlineCode[.][N]"`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Number of backticks is missed, one backtick will be used by default.
inlineCode1BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode")
builder.font.style = inlineCode1BackTicks
builder.writeln("Text with InlineCode style with 1 backtick")

# There will be 3 backticks.
inlineCode3BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode.3")
builder.font.style = inlineCode3BackTicks
builder.writeln("Text with InlineCode style with 3 backtick")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.inline_code_example.md"){{< /highlight >}} |  |
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  Lớp [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Lớp [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## Khối chứa

Tài liệu là một chuỗi các khối chứa như tiêu đề, đoạn văn, danh sách, dấu ngoặc kép và các khối khác. Các khối container có thể được chia thành 2 lớp: Khối lá và Container phức hợp. Khối lá chỉ có thể chứa nội dung nội tuyến. Ngược lại, các thùng chứa phức tạp có thể chứa các khối chứa khác, bao gồm cả các khối Lá.

### khối lá

Bảng bên dưới hiển thị các ví dụ về cách sử dụng khối Lá Markdown trong Aspose.Words:

|  tính năng Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Đây là một đoạn văn đơn giản có hình dạng Quy tắc ngang tương ứng:<br /> [DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`, trong đó (1&le; N &le; 9).<br /> Điều này được dịch sang kiểu có sẵn và phải chính xác theo mẫu đã chỉ định (không cho phép hậu tố hoặc tiền tố).<br /> Nếu không, nó sẽ chỉ là một đoạn văn thông thường có kiểu dáng tương ứng |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (nếu là Heading cấp 1),<br /> `---` (nếu Tiêu đề cấp 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, dựa trên phong cách `"Heading N"`.<br /> Nếu (N &ge; 2) thì `"Heading 2"` sẽ được sử dụng, nếu không thì `"Heading 1"`.<br /> Cho phép bất kỳ hậu tố nào, nhưng trình nhập Aspose.Words sử dụng các số "1" và "2" tương ứng |
|  {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.paragraph_format.style_name = "Heading 1"
builder.writeln("This is an H1 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading1 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading1")
builder.paragraph_format.style = setexHeading1
doc.styles.get_by_name("SetexHeading1").base_style_name = "Heading 1"
builder.writeln("Setex Heading level 1")

builder.paragraph_format.style = doc.styles.get_by_name("Heading 3")
builder.writeln("This is an H3 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading2 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading2")
builder.paragraph_format.style = setexHeading2
doc.styles.get_by_name("SetexHeading2").base_style_name = "Heading 3"

# Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.writeln("Setex Heading level 2")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.setext_heading_example.md"){{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.style_name = "IndentedCode[some suffix]"`     |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

indentedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "IndentedCode")
builder.paragraph_format.style = indentedCode
builder.writeln("This is an indented code")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.indented_code_example.md"){{< /highlight >}} |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br /> `[.]` và `[info string]` là tùy chọn |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### Container phức hợp

Bảng bên dưới hiển thị các ví dụ về cách sử dụng Bộ chứa phức hợp Markdown trong Aspose.Words:

|  tính năng Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br /> Hậu tố trong tên kiểu là tùy chọn, nhưng trình nhập Aspose.Words sử dụng các số thứ tự 1, 2, 3, …. trong trường hợp dấu ngoặc kép lồng nhau.<br /> Việc lồng nhau được xác định thông qua các kiểu kế thừa |
|  {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# By default a document stores blockquote style for the first level.
builder.paragraph_format.style_name = "Quote"
builder.writeln("Blockquote")

# Create styles for nested levels through style inheritance.
quoteLevel2 = doc.styles.add(aw.StyleType.PARAGRAPH, "Quote1")
builder.paragraph_format.style = quoteLevel2
doc.styles.get_by_name("Quote1").base_style_name = "Quote"
builder.writeln("1. Nested blockquote")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.quote_example.md"){{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  Danh sách có dấu đầu dòng được thể hiện bằng cách đánh số đoạn văn:<br /> [ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br /> Có thể có 3 loại danh sách có dấu đầu dòng. Chúng chỉ khác nhau ở định dạng đánh số ở cấp độ đầu tiên. Đó là: `'-'`, `'+'` hoặc `'*'` tương ứng |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

builder.list_format.apply_bullet_default()
builder.list_format.list.list_levels[0].number_format = "-"

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.writeln("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bulleted_list_example.md"){{< /highlight >}} |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  Danh sách có thứ tự được thể hiện bằng cách đánh số đoạn văn:<br /> [ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br /> Có thể có 2 dấu định dạng số: `'.'` và `')'`. Điểm đánh dấu mặc định là `'.'` |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### Những cái bàn

Aspose.Words cũng cho phép dịch bảng sang DOM, như hình dưới đây:

|  tính năng Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `a\ | b`<br />`-\ | -`<br />`c\ | d` |  Các lớp [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) và [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Add the first row.
builder.insert_cell()
builder.writeln("a")
builder.insert_cell()
builder.writeln("b")
builder.end_row()

# Add the second row.
builder.insert_cell()
builder.writeln("c")
builder.insert_cell()
builder.writeln("d")
builder.end_table()

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_table.md"){{< /highlight >}} |                                                                |

## Xem thêm

* [Làm việc với các tính năng của Markdown](/words/vi/python-net/working-with-markdown-features/)

