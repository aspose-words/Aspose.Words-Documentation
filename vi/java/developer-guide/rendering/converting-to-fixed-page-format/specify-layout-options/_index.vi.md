---
title: Chỉ định Tùy chọn Bố cục trong Java
second_title: Aspose.Words đối với Java
articleTitle: Chỉ định các tùy chọn bố cục
linktitle: Chỉ định các tùy chọn bố cục
description: "Tạo ra các tài liệu đầu ra với nhiều bố cục, tùy thuộc vào tham số được chỉ định trong Tài liệu bằng Java."
type: docs
weight: 10
url: /vi/java/specify-layout-options/
---

Aspose.Words cho phép bạn tạo ra các tài liệu đầu ra với các bố cục khác nhau, tùy thuộc vào các tham số được chỉ định trong thuộc tính [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) của **Document**. Tính năng này giống với một số lựa chọn trong Microsoft Word tùy chọn giao diện người dùng được mô tả trong bài viết này.

Để có danh sách đầy đủ các tham số như [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) để tính trang trong một phần liên tục bắt đầu lại số trang hoặc [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) để bỏ qua tùy chọn "Sử dụng phép đo máy in để bố cục tài liệu", xem lớp trang [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

## Đánh dấu định dạng

Aspose.Words cho phép bạn quản lý dấu đánh dấu định dạng bằng các thuộc tính sau:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) – giá trị a `Boolean`, cho biết văn bản ẩn được hiển thị hay không.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) – giá trị a `Boolean`, xác định xem ký hiệu đoạn văn có hiển thị hay không.

Trang được mô tả trong ví dụ dưới đây chứa ba đoạn. Cái thứ hai bị giấu. Người dùng có thể thay đổi tùy chọn **ShowHiddenText** để hiển thị văn bản ẩn này trên trang. Cũng vậy, mỗi đoạn văn có dấu chấm ở cuối. Đoạn đánh dấu đoạn văn thường không hiển thị trừ khi thuộc tính **ShowParagraphMarks** được thiết lập để hiển thị nó.

![formatting_marks_example_aspose_words_java](specify-layout-options-1.png)

Trong Microsoft Word, các tham số được đặt sử dụng hộp thoại "File → Options → Display" như sau:

![formatting_marks_ms_word_aspose_words_java](specify-layout-options-3.png)

## Bình luận và Sửa đổi

Với Aspose.Words, bạn có thể hiển thị các chú thích tài liệu mà sẽ trông giống như ở Microsoft Word. Để chỉ định liệu các nhận xét có được hiển thị hay không, hãy sử dụng thuộc tính [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

Trong Microsoft Word, tham số này được đặt bằng hộp thoại "Tùy chọn Theo dõi Thay đổi", như hình bên dưới:

![comments_and_revisions_ms_word_aspose_words_java](specify-layout-options-4.png)

Ngoài ra, Aspose.Words cho phép bạn hiển thị các lần chỉnh sửa trong một tài liệu. Sử dụng thuộc tính [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) của lớp **LayoutOptions** để xác định xem các phiên bản tài liệu có hiển thị hay không. Để kiểm soát giao diện của chúng (cài đặt màu nổi bật sửa đổi, màu thanh sửa đổi,...), hãy sử dụng lớp [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/).

Bạn cũng có thể hiển thị các bản sửa đổi như là bình luận về nội dung. Đối với mục đích này, hãy dùng thuộc tính [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) và giá trị [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/).

Mã ví dụ sau cho thấy cách hiển thị các phiên bản được tùy biến:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

Hình bên dưới cho thấy cách Aspose.Words hiển thị các bình luận và xóa sửa đổi:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Text Shaper cho hiển thị kiểu chữ nâng cao

Tính [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) cho phép bạn thiết lập chức năng định hình văn bản, cũng như các tính năng hỗ trợ `OpenType`.

Sử dụng tạo hình văn bản cho xử lý tài liệu trong các trường hợp chính sau:

"- Một tài liệu sử dụng Kerning, Numeral Shaping, Numeral Forms, hoặc Ligatures."
"- Tài liệu sử dụng các tập lệnh phức tạp, chẳng hạn như tiếng Ả Rập, Khmer, Thái, v.v."

{{% alert color="primary" %}}

Chuyển đổi văn bản sẽ được kích hoạt chỉ khi xuất tài liệu sang định dạng PDF hoặc XPS.

{{% /alert %}}
