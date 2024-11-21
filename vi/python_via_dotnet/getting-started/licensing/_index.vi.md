---
title: Cấp phép và đăng ký
second_title: Aspose.Words cho Python via .NET
articleTitle: Cấp phép và đăng ký
linktitle: Cấp phép và đăng ký
description: "Aspose.Words cho Python via .NET cung cấp các gói mua khác nhau hoặc cung cấp Bản dùng thử miễn phí và Giấy phép tạm thời 30 ngày để đánh giá bằng cách sử dụng các chính sách Cấp phép và Đăng ký."
type: docs
weight: 40
url: /vi/python-net/licensing/
timestamp: 2024-01-31-14-23-37
---

Đôi khi, để nghiên cứu hệ thống tốt hơn, bạn muốn đi sâu vào mã càng nhanh càng tốt. Để thực hiện việc này dễ dàng hơn, Aspose.Words cung cấp các gói mua khác nhau hoặc cung cấp Bản dùng thử miễn phí và Giấy phép tạm thời 30 ngày để đánh giá.

{{% alert color="primary" %}}

Lưu ý rằng có một số chính sách và thông lệ chung hướng dẫn bạn cách đánh giá, cấp phép phù hợp và mua sản phẩm của chúng tôi. Bạn có thể tìm thấy chúng trong phần [Chính sách mua hàng và câu hỏi thường gặp](https://purchase.aspose.com/policies/).

{{% /alert %}}

## Giấy phép dùng thử miễn phí hoặc tạm thời

Aspose.Words là phần mềm đáng kinh ngạc mà các nhà phát triển có thể dùng thử trước khi mua.

### Dùng thử miễn phí

Phiên bản đánh giá giống với phiên bản đã mua – phiên bản dùng thử chỉ được cấp phép khi bạn thêm một vài dòng mã để áp dụng giấy phép.

Phiên bản dùng thử của Aspose.Words không có giấy phép được chỉ định cung cấp đầy đủ chức năng của sản phẩm nhưng chèn hình mờ đánh giá ở đầu tài liệu khi tải và lưu, đồng thời giới hạn kích thước tài liệu tối đa ở vài trăm đoạn.

### Giấy phép tạm thời

Nếu bạn muốn thử nghiệm Aspose.Words mà không bị giới hạn bởi phiên bản Dùng thử, bạn cũng có thể yêu cầu Giấy phép tạm thời 30 ngày. Để biết thêm chi tiết, xem trang [Nhận giấy phép tạm thời](https://purchase.aspose.com/temporary-license/).

## Giấy phép đã mua

Sau khi mua, bạn cần áp dụng tệp giấy phép hoặc luồng. Phần này mô tả các lựa chọn về cách thực hiện việc này và cũng đưa ra nhận xét về một số câu hỏi phổ biến.

{{% alert color="primary" %}}

Bạn cần đặt giấy phép:

* chỉ một lần cho mỗi miền ứng dụng

* trước khi sử dụng bất kỳ lớp Aspose.Words nào khác

{{% /alert %}}

{{% alert color="primary" %}}

Bạn có thể tìm thấy thông tin về giá trên trang [Thông tin giá cả](https://purchase.aspose.com/pricing/words/family/).

{{% /alert %}}

### Bảo vệ giấy phép đã mua của bạn

Sau khi mua giấy phép, bạn cần đọc kỹ thông tin trên trang [Bảo vệ giấy phép đã mua của bạn](https://purchase.aspose.com/orders/protecting-your-license-file) để bảo vệ tệp giấy phép của mình. Xin lưu ý rằng trang này chỉ có sẵn để xem nếu bạn có giấy phép trả phí.

### Tùy chọn đăng ký giấy phép

Giấy phép có thể được áp dụng từ nhiều địa điểm khác nhau:

* Đường dẫn rõ ràng
* Thư mục chứa script python gọi Aspose.Words cho Python via .NET
* Suối
* Là Giấy phép đo lường – một cơ chế cấp phép mới

{{% alert color="primary" %}}

Sử dụng phương pháp [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) để cấp phép cho một thành phần.

Gọi [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) nhiều lần không có hại mà chỉ lãng phí thời gian của bộ xử lý.

Gọi [set_metered_key](https://reference.aspose.com/words/python-net/aspose.words/metered/set_metered_key/#str_str) nhiều lần cũng không có hại mà chỉ lãng phí thời gian của bộ xử lý và có thể tích lũy mức tiêu thụ không đúng cách.

{{% /alert %}}

#### Áp dụng giấy phép bằng cách sử dụng tệp hoặc đối tượng luồng

Khi phát triển ứng dụng của bạn, hãy gọi [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) trong mã khởi động của bạn trước khi sử dụng các lớp Aspose.Words.

##### Tải giấy phép từ một tệp

Sử dụng phương pháp [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/), bạn có thể thử tìm tệp giấy phép trong các thư mục tài nguyên hoặc tập hợp được nhúng để sử dụng tiếp.

Ví dụ mã sau đây cho thấy cách khởi tạo giấy phép từ một thư mục:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-file.py" >}}

##### Tải giấy phép từ đối tượng `Stream`

Ví dụ về mã sau đây cho biết cách khởi tạo giấy phép từ luồng bằng phương pháp [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) khác:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-stream.py" >}}

#### Áp dụng giấy phép đo

Aspose.Words cho phép các nhà phát triển áp dụng khóa có đồng hồ đo. Đây là một cơ chế cấp phép mới.

Cơ chế cấp phép mới sẽ được sử dụng cùng với phương thức cấp phép hiện có. Những khách hàng muốn được lập hóa đơn dựa trên việc sử dụng các tính năng của API có thể sử dụng Cấp phép theo đồng hồ đo.

Sau khi hoàn thành tất cả các bước cần thiết để có được loại giấy phép này, bạn sẽ nhận được chìa khóa chứ không phải tệp giấy phép. Khóa đo này có thể được áp dụng bằng cách sử dụng lớp [Metered](https://reference.aspose.com/words/python-net/aspose.words/metered/) được giới thiệu đặc biệt cho mục đích này.

Đừng gọi phương thức **SetMeteredKey** thường xuyên để phương thức cấp phép này tích lũy lượng tiêu thụ đúng cách và báo cáo cho chúng tôi. Chỉ cần khởi tạo thư viện Aspose.Words, gọi **SetMeteredKey** một lần, sau đó để thư viện được khởi tạo và sử dụng lại.

Ví dụ về mã sau đây cho thấy cách đặt khóa công khai và khóa riêng tư được đo:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-metered-license.py" >}}

{{% alert color="primary" %}}

Xin lưu ý rằng bạn phải có kết nối Internet ổn định để sử dụng đúng giấy phép Metered, vì cơ chế Metered yêu cầu tương tác liên tục với các dịch vụ của chúng tôi để tính toán chính xác. Để biết thêm chi tiết, hãy tham khảo phần [Câu hỏi thường gặp về cấp phép đo lường](https://purchase.aspose.com/faqs/licensing/metered/).

{{% /alert %}}

### Thay đổi tên tệp giấy phép

Tên tệp giấy phép không nhất thiết phải là "Aspose.Words.Python.NET.lic". Bạn có thể đổi tên nó theo ý thích của mình và sử dụng tên đó khi đặt giấy phép trong ứng dụng của mình.

### "Không thể tìm thấy tên tệp giấy phép" Ngoại lệ

Khi bạn mua và tải xuống giấy phép, trang web Aspose sẽ đặt tên tệp giấy phép là *"Aspose.Words.Python.NET.lic"*. Bạn tải xuống tệp giấy phép bằng trình duyệt của bạn. Trong trường hợp này, một số trình duyệt nhận ra tệp giấy phép là XML và nối thêm phần mở rộng .xml vào đó, do đó tên tệp đầy đủ trên máy tính của bạn sẽ trở thành *"Aspose.Words.Python.NET.lic.XML"*.

Khi Microsoft Windows được định cấu hình để ẩn tiện ích mở rộng cho các loại tệp đã biết (không may, đây là mặc định trong hầu hết các cài đặt Windows), tệp giấy phép sẽ xuất hiện dưới dạng *"Aspose.Words.Python.NET.lic"* trong Windows Explorer. Bạn có thể sẽ nghĩ rằng đây là tên tệp thực và gọi [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) truyền nó *"Aspose.Words.Python.NET.lic"*, nhưng không có tệp nào như vậy, do đó có ngoại lệ.

Để giải quyết vấn đề, hãy đổi tên tệp để xóa phần mở rộng .xml vô hình. Chúng tôi cũng khuyên bạn nên tắt tùy chọn "ẩn tiện ích mở rộng" trong Microsoft Windows.

## Sử dụng nhiều sản phẩm Aspose

Nếu bạn sử dụng nhiều sản phẩm Aspose trong ứng dụng của mình, chẳng hạn như Aspose.Words và `Aspose.Cells`, thì đây là một số mẹo hữu ích:

* Đặt Giấy phép riêng cho từng sản phẩm Aspose. Ngay cả khi bạn có một tệp giấy phép duy nhất cho tất cả các thành phần, ví dụ: "Aspose.Total.lic", bạn vẫn cần gọi [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) riêng cho từng sản phẩm Aspose mà bạn sử dụng trong ứng dụng của mình.
* Sử dụng Tên lớp giấy phép đủ điều kiện. Mỗi sản phẩm Aspose có một lớp **License** trong không gian tên riêng. Ví dụ: Aspose.Words có [aspose.words.License](https://reference.aspose.com/words/python-net/aspose.words/license/) và `Aspose.Cells` có lớp **aspose.cells.Licens**. Việc sử dụng tên lớp đủ điều kiện cho phép bạn tránh nhầm lẫn về việc giấy phép nào áp dụng cho sản phẩm nào.
