---
title: Làm Việc Với Văn bản Trong Một Bảng
second_title: Aspose.Words cho C++
articleTitle: Làm Việc Với Văn bản Trong Một Bảng
linktitle: Làm Việc Với Văn bản Trong Một Bảng
description: "Thay thế văn bản trong một bảng trong C++. Trích Xuất Văn bản Thuần túy từ Bảng hoặc Ô bằng C++."
type: docs
weight: 60
url: /vi/cpp/work-with-text-in-a-table/
---

Như đã đề cập trong các bài viết trước, một bảng thường chứa văn bản thuần túy, mặc dù các nội dung khác như hình ảnh hoặc thậm chí các bảng khác có thể được đặt trong các ô của bảng.

Việc thêm văn bản hoặc nội dung khác vào bảng được thực hiện bằng các phương thức thích hợp của lớp [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) và được mô tả trong bài viết **"Create a Table"**. Trong bài viết này, chúng tôi sẽ nói về cách làm việc với văn bản trong một bảng đã có.

## Thay Thế Văn bản Trong Một Bảng

Bảng, giống như bất kỳ nút nào khác trong Aspose.Words, có quyền truy cập vào đối tượng [Range](https://reference.aspose.com/words/cpp/aspose.words/range/). Sử dụng đối tượng phạm vi bảng, bạn có thể thay thế văn bản trong bảng.

Khả năng sử dụng các ký tự đặc biệt khi thay thế hiện được hỗ trợ, vì vậy có thể thay thế văn bản hiện có bằng văn bản nhiều đoạn. Để làm điều này, bạn cần sử dụng các siêu ký tự đặc biệt được mô tả trong phương thức [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) tương ứng.

{{% alert color="primary" %}}

Thông thường, việc thay thế văn bản nên được thực hiện ở cấp ô (trên mỗi ô) hoặc ở cấp đoạn văn.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách thay thế tất cả các phiên bản của một chuỗi văn bản trong các ô của toàn bộ bảng:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "replace-text.h" >}}

## Trích Xuất Văn bản Thuần túy từ Bảng hoặc Ô

Sử dụng đối tượng **Range**, bạn cũng có thể gọi các phương thức trên toàn bộ phạm vi bảng và trích xuất bảng dưới dạng văn bản thuần túy. Để làm điều này, hãy sử dụng thuộc tính [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/).

Ví dụ mã sau đây cho thấy cách in phạm vi văn bản của bảng:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "extract-text.h" >}}

Kỹ thuật tương tự được sử dụng để trích xuất nội dung từ các ô bảng riêng lẻ.

Ví dụ mã sau đây cho thấy cách in một phạm vi văn bản của các thành phần hàng và bảng:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "print-text-range-row-and-table.h" >}}

## Làm Việc Với Văn Bản Bảng Thay Thế

Các bảng Microsoft Word có `table title` và `table description` cung cấp một biểu diễn văn bản thay thế của thông tin có trong bảng.

Trong Aspose.Words, bạn cũng có thể thêm tiêu đề và mô tả bảng bằng cách sử dụng thuộc tính [Title](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_title/) và [Description](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_description/). Các thuộc tính này có ý nghĩa đối với DOCX tài liệu phù hợp với ISO/IEC 29500. Khi lưu ở các định dạng sớm hơn ISO/IEC 29500, các thuộc tính này bị bỏ qua.

Ví dụ mã sau đây cho thấy cách đặt thuộc tính tiêu đề và mô tả của bảng:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "table-title-and-description.h" >}}