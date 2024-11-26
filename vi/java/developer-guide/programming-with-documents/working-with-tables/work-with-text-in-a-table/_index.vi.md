---
title: Làm việc với Văn bản trong một Bảng
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Văn bản trong một Bảng
linktitle: Làm việc với Văn bản trong một Bảng
description: "Thay thế văn bản trong một bảng ở Java. Chiết xuất văn bản thông thường từ bảng hoặc tế bào bằng cách sử dụng Java."
type: docs
weight: 60
url: /vi/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Như đã đề cập ở các bài trước, bảng thường chứa văn bản đơn giản mặc dù nội dung khác như hình ảnh hoặc thậm chí là bảng khác cũng có thể được đặt trong các ô.

Thêm văn bản hay các nội dung khác vào bảng được thực hiện bằng cách sử dụng các phương pháp thích hợp của lớp [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) và được mô tả trong bài viết ****. Trong bài viết này chúng ta sẽ nói về cách làm việc với văn bản trong một bảng đã tồn tại.

## Thay thế văn bản trong một bảng

Bảng, giống như bất kỳ nút nào khác trong Aspose.Words, có quyền truy cập vào đối tượng [Range](https://reference.aspose.com/words/java/com.aspose.words/range/). Sử dụng đối tượng phạm vi bảng bạn có thể thay thế văn bản trong một bảng.

Tính năng sử dụng ký tự đặc biệt khi thay thế hiện đang được hỗ trợ, do đó có thể thay thế văn bản hiện có với văn bản nhiều đoạn. Để thực hiện điều này, bạn cần sử dụng các ký tự siêu đặc biệt được mô tả trong phương thức tương ứng [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String).

{{% alert color="primary" %}}

Thông thường, việc thay thế văn bản nên được thực hiện ở mức độ tế bào (theo từng tế bào) hoặc ở mức độ đoạn văn.

{{% /alert %}}

Ví dụ mã sau cho thấy cách thay thế tất cả các trường hợp của một chuỗi văn bản trong các ô của một bảng toàn bộ:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Chiết xuất văn bản thông thường từ một bảng

Sử dụng đối tượng **Range**, bạn cũng có thể gọi phương thức trên toàn bộ phạm vi bảng và trích xuất bảng dưới dạng văn bản thông thường. Để thực hiện điều này, hãy sử dụng thuộc tính [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text)

Mã ví dụ sau cho thấy cách in ra văn bản của một bảng:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

Cùng một kỹ thuật được sử dụng để chiết xuất nội dung từ các tế bào bảng riêng lẻ.

Mã ví dụ sau cho thấy cách in một phạm vi văn bản của các phần tử dòng và bảng:

{{% /alert %}}

Mã ví dụ cho thấy cách in phạm vi văn bản của các phần tử hàng và bảng.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Làm việc với văn bản bảng thay thế

Các bảng Microsoft Word có một `table title` và `table description` cung cấp một đại diện văn bản thay thế của thông tin trong bảng.

Trong Aspose.Words bạn cũng có thể thêm một tiêu đề và mô tả bảng bằng cách sử dụng thuộc tính [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) và [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription). Những thuộc tính này có ý nghĩa đối với các tài liệu DOCX tuân thủ ISO / IEC 29500. Khi lưu theo các định dạng trước ISO/IEC 29500, các thuộc tính này bị bỏ qua.

Mã ví dụ sau cho thấy cách đặt các thuộc tính tiêu đề và mô tả của một bảng:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
