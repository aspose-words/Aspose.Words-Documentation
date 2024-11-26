---
title: In ấn một tài liệu
second_title: Aspose.Words cho Java
articleTitle: In Tài liệu một cách Lập trình hoặc Sử dụng hộp thoại
linktitle: In Tài liệu một cách Lập trình hoặc Sử dụng hộp thoại
description: "In một tài liệu bằng cách sử dụng Java thông qua Settings, Print Preview và hộp thoại tiến trình in ấn."
type: docs
weight: 55
url: /vi/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

Bài viết này mô tả cách in một tài liệu xử lý văn bản bằng Aspose.Words API. Nó cũng chứng minh các phương pháp in một tài liệu với Settings, Print Preview và Print tiến trình thoại.

## In một tài liệu với các cài đặt và hộp thoại xem trước in

Khi làm việc với tài liệu, thường thì yêu cầu phải in chúng ra máy in đã chọn. Sử dụng một hộp thoại xem trước để kiểm tra trực quan cách thức xuất bản tài liệu sẽ xuất hiện và chọn các tùy chọn in phù hợp.

The Aspose.Words không có các hộp thoại hoặc biểu mẫu được tích hợp nhưng thực hiện lớp [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) vượt qua cả java.awt.print.Printable và java.awt.print.Pageable.

Ví dụ sau này cho thấy cách sử dụng các lớp này để in một tài liệu từ Aspose.Words thông qua hộp thoại In xem trước và Cài đặt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## In ấn nhiều trang trên một tờ giấy

Aspose.Words thực hiện lớp **MultipagePrintDocument**, để tinh chỉnh hoạt động in ấn nhằm thực hiện logic tùy chỉnh bằng cách xác định cách tài liệu sẽ xuất hiện trên trang in. Lớp **MultipagePrintDocument** cung cấp khả năng in một số trang trên một tờ giấy.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Bạn có thể tải về ví dụ sử dụng lớp **MultipagePrintDocument** từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)

Kết quả của ví dụ mã này được hiển thị bên dưới:

![print_several_pages_on_one_sheet_aspose_words_java](print-several-pages-on-one-sheet.png)/
