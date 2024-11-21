---
title: Làm Việc Với Tài liệu Văn bản trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc Với Tài Liệu Văn Bản
linktitle: Làm việc Với Tài Liệu Văn Bản
description: "Nâng cao TXT xử lý tài liệu, danh sách, BiDi, tiêu đề/chân trang, sử dụng C++."
type: docs
weight: 430
url: /vi/cpp/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

Trong bài viết này, chúng ta sẽ tìm hiểu những tùy chọn nào có thể hữu ích để làm việc với tài liệu văn bản thông qua Aspose.Words. Xin lưu ý rằng đây không phải là danh sách đầy đủ các tùy chọn có sẵn, mà chỉ là một ví dụ về cách làm việc với một số trong số chúng.

## Thêm Dấu Hai Chiều

Bạn có thể sử dụng thuộc tính [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/) để chỉ định có nên thêm dấu hai chiều trước mỗi BiDi chạy khi xuất ở định dạng văn bản thuần túy hay không. Aspose.Words chèn Ký Tự Unicode'RIGHT-TO-LEFT MARK' (U + 200F) trước mỗi Lần chạy hai chiều trong văn bản. Tùy chọn này tương ứng với tùy chọn "Thêm dấu hai chiều" trong MS đối thoại Chuyển Đổi Tệp Word khi bạn xuất sang Định dạng Văn bản Thuần túy. Lưu ý rằng nó chỉ xuất hiện trong đối thoại nếu bất kỳ ngôn ngữ chỉnh sửa tiếng ả rập hoặc tiếng do thái nào được thêm Vào Trong MS Word.

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính **AddBidiMarks**. Giá trị mặc định của thuộc tính này là *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## Nhận Dạng Các Mục Danh Sách Trong Quá Trình Tải TXT

Aspose.Words có thể nhập mục danh sách của tệp văn bản dưới dạng số danh sách hoặc văn bản thuần túy trong mô hình đối tượng tài liệu của nó. Thuộc tính [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) cho phép chỉ định cách các mục danh sách được đánh số được nhận dạng khi tài liệu được nhập từ định dạng văn bản thuần túy:

* Nếu tùy chọn này được đặt thành *true*, khoảng trắng cũng được sử dụng làm dấu phân cách số danh sách: thuật toán nhận dạng danh sách để đánh số kiểu ả rập (1., 1.1.2.) sử dụng cả khoảng trắng và ký hiệu dấu chấm (".").
* Nếu tùy chọn này được đặt thành *false*, thuật toán nhận dạng danh sách sẽ phát hiện các đoạn danh sách, khi các số danh sách kết thúc bằng dấu chấm, dấu ngoặc phải hoặc ký hiệu dấu đầu dòng (chẳng hạn như "•", "*", "-" hoặc "o").

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính này:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## Làm thế nào Để Xử lý Hàng đầu và Dấu không gian trong Quá trình Tải TXT

Bạn có thể kiểm soát cách xử lý không gian dẫn và dấu trong khi tải tệp TXT. Các không gian hàng đầu có thể được cắt tỉa, bảo tồn hoặc chuyển đổi thành thụt lề và không gian dấu có thể được cắt hoặc bảo tồn.

Ví dụ mã sau đây cho thấy cách cắt không gian dẫn và dấu trong khi nhập tệp TXT:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## Xuất Tiêu đề và Chân Trang Trong Đầu ra TXT

Nếu bạn muốn xuất tiêu đề và chân trang trong tài liệu output TXT, bạn có thể sử dụng thuộc tính [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/). Thuộc tính này chỉ định cách đầu trang và chân trang được xuất sang định dạng văn bản thuần túy.

Ví dụ mã sau đây cho thấy cách xuất tiêu đề và chân trang sang định dạng văn bản thuần túy:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## Xuất Danh Sách Thụt Lề Trong Đầu ra TXT

Aspose.Words đã giới thiệu lớp [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/) cho phép chỉ định cách các cấp danh sách được thụt lề trong khi xuất sang định dạng văn bản thuần túy. Trong khi làm việc với [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/), thuộc tính [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) được cung cấp để chỉ định ký tự sẽ được sử dụng cho các cấp danh sách thụt lề và đếm chỉ định số lượng ký tự sẽ sử dụng làm thụt lề trên một cấp danh sách.

Giá trị mặc định cho thuộc tính ký tự là '\0' cho biết rằng không có thụt lề. Đối với thuộc tính count, giá trị mặc định là 0 có nghĩa là không có thụt lề.

### Sử Dụng Ký Tự Tab

Ví dụ mã sau đây cho thấy cách xuất các cấp danh sách bằng cách sử dụng các ký tự tab:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### Sử Dụng Ký Tự Không Gian

Ví dụ mã sau đây cho thấy cách xuất mức danh sách bằng cách sử dụng ký tự không gian:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### Sử Dụng Thụt Lề Mặc Định

Ví dụ mã sau đây cho thấy cách xuất mức danh sách bằng cách sử dụng thụt lề mặc định:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
