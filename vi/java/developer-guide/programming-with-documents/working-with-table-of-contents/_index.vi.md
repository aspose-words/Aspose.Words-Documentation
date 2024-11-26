---
title: Làm Việc Với Mục Lục trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc Với Mục Lục
linktitle: Làm việc Với Mục Lục
description: "Bảng trường Nội dung chi tiết. Cách tạo và sửa đổi trường `TOC` bằng Java."
type: docs
weight: 170
url: /vi/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Thường thì bạn sẽ làm việc với các tài liệu có chứa một mục lục (TOC). Sử dụng Aspose.Words bạn có thể chèn mục lục của riêng mình hoặc xây dựng lại hoàn toàn mục lục hiện có trong tài liệu chỉ bằng một vài dòng mã.

Bài viết này phác thảo cách làm việc với trường mục lục và trình bày:

- Làm thế nào để chèn một thương hiệu mới TOC.
- Cập nhật mới hoặc hiện có TOCs trong tài liệu.
- Chỉ định các công tắc để kiểm soát định dạng và cấu trúc tổng thể của TOC.
- Cách sửa đổi kiểu dáng và hình thức của mục lục.
- Cách xóa toàn bộ trường `TOC` cùng với tất cả các mục từ tài liệu.

## Chèn Mục Lục Theo Chương Trình

Bạn có thể chèn trường `TOC` (mục lục) vào tài liệu ở vị trí hiện tại bằng cách gọi phương thức [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String).

Một mục lục trong tài liệu Word có thể được xây dựng theo nhiều cách và được định dạng bằng nhiều tùy chọn khác nhau. Trường chuyển đổi mà bạn chuyển sang phương thức điều khiển cách bảng được xây dựng và hiển thị trong tài liệu của bạn.

Các công tắc mặc định được sử dụng trong `TOC` được chèn vào Microsoft Word là **"\o "1-3 \h \z \u"**. Mô tả về các công tắc này cũng như danh sách các công tắc được hỗ trợ có thể được tìm thấy ở phần sau của bài viết. Bạn có thể sử dụng hướng dẫn đó để có được các công tắc chính xác hoặc nếu bạn đã có một tài liệu chứa `TOC` tương tự mà bạn muốn, bạn có thể hiển thị mã trường (*ALT+F9*) và sao chép các công tắc trực tiếp từ trường.

Ví dụ mã sau đây cho thấy cách chèn trường Mục Lục vào tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

Ví dụ mã sau đây trình bày cách chèn Mục lục (TOC) vào tài liệu bằng cách sử dụng kiểu tiêu đề làm mục nhập:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

Mã chứng minh mục lục mới được chèn vào một tài liệu trống. Lớp [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) sau đó được sử dụng để chèn một số định dạng nội dung mẫu với các kiểu tiêu đề thích hợp được sử dụng để đánh dấu nội dung được bao gồm trong TOC. Các dòng tiếp theo sau đó điền `TOC` bằng cách cập nhật các trường và bố cục trang của tài liệu.

![insert-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Nếu không có các phương thức được sử dụng trong ví dụ, khi bạn mở tài liệu đầu ra, bạn sẽ tìm thấy trường `TOC`, nhưng không có nội dung hiển thị. Điều này là do trường `TOC` đã được chèn nhưng chưa được điền cho đến khi nó được cập nhật trong tài liệu. Thông tin thêm về điều này được thảo luận trong phần tiếp theo.

{{% /alert %}}

## Cập Nhật Mục Lục

Aspose.Words cho phép bạn cập nhật hoàn toàn `TOC` chỉ với một vài dòng mã. Điều này có thể được thực hiện để điền vào `TOC` mới được chèn hoặc để cập nhật `TOC` hiện có sau khi các thay đổi đối với tài liệu đã được thực hiện.

Hai phương pháp sau đây phải được sử dụng để cập nhật các trường `TOC` trong tài liệu:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Xin lưu ý rằng hai phương thức cập nhật này được yêu cầu phải được gọi theo thứ tự đó. Nếu đảo ngược mục lục sẽ được điền nhưng không có số trang nào được hiển thị. Bất kỳ số lượng khác nhau TOCs có thể được cập nhật. Các phương thức này sẽ tự động cập nhật tất cả TOCs được tìm thấy trong tài liệu.

Ví dụ mã sau đây cho thấy cách xây dựng lại hoàn toàn các trường `TOC` trong tài liệu bằng cách gọi cập nhật trường:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

Cuộc gọi đầu tiên đến [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) sẽ xây dựng `TOC`, tất cả các mục văn bản được điền và `TOC` xuất hiện gần như hoàn tất. Điều duy nhất còn thiếu là số trang hiện được hiển thị với "?".

Cuộc gọi thứ hai đến [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) sẽ xây dựng bố cục của tài liệu trong bộ nhớ. Điều này cần phải được thực hiện để thu thập số trang của các mục. Các số trang chính xác được tính từ cuộc gọi này sau đó được chèn vào TOC.

## Sử dụng Công tắc Để Kiểm Soát Mục Lục Hành Vi

Như với bất kỳ trường nào khác, trường `TOC` có thể chấp nhận các công tắc được xác định trong mã trường kiểm soát cách xây dựng mục lục. Một số công tắc nhất định được sử dụng để kiểm soát mục nào được bao gồm và ở cấp độ nào trong khi các công tắc khác được sử dụng để kiểm soát sự xuất hiện của TOC. Các công tắc có thể được kết hợp với nhau để cho phép tạo ra một mục lục phức tạp.

![ccontrol-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-2.png)


Theo mặc định, các công tắc này ở trên được bao gồm khi chèn `TOC` mặc định trong tài liệu. A `TOC` không có công tắc sẽ bao gồm nội dung từ các kiểu tiêu đề tích hợp (như thể công tắc \O được đặt).

Các công tắc `TOC` có sẵn được hỗ trợ bởi Aspose.Words được liệt kê bên dưới và việc sử dụng chúng được mô tả chi tiết. Chúng có thể được chia thành các phần riêng biệt dựa trên loại của chúng. Các công tắc trong phần đầu tiên xác định nội dung nào sẽ bao gồm trong `TOC` và các công tắc trong phần thứ hai kiểm soát sự xuất hiện của TOC.

Nếu một công tắc không được liệt kê ở đây thì hiện tại nó không được hỗ trợ. Tất cả các công tắc sẽ được hỗ trợ trong các phiên bản trong tương lai. Chúng tôi đang bổ sung thêm hỗ trợ cho mỗi phiên bản.

### Công Tắc Đánh Dấu Mục Nhập

| Chuyển đổi | Mô tả |
| :- | :- |
| **Heading Styles** <br>* (\O Chuyển đổi)* <br> | <p>Công tắc này xác định rằng `TOC` nên được xây dựng từ các kiểu tiêu đề tích hợp. Trong Microsoft Word, chúng được xác định bởi Heading 1 – Heading 9. Trong Aspose.Words các kiểu này được biểu diễn bằng cách liệt kê StyleIdentifier tương ứng. Phép liệt kê này đại diện cho một định danh độc lập với ngôn ngữ của một kiểu, ví dụ, `StyleIdentifier.Heading1` đại diện cho kiểu Heading 1. Sử dụng điều này, định dạng và thuộc tính của kiểu có thể được lấy từ Bộ Sưu tập Kiểu của tài liệu. Lớp Kiểu Tương ứng có thể được lấy từ bộ sưu tập `Document.Styles` bằng cách sử dụng thuộc tính được lập chỉ mục của loại StyleIdentifier.</p><p>![style-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p><p><br><br>Bất kỳ nội dung nào được định dạng với các kiểu này đều được bao gồm trong mục lục. Mức độ của tiêu đề sẽ xác định mức phân cấp tương ứng của mục nhập trong TOC. Ví dụ, một đoạn có kiểu Heading 1 sẽ được coi là cấp độ đầu tiên trong `TOC` trong khi một đoạn có Heading 2 sẽ được coi là cấp độ tiếp theo trong hệ thống phân cấp, v. v.</p> |
| **Outline Levels** <br>* (\U chuyển đổi)* <br> | <p>Mỗi đoạn có thể xác định một mức phác thảo theo các tùy chọn Đoạn.</p><p>![modify-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p><p><br><br>Cài đặt này chỉ ra cấp độ nào đoạn này nên được xử lý trong hệ thống phân cấp tài liệu. Đây là một thực hành thường được sử dụng được sử dụng để dễ dàng cấu trúc bố cục của một tài liệu. Hệ thống phân cấp này có thể được xem bằng cách thay đổi Thành Chế độ Xem Phác thảo trong Microsoft Word. Tương tự như kiểu tiêu đề, có thể có các mức phác thảo 1 – 9 ngoài mức "Văn bản Cơ thể". Các cấp độ phác thảo 1-9 sẽ xuất hiện trong `TOC` ở cấp độ tương ứng của hệ thống phân cấp <br>Bất kỳ nội dung nào có cấp độ phác thảo được đặt theo kiểu đoạn văn hoặc trực tiếp trên chính đoạn văn đều được bao gồm trong TOC. Trong Aspose.Words mức phác thảo được biểu thị bằng thuộc tính `ParagraphFormat.OutlineLevel` của nút Đoạn. Mức phác thảo của một kiểu đoạn văn được thể hiện theo cách tương tự bởi thuộc tính `Style.ParagraphFormat`.</p><p>{{% alert color="primary" %}}</p><p>Lưu ý rằng các kiểu tiêu đề tích hợp như Heading 1 có mức phác thảo bắt buộc được đặt trong cài đặt kiểu.</p><p>{{% /alert %}}</p> |
| **Custom Styles** <br>* (\T chuyển đổi)* <br> | <p>Công tắc này sẽ cho phép các kiểu tùy chỉnh được sử dụng khi thu thập các mục được sử dụng trong TOC. Điều này thường được sử dụng cùng với công tắc \O để bao gồm các kiểu tùy chỉnh cùng với các kiểu tiêu đề tích hợp trong TOC. <br>Các tham số của công tắc nên được đặt trong các dấu hiệu lời nói. Nhiều kiểu tùy chỉnh có thể được bao gồm, đối với mỗi kiểu, tên phải được chỉ định theo sau là dấu phẩy theo sau là mức mà kiểu sẽ xuất hiện trong `TOC` as. Các kiểu khác cũng được phân tách bằng dấu phẩy. <br>Ví dụ</p><p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p><p>sẽ sử dụng nội dung được tạo kiểu với CustomHeading1 làm nội dung cấp 1 trong `TOC` và CustomHeading2 là cấp 2.</p> |
| Sử Dụng Các Trường TC <br>*(\F và \L Công tắc)* <br> | <p>Trong các phiên bản cũ hơn của Microsoft Word, cách duy nhất để xây dựng `TOC` là sử dụng các trường TC. Các trường này được chèn ẩn vào tài liệu ngay cả khi mã trường được hiển thị. Chúng bao gồm văn bản cần hiển thị trong mục nhập và `TOC` được xây dựng từ chúng. Chức năng này hiện không được sử dụng thường xuyên nhưng vẫn có thể hữu ích trong một số trường hợp để bao gồm các mục nhập trong `TOC` không được thụt lề để hiển thị trong tài liệu.<br>Khi chèn, các trường này sẽ xuất hiện ẩn ngay cả khi mã trường được hiển thị. Chúng không thể được nhìn thấy nếu không hiển thị nội dung ẩn. Để xem các trường này, phải chọn Hiển thị định dạng đoạn văn.</p><p>![setup-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p><p>Các trường này có thể được chèn vào tài liệu ở bất kỳ vị trí nào giống như bất kỳ trường nào khác và được biểu thị bằng phép liệt kê `FieldType.FieldTOCEntry`.<br>Công tắc \F trong `TOC` được sử dụng để chỉ định rằng các trường TC sẽ được sử dụng làm mục nhập. Công tắc này tự nó không có bất kỳ mã định danh bổ sung nào có nghĩa là bất kỳ trường TC nào trong tài liệu sẽ được bao gồm. Bất kỳ tham số bổ sung nào, thường là một chữ cái duy nhất, sẽ chỉ định rằng chỉ các trường TC có công tắc \f phù hợp mới được bao gồm trong TOC. Ví dụ *</p><p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p><p>sẽ chỉ bao gồm TC các trường như</p><p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p><p>Trường `TOC` cũng có một công tắc liên quan, công tắc "\L" chỉ định rằng chỉ trường TC có các mức nằm trong phạm vi chỉ định mới được bao gồm.</p><p>![table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p><p><br><br>Bản thân các trường `TC` cũng có thể có các công tắc `{several, multiple, a few, many, numerous}` được thiết lập. Đó là:</p><p>- \F – Đã giải thích ở trên.*</p><p>- \L – Xác định mức độ nào trong `TOC` mà trường TC này sẽ xuất hiện. `TOC` sử dụng cùng công tắc này sẽ chỉ bao gồm trường TC này nếu nó nằm trong phạm vi được chỉ định.</p><p>- `_\N` – Số trang cho mục nhập `TOC` này không được hiển thị. Mã mẫu về cách chèn trường TC có thể được tìm thấy trong phần tiếp theo.</p> |

### Công Tắc Liên Quan Đến Ngoại Hình

| Chuyển đổi | Mô tả |
| :- | :- |
| **Omit Page Numbers** <br>* (\N Chuyển đổi)* | <p>Công tắc này được sử dụng để ẩn số trang cho các cấp độ nhất định của TOC. Ví dụ, bạn có thể xác định</p><p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p><p>và số trang trên các mục của cấp độ 3 và bốn sẽ được ẩn cùng với các dấu chấm lãnh đạo (nếu có). Để chỉ định một cấp độ, một phạm vi vẫn nên được sử dụng, ví dụ: "1-1" sẽ chỉ loại trừ số trang cho cấp độ đầu tiên. <br>Cung cấp không có phạm vi cấp độ sẽ bỏ qua số trang cho tất cả các cấp trong TOC. Điều này rất hữu ích để đặt khi xuất tài liệu sang HTML hoặc định dạng tương tự. Điều này là do các định dạng dựa trên HTML không có bất kỳ khái niệm trang nào và do đó không cần bất kỳ đánh số trang nào.</p><p>![table-of-contents-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p> |
| Chèn Dưới Dạng Siêu Liên Kết <br>* (\H Chuyển đổi)* | <p>Công tắc này chỉ định rằng các mục `TOC` được chèn dưới dạng siêu liên kết. Khi xem tài liệu trong Microsoft Word, các mục này vẫn sẽ xuất hiện dưới dạng văn bản bình thường bên trong `TOC` nhưng được siêu liên kết và do đó có thể được sử dụng để điều hướng đến vị trí của mục nhập ban đầu trong tài liệu bằng cách sử dụng *Ctrl + Left Click* trong Microsoft Word. Khi công tắc này được bao gồm thì các liên kết này cũng được bảo tồn ở các định dạng khác. Ví dụ: trong các định dạng dựa trên HTML bao gồm EPUB và các định dạng được hiển thị như PDF và XPS, chúng sẽ được xuất dưới dạng liên kết làm việc. <br>Nếu không có bộ chuyển đổi này, `TOC` trong tất cả các đầu ra này sẽ được xuất dưới dạng văn bản thuần túy và sẽ không thể hiện hành vi này. Nếu một tài liệu được mở trong MS Word văn bản của các mục nhập cũng sẽ không thể nhấp được theo cách này nhưng số trang vẫn có thể được sử dụng để điều hướng đến mục nhập ban đầu.</p><p>![tree-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p> |
| **Set Separator Character** <br>* (\P Chuyển đổi)* <br> | <p>Công tắc này cho phép nội dung tách tiêu đề của mục nhập và đánh số trang dễ dàng thay đổi trong TOC. Dấu phân cách để sử dụng phải được chỉ định sau công tắc này và được đặt trong dấu lời nói. <br>Trái ngược với những gì được ghi lại trong Tài liệu Office, chỉ có thể sử dụng một ký tự thay vì tối đa năm ký tự. Điều này áp dụng cho cả MS Word và Aspose.Words. <br>Sử dụng công tắc này không được khuyến khích vì nó không cho phép kiểm soát nhiều đối với những gì nó được sử dụng để tách các mục và số trang trong TOC. Thay vào đó, bạn nên chỉnh sửa kiểu `TOC` thích hợp như `StyleIdentifier.TOC1` và từ đó chỉnh sửa kiểu lãnh đạo với quyền truy cập vào các thành viên phông chữ cụ thể, v. v. Bạn có thể tìm thêm chi tiết về cách thực hiện việc này ở phần sau của bài viết.</p><p>![list-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p> |
| **Preserve Tab Entries** <br>* (\W Chuyển đổi)* | <p>Sử dụng công tắc này sẽ chỉ định rằng bất kỳ mục nào có ký tự tab, ví dụ: tiêu đề có tab ở cuối dòng, sẽ được giữ lại dưới dạng ký tự tab thích hợp khi điền TOC. Điều này có nghĩa là hàm của ký tự tab sẽ có trong `TOC` và có thể được sử dụng để định dạng mục nhập. Ví dụ: một số mục nhất định có thể sử dụng các điểm dừng tab và ký tự tab để xóa đều văn bản. Miễn là mức `TOC` tương ứng xác định tab tương đương dừng thì các mục `TOC` được tạo sẽ xuất hiện với khoảng cách tương tự. <br><br>Trong tình huống tương tự nếu công tắc này không được xác định thì các ký tự tab sẽ được chuyển đổi thành khoảng trắng tương đương với các tab không hoạt động. Đầu ra sau đó sẽ không xuất hiện như mong đợi.</p><p>![tab-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p> |
| **Preserve New Line Entries** <br>* (\X Chuyển đổi)* <br> | <p>Tương tự như công tắc ở trên, công tắc này chỉ định rằng các tiêu đề trải dài trên nhiều dòng (sử dụng các ký tự dòng mới, không phải các đoạn riêng biệt) sẽ được giữ nguyên như trong TOC được tạo. Ví dụ: một tiêu đề để trải rộng trên nhiều dòng có thể sử dụng ký tự dòng mới (Ctrl + Enter hoặc `ControlChar.LineBreak`) để tách nội dung trên các dòng khác nhau. Với công tắc này được chỉ định, mục nhập trong `TOC` sẽ giữ nguyên các ký tự dòng mới này như hình dưới đây. <br><br>Trong tình huống này, nếu công tắc không được xác định thì các ký tự dòng mới được chuyển đổi thành một khoảng trắng duy nhất.</p><p>![tab-space-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p> |

## Chèn Các Trường TC

Bạn có thể chèn một trường TC mới ở vị trí hiện tại của `DocumentBuilder` bằng cách gọi phương thức `DocumentBuilder.InsertField` và chỉ định tên trường là "TC" cùng với bất kỳ công tắc nào cần thiết.

Ví dụ mã sau đây cho thấy cách chèn trường `TC` vào tài liệu bằng [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

Thường thì một dòng văn bản cụ thể được chỉ định cho `TOC` và được đánh dấu bằng trường `TC`. Cách dễ dàng để làm điều này trong MS Word là đánh dấu văn bản và nhấn *ALT+SHIFT+O*. Thao tác này sẽ tự động tạo trường `TC` bằng văn bản đã chọn. Kỹ thuật tương tự có thể được thực hiện thông qua mã. Đoạn mã dưới đây sẽ tìm thấy văn bản khớp với đầu vào và chèn trường `TC` ở cùng vị trí với văn bản. Mã này dựa trên cùng một kỹ thuật được sử dụng trong bài viết. Ví dụ mã sau đây cho thấy cách tìm và chèn trường `TC` tại văn bản trong tài liệu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Sửa đổi Mục Lục

### Thay đổi Định Dạng Của Các Kiểu

Định dạng của các mục trong `TOC` không sử dụng kiểu ban đầu của các mục được đánh dấu, thay vào đó, mỗi cấp độ được định dạng bằng cách sử dụng kiểu `TOC` tương đương. Ví dụ: cấp độ đầu tiên trong `TOC` được định dạng với kiểu **TOC1**, cấp độ thứ hai được định dạng với kiểu **TOC2**, v. v. Điều này có nghĩa là để thay đổi giao diện của `TOC`, các kiểu này phải được sửa đổi. Trong Aspose.Words các kiểu này được biểu thị bằng `StyleIdentifier.TOC1` độc lập với miền địa phương đến `StyleIdentifier.TOC9` và có thể được lấy từ bộ sưu tập `Document.Styles` bằng cách sử dụng các định danh này.

Khi kiểu thích hợp của tài liệu đã được truy xuất, định dạng cho kiểu này có thể được sửa đổi. Bất kỳ thay đổi nào đối với các kiểu này sẽ được tự động phản ánh trong TOCs trong tài liệu.

Ví dụ mã sau thay đổi thuộc tính định dạng được sử dụng trong kiểu `TOC` cấp đầu tiên.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

Cũng rất hữu ích khi lưu ý rằng bất kỳ định dạng trực tiếp nào của một đoạn văn (được xác định trên chính đoạn văn chứ không phải theo kiểu) được đánh dấu để đưa vào `TOC` sẽ được sao chép trong mục trong TOC. Ví dụ: nếu kiểu Heading 1 được sử dụng để đánh dấu nội dung cho `TOC` và kiểu này có Định dạng Đậm trong khi đoạn văn cũng có định dạng nghiêng được áp dụng trực tiếp cho nó. Mục `TOC` kết quả sẽ không được in đậm vì đó là một phần của định dạng kiểu tuy nhiên nó sẽ được in nghiêng vì điều này được định dạng trực tiếp trên đoạn văn.

Bạn cũng có thể kiểm soát định dạng của các dấu phân cách được sử dụng giữa mỗi mục nhập và số trang. Theo mặc định, đây là một đường chấm chấm được trải rộng sang đánh số trang bằng cách sử dụng ký tự tab và dừng tab bên phải được xếp gần lề phải.

Sử dụng lớp `Style` được truy xuất cho cấp `TOC` cụ thể mà bạn muốn sửa đổi, bạn cũng có thể sửa đổi cách chúng xuất hiện trong tài liệu.

Để thay đổi cách điều này xuất hiện trước tiên `Style.ParagraphFormat` phải được gọi để truy xuất định dạng đoạn văn cho kiểu. Từ đó, các điểm dừng tab có thể được truy xuất bằng cách gọi `ParagraphFormat.TabStops` và tab thích hợp dừng sửa đổi. Sử dụng kỹ thuật tương tự này, bản thân tab có thể được di chuyển hoặc xóa hoàn toàn.

Ví dụ mã sau đây cho thấy cách sửa đổi vị trí của tab bên phải dừng trong các đoạn liên quan `TOC`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Xóa Một Mục Lục khỏi Tài liệu

Một mục lục có thể được xóa khỏi tài liệu bằng cách xóa tất cả các nút được tìm thấy giữa nút `FieldStart` và FieldEnd của trường `TOC`.

Mã dưới đây chứng minh điều này. Việc loại bỏ trường `TOC` đơn giản hơn trường bình thường vì chúng tôi không theo dõi các trường lồng nhau. Thay vào đó, chúng tôi kiểm tra nút `FieldEnd` thuộc loại `FieldType.FieldTOC` có nghĩa là chúng tôi đã gặp phải phần cuối của TOC hiện tại. Kỹ thuật này có thể được sử dụng trong trường hợp này mà không phải lo lắng về bất kỳ trường lồng nhau nào vì chúng ta có thể giả định rằng bất kỳ tài liệu được hình thành đúng cách nào sẽ không có trường `TOC` lồng nhau hoàn toàn bên trong trường `TOC` khác.

Đầu tiên các nút `FieldStart` của mỗi `TOC` được thu thập và lưu trữ. `TOC` được chỉ định sau đó được liệt kê để tất cả các nút trong trường được truy cập và lưu trữ. Các nút sau đó được xóa khỏi tài liệu. Ví dụ mã sau đây trình bày cách xóa `TOC` được chỉ định khỏi tài liệu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## Trích Xuất Mục Lục

Nếu bạn muốn trích xuất một mục lục từ bất kỳ tài liệu Word nào, mẫu mã sau đây có thể được sử dụng.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
