---
title: Dịch Markdown sang DOM
second_title: Aspose.Words cho Java
articleTitle: Dịch Markdown sang Document Object Model (DOM)
linktitle: Dịch Markdown sang Document Object Model (DOM)
type: docs
description: "Tarn Slate một Markdown tài liệu để Document Object Model và trở lại. Như vậy bạn có thể làm việc với các tập tin hiện hữu phức tạp Markdown và lập trình để tạo một Markdown tài liệu từ đầu bằng cách sử dụng Java."
weight: 20
url: /vi/java/translate-markdown-to-document-object-model/
---

Để đọc, thao tác và sửa đổi nội dung và định dạng của một tài liệu theo lập trình, bạn cần dịch nó thành "Aspose.Words Document Object Model (DOM)".

Trái ngược với Word document, Markdown không tuân theo DOM được mô tả trong bài viết [Aspose.Words Document Object Model (DOM)](/words/java/aspose-words-document-object-model/). Tuy nhiên, Aspose.Words cung cấp các phương pháp riêng của nó để dịch thuật các tài liệu Markdown sang DOM và ngược lại, vì vậy chúng ta có thể làm việc thành công với các yếu tố như định dạng văn bản, bảng, tiêu đề và những thứ khác.

Bài viết này giải thích cách các tính năng khác nhau markdown có thể được dịch sang định dạng Aspose.Words DOM và trở lại với Markdown định dạng.

## Độ phức tạp của dịch thuật Markdown – DOM – Markdown

Khó khăn chính của cơ chế này là không chỉ dịch Markdown sang DOM mà còn phải thực hiện biến đổi ngược – lưu lại tài liệu về định dạng Markdown với mức mất mát tối thiểu. Có các phần tử, như dấu trích dẫn đa tầng, cho mà sự biến đổi ngược lại là không dễ dàng.

Bộ chuyển dịch của chúng tôi cho phép người dùng không chỉ làm việc với các phần tử phức tạp trong một tài liệu Markdown hiện có, nhưng cũng tạo ra một tài liệu mới của riêng họ ở định dạng Markdown với cấu trúc ban đầu từ con số. Để tạo các yếu tố khác nhau, bạn cần phải sử dụng các kiểu với tên cụ thể theo một số quy tắc được mô tả sau trong bài viết này. Những kiểu kiểu này có thể được tạo lập một cách lập trình.

## Nguyên tắc dịch chung

Chúng tôi sử dụng [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) định dạng cho các khối inline. Khi không có tương ứng trực tiếp cho một tính năng Markdown trong Aspose.Words DOM, chúng tôi sử dụng kiểu ký tự với tên bắt đầu từ một số từ đặc biệt.

Đối với các khối container chúng tôi sử dụng sự thừa kế kiểu để biểu thị các tính năng lồng nhau Markdown. Trong trường hợp này, ngay cả khi không có các tính năng lồng nhau, chúng tôi cũng sử dụng các kiểu đoạn văn với tên bắt đầu từ những từ đặc biệt.

Danh sách không dấu và danh sách có dấu là khối lưu trữ trong Markdown cũng vậy. Việc lồng ghép của chúng được thể hiện trong DOM theo cách tương tự như tất cả các khối container khác sử dụng di sản kiểu dáng. Tuy nhiên, thêm vào đó, các danh sách trong DOM có định dạng số tương ứng trong kiểu danh sách hoặc đoạn văn bản.

## Inline Blocks

Chúng tôi sử dụng [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) định dạng khi dịch **Bold**, *Italic* hoặc~~Đánh dấu thông qua~~các tính năng markdown trong dòng.

| Markdown tính năng | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br /> `{1}` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}} |  |
| **Italic** <br /> `*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}} |  |
| **Strikethrough** <br /> `~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}} |  |

Chúng tôi sử dụng kiểu ký tự với tên bắt đầu từ từ `InlineCode`, tiếp theo là một dấu chấm tùy chọn `(.)` và một số dấu nháy ngược ```(`)``` cho tính năng `InlineCode`. Nếu số lượng dấu ngoặc ngược bị bỏ qua thì một dấu ngoặc ngược sẽ được sử dụng mặc định.

| Markdown tính năng | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode** <br /> `{1}` | `Font.StyleName = “InlineCode[.][N]”` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}} |  |
| **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` | Lớp [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) này. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}} |  |
| **Link**<br /> `{1}` <br /> `{2}` <br /> `{3}` <br /> `{4})` | Lớp [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}} |  |
| **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` | Lớp [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}} |  |

## Bloco do Container

Một văn bản là một chuỗi các khối chứa như tiêu đề, đoạn văn, danh sách, trích dẫn và những thứ khác. Các khối container có thể chia thành 2 lớp: Khối lá và Container phức tạp. Khối lá chỉ có thể chứa nội dung trong dòng. Các thùng chứa phức tạp, theo lượt lại có thể chứa các khối thùng chứa khác, bao gồm cả các khối lá.

### Leaf Blocks

Bảng bên dưới cho thấy ví dụ sử dụng các Markdown khối lá trong Aspose.Words:

| Markdown tính năng | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule** <br /> `-----` | Đây là một đoạn văn đơn giản với hình HorizontalRule tương ứng: <br /> `DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}} |  |
| **ATX Heading**<br /> `# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = “Heading N”`, nơi (1 <= n <= 9). < br /> Đây là một kiểu được xây dựng sẵn và nên chính xác giống như mẫu đã chỉ định (không có hậu tố hoặc tiền tố nào được phép). < br /> Vậy thì, nó sẽ chỉ là một đoạn văn thường với kiểu tương ứng. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}} |  |
| **Setext Heading** <br /> `===` (nếu Heading cấp 1), <br /> `---` (nếu Heading cấp 2) | `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, dựa theo `“Heading N”` kiểu.<br />Nếu (N >= 2), sau đó `“Heading 2”` sẽ được sử dụng, nếu không `“Heading 1”`.<br />Bất kỳ hậu tố nào cũng được phép, nhưng Aspose.Words nhập khẩu sử dụng số "1" và "2" tương ứng. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}} |  |
| **Indented Code**<br>{{< highlight java >}}<br/>if ()<br/>then<br/>else<br/>```{{< /highlight >}}":13 | `ParagraphFormat.StyleName = “IndentedCode[some suffix]”` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}} |  |
### Container phức tạp

Bảng dưới đây cho thấy các ví dụ về sử dụng Markdown Complex Containers trong Aspose.Words:

| Markdown tính năng | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.StyleName = “Quote[some suffix]”` <br /> hậu tố trong tên phong cách là tùy chọn, nhưng Aspose.Words nhập khẩu sử dụng các số được sắp xếp 1, 2, 3,... trong trường hợp trích dẫn lồng nhau. <br /> Lồng được xác định thông qua phong cách được thừa hưởng. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}} |  |
| **BulletedList** <br /> `- Item 1` <br /> `- Item 2` <br /> `   - Item 2a` <br /> `   - Item 2b` | Danh sách không dấu được thể hiện bằng cách đánh số đoạn văn: <br /> `ListFormat.ApplyBulletDefault()` <br /> Có thể có 3 loại danh sách không dấu. Chúng chỉ khác nhau ở định dạng số của cấp đầu tiên. Những cái đó là: `‘-’`, `‘+’` hay `‘*’` tương ứng. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}} |  |
| **OrderedList** <br /> `1. Item 1` <br /> `2. Item 2` <br /> `1) Item 2a` <br /> `2) Item 2b` | Danh sách thứ tự được thể hiện bằng cách đánh số đoạn văn bản: <br /> `ListFormat.ApplyNumberDefault()` <br /> Có 2 dấu phân cách định dạng số: '. ' và ')'. Mーカー mặc định là ‘.’. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}} |  |

### Bảng

Aspose.Words cũng cho phép dịch các bảng sang DOM, như thấy ở dưới đây:

| Markdown tính năng | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table` <br /> `a|b`<br />`-|-`<br />`g | d` | "[Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) và [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) lớp." |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}} |  |

## Xem thêm

* [Working with Markdown Features](/words/java/working-with-markdown-features/)

