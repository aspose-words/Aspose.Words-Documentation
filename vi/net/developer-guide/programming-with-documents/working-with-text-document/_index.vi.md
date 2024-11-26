---
title: Làm việc với Tài liệu văn bản trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với tài liệu văn bản
linktitle: Làm việc với tài liệu văn bản
description: "Xử lý tài liệu TXT nâng cao, danh sách, BiDi, đầu trang/chân trang, sử dụng C#."
type: docs
weight: 430
url: /vi/net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

Trong bài viết này, chúng ta sẽ tìm hiểu những tùy chọn nào có thể hữu ích khi làm việc với tài liệu văn bản qua Aspose.Words. Xin lưu ý rằng đây không phải là danh sách đầy đủ các tùy chọn có sẵn mà chỉ là ví dụ về cách làm việc với một số tùy chọn trong số đó.

## Thêm dấu hai chiều

Bạn có thể sử dụng thuộc tính [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/) để chỉ định xem có thêm dấu hai chiều trước mỗi lần chạy BiDi khi xuất ở định dạng văn bản thuần túy hay không. Aspose.Words chèn Ký tự Unicode 'RIGHT-TO-LEFT MARK' (U+200F) trước mỗi Chạy hai chiều trong văn bản. Tùy chọn này tương ứng với tùy chọn "Thêm dấu hai chiều" trong hộp thoại Chuyển đổi tệp MS Word khi bạn xuất sang định dạng Văn bản thuần túy. Lưu ý rằng nó chỉ xuất hiện trong đoạn hội thoại nếu bất kỳ ngôn ngữ chỉnh sửa tiếng Ả Rập hoặc tiếng Do Thái nào được thêm vào MS Word.

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính **AddBidiMarks**. Giá trị mặc định của thuộc tính này là *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## Nhận dạng các mục danh sách trong khi tải TXT

Aspose.Words có thể nhập mục danh sách của tệp văn bản dưới dạng số danh sách hoặc văn bản thuần túy trong mô hình đối tượng tài liệu của nó. Thuộc tính [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) cho phép chỉ định cách nhận dạng các mục danh sách được đánh số khi tài liệu được nhập từ định dạng văn bản thuần túy:

* Nếu tùy chọn này được đặt thành *true*, khoảng trắng cũng được sử dụng làm dấu phân cách số danh sách: thuật toán nhận dạng danh sách để đánh số kiểu Ả Rập (1., 1.1.2.) sử dụng cả khoảng trắng và ký hiệu dấu chấm (".").

* Nếu tùy chọn này được đặt thành *false*, thuật toán nhận dạng danh sách sẽ phát hiện các đoạn danh sách khi số danh sách kết thúc bằng dấu chấm, dấu ngoặc vuông hoặc ký hiệu dấu đầu dòng (chẳng hạn như "", "*", "-" hoặc "o").

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính này:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## Xử lý các khoảng trống ở đầu và cuối trong quá trình tải TXT

Bạn có thể kiểm soát cách xử lý khoảng trắng ở đầu và cuối trong khi tải tệp TXT. Các khoảng trống ở đầu có thể được cắt bớt, giữ nguyên hoặc chuyển thành các khoảng trống thụt lề và các khoảng trống ở cuối có thể được cắt bớt hoặc giữ nguyên.

Ví dụ về mã sau đây cho biết cách cắt bớt khoảng trắng ở đầu và cuối trong khi nhập tệp TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## Phát hiện hướng văn bản tài liệu

Aspose.Words cung cấp thuộc tính [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) trong lớp [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) để phát hiện hướng văn bản (RTL/LTR) trong tài liệu. Thuộc tính này đặt hoặc nhận hướng dẫn văn bản tài liệu được cung cấp trong bảng liệt kê [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/). Giá trị mặc định được để lại cho *right*.

Ví dụ về mã sau đây cho biết cách phát hiện hướng văn bản của tài liệu trong khi nhập tệp TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## Xuất đầu trang và chân trang ở đầu ra TXT

Nếu bạn muốn xuất đầu trang và chân trang trong tài liệu TXT đầu ra, bạn có thể sử dụng thuộc tính [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/). Thuộc tính này chỉ định cách xuất đầu trang và chân trang sang định dạng văn bản thuần túy.

Ví dụ mã sau đây cho thấy cách xuất đầu trang và chân trang sang định dạng văn bản thuần túy:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## Xuất danh sách thụt lề trong đầu ra TXT

Aspose.Words đã giới thiệu lớp [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/) cho phép chỉ định cách thụt lề các cấp danh sách trong khi xuất sang định dạng văn bản thuần túy. Trong khi làm việc với [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/), thuộc tính [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/) được cung cấp để chỉ định ký tự được sử dụng để thụt lề các cấp độ danh sách và đếm chỉ định số lượng ký tự được sử dụng làm thụt lề cho mỗi cấp độ danh sách.

Giá trị mặc định cho thuộc tính ký tự là '\0' cho biết không có thụt lề. Đối với thuộc tính count, giá trị mặc định là 0 nghĩa là không thụt lề.

### Sử dụng ký tự tab

Ví dụ mã sau đây cho biết cách xuất cấp danh sách bằng ký tự tab:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### Sử dụng ký tự không gian

Ví dụ mã sau đây cho biết cách xuất các cấp độ danh sách bằng cách sử dụng ký tự khoảng trắng:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### Sử dụng thụt lề mặc định

Ví dụ về mã sau đây cho biết cách xuất các cấp độ danh sách bằng cách sử dụng thụt lề mặc định:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
