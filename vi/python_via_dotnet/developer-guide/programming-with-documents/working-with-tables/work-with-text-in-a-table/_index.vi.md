---
title: Làm việc với văn bản trong bảng
second_title: Aspose.Words cho Python
articleTitle: Làm việc với văn bản trong bảng
linktitle: Làm việc với văn bản trong bảng
description: "Thay thế văn bản trong bảng trong Python. Trích xuất văn bản thuần túy từ bảng hoặc ô bằng Python."
type: docs
weight: 60
url: /vi/python-net/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Như đã đề cập trong các bài viết trước, một bảng thường chứa văn bản thuần túy, mặc dù các nội dung khác như hình ảnh hoặc thậm chí các bảng khác có thể được đặt trong các ô của bảng.

Việc thêm văn bản hoặc nội dung khác vào bảng được thực hiện bằng các phương pháp thích hợp của lớp [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) và được mô tả trong bài viết **"Tạo bảng"**. Trong bài viết này, chúng ta sẽ nói về cách làm việc với văn bản trong một bảng đã có sẵn.

## Thay thế văn bản trong bảng

Bảng, giống như bất kỳ nút nào khác trong Aspose.Words, có quyền truy cập vào đối tượng [Range](https://reference.aspose.com/words/python-net/aspose.words/range/). Bằng cách sử dụng đối tượng phạm vi bảng, bạn có thể thay thế văn bản trong bảng.

Khả năng sử dụng các ký tự đặc biệt khi thay thế hiện được hỗ trợ, do đó có thể thay thế văn bản hiện có bằng văn bản nhiều đoạn. Để thực hiện việc này, bạn cần sử dụng các siêu ký tự đặc biệt được mô tả trong phương thức [Replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/#str_str) tương ứng.

{{% alert color="primary" %}}

Thông thường, việc thay thế văn bản nên được thực hiện ở cấp độ ô (mỗi ô) hoặc ở cấp độ đoạn văn.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách thay thế tất cả các phiên bản của một chuỗi văn bản trong các ô của toàn bộ bảng:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "replace-text.py" >}}

## Trích xuất văn bản thuần túy từ bảng hoặc ô

Bằng cách sử dụng đối tượng **Range**, bạn cũng có thể gọi các phương thức trên toàn bộ phạm vi bảng và trích xuất bảng dưới dạng văn bản thuần túy. Để thực hiện việc này, hãy sử dụng thuộc tính [Text](https://reference.aspose.com/words/python-net/aspose.words/range/text/)

Ví dụ mã sau đây cho thấy cách in phạm vi văn bản của bảng:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "extract-text.py" >}}

Kỹ thuật tương tự chỉ được sử dụng để trích xuất nội dung từ các ô bảng riêng lẻ.

Ví dụ mã sau đây cho thấy cách in một phạm vi văn bản của các thành phần hàng và bảng:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "print-text-range-row-and-table.py" >}}

## Làm việc với văn bản bảng thay thế

Các bảng Microsoft Word có `table title` và `table description` cung cấp cách trình bày văn bản thay thế cho thông tin có trong bảng.

Trong Aspose.Words, bạn cũng có thể thêm tiêu đề và mô tả bảng bằng cách sử dụng thuộc tính [Title](https://reference.aspose.com/words/python-net/aspose.words.tables/table/title/) và [Description](https://reference.aspose.com/words/python-net/aspose.words.tables/table/description/). Các thuộc tính này có ý nghĩa đối với các tài liệu DOCX tuân theo ISO/IEC 29500. Khi lưu ở các định dạng cũ hơn ISO/IEC 29500, các thuộc tính này sẽ bị bỏ qua.

Ví dụ mã sau đây cho thấy cách đặt thuộc tính tiêu đề và mô tả của bảng:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "table-title-and-description.py" >}}

