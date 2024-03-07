---
title: Theo dõi các thay đổi trong tài liệu ở C#
second_title: Aspose.Words cho .NET
articleTitle: Theo dõi các thay đổi trong tài liệu
linktitle: Theo dõi các thay đổi trong tài liệu
description: "Theo dõi các thay đổi về nội dung và định dạng do bạn hoặc người khác thực hiện bằng C#. Truy cập các bản sửa đổi riêng lẻ trong tài liệu và áp dụng các thuộc tính khác nhau cho chúng."
type: docs
weight: 270
url: /vi/net/track-changes-in-a-document/
---

Chức năng theo dõi các thay đổi, còn được gọi là xem lại, cho phép bạn theo dõi các thay đổi về nội dung và định dạng do bạn hoặc những người dùng khác thực hiện. Tính năng thay đổi bản nhạc này với Aspose.Words hỗ trợ thay đổi bản nhạc trong Microsoft Word. Với chức năng này, bạn có thể truy cập các bản sửa đổi riêng lẻ trong tài liệu của mình và áp dụng các thuộc tính khác nhau cho chúng.

Khi bạn bật tính năng thay đổi theo dõi, tất cả các thành phần được chèn, xóa và sửa đổi của tài liệu sẽ được làm nổi bật trực quan với thông tin về ai, khi nào và những gì đã được thay đổi. Các đối tượng mang thông tin về những gì đã được thay đổi được gọi là "theo dõi các thay đổi". Ví dụ: giả sử bạn muốn xem lại tài liệu và thực hiện các thay đổi quan trọng – điều này có thể có nghĩa là bạn cần thực hiện các sửa đổi. Ngoài ra, bạn có thể cần chèn bình luận để thảo luận về một số thay đổi. Đó là nơi phát huy tác dụng của việc theo dõi những thay đổi trong tài liệu.

Bài viết này giải thích cách quản lý và theo dõi các thay đổi được tạo bởi nhiều người đánh giá trên cùng một tài liệu, cũng như các thuộc tính để theo dõi các thay đổi.

{{% alert color="primary" %}}

Lưu ý rằng tính năng nhận xét trong Aspose.Words, cũng như trong Microsoft Word, có thể liên quan đến việc theo dõi các thay đổi. Tuy nhiên, hãy nhớ rằng nhận xét hoàn toàn độc lập với việc theo dõi các thay đổi.

{{% /alert %}}

## Bản sửa đổi là gì

Trước khi đi sâu vào các bản sửa đổi, hãy giải thích ý nghĩa của các bản sửa đổi. [revision](https://reference.aspose.com/words/net/aspose.words/revision/) là một thay đổi xảy ra trong một nút của tài liệu trong khi nhóm sửa đổi, được biểu thị bằng lớp [RevisionGroup](https://reference.aspose.com/words/net/aspose.words/revision/group/), là một nhóm các bản sửa đổi tuần tự xảy ra trong nhiều nút của tài liệu. Về cơ bản, sửa đổi là một công cụ để theo dõi các thay đổi.

Các bản sửa đổi được sử dụng trong tính năng theo dõi các thay đổi và trong tính năng so sánh tài liệu, trong đó các bản sửa đổi xuất hiện do so sánh. Vì vậy, các sửa đổi trong tính năng theo dõi thay đổi sẽ hiển thị ai và nội dung nào đã được thay đổi.

{{% alert color="primary" %}}

Lưu ý rằng Microsoft Word không cho phép bạn xem các bản sửa đổi riêng lẻ mà chỉ cho phép bạn xem các bản sửa đổi tuần tự dưới dạng một thực thể duy nhất. Nhưng Aspose.Words giải quyết hạn chế này bằng lớp **RevisionGroup**.

{{% /alert %}}

Aspose.Words hỗ trợ các loại sửa đổi khác nhau, cũng như trong Microsoft Word, chẳng hạn như Chèn, Xóa, Thay đổi định dạng, Thay đổi định nghĩa kiểu và Di chuyển. Tất cả các loại sửa đổi được thể hiện bằng bảng liệt kê [RevisionType](https://reference.aspose.com/words/net/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Lưu ý rằng các bản sửa đổi có kết quả tương tự như Microsoft Word nhưng Aspose.Words không phát hiện định dạng trong quá trình theo dõi các thay đổi.

{{% /alert %}}

## Bắt đầu và dừng theo dõi thay đổi

Việc chỉnh sửa tài liệu thường không được tính là bản sửa đổi cho đến khi bạn bắt đầu theo dõi nó. Aspose.Words cho phép bạn tự động theo dõi tất cả các thay đổi trong tài liệu của mình bằng các bước đơn giản. Bạn có thể dễ dàng bắt đầu quá trình theo dõi các thay đổi bằng cách sử dụng phương pháp [StartTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/starttrackrevisions/#starttrackrevisions/). Nếu bạn cần dừng quá trình theo dõi các thay đổi để mọi chỉnh sửa trong tương lai không được coi là bản sửa đổi, bạn sẽ cần sử dụng phương pháp [StopTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

Lưu ý rằng phương pháp `StartTrackingRevisions` không thay đổi trạng thái của thuộc tính [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/) và không sử dụng giá trị của nó cho mục đích theo dõi sửa đổi. Ngoài ra, nếu một nút được di chuyển từ vị trí này sang vị trí khác trong tài liệu được theo dõi thì các phiên bản di chuyển sẽ được tạo, bao gồm cả phạm vi di chuyển từ và di chuyển đến.

{{% /alert %}}

Khi kết thúc quá trình theo dõi các thay đổi trong tài liệu của bạn, bạn thậm chí sẽ có khả năng chấp nhận tất cả các bản sửa đổi hoặc từ chối chúng để hoàn nguyên tài liệu về dạng ban đầu. Điều này có thể đạt được bằng cách sử dụng phương pháp [AcceptAllRevisions](https://reference.aspose.com/words/net/aspose.words/document/acceptallrevisions/) hoặc [RejectAll](https://reference.aspose.com/words/net/aspose.words/revisioncollection/rejectall/). Ngoài ra, bạn có thể chấp nhận hoặc từ chối từng bản sửa đổi riêng biệt bằng cách sử dụng phương pháp [Accept](https://reference.aspose.com/words/net/aspose.words/revision/accept/) hoặc [Reject](https://reference.aspose.com/words/net/aspose.words/revision/reject/).

Tất cả các thay đổi sẽ được theo dõi trong một lần lặp từ thời điểm bạn bắt đầu quá trình cho đến thời điểm bạn dừng nó. Kết nối giữa các lần lặp khác nhau được thể hiện dưới dạng kịch bản sau: bạn hoàn tất quy trình theo dõi, sau đó thực hiện một số thay đổi và bắt đầu theo dõi lại các thay đổi. Với kịch bản này, tất cả những thay đổi mà bạn không chấp nhận hoặc từ chối sẽ được hiển thị lại.

{{% alert color="primary" %}}

Lưu ý rằng phương pháp `AcceptAllRevisions` tương tự như "Chấp nhận tất cả thay đổi" trong Microsoft Word.

{{% /alert %}}

Ví dụ về mã sau đây cho thấy cách làm việc với việc theo dõi các thay đổi:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-AcceptAllRevisions.cs" >}}

Ví dụ mã sau đây cho thấy cách tạo ra các bản sửa đổi khi một nút được di chuyển trong tài liệu được theo dõi:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-MoveNodeInTrackedDocument.cs" >}}

## Quản lý và lưu trữ các thay đổi dưới dạng bản sửa đổi

Với tính năng theo dõi các thay đổi trước đó, bạn có thể hiểu những thay đổi nào đã được thực hiện trong tài liệu của mình và ai đã thực hiện những thay đổi đó. Trong khi với tính năng [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/), bạn buộc mọi thay đổi trong tài liệu của mình phải được lưu trữ dưới dạng bản sửa đổi.

Aspose.Words cho phép bạn kiểm tra xem tài liệu có bản sửa đổi hay không bằng cách sử dụng thuộc tính [HasRevision](https://reference.aspose.com/words/net/aspose.words/document/hasrevisions/). Nếu bạn không cần tự động theo dõi các thay đổi trong tài liệu của mình thông qua các phương thức StartTrackRevisions và StopTrackRevisions thì bạn có thể sử dụng thuộc tính `TrackRevisions` để kiểm tra xem các thay đổi có được theo dõi trong khi chỉnh sửa tài liệu trong Microsoft Word và được lưu dưới dạng bản sửa đổi hay không.

Tính năng `TrackRevisions` thực hiện các sửa đổi thay vì thay đổi DOM thực sự. Nhưng bản thân các sửa đổi là riêng biệt. Ví dụ: Nếu bạn xóa bất kỳ đoạn nào, Aspose.Words sẽ coi đoạn đó là bản sửa đổi, đánh dấu đoạn đó là đoạn đã xóa thay vì xóa đoạn đó.

Ngoài ra, Aspose.Words cho phép bạn kiểm tra xem một đối tượng có được chèn, xóa hoặc thay đổi định dạng hay không bằng cách sử dụng các thuộc tính [IsDeleteRevision](https://reference.aspose.com/words/net/aspose.words/inline/isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/net/aspose.words/inline/isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/net/aspose.words/inline/isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovefromrevision/) và [IsMoveToRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovetorevision/).

{{% alert color="primary" %}}

Lưu ý rằng không có mối liên hệ nào giữa bản thân các bản sửa đổi và thuộc tính `TrackRevisions`. Ngoài ra, bạn có thể chấp nhận/từ chối các bản sửa đổi bất kể tính năng theo dõi thay đổi.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách áp dụng các thuộc tính khác nhau với các bản sửa đổi:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShapeRevision.cs" >}}
