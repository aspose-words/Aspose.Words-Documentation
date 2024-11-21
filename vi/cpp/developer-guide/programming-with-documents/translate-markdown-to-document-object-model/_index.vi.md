---
title: Dịch Markdown Sang Mô Hình Đối tượng Tài liệu (DOM)
second_title: Aspose.Words cho C++
articleTitle: Dịch Markdown Sang Mô Hình Đối tượng Tài liệu (DOM)
linktitle: Dịch Markdown Sang Mô Hình Đối tượng Tài liệu (DOM)
type: docs
description: "Tarnslate một Markdown tài liệu Để Mô Hình Đối tượng Tài liệu và trở lại bằng cách sử dụng C++. Vì vậy, bạn có thể làm việc với Markdown phức tạp hiện có và lập trình tạo tài liệu Markdown từ đầu."
weight: 20
url: /vi/cpp/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Để lập trình đọc, thao tác và sửa đổi nội dung và định dạng của tài liệu, bạn cần dịch nó Sang Mô hình Đối tượng Tài liệu Aspose.Words (DOM).

Trái ngược với Tài liệu Word, Markdown không phù hợp với DOM được mô tả trong [Aspose.Words Mô Hình Đối Tượng Tài Liệu (DOM)](/words/cpp/aspose-words-document-object-model/) bài viết. Tuy nhiên, Aspose.Words cung cấp cơ chế riêng để dịch Markdown tài liệu sang DOM và quay lại, để chúng tôi có thể làm việc thành công với các yếu tố của chúng như định dạng văn bản, bảng, tiêu đề và các yếu tố khác.

Bài viết này giải thích cách các tính năng markdown khác nhau có thể được dịch sang Aspose.Words DOM và trở lại định dạng Markdown.

## Sự phức Tạp Của Dịch Thuật Markdown – DOM – Markdown

Khó khăn chính của cơ chế này không chỉ là dịch Markdown sang DOM, mà còn thực hiện chuyển đổi ngược lại – để lưu tài liệu trở lại định dạng Markdown với tổn thất tối thiểu. Có những yếu tố, chẳng hạn như dấu ngoặc kép đa cấp, mà việc chuyển đổi ngược lại không phải là tầm thường.

Công cụ dịch thuật của chúng tôi cho phép người dùng không chỉ làm việc với các phần tử phức tạp trong tài liệu Markdown hiện có mà còn tạo tài liệu của riêng họ ở định dạng Markdown với cấu trúc ban đầu từ đầu. Để tạo các yếu tố khác nhau, bạn cần sử dụng các kiểu có tên cụ thể theo các quy tắc nhất định được mô tả ở phần sau của bài viết này. Các kiểu như vậy có thể được tạo theo chương trình.

## Nguyên Tắc Dịch Thuật Phổ Biến

Chúng tôi sử dụng định dạng [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) cho các khối nội tuyến. Khi không có sự tương ứng trực tiếp cho tính năng Markdown trong Aspose.Words DOM, chúng tôi sử dụng kiểu ký tự có tên bắt đầu từ một số từ đặc biệt.

Đối với các khối container, chúng tôi sử dụng kế thừa kiểu để biểu thị các tính năng Markdown lồng nhau. Trong trường hợp này, ngay cả khi không có các tính năng lồng nhau, chúng tôi cũng sử dụng các kiểu đoạn văn với tên bắt đầu từ một số từ đặc biệt.

Danh sách có dấu đầu dòng và thứ tự cũng là các khối chứa trong Markdown. Việc làm tổ của chúng được biểu diễn theo DOM giống như đối với tất cả các khối container khác bằng cách sử dụng kế thừa kiểu. Tuy nhiên, ngoài ra, các danh sách trong DOM có định dạng số tương ứng theo kiểu danh sách hoặc định dạng đoạn văn.

## Khối Nội Tuyến

Chúng tôi sử dụng định dạng [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) khi dịch các tính năng **Bold**, *Italic* hoặc ~~Strikethrough~~ nội tuyến markdown.

| Markdown tính năng | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

Chúng tôi sử dụng kiểu ký tự có tên bắt đầu từ từ `InlineCode`, tiếp theo là dấu chấm tùy chọn `(.)` và một số backticks ```(`)``` cho tính năng `InlineCode`. Nếu một số backticks bị bỏ lỡ, thì một backtick sẽ được sử dụng theo mặc định.

| Markdown tính năng | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | Lớp [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | Lớp [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | Lớp [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## Khối Container

Tài liệu là một chuỗi các khối chứa như tiêu đề, đoạn văn, danh sách, trích dẫn và các khối khác. Các khối Container có thể được chia thành các lớp 2: Khối Lá và Các Thùng Chứa Phức tạp. Khối lá chỉ có thể chứa nội dung nội tuyến. Đến lượt mình, các thùng chứa phức tạp có thể chứa các khối container khác, bao gồm cả các khối Lá.

### Khối Lá

Bảng dưới đây cho thấy các ví dụ về việc sử dụng Markdown Khối Lá trong Aspose.Words:

| Markdown tính năng | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Đây là một đoạn đơn giản với hình dạng HorizontalRule tương ứng:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`, ở đâu (1<= C <= 9).<br />Điều này được dịch sang một kiểu tích hợp và phải chính xác theo mẫu được chỉ định (không cho phép hậu tố hoặc tiền tố).<br />Nếu không, nó sẽ chỉ là một đoạn thông thường với một phong cách tương ứng. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`, dựa trên kiểu `"Heading N"`.<br />Nếu (N > = 2), thì `"Heading 2"` sẽ được sử dụng, nếu không `"Heading 1"`.<br />Bất kỳ hậu tố nào cũng được phép, nhưng Aspose.Words nhà nhập khẩu sử dụng các số "1" và "2" tương ứng. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br />`[.]` và `[info string]` là tùy chọn. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### Container Phức Tạp

Bảng dưới đây cho thấy các ví dụ về việc sử dụng Markdown Container Phức tạp trong Aspose.Words:

| Markdown tính năng | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />Hậu tố trong tên kiểu là tùy chọn, nhưng Aspose.Words nhà nhập khẩu sử dụng các số có thứ tự1, 2, 3, .... trong trường hợp dấu ngoặc kép lồng nhau.<br />Việc làm tổ được xác định thông qua các kiểu được kế thừa. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Danh sách dấu đầu dòng được biểu diễn bằng cách sử dụng đánh số đoạn văn:<br />`get_ListFormat()->ApplyBulletDefault()`<br />Có thể có 3 loại danh sách dấu đầu dòng. Chúng chỉ khác nhau ở định dạng đánh số ở cấp độ đầu tiên. Đây là: `‘-’`, `‘+’` hoặc `‘*’` tương ứng. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Danh sách có thứ tự được biểu diễn bằng cách sử dụng đánh số đoạn văn:<br />`get_ListFormat()->ApplyNumberDefault()`<br />Có thể có các điểm đánh dấu định dạng số 2: ‘.’ và ‘)’. Điểm đánh dấu mặc định là ‘.’. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### Bảng

Aspose.Words cũng cho phép dịch bảng thành DOM, như hình dưới đây:

| Markdown tính năng | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | Các lớp [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) và [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## Xem Thêm

* [Làm việc với các Tính năng Markdown ](/words/cpp/working-with-markdown-features/)

