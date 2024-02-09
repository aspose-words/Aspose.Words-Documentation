---
title: Kiểu chữ châu Á trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với kiểu chữ châu Á
linktitle: Làm việc với kiểu chữ châu Á
description: "Làm việc với kiểu chữ châu Á bằng C#. Điều chỉnh khoảng cách giữa văn bản châu Á và Latin trong C#."
type: docs
weight: 240
url: /vi/net/working-with-asian-typography/
---

Kiểu chữ Châu Á là một tập hợp các tùy chọn cho các đoạn văn bản trong tài liệu được viết bằng ngôn ngữ Châu Á.

Aspose.Words hỗ trợ Kiểu chữ Châu Á bằng cách sử dụng lớp [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) và một số thuộc tính của nó.

## Tự động điều chỉnh khoảng cách giữa văn bản hoặc số châu Á và Latinh

Nếu bạn đang thiết kế một mẫu có cả văn bản Đông Á và La-tinh và muốn nâng cao diện mạo của mẫu biểu mẫu của bạn bằng cách kiểm soát khoảng cách giữa cả hai loại văn bản, bạn có thể cấu hình mẫu biểu mẫu của mình để tự động điều chỉnh khoảng cách giữa hai loại văn bản này. Để đạt được điều này, bạn có thể sử dụng các thuộc tính [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) và [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) của lớp `ParagraphFormat`.

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính **AddSpaceBetweenFarEastAndAlpha** và **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## Đặt tùy chọn ngắt dòng

Tab Kiểu chữ Châu Á của hộp thoại thuộc tính đoạn văn trong Microsoft Word có nhóm ngắt dòng. Các tùy chọn của nhóm này có thể được đặt bằng cách sử dụng các thuộc tính [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) của lớp **ParagraphFormat**.

Ví dụ mã sau đây cho thấy cách sử dụng các thuộc tính này:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
