---
title: Nâng cao Mail Merge Các tính năng trong C++
second_title: Aspose.Words cho C++
articleTitle: Nâng cao Mail Merge Tính năng
linktitle: Nâng cao Mail Merge Tính năng
type: docs
description: "Aspose.Words cho C++ cung cấp một số nâng cao mail merge các tính năng cho phép bạn thực hiện thêm mail merge tùy chỉnh. Ví dụ: lấy thông tin về cấu trúc mẫu, thiết lập quy tắc, dọn dẹp sau khi mail merge hoạt động, và những người khác."
keywords: "use advanced mail merge features c++"
weight: 50
url: /vi/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words cung cấp một số bổ sung mail merge thuộc tính và phương pháp cho phép bạn thực hiện tùy biến hơn nữa của mail merge quá trình hoặc đơn giản mail merge hoặc mail merge với các khu vực.

Nâng cao mail merge tính năng bao gồm, nhưng không giới hạn, có được thông tin về cấu trúc mẫu trước khi thực hiện một mail merge hoạt động, thiết lập các quy tắc cho một mail merge hoạt động, và làm sạch trong một mail merge hoạt động. Bài viết này sẽ chỉ bao gồm một vài thuộc tính và ví dụ để chỉ cho bạn cách sử dụng các tính năng nâng cao.

## Đặt Quy tắc cho Mail Merge Hoạt động

Thêm quy tắc vào mẫu của bạn cho phép bạn làm cho quá trình quy trình làm việc hiệu quả và linh hoạt hơn. Sử dụng mail merge quy tắc, bạn có thể thiết lập nội dung có thể thay đổi nhanh chóng và tránh phải tạo nhiều tài liệu.

Aspose.Words cho phép bạn tùy chỉnh mail merge dựa trên các quy tắc chạy khi bạn thực hiện mail merge hoạt động và kiểm soát thông tin hợp nhất. Ví dụ: khi bạn tạo email hoặc thư để gửi cho tất cả khách hàng của mình. Bạn có thể thiết lập một quy tắc để chữ cái có thể chứa nhiều dữ liệu khác nhau dựa trên các giá trị khác nhau trong các trường nhất định của nguồn dữ liệu của bạn.

Hãy xem một số mail merge các quy tắc mà bạn có thể thực hiện.

### Triển khai Trường Tiếp theo Để Hợp Nhất Các Bản Ghi Dữ liệu Trong Tài liệu Hiện Tại

Bạn có thể thực hiện [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) trường để hợp nhất bản ghi dữ liệu tiếp theo vào tài liệu được hợp nhất kết quả hiện tại, thay vì bắt đầu một tài liệu được hợp nhất mới. Nó được sử dụng để hiển thị nhiều bản ghi trong một tài liệu.

### Thực hiện NextIf và SkipIf Các trường Để So Sánh Hai Biểu Thức

Bạn cũng có thể sử dụng [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) lĩnh vực hoặc [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/) trường nếu bạn muốn so sánh hai biểu thức ([right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/) biểu thức) của một số [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words sẽ hợp nhất bản ghi dữ liệu tiếp theo vào tài liệu hợp nhất hiện tại và tất cả các trường hợp nhất trong mẫu sau *NextIf* trường sẽ được thay thế bằng các giá trị từ bản ghi dữ liệu tiếp theo thay vì bản ghi dữ liệu hiện tại. | Aspose.Words sẽ hợp nhất bản ghi dữ liệu tiếp theo vào một tài liệu hợp nhất mới. |
| `SkipIf` | Aspose.Words sẽ hủy tài liệu hợp nhất hiện tại, chuyển sang bản ghi dữ liệu tiếp theo trong nguồn dữ liệu và bắt đầu một tài liệu hợp nhất mới. | Aspose.Words sẽ tiếp tục tài liệu hợp nhất hiện tại. |

## Có Được Thông Tin Về Cấu Trúc Mẫu

Aspose.Words cho phép bạn thu thập thông tin khác nhau trong mẫu của bạn thông qua nhiều phương pháp. Ví dụ: bạn có thể cần lấy tên của một số trường hợp nhất hoặc hệ thống phân cấp của các vùng trong mẫu của bạn. Bây giờ chúng tôi sẽ giải thích các biến thể có thể có để có được một số thông tin cụ thể từ mẫu của bạn.

### Nhận Tên Trường Hợp Nhất

Bạn có thể bắt gặp một kịch bản mà bạn sẽ muốn hợp nhất dữ liệu với các trường hợp hợp nhất do người khác tạo và trong trường hợp này, bạn sẽ không chắc chắn về tên chính xác của các trường hợp hợp nhất. Vì vậy, để đạt được mail merge mục đích, trước tiên, bạn sẽ cần đọc và hiển thị tên của tất cả các trường hợp nhất. Aspose.Words cho phép bạn có được một bộ sưu tập các tên trường hợp nhất bằng cách sử dụng [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/) phương pháp.

Ví dụ mã sau đây cho thấy cách lấy tên của tất cả các trường hợp nhất trong mẫu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### Nhận Thông Tin Về Merge Regions

Bạn có thể có một kịch bản mà bạn muốn hiểu cách mẫu của bạn được cấu trúc thông qua các vùng hợp nhất được chỉ định. Bạn có thể sử dụng một số phương pháp để thu thập tất cả thông tin cần thiết về các vùng hợp nhất hoặc để có được hệ thống phân cấp vùng hợp nhất trong mẫu của bạn, chẳng hạn như [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/) phương pháp. Bạn có thể sử dụng các thuộc tính và phương pháp của [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) lớp học.Ví dụ mã sau đây cho thấy cách nhận hệ thống phân cấp vùng hợp nhất:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Thêm Các Trường Được Ánh Xạ

Aspose.Words cho phép bạn tự động ánh xạ tên của các trường trong nguồn dữ liệu và tên của bạn mail merge các trường trong mẫu bằng cách sử dụng [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/) tài sản. Ví dụ: nếu bạn có tên trường được gọi là " Họ " trong mẫu của mình và trong nguồn dữ liệu của bạn, bạn có tên trường "Họ" hoặc một biến thể khác như "Last_Name" hoặc "LastName", sau đó trường trong nguồn dữ liệu sẽ tự động ánh xạ đến trường được ánh xạ tương ứng. Nếu một mẫu hợp nhất được hợp nhất với nhiều nguồn dữ liệu, các trường được ánh xạ sẽ không cần thiết phải nhập lại các trường vào mẫu để đồng ý với tên trường trong cơ sở dữ liệu.

Ví dụ mã sau đây cho thấy cách thêm trường được ánh xạ bằng cách sử dụng [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/) phương pháp khi một trường hợp nhất trong một mẫu và một trường dữ liệu trong một nguồn dữ liệu có tên khác nhau:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
