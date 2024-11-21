---
title: Chỉ định tùy chọn bố cục trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Chỉ định tùy chọn bố cục
linktitle: Chỉ định tùy chọn bố cục
description: "Chỉ định Tùy chọn bố cục cho các bố cục tài liệu khác nhau bằng Python."
type: docs
weight: 10
url: /vi/python-net/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words cho phép bạn tạo tài liệu đầu ra với nhiều bố cục khác nhau, tùy thuộc vào các tham số được chỉ định trong thuộc tính của lớp [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/). Một số thuộc tính này giống với một số tùy chọn menu giao diện người dùng Microsoft Word – chúng sẽ được mô tả trong bài viết này.

Để có danh sách đầy đủ các tham số như [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) để tính toán số trang trong phần liên tục khởi động lại việc đánh số trang hoặc [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) để bỏ qua tùy chọn tương thích "Sử dụng số liệu máy in để bố trí tài liệu", hãy xem trang lớp [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/).

## Dấu định dạng

Aspose.Words cho phép quản lý các dấu định dạng bằng các thuộc tính sau:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) – giá trị `Boolean`, chỉ định xem văn bản ẩn có được hiển thị hay không.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) – giá trị `Boolean`, xác định liệu các ký tự dấu đoạn văn có được hiển thị hay không.

Trang được mô tả trong ví dụ dưới đây có ba đoạn văn. Cái thứ hai bị ẩn. Người dùng có thể thay đổi tùy chọn [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) để hiển thị văn bản ẩn này trên trang. Ngoài ra, mỗi đoạn đều có dấu phân đoạn ở cuối. Dấu đoạn thường không hiển thị trừ khi thuộc tính [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) được đặt để hiển thị nó.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

Trong Microsoft Word, các tham số này được đặt bằng hộp thoại "Tệp → Tùy chọn → Hiển thị" như sau:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## Nhận xét và sửa đổi

Với Aspose.Words, bạn có thể hiển thị nhận xét tài liệu trông giống như trong Microsoft Word. Để chỉ định xem nhận xét có được hiển thị hay không, hãy sử dụng thuộc tính [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/).

Trong Microsoft Word, tham số này được đặt bằng hộp thoại "Tùy chọn thay đổi theo dõi", như hiển thị bên dưới:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

Ngoài ra, Aspose.Words cho phép bạn hiển thị các bản sửa đổi trong tài liệu. Sử dụng thuộc tính [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) của lớp [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) để xác định xem các bản sửa đổi tài liệu có được hiển thị hay không. Để kiểm soát hình thức của chúng (màu đánh dấu bản sửa đổi, màu thanh sửa đổi, v.v.), hãy sử dụng lớp [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/).

Bạn cũng có thể hiển thị các bản sửa đổi dưới dạng nhận xét cho nội dung. Với mục đích này, hãy sử dụng thuộc tính [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) và giá trị [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons).

Ví dụ mã sau đây cho thấy cách tùy chỉnh hiển thị các bản sửa đổi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

Hình ảnh bên dưới cho thấy cách Aspose.Words hiển thị nhận xét và Xóa bản sửa đổi:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>
