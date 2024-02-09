---
title: Làm việc với Kiểu và Chủ đề trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với Kiểu và Chủ đề
linktitle: Làm việc với Kiểu và Chủ đề
description: "Các tính năng định dạng Microsoft Word nâng cao, làm việc với các kiểu và chủ đề bằng C#."
type: docs
weight: 110
url: /vi/net/working-with-styles-and-themes/
---

Lớp [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) được sử dụng để quản lý tích hợp sẵn và áp dụng các cài đặt do người dùng xác định cho kiểu.

## Truy cập kiểu

Bạn có thể lấy tập hợp các kiểu được xác định trong tài liệu bằng thuộc tính [Document.Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/). Bộ sưu tập này chứa cả kiểu dựng sẵn và kiểu do người dùng xác định trong tài liệu. Một kiểu cụ thể có thể được lấy theo tên/bí danh, mã định danh kiểu hoặc chỉ mục của nó. Ví dụ mã sau đây minh họa cách truy cập vào bộ sưu tập các kiểu được xác định trong tài liệu.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## Cách trích xuất nội dung dựa trên kiểu

Ở mức độ đơn giản, việc truy xuất nội dung dựa trên các kiểu từ tài liệu Word có thể hữu ích để xác định, liệt kê và đếm các đoạn văn cũng như số dòng văn bản được định dạng theo một kiểu cụ thể. Ví dụ: bạn có thể cần xác định các loại nội dung cụ thể trong tài liệu, chẳng hạn như ví dụ, tiêu đề, tài liệu tham khảo, từ khóa, tên hình và nghiên cứu trường hợp.

Để tiến thêm một vài bước nữa, điều này cũng có thể được sử dụng để tận dụng cấu trúc của tài liệu, được xác định bởi các kiểu mà nó sử dụng, nhằm tái sử dụng tài liệu cho một đầu ra khác, chẳng hạn như HTML. Trên thực tế, đây là cách xây dựng tài liệu Aspose, đưa Aspose.Words vào thử nghiệm. Một công cụ được xây dựng bằng Aspose.Words lấy tài liệu Word nguồn và chia chúng thành các chủ đề ở các cấp tiêu đề nhất định. Một tệp XML được tạo bằng Aspose.Words được sử dụng để xây dựng cây điều hướng mà bạn có thể thấy ở bên trái. Và sau đó Aspose.Words chuyển đổi từng chủ đề thành HTML.

Giải pháp truy xuất văn bản được định dạng theo các kiểu cụ thể trong tài liệu Word thường tiết kiệm và đơn giản khi sử dụng Aspose.Words.

### Giải pháp

Để minh họa cách Aspose.Words xử lý việc truy xuất nội dung dựa trên kiểu dễ dàng như thế nào, hãy xem một ví dụ. Trong ví dụ này, chúng ta sẽ truy xuất văn bản được định dạng bằng một kiểu đoạn văn cụ thể và một kiểu ký tự từ một tài liệu Word mẫu. Ở cấp độ cao, việc này sẽ bao gồm:# Mở một tài liệu Word bằng lớp [Document](https://reference.aspose.com/words/net/aspose.words/document/).# Lấy các bộ sưu tập của tất cả các đoạn văn và tất cả các dòng trong tài liệu.# Chỉ chọn các đoạn văn và dòng được yêu cầu. Cụ thể, chúng tôi sẽ truy xuất văn bản được định dạng bằng kiểu đoạn văn 'Tiêu đề 1' và kiểu ký tự 'Nhấn mạnh mạnh mẽ' từ tài liệu Word mẫu này.

![working-with-styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


Trong tài liệu mẫu này, văn bản được định dạng bằng kiểu đoạn văn 'Tiêu đề 1' là 'Chèn tab', 'Phong cách nhanh' và 'Chủ đề' và văn bản được định dạng bằng kiểu ký tự 'Nhấn mạnh mạnh' là một số trường hợp có màu xanh lam, văn bản in nghiêng, in đậm chẳng hạn như 'phòng trưng bày' và 'cái nhìn tổng thể'.

### Mật mã

Việc triển khai truy vấn dựa trên kiểu khá đơn giản trong mô hình đối tượng tài liệu Aspose.Words, vì nó chỉ sử dụng các công cụ đã có sẵn. Hai phương thức lớp được triển khai cho giải pháp này:# **ParagraphsByStyleName** – Phương thức này truy xuất một mảng các đoạn văn đó trong tài liệu có tên kiểu cụ thể.# **RunsByStyleName** – Phương thức này truy xuất một mảng gồm các lần chạy trong tài liệu có tên kiểu cụ thể. Cả hai phương thức này đều rất giống nhau, điểm khác biệt duy nhất là các loại nút và cách thể hiện kiểu đó thông tin trong đoạn văn và chạy các nút. Đây là cách triển khai ParagraphsByStyleName: Ví dụ dưới đây tìm tất cả các đoạn văn được định dạng với kiểu đã chỉ định.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

Việc triển khai này cũng sử dụng phương thức `Document.GetChildNodes` của lớp `Document`, trả về một tập hợp tất cả các nút có loại đã chỉ định, trong trường hợp này là trong tất cả các đoạn.

Lưu ý rằng tham số thứ hai của phương pháp **Document.GetChildNodes** được đặt thành true. Điều này buộc phương thức **Document.GetChildNodes** phải chọn đệ quy từ tất cả các nút con, thay vì chỉ chọn các nút con ngay lập tức.

{{% /alert %}}

Cũng cần chỉ ra rằng bộ sưu tập đoạn văn không tạo ra chi phí ngay lập tức vì các đoạn văn chỉ được tải vào bộ sưu tập này khi bạn truy cập các mục trong đó. Sau đó, tất cả những gì bạn cần làm là duyệt qua bộ sưu tập, sử dụng toán tử foreach tiêu chuẩn và thêm các đoạn văn có kiểu được chỉ định vào mảng đoạn vănWithStyle. Tên kiểu `Paragraph` có thể được tìm thấy trong thuộc tính [Style.Name](https://reference.aspose.com/words/net/aspose.words/style/name/) của đối tượng [Paragraph.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraph/paragraphformat/). Việc triển khai RunsByStyleName gần như giống nhau, mặc dù rõ ràng là chúng tôi đang sử dụng [NodeType.Run](https://reference.aspose.com/words/net/aspose.words/nodetype/) để truy xuất các nút chạy. Thuộc tính [Font.Style](https://reference.aspose.com/words/net/aspose.words/font/style/) của đối tượng [Run](https://reference.aspose.com/words/net/aspose.words/run/) được sử dụng để truy cập thông tin kiểu trong các nút **Run**. Ví dụ dưới đây tìm tất cả các lần chạy được định dạng với kiểu đã chỉ định.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


Khi cả hai truy vấn được triển khai, tất cả những gì bạn cần làm là truyền một đối tượng tài liệu và chỉ định tên kiểu của nội dung bạn muốn truy xuất: Ví dụ dưới đây chạy truy vấn và hiển thị kết quả. Bạn có thể tải xuống tệp mẫu của ví dụ này từ [đây](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### Kết quả cuối cùng

Khi mọi thứ hoàn tất, việc chạy mẫu sẽ hiển thị kết quả sau:

![styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Như bạn có thể thấy, đây là một ví dụ rất đơn giản, hiển thị số lượng và văn bản của các đoạn văn đã thu thập và chạy trong tài liệu Word mẫu.

## Sao chép tất cả các kiểu từ mẫu

Có những trường hợp bạn muốn sao chép tất cả các kiểu từ tài liệu này sang tài liệu khác. Bạn có thể sử dụng phương pháp `Document.CopyStylesFromTemplate` để sao chép kiểu từ mẫu đã chỉ định sang tài liệu. Khi kiểu được sao chép từ mẫu sang tài liệu, các kiểu có tên giống nhau trong tài liệu sẽ được xác định lại để khớp với mô tả kiểu trong mẫu. Các kiểu độc đáo từ mẫu sẽ được sao chép vào tài liệu. Các kiểu duy nhất trong tài liệu vẫn được giữ nguyên. Ví dụ Below code cho thấy cách sao chép kiểu từ tài liệu này sang tài liệu khác.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## Cách thao tác thuộc tính chủ đề

Chúng tôi đã thêm API cơ bản vào Aspose.Words để truy cập các thuộc tính chủ đề tài liệu. Hiện tại, API này bao gồm các đối tượng công khai sau:

- Chủ đề
- Phông chữ chủ đề
- Màu sắc chủ đề

Đây là cách bạn có thể nhận được các thuộc tính chủ đề:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

Và đây là cách bạn có thể đặt thuộc tính chủ đề:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}
