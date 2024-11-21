---
title: Làm việc với kiểu chữ trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Phông chữ
linktitle: Làm việc với Phông chữ
description: "Định dạng phông chữ ở chi tiết sử dụng Java."
type: docs
weight: 230
url: /vi/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Phông chữ là một tập hợp các ký tự có kích thước, màu sắc và thiết kế nhất định. Aspose.Words cho phép bạn làm việc với phông chữ bằng cách sử dụng các lớp liên quan đến phông chữ, bao gồm cả lớp [Font](https://reference.aspose.com/words/java/com.aspose.words/font/).

## Chế độ định dạng kiểu chữ

Định dạng phông chữ hiện tại được thể hiện bởi một đối tượng **Font** được trả về bởi thuộc tính [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont). Lớp **Font** chứa một loạt các thuộc tính phông chữ có thể dùng trong Microsoft Word.

Mã ví dụ sau hiển thị cách thiết lập định dạng phông chữ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Tính năng Fill hiện cũng có sẵn cho phông chữ để đặt định dạng văn bản. Nó cho khả năng thay đổi, ví dụ màu nền hoặc độ trong suốt của văn bản.

## Lấy khoảng cách dòng chữ

Khoảng cách hàng của một phông chữ là khoảng cách thẳng đứng giữa đường căn của hai hàng văn bản kế tiếp nhau. Theo đó khoảng cách dòng bao gồm khoảng trống giữa các dòng cũng như độ cao của ký tự chính nó.

Tính [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) thuộc tính được giới thiệu trong lớp **Font** để lấy giá trị này như thể hiện ở ví dụ dưới đây":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Font EmphasisMark

Lớp **Font** cung cấp thuộc tính [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) để lấy hoặc đặt các giá trị Enum EmphasisMark được áp dụng trong định dạng.

Mã ví dụ sau cho thấy cách thiết lập thuộc tính **EphasisMark**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
