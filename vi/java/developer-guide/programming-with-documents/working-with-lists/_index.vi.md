---
title: Làm việc với các danh sách trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với danh sách
linktitle: Làm việc với danh sách
description: "Giới thiệu về tính năng định dạng số trong Aspose.Words cho Java."
type: docs
weight: 200
url: /vi/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Một danh sách trong một Microsoft Word văn bản là tập hợp các thuộc tính định dạng danh sách. Danh sách có thể được sử dụng trong các tài liệu để định dạng, sắp xếp và nhấn mạnh văn bản. Danh sách là cách tuyệt vời để tổ chức dữ liệu trong tài liệu, và chúng làm cho người đọc dễ hiểu hơn các điểm chính.

Mỗi danh sách có thể có tối đa 9 cấp độ và các thuộc tính định dạng như kiểu số, giá trị khởi đầu, lề, vị trí tab và những thứ khác được xác định riêng cho mỗi cấp độ.

Bài viết này mô tả cách thực hiện lập trình với danh sách bằng cách sử dụng Aspose.Words.

## Tạo Danh sách bằng cách Áp dụng Định dạng Danh sách

Aspose.Words cho phép tạo danh sách dễ dàng bằng cách áp dụng định dạng danh sách. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) cung cấp thuộc tính [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) trả về một đối tượng **ListFormat**. Đối tượng này có nhiều phương thức để bắt đầu và kết thúc danh sách và để tăng/giảm độ nhô. Có hai loại danh sách chung trong Microsoft Word: đánh dấu và đánh số

- Để bắt đầu danh sách đánh dấu, gọi [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Để bắt đầu một danh sách có số, gọi [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

Điểm hoặc số và định dạng được thêm vào đoạn văn hiện tại và tất cả các đoạn văn tiếp theo được tạo bằng **DocumentBuilder** cho đến khi [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) được gọi để dừng định dạng danh sách dấu đầu dòng.

Trong các tài liệu Word, danh sách có thể bao gồm tối đa chín mức độ. Định dạng danh sách cho mỗi cấp độ chỉ ra những dấu chấm tròn hoặc số nào được dùng, lề trái, khoảng cách giữa dấu chấm và văn bản v.v... Các phương pháp sau thay đổi mức danh sách và áp dụng thuộc tính định dạng mới của nó:

- Tăng mức danh sách của đoạn văn hiện tại lên một mức, gọi [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
"- Để giảm mức liệt kê của đoạn văn hiện tại xuống một mức, gọi [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)"

Các phương thức thay đổi cấp danh sách và áp dụng thuộc tính định dạng của cấp mới.

{{% alert color="primary" %}}

Bạn cũng có thể sử dụng thuộc tính [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) để lấy hoặc đặt mức liệt kê cho đoạn văn. Các mức danh sách được đánh số từ 0 đến 8.

{{% /alert %}}

Mã ví dụ dưới đây cho thấy cách tạo một danh sách nhiều cấp:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Chỉ định Định dạng cho một Cấp độ Danh sách

Các đối tượng cấp danh sách được tạo tự động khi một danh sách được tạo ra. Sử dụng các thuộc tính và phương thức của lớp [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) để kiểm soát định dạng các cấp riêng biệt trong một danh sách.

## Khởi động lại danh sách cho mỗi phần

Bạn có thể bắt đầu lại danh sách cho mỗi phần bằng thuộc tính [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection). Lời nhắc rằng tùy chọn này được hỗ trợ chỉ trong các định dạng tài liệu RTF, DOC và DOCX. Tùy chọn này sẽ được viết trong DOCX nếu OoxmlCompliance cao hơn Ecma376.

Mã ví dụ sau cho thấy cách tạo một danh sách và khởi động lại nó cho mỗi phần":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

