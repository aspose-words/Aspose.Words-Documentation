---
title: Làm việc với Chú thích cuối trang và Chú thích cuối trang trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với Footnote và Endnote
linktitle: Làm việc với Footnote và Endnote
description: "Cách thao tác chú thích cuối trang và chú thích cuối bằng C#."
type: docs
weight: 160
url: /vi/net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words cũng cung cấp một số lớp, phương thức và thuộc tính để làm việc với chú thích cuối trang và chú thích cuối trang.

## Chèn chú thích cuối và đặt tùy chọn đánh số

Nếu bạn muốn chèn chú thích cuối trang hoặc chú thích cuối vào tài liệu Word, hãy sử dụng phương pháp [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/). Phương pháp này chèn chú thích cuối trang hoặc chú thích cuối vào tài liệu.

Các lớp [EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) và [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) thể hiện các tùy chọn đánh số cho chú thích cuối trang và chú thích cuối trang.

Ví dụ mã sau đây cho thấy cách chèn chú thích cuối vào tài liệu và đặt các tùy chọn đánh số cho tài liệu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Đặt số cột bố cục chú thích cuối trang

Bạn có thể đặt số lượng cột bố cục chú thích cuối trang bằng thuộc tính [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/). Nếu thuộc tính này có giá trị 0 thì vùng chú thích cuối trang sẽ được định dạng bằng số cột dựa trên số cột trên trang được hiển thị.

Ví dụ mã sau đây cho thấy cách đặt số cột cho bố cục chú thích cuối trang:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## Đặt vị trí của Footnote và EndNote

Vị trí chú thích cuối trang có thể ở cuối mỗi trang hoặc bên dưới văn bản trên mỗi trang. Vị trí chú thích cuối có thể ở cuối phần hoặc cuối tài liệu.

Ví dụ mã sau đây cho thấy cách đặt vị trí của chú thích cuối trang và chú thích cuối trang:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
