---
title: Kiểu chữ châu á trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm Việc Với Kiểu Chữ Châu Á
linktitle: Làm Việc Với Kiểu Chữ Châu Á
description: "Làm việc Với Kiểu Chữ Châu á bằng cách sử dụng C++. Điều Chỉnh Không gian giữa Văn Bản Châu á và Latin trong C++."
type: docs
weight: 240
url: /vi/cpp/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Kiểu Chữ châu á là một tập hợp các tùy chọn cho các đoạn văn bản trong các tài liệu được viết bằng ngôn ngữ Châu á.

Aspose.Words hỗ trợ Kiểu Chữ Châu á bằng cách sử dụng lớp [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) và một số thuộc tính của nó.

## Tự Động Điều Chỉnh Không gian Giữa Văn Bản hoặc số châu Á và Latin

Nếu bạn đang thiết kế một mẫu có cả văn bản Đông Á và latinh và muốn nâng cao diện mạo của mẫu biểu mẫu của mình bằng cách kiểm soát khoảng trắng giữa cả hai loại văn bản, bạn có thể định cấu hình mẫu biểu mẫu của mình để tự động điều chỉnh khoảng trắng giữa hai loại văn bản này. Để đạt được điều này, bạn có thể sử dụng các thuộc tính [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) và [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) của lớp `ParagraphFormat`.

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính **AddSpaceBetweenFarEastAndAlpha** và **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## Đặt Tùy Chọn Ngắt Dòng

Tab Kiểu Chữ Châu á của hộp thoại thuộc tính đoạn trong Microsoft Word có nhóm ngắt dòng. Các tùy chọn của nhóm này có thể được thiết lập bằng cách sử dụng [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) thuộc tính của lớp **ParagraphFormat**.

Ví dụ mã sau đây cho thấy cách sử dụng các thuộc tính này:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
