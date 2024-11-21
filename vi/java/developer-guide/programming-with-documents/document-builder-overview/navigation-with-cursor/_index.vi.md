---
title: Điều hướng với Cursor trong Java
second_title: Aspose.Words cho Java
articleTitle: Điều hướng với con trỏ
linktitle: Điều hướng với con trỏ
description: "Điều hướng giữa các nút khác nhau trong một tài liệu, chẳng hạn như một đoạn văn, dấu đánh dấu hoặc ký tự cụ thể bằng cách sử dụng Java."
type: docs
weight: 5
url: /vi/java/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Trong khi đang làm việc với một tài liệu, ngay cả khi nó là ngắn hoặc dài, bạn sẽ cần phải điều hướng qua tài liệu của mình. Điều hướng với con trỏ ảo đại diện cho khả năng điều hướng giữa các nút khác nhau trong một tài liệu.

Trong một tài liệu ngắn gọn, việc di chuyển trong một tài liệu đơn giản như bạn có thể di chuyển điểm chèn ngay cả bằng cách sử dụng bàn phím các phím mũi tên hoặc bằng cách nhấp chuột để xác định điểm chèn bất cứ nơi nào bạn muốn. Nhưng một khi bạn đã có tài liệu lớn với nhiều trang, những kỹ thuật cơ bản này sẽ là không đủ.

Bài viết này giải thích cách di chuyển trong một tài liệu và điều hướng với con trỏ ảo đến các phần khác nhau của nó.

## Tìm vị trí con trỏ hiện tại

Trước khi bắt đầu quá trình điều hướng qua tài liệu của bạn, bạn sẽ cần nhận được nút mà hiện đang được chọn. Bạn có thể lấy vị trí chính xác của con trỏ tại một nút được chọn bằng cách sử dụng thuộc tính [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode). Ngoài ra, thay vì nhận lấy nút hiện tại, bạn có thể nhận lấy đoạn văn đang được chọn hoặc phần đang được chọn bằng cách sử dụng thuộc tính [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) và [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection).

Bất kỳ các thao tác chèn nào bạn thực hiện bằng cách sử dụng [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) sẽ được chèn trước [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). Khi đoạn văn hiện tại trống hoặc con trỏ được đặt ngay trước cuối đoạn văn thì **CurrentNode** trả về giá trị null.

## Phương pháp điều hướng trong một tài liệu

Khi chỉnh sửa văn bản, điều quan trọng là biết cách di chuyển trên tài liệu của bạn và chính xác nơi để di chuyển trong đó. Aspose.Words cho phép bạn di chuyển xung quanh một tài liệu và điều hướng đến các phần và phần khác nhau - điều này tương tự như chức năng của thanh điều hướng ở Microsoft Word để đi đến trang hoặc tiêu đề trong một tài liệu Word mà không cần cuộn.

Phương pháp chính là có khả năng di chuyển vị trí con trỏ đến một nút cụ thể trong tài liệu của bạn, bạn có thể đạt được điều này bằng cách sử dụng phương pháp [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node).

Mã ví dụ sau cho thấy cách di chuyển **DocumentBuilder** đến các node khác nhau trong một tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Nhưng ngoài phương pháp cơ bản **MoveTo**, còn có những phương pháp cụ thể hơn.

### Điều hướng đến Đầu hoặc Cuối của một Tài liệu

Bạn có thể đi đến đầu hoặc cuối tài liệu của bạn bằng cách sử dụng các phương pháp [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) và [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

Ví dụ sau cho thấy cách di chuyển vị trí con trỏ đến đầu hoặc cuối của một tài liệu":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Điều hướng với Bookmark

Bạn có thể đánh dấu một vị trí mà bạn muốn tìm và dễ dàng di chuyển đến đó lại. Bạn có thể thêm nhiều dấu đánh dấu vào tài liệu của bạn như bạn muốn và sau đó điều hướng thông qua chúng bằng cách xác định các dấu đánh dấu với tên độc đáo. Bạn có thể di chuyển đến một dấu trang bằng cách sử dụng [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) phương pháp.

Các ví dụ mã sau cho thấy cách di chuyển vị trí con trỏ đến một con dấu":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Điều hướng đến Table Cells

Bạn có thể di chuyển đến một tế bào bảng bằng cách sử dụng phương pháp [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int). Phương pháp này sẽ cho phép bạn điều hướng con trỏ vào bất kỳ ô nào trong một bảng cụ thể. Ngoài ra bạn có thể chỉ định một chỉ mục để di chuyển con trỏ đến bất kỳ vị trí hoặc ký tự nào trong một ô trong phương thức **MoveToCell**.

Mã ví dụ sau cho thấy cách di chuyển vị trí con trỏ đến một tế bào bảng được chỉ định:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Điều hướng đến một trường

Bạn có thể di chuyển đến một trường cụ thể trong tài liệu của bạn bằng cách sử dụng phương thức [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Bên cạnh đó bạn có thể di chuyển đến một trường hợp cụ thể bằng cách sử dụng [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) phương pháp.

Ví dụ sau cho thấy cách di chuyển con trỏ bộ xây dựng tài liệu đến một trường cụ thể:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Điều hướng đến Header hoặc Footer

Bạn có thể di chuyển đến đầu của tiêu đề hoặc chân trang bằng cách sử dụng phương pháp [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) này

Mã ví dụ sau cho thấy cách di chuyển con trỏ của trình tạo tài liệu đến tiêu đề hoặc chân trang tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Điều hướng đến một Phần hoặc Đoạn văn

Bạn có thể di chuyển đến một phần cụ thể hoặc đoạn bằng cách sử dụng các phương pháp [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) hay [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Ngoài ra, bạn có thể chỉ định một số để di chuyển con trỏ đến bất kỳ vị trí nào hoặc một ký tự cụ thể trong một đoạn văn bản trong phương thức **MoveToParagraph** này.

Mã ví dụ sau cho thấy cách di chuyển đến một phần cụ thể và một đoạn văn cụ thể trong tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
