---
title: Làm Việc Với Styles trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm Việc Với Phong Cách
linktitle: Làm Việc Với Phong Cách
description: "Các tính năng định dạng Microsoft Word nâng cao, làm việc với các kiểu và chủ đề bằng C++."
type: docs
weight: 110
url: /vi/cpp/working-with-styles-and-themes/
timestamp: 2024-01-30-16-22-34
---

Lớp [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) được sử dụng để quản lý cài đặt tích hợp và áp dụng các cài đặt do người dùng xác định cho các kiểu.

## Cách Trích Xuất Nội Dung Dựa Trên Phong Cách

Ở cấp độ đơn giản, việc truy xuất nội dung dựa trên các kiểu từ Tài liệu Word có thể hữu ích để xác định, liệt kê và đếm các đoạn văn bản và chạy văn bản được định dạng theo một kiểu cụ thể. Ví dụ: bạn có thể cần xác định các loại nội dung cụ thể trong tài liệu, chẳng hạn như ví dụ, tiêu đề, tài liệu tham khảo, từ khóa, tên hình và nghiên cứu điển hình.

Để thực hiện thêm một vài bước này, điều này cũng có thể được sử dụng để tận dụng cấu trúc của tài liệu, được xác định bởi các kiểu mà nó sử dụng, để tái sử dụng tài liệu cho một đầu ra khác, chẳng hạn như HTML. Trên thực tế, đây là cách tài liệu Aspose được xây dựng, đưa Aspose.Words vào thử nghiệm. Một công cụ được xây dựng bằng cách sử dụng Aspose.Words lấy Các tài liệu Word nguồn và chia Chúng thành các chủ đề ở các cấp tiêu đề nhất định. Tệp XML được tạo bằng Aspose.Words được sử dụng để xây dựng cây điều hướng mà bạn có thể thấy ở bên trái. Và sau đó Aspose.Words chuyển đổi từng chủ đề thành HTML.

Giải pháp để truy xuất văn bản được định dạng với các kiểu cụ thể trong Tài liệu Word thường tiết kiệm và đơn giản bằng cách sử dụng Aspose.Words.

### Giải Pháp

Để minh họa cách dễ dàng Aspose.Words xử lý việc truy xuất nội dung dựa trên kiểu, hãy xem một ví dụ. Trong ví dụ này, chúng tôi sẽ truy xuất văn bản được định dạng với một kiểu đoạn văn cụ thể và kiểu ký tự từ tài liệu Word mẫu. Ở mức độ cao, điều này sẽ liên quan đến:
- Mở Tài liệu Word bằng lớp `Document`.
- Nhận bộ sưu tập của tất cả các đoạn văn và tất cả chạy trong tài liệu.
- Chỉ chọn các đoạn cần thiết và chạy. Cụ thể, chúng tôi sẽ truy xuất văn bản được định dạng với kiểu đoạn văn 'Tiêu đề 1' và kiểu ký tự 'Nhấn Mạnh' Từ tài liệu Word mẫu này.

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


Trong tài liệu mẫu này, văn bản được định dạng với kiểu đoạn 'Tiêu đề 1' là 'Chèn Tab', 'Kiểu Nhanh' và 'Chủ đề' và văn bản được định dạng với kiểu ký tự 'Nhấn Mạnh' Là một số trường hợp của văn bản màu xanh lam, in nghiêng, in đậm như 'phòng trưng bày' và 'nhìn tổng thể'.

### Mã

Việc triển khai truy vấn dựa trên kiểu khá đơn giản trong mô hình đối tượng tài liệu Aspose.Words, vì nó chỉ đơn giản sử dụng các công cụ đã có sẵn. Hai phương thức lớp được triển khai cho giải pháp này: **ParagraphsByStyleName** – phương thức này lấy một mảng các đoạn đó trong tài liệu có tên kiểu cụ thể. **RunsByStyleName** – phương thức này lấy một mảng các lần chạy trong tài liệu có tên kiểu cụ thể. Cả hai phương thức này đều rất giống nhau, sự khác biệt duy nhất là các loại nút và biểu diễn thông tin kiểu trong đoạn văn và chạy các nút. Đây là một triển khai của ParagraphsByStyleName. Ví dụ dưới đây tìm tất cả các đoạn văn được định dạng theo kiểu được chỉ định.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

Việc triển khai này cũng sử dụng phương thức `Document.GetChildNodes` của lớp `Document`, trả về một tập hợp tất cả các nút với loại được chỉ định, trong trường hợp này là trong tất cả các đoạn.

Lưu ý rằng tham số thứ hai của phương thức **Document.GetChildNodes** được đặt thành true. Điều này buộc phương thức **Document.GetChildNodes** phải chọn từ tất cả các nút con một cách đệ quy, thay vì chỉ chọn các nút con ngay lập tức.

{{% /alert %}}

Cũng cần chỉ ra rằng bộ sưu tập đoạn văn không tạo ra chi phí ngay lập tức vì các đoạn văn chỉ được tải vào bộ sưu tập này khi bạn truy cập các mục trong đó. Sau đó, tất cả những gì bạn cần làm là đi qua bộ sưu tập, sử dụng tiêu chuẩn cho từng toán tử và thêm các đoạn có kiểu được chỉ định vào mảng paragraphsWithStyle. Tên kiểu `Paragraph` có thể được tìm thấy Trong Kiểu. Tên thuộc tính của đối tượng `Paragraph.ParagraphFormat`. Việc triển khai RunsByStyleName gần như giống nhau, mặc dù rõ ràng chúng tôi đang sử dụng `NodeType.Run` để truy xuất các nút chạy. Thuộc tính `Font.Style` của đối tượng `Run` được sử dụng để truy cập thông tin kiểu trong các nút **Run**. Ví dụ below code tìm tất cả các lần chạy được định dạng theo kiểu được chỉ định.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


Khi cả hai truy vấn được triển khai, tất cả những gì bạn cần làm là chuyển một đối tượng tài liệu và chỉ định tên kiểu của nội dung bạn muốn truy xuất: bên dưới ví dụ chạy truy vấn và hiển thị kết quả. Bạn có thể tải xuống tệp mẫu của ví dụ này từ đây.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### Kết Quả Cuối Cùng

Khi mọi thứ được thực hiện, chạy mẫu sẽ hiển thị đầu ra sau:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


Như bạn có thể thấy, đây là một ví dụ rất đơn giản, hiển thị số và văn bản của các đoạn văn được thu thập và chạy trong tài liệu Word mẫu.

## Cách Chèn Và Làm việc Với Trường Mục Lục

Thường thì bạn sẽ làm việc với các tài liệu có chứa một mục lục (TOC). Sử dụng Aspose.Words bạn có thể chèn mục lục của riêng mình hoặc xây dựng lại hoàn toàn mục lục hiện có trong tài liệu chỉ bằng một vài dòng mã. Bài viết này phác thảo cách làm việc với trường mục lục và trình bày:

- Làm thế nào để chèn một thương hiệu mới `TOC`
- Cập nhật mới hoặc hiện có TOCs trong tài liệu.
- Chỉ định các công tắc để điều khiển định dạng và cấu trúc tổng thể f TOC.
- Cách sửa đổi kiểu dáng và hình thức của mục lục.
- Cách xóa toàn bộ trường `TOC` cùng với tất cả các mục từ tài liệu.

### Chèn Các Trường TC

Thường thì một dòng văn bản cụ thể được chỉ định cho `TOC` và được đánh dấu bằng trường `TC`. Cách dễ dàng để làm Điều này trong MS Word là đánh dấu văn bản và nhấn *ALT+SHIFT+O*. Thao tác này sẽ tự động tạo trường `TC` bằng văn bản đã chọn. Kỹ thuật tương tự có thể được thực hiện thông qua mã. Đoạn mã dưới đây sẽ tìm thấy văn bản khớp với đầu vào và chèn trường `TC` ở cùng vị trí với văn bản. Mã này dựa trên cùng một kỹ thuật được sử dụng trong bài viết. Ví dụ dưới đây cho thấy cách tìm và chèn trường `TC` tại văn bản trong tài liệu.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### Sửa đổi Mục Lục

#### Thay đổi Định Dạng Của Các Kiểu

Định dạng của các mục trong `TOC` không sử dụng kiểu ban đầu của các mục được đánh dấu, thay vào đó, mỗi cấp độ được định dạng bằng cách sử dụng kiểu `TOC` tương đương. Ví dụ: cấp độ đầu tiên trong `TOC` được định dạng với kiểu **TOC1**, cấp độ thứ hai được định dạng với kiểu **TOC2**, v. v. Điều này có nghĩa là để thay đổi giao diện của `TOC`, các kiểu này phải được sửa đổi. Trong Aspose.Words các kiểu này được biểu diễn bằng ngôn ngữ độc lập `StyleIdentifier.TOC1` đến `StyleIdentifier.TOC9` và có thể được lấy từ bộ sưu tập `Document.Styles` bằng cách sử dụng các định danh này. Khi kiểu thích hợp của tài liệu đã được truy xuất, định dạng cho kiểu này có thể được sửa đổi. Bất kỳ thay đổi nào đối với các kiểu này sẽ được tự động phản ánh trên TOCs trong tài liệu. Ví dụ be low code thay đổi thuộc tính định dạng được sử dụng trong kiểu `TOC` cấp đầu tiên.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

Cũng rất hữu ích khi lưu ý rằng bất kỳ định dạng trực tiếp nào của một đoạn văn (được xác định trên chính đoạn văn chứ không phải theo kiểu) được đánh dấu để bao gồm `TOC` sẽ được sao chép trong mục trong TOC. Ví dụ: nếu kiểu Tiêu đề 1 được sử dụng để đánh dấu nội dung cho `TOC` và kiểu này có Định dạng Đậm trong khi đoạn văn cũng có định dạng nghiêng được áp dụng trực tiếp cho nó. Mục `TOC` kết quả sẽ không được in đậm vì đó là một phần của định dạng kiểu tuy nhiên nó sẽ được in nghiêng vì điều này được định dạng trực tiếp trên đoạn văn. Bạn cũng có thể kiểm soát định dạng của các dấu phân cách được sử dụng giữa mỗi mục nhập và số trang. Theo mặc định, đây là một đường chấm chấm được trải rộng sang đánh số trang bằng cách sử dụng ký tự tab và dừng tab bên phải được xếp gần lề phải.

Sử dụng lớp `Style` được truy xuất cho cấp `TOC` cụ thể mà bạn muốn sửa đổi, bạn cũng có thể sửa đổi cách chúng xuất hiện trong tài liệu. Để thay đổi cách điều này xuất hiện trước tiên `Style.ParagraphFormat` phải được gọi để truy xuất định dạng đoạn văn cho kiểu. Từ đó, các điểm dừng tab có thể được truy xuất bằng cách gọi `ParagraphFormat.TabStops` và tab thích hợp dừng sửa đổi. Sử dụng kỹ thuật tương tự này, bản thân tab có thể được di chuyển hoặc xóa hoàn toàn. Ví dụ below code cho thấy cách sửa đổi vị trí của tab bên phải dừng trong các đoạn liên quan `TOC`. Bạn có thể tải xuống tệp mẫu của ví dụ này từ đây.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### Xóa Một Mục Lục khỏi Tài liệu

Một mục lục có thể được xóa khỏi tài liệu bằng cách xóa tất cả các nút được tìm thấy giữa nút `FieldStart` và FieldEnd của trường `TOC`. Mã dưới đây chứng minh điều này. Việc loại bỏ trường `TOC` đơn giản hơn trường bình thường vì chúng tôi không theo dõi các trường lồng nhau. Thay vào đó, chúng tôi kiểm tra nút `FieldEnd` thuộc loại `FieldType.FieldTOC` có nghĩa là chúng tôi đã gặp phải phần cuối của TOC hiện tại. Kỹ thuật này có thể được sử dụng trong trường hợp này mà không phải lo lắng về bất kỳ trường lồng nhau nào vì chúng ta có thể giả định rằng bất kỳ tài liệu được hình thành đúng cách nào sẽ không có trường `TOC` lồng nhau hoàn toàn bên trong trường `TOC` khác. Đầu tiên các nút `FieldStart` của mỗi `TOC` được thu thập và lưu trữ. Sau đó, `TOC` được chỉ định được liệt kê để tất cả các nút trong trường được truy cập và lưu trữ. Các nút sau đó được xóa khỏi tài liệu. Ví dụ be low code thể hiện cách xóa `TOC` được chỉ định khỏi tài liệu. Bạn có thể tải xuống tệp mẫu của ví dụ này từ đây.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## Chèn Dấu Phân Cách Kiểu Để Đặt Các Kiểu Đoạn Văn Khác nhau

Dấu phân cách kiểu có thể được thêm vào cuối đoạn văn bằng Phím Tắt Ctrl + Alt + Enter Vào MS Word. Tính năng này cho phép hai kiểu đoạn văn khác nhau được sử dụng trong một đoạn văn in logic. Nếu bạn muốn một số văn bản từ đầu một tiêu đề cụ thể xuất hiện Trong Mục Lục nhưng không muốn toàn bộ tiêu đề Trong Mục Lục, bạn có thể sử dụng tính năng này. Ví dụ below code cho thấy cách chèn dấu phân cách kiểu để đặt các kiểu đoạn văn khác nhau.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Sao chép Tất cả Các Kiểu Từ Mẫu

Có những trường hợp bạn muốn sao chép tất cả các kiểu từ tài liệu này sang tài liệu khác. Bạn có thể sử dụng phương thức `Document.CopyStylesFromTemplate` để sao chép các kiểu từ mẫu được chỉ định sang tài liệu. Khi các kiểu được sao chép từ mẫu sang tài liệu, các kiểu được đặt tên như trong tài liệu được xác định lại để khớp với các mô tả kiểu trong mẫu. Các kiểu độc đáo từ mẫu được sao chép vào tài liệu. Phong cách độc đáo trong tài liệu vẫn còn nguyên vẹn. Ví dụ below code cho thấy cách sao chép các kiểu từ tài liệu này sang tài liệu khác.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}
