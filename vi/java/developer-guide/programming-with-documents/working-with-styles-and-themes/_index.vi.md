---
title: Làm việc với Phong cách và Chủ đề
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Phong cách và Chủ đề
linktitle: Làm việc với Phong cách và Chủ đề
description: "Nâng cao Microsoft Word các tính năng định dạng, làm việc với các phong cách và chủ đề bằng Java."
type: docs
weight: 110
url: /vi/java/working-with-styles-and-themes/
---

Lớp [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) được sử dụng để quản lý các cài đặt mặc định và áp dụng các cài đặt do người dùng xác định cho các kiểu.

## Làm sao để trích xuất nội dung dựa trên kiểu?

Tại mức đơn giản, việc lấy nội dung dựa trên kiểu từ một tài liệu Word có thể hữu ích để xác định, liệt kê và đếm các đoạn văn và dòng văn bản được định dạng với một kiểu cụ thể. Ví dụ, bạn có thể cần phải xác định những loại nội dung cụ thể trong tài liệu, chẳng hạn như ví dụ, tiêu đề, tham khảo, từ khóa, tên hình minh họa và nghiên cứu trường hợp.

Để đưa ý này lên một bước nữa, điều này cũng có thể được dùng để khai thác cấu trúc của tài liệu, được xác định bởi các kiểu nó sử dụng, để tái mục đích tài liệu cho một đầu ra khác như HTML. Đây chính xác là cách thức mà tài liệu Aspose được xây dựng, đưa Aspose.Words vào thử nghiệm. Công cụ được xây dựng bằng Aspose.Words lấy các tài liệu từ nguồn Word và chia thành các chủ đề ở các mức tiêu đề nhất định. Một tập tin XML được sản xuất sử dụng Aspose.Words mà được sử dụng để tạo ra cây điều hướng bạn có thể thấy ở bên trái. Và sau đó Aspose.Words chuyển đổi mỗi chủ đề thành HTML. Giải pháp lấy văn bản định dạng với các kiểu cụ thể trong một tài liệu Word thường khá tiết kiệm và đơn giản bằng cách sử dụng Aspose.Words.

Để minh họa cách thức mà Aspose.Words dễ dàng lấy nội dung dựa trên các kiểu dáng, hãy xem xét một ví dụ. Trong ví dụ này, chúng ta sẽ lấy lại văn bản được định dạng với một kiểu đoạn và một kiểu ký tự cụ thể từ một tài liệu mẫu Word.

Ở một mức độ cao, việc này sẽ liên quan tới:

1. Mở một tập tin Word bằng lớp [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Nhận các tập hợp tất cả các đoạn văn và tất cả các chạy trong tài liệu.
1. Chọn chỉ các đoạn văn và dòng được yêu cầu.

Cụ thể, chúng ta sẽ lấy văn bản được định dạng với kiểu đoạn đầu đề 1 và kiểu ký tự nhấn mạnh mạnh mẽ từ ví dụ tài liệu word này

![working-with-styles-aspose-words-java-1](working-with-styles-1.png)

Trong mẫu tài liệu này, văn bản được định dạng với kiểu đoạn văn "Heading 1" là "Insert Tab", "Quick Styles" và "Theme", và văn bản được định dạng với kiểu ký tự "Intense emphasis" là một số lần xuất hiện của văn bản màu xanh đậm nghiêng và in đậm như "galleries" và "overall look".

Thực hiện một truy vấn dựa vào phong cách khá đơn giản trong Aspose.Words mô hình đối tượng tài liệu, bởi nó chỉ sử dụng các công cụ mà đã được lắp đặt sẵn. Hai phương pháp lớp được thực hiện cho giải pháp này là:

1. **ParagraphsByStyleName** – Phương pháp này trả về một mảng các đoạn văn trong tài liệu có tên kiểu cụ thể.
1. **RunsByStyleName** – Phương thức này trả về một mảng các đường chạy trong tài liệu có tên kiểu cụ thể.

Cả hai phương pháp này rất tương tự, sự khác biệt duy nhất là các kiểu nút và cách thể hiện thông tin phong cách trong các nút đoạn và chạy. Đây là một thực hiện của ParagraphsByStyleName cho thấy trong ví dụ mã dưới đây để tìm tất cả các đoạn văn được định dạng với phong cách đã chỉ ra.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Thực hiện này cũng sử dụng phương thức [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) của lớp `Document`, trả về một bộ sưu tập tất cả các nút con ngay lập tức.

Cũng đáng để lưu ý rằng bộ thu thập đoạn văn không tạo ra một chi phí ngay lập tức vì các đoạn văn được tải vào bộ thu thập này chỉ khi bạn truy cập các mục trong chúng.Sau đó, tất cả những gì bạn cần làm là đi qua bộ thu thập, sử dụng toán tử foreach tiêu chuẩn và thêm các đoạn có kiểu được chỉ định vào mảng paragraphsWithStyle. Tên kiểu `Paragraph` có thể được tìm thấy trong thuộc tính [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) của đối tượng [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat).

Việc thực hiện của RunByStyleName gần như giống nhau, mặc dù chúng tôi rõ ràng đang sử dụng `NodeType.Run` để lấy các nút chạy. Tính [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) thuộc tính của một đối tượng [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) được sử dụng để truy cập thông tin kiểu trong các nút **Run**

Mã ví dụ sau đây tìm tất cả các chuỗi được định dạng với kiểu đã chỉ định.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Khi cả hai truy vấn đều được thực hiện, tất cả những gì bạn cần làm là truyền một đối tượng tài liệu và chỉ rõ tên kiểu của nội dung mà bạn muốn lấy:

{{% /alert %}}

Mã ví dụ sau này chạy các truy vấn và hiển thị kết quả.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Khi mọi việc đã xong, chạy đoạn mã mẫu sẽ hiển thị kết quả sau:

![working-with-styles-aspose-words-java-2](working-with-styles-2.png)

Như bạn thấy, đây là một ví dụ rất đơn giản, cho thấy số lượng và văn bản của các đoạn văn trong tài liệu mẫu.

## Chèn "Style Separator" để đặt các kiểu đoạn khác nhau

Dấu phân cách kiểu có thể được thêm vào cuối một đoạn bằng cách sử dụng phím tắt bàn phím Ctrl + Alt + Enter trong MS Word. Tính năng này cho phép hai kiểu đoạn khác nhau được dùng trong một đoạn văn logic. Nếu bạn muốn một số văn bản từ đầu của một tiêu đề cụ thể xuất hiện trong Mục lục nhưng không muốn toàn bộ tiêu đề trong Mục lục, bạn có thể sử dụng tính năng này

Mã ví dụ sau cho thấy cách chèn một phân cách phong cách để đặt các kiểu đoạn văn khác nhau

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Sao chép tất cả các kiểu từ mẫu

Có những trường hợp khi bạn muốn sao chép toàn bộ kiểu dáng từ một tài liệu vào tài liệu khác. Bạn có thể dùng phương thức `Document.CopyStylesFromTemplate` để sao chép các kiểu từ mẫu được chỉ định sang một tài liệu. Khi kiểu được sao chép từ mẫu sang tài liệu, các kiểu giống nhau trong tài liệu được định nghĩa lại để khớp với các mô tả kiểu trong mẫu. Các kiểu riêng của mẫu được sao chép vào tài liệu. Các kiểu độc đáo trong tài liệu vẫn nguyên vẹn

Mã ví dụ sau cho thấy cách sao chép các kiểu từ một tài liệu sang một tài liệu khác.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Cách Chỉnh Sửa Thuộc Tính Chủ Đề

Chúng tôi đã thêm API cơ bản trong Aspose.Words để truy cập các thuộc tính chủ đề tài liệu. Cho đến nay, điều này API bao gồm các đối tượng công khai sau:

- Chủ đề
- ThemeFonts
- Màu Sắc Chủ Đề

Đây là cách bạn có thể lấy thuộc tính chủ đề:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

Và đây là cách bạn có thể thiết lập thuộc tính chủ đề

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
