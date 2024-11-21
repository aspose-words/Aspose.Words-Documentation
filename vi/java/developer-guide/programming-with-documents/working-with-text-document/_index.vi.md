---
title: Làm việc với Tài liệu Văn bản trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Tài liệu Văn bản
linktitle: Làm việc với Tài liệu Văn bản
description: "Xử lý văn bản nâng cao, danh sách, BiDi, tiêu đề / chân trang, sử dụng Java."
type: docs
weight: 430
url: /vi/java/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

Trong bài viết này chúng ta sẽ học về các tùy chọn có thể hữu ích khi làm việc với một tài liệu văn bản qua Aspose.Words. Xin lưu ý rằng đây không phải là danh sách đầy đủ các tùy chọn có sẵn nhưng chỉ là ví dụ về cách làm việc với một số trong đó.

## Thêm dấu Bi-Directional

Bạn có thể sử dụng thuộc tính [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) để chỉ định xem bạn có muốn thêm dấu hai chiều trước mỗi lần chạy khi xuất sang định dạng văn bản đơn giản hay không. Aspose.Words chèn ký tự Unicode 'RIGHT-TO-LEFT MARK' (U+200F) trước mỗi Run hai chiều trong văn bản. Tùy chọn này tương ứng với "Thêm dấu hai chiều" tùy chọn trong hộp thoại Chuyển đổi tệp MS Word khi bạn xuất sang định dạng văn bản thuần túy. Hãy lưu ý rằng nó xuất hiện trong hộp thoại chỉ nếu bất kỳ ngôn ngữ chỉnh sửa tiếng Ả Rập hay tiếng Do Thái nào được thêm vào MS Word.

Ví dụ mã dưới đây cho thấy cách sử dụng thuộc tính `TxtSaveOptions.AddBidiMarks`. Giá trị mặc định của thuộc tính này là *true*:":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Nhận biết các mục trong danh sách khi tải TXT

Aspose.Words có thể nhập danh sách mục trong một tập tin văn bản như là số danh sách hoặc văn bản đơn giản trong mô hình đối tượng tài liệu của nó. Cấu hình [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) cho phép bạn chỉ định cách các mục danh sách được nhận biết khi một tài liệu được nhập từ định dạng văn bản thuần túy

* Nếu tùy chọn này được đặt thành *true* khoảng trắng cũng được sử dụng như là các dấu giới hạn số danh sách: thuật toán nhận diện danh sách cho kiểu đánh số tiếng Ả Rập (1., 1.1.2.) sử dụng cả khoảng trắng và dấu chấm "."
* Nếu tùy chọn được đặt thành *false*, thuật toán nhận dạng danh sách phát hiện các đoạn văn bản danh sách khi số danh sách kết thúc bằng dấu chấm, dấu ngoặc phải hoặc ký hiệu đầu dòng (như "•", "*", "-" hoặc "o").

Ví dụ sau cho thấy cách sử dụng thuộc tính này:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Xử lý khoảng trống đầu và cuối trong quá trình tải TXT

Bạn có thể kiểm soát cách xử lý khoảng trống đầu và cuối khi tải tệp TXT. Những khoảng trống đầu trang có thể cắt bỏ, giữ nguyên hoặc chuyển thành dấu cách và những khoảng trống cuối dòng có thể cắt bỏ hay giữ nguyên.

Ví dụ mã dưới cho thấy cách cắt bớt khoảng trắng đầu và cuối khi nhập tập tin TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Kiểm tra hướng văn bản tài liệu

Aspose.Words cung cấp thuộc tính [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) trong lớp [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) để phát hiện hướng văn bản (RTL / LTR ) trong tài liệu. Thuộc tính này đặt hoặc nhận hướng văn bản tài liệu được cung cấp trong [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) liệt kê. Giá trị mặc định là từ trái sang phải.

Ví dụ sau cho thấy cách phát hiện hướng văn bản của tài liệu khi nhập tập tin TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Xuất tiêu đề và chân trang trong tệp TXT đầu ra

Nếu bạn muốn xuất phần tiêu đề và chân trang trong tài liệu văn bản đầu ra, bạn có thể dùng thuộc tính [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode). Tính năng này chỉ định cách tiêu đề và chân trang được xuất sang định dạng văn bản thông thường.

Mã ví dụ sau cho thấy cách xuất tiêu đề và chân trang sang định dạng văn bản thuần túy:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Xuất danh sách cách xuống dòng trong đầu ra TXT

Aspose.Words đã giới thiệu [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) lớp cho phép xác định cách các mức danh sách được thụt lề khi xuất ra định dạng văn bản thuần túy. Trong khi làm việc với [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/) thuộc tính [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) được cung cấp để chỉ định ký tự để sử dụng để thụt lề các mức danh sách và đếm chỉ định bao nhiêu ký tự để sử dụng như thụt lề mỗi mức danh sách.

Giá trị mặc định cho thuộc tính ký tự là '\0', cho thấy không có việc thụt lề nào. Đối với thuộc tính count, giá trị mặc định là 0, có nghĩa là không thụt lề.

### Sử dụng ký tự tab

Mã ví dụ sau cho thấy cách xuất các mức danh sách bằng ký tự tab:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Sử dụng ký tự khoảng trắng

Mã ví dụ sau cho thấy cách xuất danh sách cấp độ sử dụng các ký tự khoảng trắng:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Sử dụng Định Dấu Mặc Định

Mã ví dụ cho thấy cách xuất các mức danh sách bằng cách sử dụng thụt lề mặc định:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
