---
title: Chữ viết Á trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với kiểu chữ Á Châu
linktitle: Làm việc với kiểu chữ Á Châu
description: "Làm việc với kiểu chữ Asiatc bằng cách sử dụng Java. Điều chỉnh khoảng cách giữa văn bản chữ Á và chữ Latinh trong Java."
type: docs
weight: 240
url: /vi/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

Chữ viết châu Á là một tập hợp các tùy chọn cho các đoạn văn bản trong các tài liệu viết bằng ngôn ngữ châu Á.

Aspose.Words hỗ trợ kiểu chữ Á bằng cách sử dụng lớp [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) và một số thuộc tính của nó.

## "Điều chỉnh tự động khoảng cách giữa văn bản hoặc số tiếng Á và La tinh"

Nếu bạn đang thiết kế một mẫu với cả văn bản tiếng Đông Á và tiếng Latinh và muốn tăng sự xuất hiện của mẫu biểu mẫu của bạn bằng cách điều khiển khoảng cách giữa hai loại văn bản, bạn có thể cấu hình mẫu biểu mẫu của bạn để tự động điều chỉnh khoảng cách giữa những loại văn bản này. Để làm được điều đó, bạn có thể sử dụng thuộc tính [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) và [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) của lớp `ParagraphFormat`.

Mã ví dụ sau cho thấy cách sử dụng các thuộc tính **AddSpaceBetweenFarEastAndAlpha** và **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Cài đặt Tùy chọn ngắt dòng

The Asian Typography tab của hộp thoại thuộc tính đoạn trong Microsoft Word có nhóm ngắt dòng. Các tùy chọn của nhóm này có thể được thiết lập bằng các thuộc tính [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) của lớp **ParagraphFormat**.

Ví dụ sau cho thấy cách sử dụng các thuộc tính này:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Thay đổi khoảng cách và lề khổ Á Châu

Mã ví dụ sau cho thấy cách thay đổi khoảng cách và thụt lề đoạn văn bản tiếng Á:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
