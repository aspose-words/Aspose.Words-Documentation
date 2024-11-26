---
title: Kiểu chữ châu Á trong Python
second_title: Aspose.Words cho Python
articleTitle: Làm việc với kiểu chữ châu Á
linktitle: Làm việc với kiểu chữ châu Á
description: "Làm việc với kiểu chữ châu Á bằng Python. Điều chỉnh khoảng cách giữa văn bản châu Á và Latin trong Python."
type: docs
weight: 240
url: /vi/python-net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Kiểu chữ Châu Á là một tập hợp các tùy chọn cho các đoạn văn bản trong tài liệu được viết bằng ngôn ngữ Châu Á.

Aspose.Words hỗ trợ Kiểu chữ Châu Á bằng cách sử dụng lớp [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) và một số thuộc tính của nó.

## Tự động điều chỉnh khoảng cách giữa văn bản hoặc số châu Á và Latinh

Nếu bạn đang thiết kế một mẫu có cả văn bản Đông Á và La-tinh và muốn nâng cao diện mạo của mẫu biểu mẫu của bạn bằng cách kiểm soát khoảng cách giữa cả hai loại văn bản, bạn có thể cấu hình mẫu biểu mẫu của mình để tự động điều chỉnh khoảng cách giữa hai loại văn bản này. Để đạt được điều này, bạn có thể sử dụng các thuộc tính [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_alpha/) và [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_digit/) của lớp `ParagraphFormat`.

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính **AddSpaceBetweenFarEastAndAlpha** và **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-SpaceBetweenAsianAndLatinText.py" >}}

## Đặt tùy chọn ngắt dòng

Tab Kiểu chữ Châu Á của hộp thoại thuộc tính đoạn văn trong Microsoft Word có nhóm ngắt dòng. Các tùy chọn của nhóm này có thể được đặt bằng cách sử dụng các thuộc tính [FarEastLineBreakControl](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/far_east_line_break_control/), [WordWrap](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/word_wrap/), [HangingPunctuation](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/hanging_punctuation/) của lớp **ParagraphFormat**.

Ví dụ mã sau đây cho thấy cách sử dụng các thuộc tính này:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-AsianTypographyLineBreakGroup.py" >}}
