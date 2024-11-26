---
title: Theo dõi thay đổi trong một tài liệu ở Java
second_title: Aspose.Words cho Java
articleTitle: Theo dõi thay đổi trong một tài liệu
linktitle: Theo dõi thay đổi trong một tài liệu
description: "Theo dõi các thay đổi về nội dung và định dạng do bạn hoặc người khác thực hiện. Truy cập các phiên bản riêng lẻ trong một tài liệu và áp dụng nhiều thuộc tính cho chúng bằng Java."
type: docs
weight: 270
url: /vi/java/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Hàm lượng theo dõi thay đổi, còn gọi là xem lại, cho phép bạn theo dõi các thay đổi về nội dung và định dạng do chính mình hoặc người dùng khác thực hiện. Tính năng "Đổi theo dõi" này với Aspose.Words hỗ trợ theo dõi thay đổi trong Microsoft Word. Với tính năng này bạn có thể truy cập các phiên bản riêng lẻ trong tài liệu của mình và áp dụng các thuộc tính khác nhau cho chúng.

Khi bạn bật tính năng theo dõi thay đổi, tất cả các phần đã chèn vào, xóa đi và đã sửa đổi của tài liệu sẽ được đánh dấu nổi bật với thông tin về ai, khi nào và những gì đã thay đổi. Các đối tượng mang thông tin về những thay đổi được gọi là 'đổi theo dõi'. Ví dụ giả định bạn muốn xem lại một tài liệu và thực hiện những thay đổi quan trọng – điều này có thể có nghĩa là bạn cần phải sửa đổi. Cũng vậy, bạn có thể cần phải chèn các chú thích để thảo luận một số thay đổi. Đó là nơi mà việc theo dõi thay đổi trong tài liệu xuất hiện.

Bài viết giải thích cách quản lý và theo dõi những thay đổi được tạo bởi nhiều người xem xét trên cùng một tài liệu, cũng như các đặc tính để theo dõi những thay đổi.

{{% alert color="primary" %}}

Lưu ý rằng tính năng bình luận trong Aspose.Words, cũng như trong Microsoft Word, có thể được liên kết với việc theo dõi thay đổi. Tuy nhiên hãy nhớ rằng các bình luận là hoàn toàn độc lập với việc theo dõi thay đổi.

{{% /alert %}}

## Đánh giá là gì?

Trước khi đi sâu vào vấn đề sửa đổi thì hãy giải thích ý nghĩa của "sửa đổi". Một [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) là sự thay đổi xảy ra ở một nút của tài liệu trong khi một nhóm sửa đổi, được thể hiện bởi lớp [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/), là một nhóm các lần sửa đổi liên tiếp xảy ra tại nhiều nút của một tài liệu. Sửa đổi là một công cụ để theo dõi sự thay đổi.

Sửa đổi được sử dụng trong tính năng theo dõi thay đổi và trong tính năng so sánh tài liệu, nơi sửa đổi xuất hiện là kết quả của so sánh. Vì vậy, các sửa đổi trong tính năng theo dõi thay đổi cho thấy bởi ai và những gì đã thay đổi.

{{% alert color="primary" %}}

Nhận thấy rằng Microsoft Word không cho phép bạn xem các phiên bản riêng biệt, nó chỉ cho phép bạn xem các phiên bản tuần tự như một thực thể duy nhất. Nhưng Aspose.Words giải quyết giới hạn này bằng lớp **RevisionGroup**.

{{% /alert %}}

Aspose.Words hỗ trợ các loại sửa đổi khác nhau, cũng như ở Microsoft Word, chẳng hạn như Chèn, Xóa, Định dạng Thay đổi, Định nghĩa Phong cách Thay đổi và Di chuyển. Tất cả các loại sửa đổi đều được đại diện bởi [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) enumaration.

{{% alert color="primary" %}}

Lưu ý rằng các bản sửa đổi có kết quả tương tự như Microsoft Word nhưng Aspose.Words không phát hiện định dạng khi theo dõi thay đổi.

{{% /alert %}}

## Bắt đầu và Dừng Theo dõi Thay đổi

Sửa đổi một tài liệu thường không được tính là sửa lại cho đến khi bạn bắt đầu theo dõi nó. Aspose.Words cho phép bạn tự động theo dõi tất cả những thay đổi trong tài liệu của mình với các bước đơn giản. Bạn có thể bắt đầu dễ dàng để theo dõi thay đổi bằng cách sử dụng [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) phương pháp. Nếu bạn cần ngừng quá trình theo dõi thay đổi để bất kỳ sự chỉnh sửa nào trong tương lai không được coi là sửa đổi, bạn sẽ cần phải sử dụng phương pháp [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions).

{{% alert color="primary" %}}

Lưu ý rằng phương pháp `StartTrackingRevisions` không thay đổi trạng thái của thuộc tính [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) và không sử dụng giá trị của nó để mục đích theo dõi sửa đổi. Ngoài ra, nếu một nút được di chuyển từ một vị trí này sang một vị trí khác trong tài liệu được theo dõi, sau đó sẽ có các phiên bản di chuyển được tạo ra, bao gồm cả phạm vi di chuyển từ và di chuyển đến.

{{% /alert %}}

Cuối cùng của quá trình theo dõi thay đổi trong tài liệu của bạn, bạn sẽ có khả năng thậm chí chấp nhận tất cả các sửa đổi hoặc từ chối chúng để trả lại tài liệu về hình thức gốc của nó. Đây có thể đạt được bằng cách sử dụng phương pháp [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) hoặc [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll). Ngoài ra, bạn có thể chấp nhận hay từ chối từng sửa đổi riêng biệt bằng cách dùng phương pháp [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) hoặc [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject).

Tất cả các thay đổi sẽ được theo dõi cho một lần lặp từ khi bạn bắt đầu quá trình đến khi bạn dừng nó. Liên hệ giữa các lần lặp khác nhau được đại diện như kịch bản sau: bạn hoàn thành quy trình theo dõi, sau đó thực hiện một số thay đổi, và bắt đầu theo dõi lại những thay đổi đó. Với kịch bản này, tất cả những thay đổi mà bạn không chấp nhận hoặc từ chối sẽ được hiển thị lại.

{{% alert color="primary" %}}

Lưu ý rằng phương pháp `AcceptAllRevisions` tương tự như "Accept All Changes" ở Microsoft Word.

{{% /alert %}}

Mã ví dụ sau cho thấy cách làm việc với thay đổi theo dõi:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

Mã ví dụ sau cho thấy cách các sửa đổi được tạo khi một nút di chuyển trong một tài liệu được theo dõi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## Quản lý và Lưu trữ Thay đổi dưới dạng Sửa đổi

Với tính năng theo dõi thay đổi trước đây, bạn có thể hiểu những thay đổi nào đã được thực hiện trong tài liệu của mình và ai thực hiện những thay đổi đó. Trong khi với tính năng [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) bạn buộc mọi thay đổi trong tài liệu của bạn phải được lưu trữ dưới dạng sửa đổi.

Aspose.Words cho phép bạn kiểm tra xem tài liệu có phiên bản sửa hay không bằng cách sử dụng thuộc tính [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions). Nếu bạn không cần theo dõi tự động thay đổi trên tài liệu của mình bằng các phương thức StartTrackRevisions và StopTrackRevisions, bạn có thể sử dụng thuộc tính `TrackRevisions` để kiểm tra xem các thay đổi có được theo dõi khi chỉnh sửa tài liệu ở Microsoft Word hay không và lưu trữ chúng như là các phiên bản.

Tính năng `TrackRevisions` tạo các thay đổi phiên bản thay vì những thay đổi thực sự DOM. Nhưng các sửa đổi chính nó lại riêng biệt. Ví dụ như nếu bạn xóa bất kì đoạn nào thì Aspose.Words hãy tạo ra nó với tư cách là sửa đổi, đánh dấu là bị xóa thay vì xóa nó.

Ngoài ra, Aspose.Words cho phép bạn kiểm tra xem một đối tượng có được chèn vào, xóa đi hay định dạng lại bằng cách sử dụng thuộc tính [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision) và [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision).

{{% alert color="primary" %}}

Lưu ý rằng không có kết nối nào giữa các lần sửa đổi và thuộc tính `TrackRevisions`. Ngoài ra bạn có thể chấp nhận/từ chối sửa đổi không quan tâm đến tính năng theo dõi thay đổi.

{{% /alert %}}

Mã ví dụ sau cho thấy cách áp dụng các thuộc tính khác nhau với phiên bản sửa đổi:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
