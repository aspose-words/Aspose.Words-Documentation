---
title: Làm việc với Footnote và Endnote
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với Footnote và Endnote
linktitle: Làm việc với Footnote và Endnote
description: "Chèn chú thích hoặc chú thích cuối vào tài liệu và chỉ định các tùy chọn của nó bằng Python."
type: docs
weight: 160
url: /vi/python-net/working-with-footnote-and-endnote/
---

Aspose.Words cũng cung cấp một số lớp, phương thức và thuộc tính để làm việc với chú thích cuối trang và chú thích cuối trang.

## Chèn chú thích cuối và đặt tùy chọn đánh số

Nếu bạn muốn chèn chú thích cuối trang hoặc chú thích cuối trong tài liệu Word, hãy sử dụng phương pháp [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/). Phương pháp này chèn chú thích cuối trang hoặc chú thích cuối vào tài liệu.

Các lớp [EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) và [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) thể hiện các tùy chọn đánh số cho chú thích cuối trang và chú thích cuối trang.

Ví dụ mã sau đây cho thấy cách chèn chú thích cuối vào tài liệu và đặt các tùy chọn đánh số cho tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Đặt số cột bố cục chú thích cuối trang

Bạn có thể đặt số lượng cột bố cục chú thích cuối trang bằng thuộc tính [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/). Nếu thuộc tính này có giá trị 0 thì vùng chú thích cuối trang sẽ được định dạng bằng số cột dựa trên số cột trên trang được hiển thị.

Ví dụ mã sau đây cho thấy cách đặt số cột cho bố cục chú thích cuối trang:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## Đặt vị trí của Footnote và EndNote

Vị trí chú thích cuối trang có thể ở cuối mỗi trang hoặc bên dưới văn bản trên mỗi trang. Vị trí chú thích cuối có thể ở cuối phần hoặc cuối tài liệu.

Ví dụ mã sau đây cho thấy cách đặt vị trí của chú thích cuối trang và chú thích cuối trang:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
