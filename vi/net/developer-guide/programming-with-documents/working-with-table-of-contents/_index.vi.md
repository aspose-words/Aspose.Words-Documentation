---
title: Làm việc với Mục lục trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với Mục lục
linktitle: Làm việc với Mục lục
description: "Chi tiết về trường Mục lục. Cách tạo và sửa đổi trường `TOC` bằng C#. Chèn `TOC` C#."
type: docs
weight: 170
url: /vi/net/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Thông thường bạn sẽ làm việc với các tài liệu có chứa mục lục (TOC). Sử dụng Aspose.Words, bạn có thể chèn mục lục của riêng mình hoặc xây dựng lại hoàn toàn mục lục hiện có trong tài liệu chỉ bằng một vài dòng mã. Bài viết này phác thảo cách làm việc với trường mục lục và trình bày:

- Cách chèn `TOC` hoàn toàn mới
- Cập nhật TOC mới hoặc hiện có trong tài liệu.
- Chỉ định các switch để điều khiển việc định dạng và cấu trúc tổng thể của TOC.
- Cách sửa đổi kiểu dáng và hình thức của mục lục.
- Cách xóa toàn bộ trường `TOC` cùng với tất cả các mục nhập trong tài liệu.

## Chèn mục lục theo chương trình

Bạn có thể chèn trường `TOC` (mục lục) vào tài liệu ở vị trí hiện tại bằng cách gọi phương thức [InsertTableOfContents](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttableofcontents/).

Mục lục trong tài liệu Word có thể được xây dựng theo một số cách và được định dạng bằng nhiều tùy chọn khác nhau. Các chuyển đổi trường mà bạn chuyển đến phương thức sẽ kiểm soát cách tạo và hiển thị bảng trong tài liệu của bạn.

Các khóa chuyển mặc định được sử dụng trong `TOC` được chèn vào Microsoft Word là **"\o "1-3 \h \z \u"**. Bạn có thể tìm thấy mô tả về các công tắc này cũng như danh sách các công tắc được hỗ trợ ở phần sau của bài viết. Bạn có thể sử dụng hướng dẫn đó để lấy các công tắc chính xác hoặc nếu bạn đã có tài liệu chứa `TOC` tương tự mà bạn muốn, bạn có thể hiển thị mã trường (*ALT+F9*) và sao chép các công tắc trực tiếp từ trường.

Ví dụ mã sau đây cho biết cách chèn trường Mục lục vào tài liệu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-DocumentBuilderInsertTOC.cs" >}}

Ví dụ mã sau đây cho thấy cách chèn Mục lục (TOC) vào tài liệu bằng cách sử dụng các kiểu tiêu đề làm mục nhập.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTableOfContents.cs" >}}

{{% alert color="primary" %}}

Nếu không có các phương thức được sử dụng trong ví dụ, khi bạn mở tài liệu đầu ra, bạn sẽ tìm thấy trường `TOC` nhưng không có nội dung hiển thị. Điều này là do trường `TOC` đã được chèn nhưng chưa được điền cho đến khi được cập nhật trong tài liệu. Thông tin thêm về điều này sẽ được thảo luận trong phần tiếp theo.

{{% /alert %}}

## Cập nhật mục lục

Aspose.Words cho phép bạn cập nhật hoàn toàn `TOC` chỉ với một vài dòng mã. Điều này có thể được thực hiện để điền vào một `TOC` mới được chèn vào hoặc để cập nhật một `TOC` hiện có sau khi các thay đổi đối với tài liệu đã được thực hiện. Hai phương pháp sau đây phải được sử dụng để cập nhật các trường `TOC` trong tài liệu:

1. [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/)
1. [UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/updatepagelayout/)

Xin lưu ý rằng hai phương thức cập nhật này bắt buộc phải được gọi theo thứ tự đó. Nếu đảo ngược mục lục sẽ được điền nhưng không có số trang nào được hiển thị. Bất kỳ số lượng TOC khác nhau nào cũng có thể được cập nhật. Các phương pháp này sẽ tự động cập nhật tất cả TOC có trong tài liệu.

Ví dụ về mã sau đây cho thấy cách xây dựng lại hoàn toàn các trường `TOC` trong tài liệu bằng cách gọi cập nhật trường:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-UpdateFields.cs" >}}

Lệnh gọi đầu tiên tới **UpdateFields** sẽ tạo `TOC`, tất cả các mục nhập văn bản đều được điền và `TOC` có vẻ gần như hoàn chỉnh. Điều duy nhất còn thiếu là số trang hiện được hiển thị bằng "?". Lệnh gọi **UpdatePageLayout** thứ hai sẽ xây dựng bố cục của tài liệu trong bộ nhớ. Điều này cần phải được thực hiện để thu thập số trang của các mục. Sau đó, số trang chính xác được tính toán từ lệnh gọi này sẽ được chèn vào TOC.

## Sử dụng công tắc để điều khiển hành vi của mục lục

Giống như bất kỳ trường nào khác, trường `TOC` có thể chấp nhận các công tắc được xác định trong mã trường kiểm soát cách xây dựng mục lục. Một số công tắc nhất định được sử dụng để kiểm soát những mục nào được đưa vào và ở mức nào trong khi những công tắc khác được sử dụng để kiểm soát sự xuất hiện của TOC. Các công tắc có thể được kết hợp với nhau để cho phép tạo ra mục lục phức tạp.

![working-with-table-of-contents-aspose-words-net](/words/net/working-with-table-of-contents/working-with-table-of-contents-1.png)


Theo mặc định, các công tắc ở trên được bao gồm khi chèn `TOC` mặc định vào tài liệu. `TOC` không có công tắc sẽ bao gồm nội dung từ các kiểu tiêu đề tích hợp sẵn (như thể công tắc \O được đặt). Các công tắc `TOC` có sẵn được Aspose.Words hỗ trợ được liệt kê bên dưới và cách sử dụng chúng được mô tả chi tiết. Chúng có thể được chia thành các phần riêng biệt dựa trên loại của chúng. Các công tắc trong phần đầu tiên xác định nội dung nào cần đưa vào `TOC` và các công tắc trong phần thứ hai kiểm soát sự xuất hiện của TOC. Nếu một công tắc không được liệt kê ở đây thì nó hiện không được hỗ trợ. Tất cả các thiết bị chuyển mạch sẽ được hỗ trợ trong các phiên bản sau. Chúng tôi đang bổ sung thêm hỗ trợ với mỗi bản phát hành.

### Công tắc đánh dấu đầu vào

|  Công tắc | Sự miêu tả |
|  :-  |  :-  |
| **Heading Styles**<br>*(\O Chuyển đổi)* | <p>Công tắc này xác định rằng `TOC` phải được xây dựng dựa trên các kiểu tiêu đề có sẵn. Trong Microsoft Word, những kiểu này được xác định bởi Tiêu đề 1 – Tiêu đề 9. Trong Aspose.Words, các kiểu này được thể hiện bằng bảng liệt kê StyleIdentifier tương ứng. Bảng liệt kê này đại diện cho một mã định danh độc lập theo miền địa phương của một kiểu, ví dụ `StyleIdentifier.Heading1` đại diện cho kiểu Tiêu đề 1. Bằng cách sử dụng tính năng này, định dạng và thuộc tính của kiểu có thể được truy xuất từ bộ sưu tập Kiểu của tài liệu. Lớp Kiểu tương ứng có thể được truy xuất từ bộ sưu tập `Document.Styles` bằng cách sử dụng thuộc tính được lập chỉ mục của loại StyleIdentifier.</p>

<p>![working-with-table-of-contents-styles](/words/net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p>

<p>Bất kỳ nội dung nào được định dạng bằng các kiểu này đều được đưa vào mục lục. Cấp độ của tiêu đề sẽ xác định cấp độ phân cấp tương ứng của mục nhập trong TOC. Ví dụ: đoạn văn có kiểu Tiêu đề 1 sẽ được coi là cấp đầu tiên trong `TOC` trong khi đoạn văn có Tiêu đề 2 sẽ được coi là cấp tiếp theo trong hệ thống phân cấp, v.v.</p> |
| **Outline Levels**<br>*(\U chuyển đổi)* | <p>Mỗi đoạn có thể xác định mức phác thảo trong tùy chọn Đoạn.</p>

<p>![working-with-table-of-contents-paragraph](/words/net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p>

<p>Cài đặt này cho biết đoạn này sẽ được xử lý ở cấp độ nào trong hệ thống phân cấp tài liệu. Đây là cách thực hành thường được sử dụng để dễ dàng cấu trúc bố cục của tài liệu. Có thể xem hệ thống phân cấp này bằng cách thay đổi sang Chế độ xem phác thảo trong Microsoft Word. Tương tự như kiểu tiêu đề, có thể có từ 1 đến 9 cấp độ phác thảo ngoài cấp độ "Nội dung". Các cấp độ phác thảo 1 – 9 sẽ xuất hiện trong `TOC` ở cấp độ tương ứng của hệ thống phân cấp<br>Bất kỳ nội dung nào có mức phác thảo được đặt theo kiểu đoạn văn hoặc trực tiếp trên chính đoạn văn đó đều được đưa vào TOC. Trong Aspose.Words, mức phác thảo được biểu thị bằng thuộc tính `ParagraphFormat.OutlineLevel` của nút Đoạn văn. Mức phác thảo của kiểu đoạn văn được thể hiện theo cách tương tự bởi thuộc tính `Style.ParagraphFormat`.</p>

<p>{{% alert color="primary" %}}</p>

<p>Lưu ý rằng các kiểu tiêu đề tích hợp sẵn như Tiêu đề 1 có mức phác thảo bắt buộc được đặt trong cài đặt kiểu.</p>

<p>{{% /alert %}}</p> |
| **Custom Styles**<br>*(\T chuyển đổi)* | <p>Công tắc này sẽ cho phép sử dụng các kiểu tùy chỉnh khi thu thập các mục sẽ được sử dụng trong TOC. Điều này thường được sử dụng cùng với nút chuyển \O để bao gồm các kiểu tùy chỉnh cùng với các kiểu tiêu đề tích hợp trong TOC.<br>Các thông số của công tắc phải được đặt trong dấu lời nói. Có thể bao gồm nhiều kiểu tùy chỉnh, đối với mỗi kiểu, tên phải được chỉ định theo sau là dấu phẩy, theo sau là cấp độ mà kiểu đó sẽ xuất hiện trong `TOC`. Các kiểu khác cũng được phân tách bằng dấu phẩy.<br>Ví dụ</p>

<p>{{< highlight csharp >}}

<p>  { TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"} </p><p>{{< /highlight >}}</p>

<p>sẽ sử dụng nội dung được tạo kiểu bằng CustomHeading1 làm nội dung cấp 1 trong `TOC` và CustomHeading2 làm nội dung cấp 2.</p> |
| **Use TC Fields**<br>*(\F và \L Công tắc)* | <p>Trong các phiên bản Microsoft Word cũ hơn, cách duy nhất để xây dựng `TOC` là sử dụng các trường TC. Các trường này được chèn ẩn vào tài liệu ngay cả khi mã trường được hiển thị. Chúng bao gồm văn bản sẽ được hiển thị trong mục nhập và `TOC` được tạo từ chúng. Chức năng này hiện không được sử dụng thường xuyên nhưng vẫn có thể hữu ích trong một số trường hợp để bao gồm các mục trong `TOC` không được thụt lề để hiển thị trong tài liệu.<br>Khi chèn các trường này sẽ bị ẩn ngay cả khi mã trường được hiển thị. Chúng không thể được nhìn thấy nếu không hiển thị nội dung ẩn. Để xem các trường này Hiển thị định dạng đoạn văn phải được chọn.</p>

<p>![working-with-table-of-contents-paragraph-settings](/words/net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p> Các trường này có thể được chèn vào tài liệu ở bất kỳ vị trí nào giống như bất kỳ trường nào khác và được biểu thị bằng bảng liệt kê `FieldType.FieldTOCEntry`.<br>Công tắc \F trong `TOC` được sử dụng để chỉ định rằng các trường TC sẽ được sử dụng làm mục nhập. Công tắc tự nó không có bất kỳ mã định danh bổ sung nào có nghĩa là bất kỳ trường TC nào trong tài liệu sẽ được đưa vào. Bất kỳ tham số bổ sung nào, thường là một chữ cái, sẽ chỉ định rằng chỉ các trường TC có khóa chuyển \f phù hợp mới được đưa vào TOC. Ví dụ *</p>

<p>{{< highlight csharp >}}

<p>  { TOC \f t } </p><p>{{< /highlight >}}</p>

<p>sẽ chỉ bao gồm các trường TC như</p>

<p>{{< highlight csharp >}}
p> {   TC \f t }</p><p>{{< /highlight >}}</p>

<p>Trường `TOC` cũng có một công tắc liên quan, công tắc "\L" chỉ định rằng chỉ bao gồm trường TC có các mức trong phạm vi đã chỉ định.</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p>

<p>Bản thân các trường `TC` cũng có thể được đặt công tắc `{several, multiple, a few, many, numerous}`. Đó là:</p>

<p>- *\F – Đã giải thích ở trên.*</p>

<p>- *\L – Xác định cấp độ nào trong `TOC` mà trường TC này sẽ xuất hiện. Một `TOC` sử dụng cùng một công tắc này sẽ chỉ bao gồm trường TC này nếu nó nằm trong phạm vi được chỉ định.*</p>

<p>- `_\N` – Việc đánh số trang cho mục nhập `TOC` này không được hiển thị. Bạn có thể tìm thấy mã mẫu về cách chèn trường TC trong phần tiếp theo.</p> |

### Công tắc liên quan đến ngoại hình

|  Công tắc | Sự miêu tả |
|  :-  |  :-  |
| **Omit Page Numbers**<br>*(\N Chuyển đổi)* | <p>Công tắc này được sử dụng để ẩn số trang đối với các cấp độ TOC nhất định. Ví dụ bạn có thể định nghĩa</p>

<p>{{< highlight csharp >}}
<p>  {TOC \o "1-4" \n "3-4" } </p><p>{{< /highlight >}}</p>

<p>và số trang ở mục cấp 3, cấp 4 sẽ bị ẩn cùng với dấu chấm đầu dòng (nếu có). Để chỉ định một cấp độ, vẫn nên sử dụng phạm vi, ví dụ: "1-1" sẽ chỉ loại trừ số trang cho cấp độ đầu tiên.<br>Việc không cung cấp phạm vi cấp độ sẽ bỏ qua số trang cho tất cả các cấp độ trong TOC. Điều này hữu ích để đặt khi xuất tài liệu sang HTML hoặc định dạng tương tự. Điều này là do các định dạng dựa trên HTML không có bất kỳ khái niệm trang nào và do đó không cần đánh số trang.</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p> |
| **Insert As Hyperlinks**<br>*(\H Chuyển đổi)* | <p>Công tắc này chỉ định rằng các mục nhập `TOC` được chèn dưới dạng siêu liên kết. Khi xem tài liệu ở định dạng Microsoft Word, các mục nhập này sẽ vẫn xuất hiện dưới dạng văn bản bình thường bên trong `TOC` nhưng được liên kết với nhau và do đó có thể được sử dụng để điều hướng đến vị trí của mục nhập gốc trong tài liệu bằng cách sử dụng *Ctrl + Nhấp chuột trái* trong Microsoft Word. Khi bao gồm công tắc này thì các liên kết này cũng được giữ nguyên ở các định dạng khác. Ví dụ: ở các định dạng dựa trên HTML bao gồm EPUB và các định dạng được hiển thị như PDF và XPS, những định dạng này sẽ được xuất dưới dạng liên kết hoạt động.<br>Nếu không có nút chuyển này, hãy đặt `TOC` ở tất cả các đầu ra này sẽ được xuất dưới dạng văn bản thuần túy và sẽ không thể hiện hành vi này. Nếu một tài liệu được mở trong MS Word, văn bản của các mục cũng sẽ không thể nhấp vào được theo cách này nhưng số trang vẫn có thể được sử dụng để điều hướng đến mục nhập ban đầu.</p>

<p>![working-with-table-of-contents-titles](/words/net/working-with-table-of-contents/working-with-table-of-contents-7.png)</p> |
| **Set Separator Character**<br>*(\P Chuyển đổi)* | <p>Việc chuyển đổi này cho phép dễ dàng thay đổi nội dung ngăn cách tiêu đề của mục nhập và đánh số trang trong TOC. Dấu phân cách sẽ sử dụng phải được chỉ định sau nút chuyển này và được đặt trong dấu giọng nói.<br>Ngược lại với những gì được ghi trong tài liệu Office, chỉ có thể sử dụng một ký tự thay vì tối đa năm ký tự. Điều này áp dụng cho cả MS Word và Aspose.Words.<br>Việc sử dụng khóa chuyển này không được khuyến khích vì nó không cho phép kiểm soát nhiều đối với những gì nó sử dụng để phân tách các mục nhập và số trang trong TOC. Thay vào đó, bạn nên chỉnh sửa kiểu `TOC` thích hợp như `StyleIdentifier.TOC1` và từ đó chỉnh sửa kiểu đường dẫn có quyền truy cập vào các thành phần phông chữ cụ thể, v.v. Bạn có thể tìm thêm chi tiết về cách thực hiện việc này ở phần sau của bài viết.</p>

<p>![working-with-table-of-contents-toc](/words/net/working-with-table-of-contents/working-with-table-of-contents-8.png)</p> |
| **Preserve Tab Entries**<br>*(\W Chuyển đổi)* | <p>Việc sử dụng công tắc này sẽ chỉ định rằng bất kỳ mục nhập nào có ký tự tab, ví dụ như tiêu đề có tab ở cuối dòng, sẽ được giữ lại làm ký tự tab thích hợp khi điền TOC. Điều này có nghĩa là chức năng của ký tự tab sẽ có trong `TOC` và có thể được sử dụng để định dạng mục nhập. Ví dụ: một số mục nhất định có thể sử dụng điểm dừng tab và ký tự tab để giãn cách đều văn bản. Miễn là mức `TOC` tương ứng xác định các điểm dừng tab tương đương thì các mục `TOC` được tạo sẽ xuất hiện với khoảng cách tương tự.<br><br>Trong tình huống tương tự nếu công tắc này không được xác định thì các ký tự tab sẽ được chuyển đổi thành khoảng trắng tương đương với các tab không hoạt động. Đầu ra sau đó sẽ không xuất hiện như mong đợi.</p>

<p>![working-with-table-of-contents-aspose](/words/net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p> |
| **Preserve New Line Entries**<br>*(\X Chuyển đổi)* | <p>Tương tự như công tắc ở trên, công tắc này chỉ định rằng các tiêu đề trải dài trên nhiều dòng (sử dụng ký tự dòng mới chứ không phải các đoạn riêng biệt) sẽ được giữ nguyên như trong TOC được tạo. Ví dụ: một tiêu đề trải dài trên nhiều dòng có thể sử dụng ký tự dòng mới (Ctrl + Enter hoặc `ControlChar.LineBreak`) để phân tách nội dung trên các dòng khác nhau. Với công tắc này được chỉ định, mục nhập trong `TOC` sẽ giữ nguyên các ký tự dòng mới này như hiển thị bên dưới.<br><br>Trong trường hợp này nếu khóa chuyển không được xác định thì các ký tự dòng mới sẽ được chuyển đổi thành một khoảng trắng.</p>

<p>![working-with-table-of-contents-aspose-words](/words/net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p> |

## Chèn trường TC

Bạn có thể chèn trường TC mới vào vị trí hiện tại của [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) bằng cách gọi phương thức [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) và chỉ định tên trường là "TC" cùng với bất kỳ công tắc nào cần thiết.

Ví dụ về mã sau đây cho biết cách chèn trường `TC` vào tài liệu bằng **DocumentBuilder**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCField-DocumentBuilderInsertTCField.cs" >}}

Thông thường, một dòng văn bản cụ thể được chỉ định cho `TOC` và được đánh dấu bằng trường `TC`. Cách dễ dàng để thực hiện điều này trong Microsoft Word là đánh dấu văn bản và nhấn *ALT+SHIFT+O*. Điều này sẽ tự động tạo trường `TC` bằng văn bản đã chọn. Kỹ thuật tương tự có thể được thực hiện thông qua mã. Mã bên dưới sẽ tìm văn bản khớp với đầu vào và chèn trường `TC` vào cùng vị trí với văn bản. Mã này dựa trên kỹ thuật tương tự được sử dụng trong bài viết.

Ví dụ về mã sau đây cho biết cách tìm và chèn trường `TC` vào văn bản trong tài liệu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cs" >}}

## Sửa đổi Mục lục

Định dạng của các mục trong `TOC` không sử dụng kiểu gốc của các mục được đánh dấu, thay vào đó, mỗi cấp độ được định dạng bằng kiểu `TOC` tương đương. Ví dụ: cấp độ đầu tiên trong `TOC` được định dạng theo kiểu **TOC1**, cấp độ thứ hai được định dạng theo kiểu **TOC2**, v.v. Điều này có nghĩa là để thay đổi giao diện của `TOC`, các kiểu này phải được sửa đổi. Trong Aspose.Words, các kiểu này được biểu thị bằng `StyleIdentifier.TOC1` độc lập của miền địa phương cho đến `StyleIdentifier.TOC9` và có thể được truy xuất từ bộ sưu tập [Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) bằng cách sử dụng các mã định danh này.

Sau khi đã lấy được kiểu thích hợp của tài liệu, định dạng cho kiểu này có thể được sửa đổi. Mọi thay đổi đối với các kiểu này sẽ được tự động phản ánh trên TOC trong tài liệu.

Ví dụ về mã sau đây thay đổi thuộc tính định dạng được sử dụng trong kiểu `TOC` cấp đầu tiên:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cs" >}}

Cũng hữu ích khi lưu ý rằng mọi định dạng trực tiếp của một đoạn văn (được xác định trên chính đoạn văn đó chứ không phải theo kiểu) được đánh dấu là đưa vào `TOC` sẽ được sao chép sang mục nhập trong TOC. Ví dụ: nếu kiểu Tiêu đề 1 được sử dụng để đánh dấu nội dung cho `TOC` và kiểu này có định dạng In đậm trong khi đoạn văn cũng có định dạng in nghiêng được áp dụng trực tiếp cho nó. Mục nhập `TOC` kết quả sẽ không được in đậm vì đó là một phần của định dạng kiểu, tuy nhiên nó sẽ in nghiêng vì đây là định dạng trực tiếp trên đoạn văn.

Bạn cũng có thể kiểm soát định dạng của dấu phân cách được sử dụng giữa mỗi mục nhập và số trang. Theo mặc định, đây là một đường chấm chấm trải dài để đánh số trang bằng cách sử dụng ký tự tab và điểm dừng tab bên phải được xếp gần lề phải.

Bằng cách sử dụng lớp [Style](https://reference.aspose.com/words/net/aspose.words/style/) được truy xuất cho cấp `TOC` cụ thể mà bạn muốn sửa đổi, bạn cũng có thể sửa đổi cách chúng xuất hiện trong tài liệu. Để thay đổi cách hiển thị này, trước tiên [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/style/paragraphformat/) phải được gọi để truy xuất định dạng đoạn văn cho kiểu đó. Từ đó, các điểm dừng tab có thể được truy xuất bằng cách gọi [TabStops](https://reference.aspose.com/words/net/aspose.words/paragraphformat/tabstops/) và điểm dừng tab thích hợp được sửa đổi. Sử dụng kỹ thuật tương tự này, bản thân tab có thể được di chuyển hoặc xóa cùng nhau.

Ví dụ về mã sau đây cho thấy cách sửa đổi vị trí của điểm dừng tab bên phải trong các đoạn văn liên quan đến `TOC`:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cs" >}}

## Xóa mục lục khỏi tài liệu

Có thể xóa mục lục khỏi tài liệu bằng cách xóa tất cả các nút được tìm thấy giữa nút `FieldStart` và FieldEnd của trường `TOC`. Đoạn mã dưới đây chứng minh điều này. Việc loại bỏ trường `TOC` đơn giản hơn trường thông thường vì chúng tôi không theo dõi các trường lồng nhau. Thay vào đó, chúng tôi kiểm tra nút [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) có thuộc loại [FieldType.FieldTOC](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/), nghĩa là chúng tôi đã gặp phải phần cuối của TOC hiện tại. Kỹ thuật này có thể được sử dụng trong trường hợp này mà không cần lo lắng về bất kỳ trường lồng nhau nào vì chúng ta có thể giả định rằng mọi tài liệu được định dạng chính xác sẽ không có trường `TOC` được lồng hoàn toàn bên trong trường `TOC` khác.

Đầu tiên, các nút [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) của mỗi `TOC` được thu thập và lưu trữ. Sau đó, `TOC` được chỉ định sẽ được liệt kê để tất cả các nút trong trường được truy cập và lưu trữ. Các nút sau đó được loại bỏ khỏi tài liệu.

Ví dụ về mã sau đây cho biết cách xóa `TOC` được chỉ định khỏi tài liệu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cs" >}}

## Trích xuất mục lục

Nếu bạn muốn trích xuất mục lục từ bất kỳ tài liệu Word nào, có thể sử dụng mẫu mã sau:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ExtractTableOfContents-ExtractTableOfContents.cs" >}}
