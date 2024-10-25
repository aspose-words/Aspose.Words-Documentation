---
title: Làm việc với Chú Thích Cuối trang và Chú Thích Cuối trang trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc Với Chú Thích Cuối Trang và Chú Thích Cuối Trang
linktitle: Làm việc Với Chú Thích Cuối Trang và Chú Thích Cuối Trang
description: "Cách thao tác chú thích cuối trang và chú thích cuối trang bằng C++."
type: docs
weight: 160
url: /vi/cpp/working-with-footnote-and-endnote/
---

Aspose.Words cũng cung cấp một số lớp, phương thức và thuộc tính để làm việc với chú thích cuối trang và chú thích cuối trang.

## Chèn Endnote và Đặt Tùy chọn Đánh số

Nếu bạn muốn chèn chú thích cuối trang hoặc chú thích cuối trang vào Tài liệu Word, vui lòng sử dụng phương thức [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/). Phương pháp này chèn chú thích cuối trang hoặc chú thích cuối trang vào tài liệu.

Các lớp [EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) và [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) đại diện cho các tùy chọn đánh số cho chú thích cuối trang và chú thích cuối trang.

Ví dụ mã sau đây cho thấy cách chèn endnote vào tài liệu và đặt các tùy chọn đánh số của nó:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## Đặt Số Cột Bố Cục Chú Thích Cuối Trang

Bạn có thể đặt số cột bố cục chú thích cuối trang bằng thuộc tính [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/). Nếu thuộc tính này có giá trị 0, vùng chú thích cuối trang được định dạng với một số cột dựa trên số lượng cột trên trang được hiển thị.

Ví dụ mã sau đây cho thấy cách đặt số lượng cột cho bố cục chú thích cuối trang:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Đặt Vị trí Của Chú Thích Cuối trang và EndNote

Vị trí chú thích cuối trang có thể ở cuối mỗi trang hoặc bên dưới văn bản trên mỗi trang. Vị trí endnote có thể ở cuối phần hoặc ở cuối tài liệu.

Ví dụ mã sau đây cho thấy cách đặt vị trí của chú thích cuối trang và chú thích cuối trang:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
