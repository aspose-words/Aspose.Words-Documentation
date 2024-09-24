---
title: Làm việc với Footnote và Endnote trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Footnote và Endnote
linktitle: Làm việc với Footnote và Endnote
description: "Làm thế nào để thao tác với ghi chú cuối trang và ghi chú tài liệu tham khảo bằng Java."
type: docs
weight: 160
url: /vi/java/working-with-footnote-and-endnote/
---

Aspose.Words cũng cung cấp một số lớp, phương thức và thuộc tính để làm việc với ghi chú chân trang và cuối trang.

## Chèn Ghi chú cuối trang và Thiết lập Tùy chọn Số

Nếu bạn muốn chèn một chú thích chân trang hoặc chú thích cuối trang trong tài liệu Word, xin vui lòng sử dụng [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) phương pháp. Phương pháp này chèn một chú thích hoặc ghi chú cuối trang vào tài liệu.

Các lớp [EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) và [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) thể hiện các tùy chọn số trang chú thích và ghi chú cuối trang.

Mã ví dụ sau cho thấy cách chèn ghi chú cuối trang vào tài liệu và đặt các tùy chọn đánh số của nó:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Đặt số cột bố cục chú thích

Bạn có thể đặt số cột bố cục chú thích bằng thuộc tính [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns). Nếu thuộc tính này có giá trị bằng 0 thì khu vực ghi chú được định dạng với một số cột dựa trên số lượng cột trên trang hiển thị.

Ví dụ sau cho thấy cách đặt số cột cho bố cục chú thích:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Chọn vị trí của chú thích và ghi chú cuối trang

Vị trí chú thích có thể ở dưới cùng của mỗi trang hoặc dưới văn bản trên mỗi trang. Vị trí chú thích có thể nằm ở cuối phần hoặc ở cuối tài liệu.

Mã ví dụ sau cho thấy cách đặt vị trí của chú thích và ghi chú cuối trang:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
