---
title: Chỉ định tùy chọn bố cục trong C#
second_title: Aspose.Words cho .NET
articleTitle: Chỉ định tùy chọn bố cục
linktitle: Chỉ định tùy chọn bố cục
description: "Chỉ định Tùy chọn bố cục cho các bố cục tài liệu khác nhau bằng C#."
type: docs
weight: 10
url: /vi/net/specify-layout-options/
---

Aspose.Words cho phép bạn tạo tài liệu đầu ra với nhiều bố cục khác nhau, tùy thuộc vào các tham số được chỉ định trong thuộc tính của lớp [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/). Một số thuộc tính này giống với một số tùy chọn menu giao diện người dùng Microsoft Word – chúng sẽ được mô tả trong bài viết này.

Để có danh sách đầy đủ các tham số như [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) để tính toán số trang trong phần liên tục khởi động lại việc đánh số trang hoặc [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) để bỏ qua tùy chọn tương thích "Sử dụng số liệu máy in để bố trí tài liệu", hãy xem trang lớp [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/).

## Dấu định dạng

Aspose.Words cho phép quản lý các dấu định dạng bằng các thuộc tính sau:

- [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/) – giá trị `Boolean`, chỉ định xem văn bản ẩn có được hiển thị hay không.
- [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/) – giá trị `Boolean`, chỉ định liệu các ký tự dấu đoạn văn có được hiển thị hay không.

Trang được mô tả trong ví dụ dưới đây có ba đoạn văn. Cái thứ hai bị ẩn. Người dùng có thể thay đổi tùy chọn **ShowHiddenText** để hiển thị văn bản ẩn này trên trang. Ngoài ra, mỗi đoạn đều có dấu phân đoạn ở cuối. Dấu phân đoạn thường không hiển thị trừ khi thuộc tính **ShowParagraphMarks** được đặt để hiển thị nó.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

Trong Microsoft Word, các tham số này được đặt bằng hộp thoại "Tệp → Tùy chọn → Hiển thị" như sau:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## Nhận xét và sửa đổi

Với Aspose.Words, bạn có thể hiển thị nhận xét tài liệu trông giống như trong Microsoft Word. Để chỉ định xem nhận xét có được hiển thị hay không, hãy sử dụng thuộc tính [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/).

Trong Microsoft Word, tham số này được đặt bằng hộp thoại "Tùy chọn thay đổi theo dõi", như hiển thị bên dưới:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

Ngoài ra, Aspose.Words cho phép bạn hiển thị các bản sửa đổi trong tài liệu. Sử dụng thuộc tính [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) của lớp **LayoutOptions** để xác định xem các bản sửa đổi tài liệu có được hiển thị hay không. Để kiểm soát hình thức của chúng (màu đánh dấu bản sửa đổi, màu thanh sửa đổi, v.v.), hãy sử dụng lớp [RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/).

Bạn cũng có thể hiển thị các bản sửa đổi dưới dạng nhận xét cho nội dung. Với mục đích này, hãy sử dụng thuộc tính [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) và giá trị [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/).

Ví dụ mã sau đây cho thấy cách tùy chỉnh hiển thị các bản sửa đổi:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

Hình ảnh bên dưới cho thấy cách Aspose.Words hiển thị nhận xét và Xóa bản sửa đổi:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## Text Shaper để hiển thị kiểu chữ nâng cao

Thuộc tính [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) cho phép bạn đặt chức năng định hình văn bản cũng như hỗ trợ các tính năng `OpenType`.

Sử dụng định hình văn bản để xử lý tài liệu trong các trường hợp chính sau:

- Một tài liệu sử dụng Kerning, Numeral Shaping, Numeral Forms hoặc Ligatures.
- Tài liệu sử dụng các chữ viết phức tạp như tiếng Ả Rập, tiếng Khmer, tiếng Thái, v.v.

{{% alert color="primary" %}}

Việc định hình văn bản sẽ chỉ được bật khi xuất tài liệu sang PDF hoặc XPS.

{{% /alert %}}
