---
title: Tính năng nâng cao Mail Merge trong C#
second_title: Aspose.Words cho .NET
articleTitle: Tính Năng Nâng Cao Mail Merge
linktitle: Tính Năng Nâng Cao Mail Merge
type: docs
description: "Aspose.Words cho .NET cung cấp một số tính năng Mail Merge nâng cao cho phép bạn thực hiện thêm Mail Merge tùy chỉnh bằng C#. Ví dụ: lấy thông tin về cấu trúc mẫu, thiết lập quy tắc, dọn dẹp sau thao tác Mail Merge và các quy tắc khác."
keywords: "use advanced Mail Merge features c#"
weight: 50
url: /vi/net/advanced-mail-merge-features/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words cung cấp một số thuộc tính và phương thức Mail Merge bổ sung cho phép bạn thực hiện tùy chỉnh thêm quy trình Mail Merge đơn giản Mail Merge hoặc Mail Merge với các vùng.

Các tính năng nâng cao Mail Merge bao gồm, nhưng không giới hạn, lấy thông tin về cấu trúc mẫu trước khi thực hiện thao tác Mail Merge, đặt quy tắc cho thao tác Mail Merge và dọn dẹp trong quá trình thao tác Mail Merge. Bài viết này sẽ chỉ bao gồm một vài thuộc tính và ví dụ để chỉ cho bạn cách sử dụng các tính năng nâng cao.

## Đặt Quy tắc Cho Hoạt động Mail Merge

Thêm quy tắc vào mẫu của bạn cho phép bạn làm cho quá trình quy trình làm việc hiệu quả và linh hoạt hơn. Sử dụng quy tắc Mail Merge, bạn có thể thiết lập nội dung có thể thay đổi nhanh chóng và tránh phải tạo nhiều tài liệu.

Aspose.Words cho phép bạn tùy chỉnh Mail Merge dựa trên các quy tắc chạy khi bạn thực hiện thao tác Mail Merge và kiểm soát thông tin hợp nhất. Ví dụ: khi bạn tạo email hoặc thư để gửi cho tất cả khách hàng của mình. Bạn có thể thiết lập một quy tắc để chữ cái có thể chứa nhiều dữ liệu khác nhau dựa trên các giá trị khác nhau trong các trường nhất định của nguồn dữ liệu của bạn.

Hãy xem một số quy tắc Mail Merge mà bạn có thể thực hiện.

### Triển khai Trường Tiếp theo Để Hợp Nhất Các Bản Ghi Dữ liệu Trong Tài liệu Hiện Tại

Bạn có thể triển khai trường [Next](https://reference.aspose.com/words/net/aspose.words.fields/fieldnext/) để hợp nhất bản ghi dữ liệu tiếp theo vào tài liệu được hợp nhất kết quả hiện tại, thay vì bắt đầu một tài liệu được hợp nhất mới. Nó được sử dụng để hiển thị nhiều bản ghi trong một tài liệu.

### Thực hiện Các Trường NextIf và SkipIf Để So Sánh Hai Biểu Thức

Bạn có thể sử dụng trường [NextIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/) hoặc trường [SkipIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/) nếu bạn muốn so sánh hai biểu thức ([right](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/rightexpression/) và [left](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/leftexpression/) biểu thức) bởi một số [operator](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words sẽ hợp nhất bản ghi dữ liệu tiếp theo vào tài liệu hợp nhất hiện tại và tất cả các trường hợp nhất trong mẫu sau trường *NextIf* sẽ được thay thế bằng các giá trị từ bản ghi dữ liệu tiếp theo thay vì bản ghi dữ liệu hiện tại. | Aspose.Words sẽ hợp nhất bản ghi dữ liệu tiếp theo vào một tài liệu hợp nhất mới. |
| `SkipIf` | Aspose.Words sẽ hủy tài liệu hợp nhất hiện tại, chuyển sang bản ghi dữ liệu tiếp theo trong nguồn dữ liệu và bắt đầu một tài liệu hợp nhất mới. | Aspose.Words sẽ tiếp tục tài liệu hợp nhất hiện tại. |

Ví dụ mã sau đây cho thấy cách so sánh hai biểu thức với **NextIf** hoặc **SkipIf**:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "field-next.cs" >}}

## Có Được Thông Tin Về Cấu Trúc Mẫu

Aspose.Words cho phép bạn thu thập thông tin khác nhau trong mẫu của mình thông qua nhiều phương pháp. Ví dụ: bạn có thể cần lấy tên của một số trường hợp nhất hoặc hệ thống phân cấp của các vùng trong mẫu của bạn. Bây giờ chúng tôi sẽ giải thích các biến thể có thể có để có được một số thông tin cụ thể từ mẫu của bạn.

### Nhận Tên Trường Hợp Nhất

Bạn có thể bắt gặp một kịch bản mà bạn sẽ muốn hợp nhất dữ liệu với các trường hợp hợp nhất do người khác tạo và trong trường hợp này, bạn sẽ không chắc chắn về tên chính xác của các trường hợp hợp nhất. Vì vậy, để đạt được mục đích Mail Merge, trước tiên, bạn sẽ cần đọc và hiển thị tên của tất cả các trường hợp nhất. Aspose.Words cho phép bạn lấy một tập hợp các tên trường hợp nhất bằng phương thức [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/).

Ví dụ mã sau đây cho thấy cách lấy tên của tất cả các trường hợp nhất trong mẫu:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-field-names.cs" >}}

### Nhận Thông Tin Về Merge Regions

Bạn có thể có một kịch bản mà bạn muốn hiểu cách mẫu của bạn được cấu trúc thông qua các vùng hợp nhất được chỉ định. Bạn có thể sử dụng một số phương pháp để thu thập tất cả thông tin cần thiết về các vùng hợp nhất hoặc để có được hệ thống phân cấp vùng hợp nhất trong mẫu của bạn, chẳng hạn như phương thức [GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/). Bạn có thể sử dụng các thuộc tính và phương thức của lớp [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/).Ví dụ mã sau đây cho thấy cách nhận hệ thống phân cấp vùng hợp nhất:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-hierarchy.cs" >}}

Ví dụ mã sau đây cho thấy cách lấy các vùng hợp nhất cụ thể bên trong mẫu của bạn dựa trên tên của chúng:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-by-name.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20regions.docx).

{{% /alert %}}

### Thêm Các Trường Được Ánh Xạ

Aspose.Words cho phép bạn tự động ánh xạ tên của các trường trong nguồn dữ liệu và tên của các trường Mail Merge trong mẫu bằng thuộc tính [MappedDataFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/mappeddatafields/). Ví dụ: nếu bạn có tên trường được gọi là "Họ" trong mẫu của mình và trong nguồn dữ liệu của bạn, bạn có tên trường "Họ" hoặc một biến thể khác như "Last_Name" hoặc "LastName", thì trường trong nguồn dữ liệu sẽ tự động ánh xạ tới trường được ánh xạ tương ứng. Nếu một mẫu hợp nhất được hợp nhất với nhiều nguồn dữ liệu, các trường được ánh xạ sẽ không cần thiết phải nhập lại các trường vào mẫu để đồng ý với tên trường trong cơ sở dữ liệu.

Ví dụ mã sau đây cho thấy cách thêm trường được ánh xạ bằng phương thức [Add](https://reference.aspose.com/words/net/aspose.words.mailmerging/mappeddatafieldcollection/add/) khi trường hợp nhất trong mẫu và trường dữ liệu trong nguồn dữ liệu có các tên khác nhau:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "mapped-data-fields.cs" >}}
