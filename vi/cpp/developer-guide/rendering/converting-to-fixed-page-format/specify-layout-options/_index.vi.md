---
title: Chỉ Định Các Tùy chọn Bố cục trong C++
second_title: Aspose.Words cho C++
articleTitle: Chỉ Định Tùy Chọn Bố Cục
linktitle: Chỉ Định Tùy Chọn Bố Cục
description: "Chỉ định Các Tùy chọn Bố cục cho các bố cục tài liệu khác nhau."
type: docs
weight: 20
url: /vi/cpp/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words cho phép bạn tạo các tài liệu đầu ra với các bố cục khác nhau, tùy thuộc vào các tham số được chỉ định trong thuộc tính [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) của **Document**. Thuộc tính này giống với một số tùy chọn menu giao diện người dùng Microsoft Word được mô tả trong bài viết này.

Để biết danh sách đầy đủ các tham số như [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) để tính số trang trong phần liên tục khởi động lại đánh số trang hoặc [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) để bỏ qua tùy chọn tương thích "Sử dụng số liệu máy in để bố trí tài liệu", hãy xem trang lớp [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options).

## Dấu Định Dạng

Aspose.Words cho phép quản lý các dấu định dạng bằng các thuộc tính sau:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) – giá trị `Boolean`, chỉ định xem văn bản ẩn có được hiển thị hay không.
- Giá trị [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) – a `Boolean`, chỉ định xem các ký tự đánh dấu đoạn có được hiển thị hay không.

Trang được mô tả trong ví dụ dưới đây chứa ba đoạn văn. Cái thứ hai bị ẩn. Người dùng có thể thay đổi tùy chọn **ShowHiddenText** để hiển thị văn bản ẩn này trên trang. Ngoài ra, mỗi đoạn có một dấu đoạn ở cuối. Dấu đoạn thường không hiển thị trừ khi thuộc tính **ShowParagraphMarks** được đặt để hiển thị nó.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

Trong Microsoft Word, các tham số này được đặt bằng hộp thoại "Tệp → Tùy Chọn → Hiển thị" như sau:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## Nhận xét và Sửa đổi

Với Aspose.Words, bạn có thể hiển thị các nhận xét tài liệu trông giống như trong Microsoft Word. Để xác định xem các nhận xét có được hiển thị hay không, hãy sử dụng thuộc tính [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/).

Trong Microsoft Word, tham số này được đặt bằng hộp thoại "Tùy chọn Thay Đổi Bản Nhạc", như hình dưới đây:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

Ngoài ra, Aspose.Words cho phép bạn hiển thị các bản sửa đổi trong tài liệu. Sử dụng thuộc tính [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) của lớp **LayoutOptions** để xác định xem các sửa đổi tài liệu có được hiển thị hay không. Để kiểm soát sự xuất hiện của chúng (màu tô sáng sửa đổi, màu thanh sửa đổi, v. v.), sử dụng lớp [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/).

Bạn cũng có thể có các bản sửa đổi được hiển thị dưới dạng nhận xét cho nội dung. Với mục đích này, hãy sử dụng thuộc tính [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) và giá trị [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/).

Ví dụ mã sau đây cho thấy cách tùy chỉnh hiển thị bản sửa đổi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

Hình ảnh dưới đây cho thấy cách Aspose.Words hiển thị nhận xét và Xóa các bản Sửa Đổi:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## Trình Định hình văn bản Để Hiển thị Kiểu Chữ Nâng cao

Thuộc tính [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) cho phép bạn đặt chức năng định hình văn bản, cũng như hỗ trợ các tính năng `OpenType`.

Sử dụng định hình văn bản để xử lý tài liệu trong các trường hợp chính sau:

- Một tài liệu sử dụng Kerning, Hình Chữ số, Hình Thức Chữ số, Hoặc Chữ Ghép.
- Một tài liệu sử dụng Các Tập Lệnh Phức tạp, chẳng hạn như tiếng ả rập, Tiếng Khmer, Tiếng Thái, v. v.

{{% alert color="primary" %}}

Định hình văn bản sẽ chỉ được bật khi xuất tài liệu sang PDF hoặc XPS.

{{% /alert %}}
