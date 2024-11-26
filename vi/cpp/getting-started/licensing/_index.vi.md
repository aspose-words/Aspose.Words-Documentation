---
title: Cấp phép Và Đăng ký
second_title: Aspose.Words cho C++
articleTitle: Cấp phép Và Đăng ký
linktitle: Cấp phép Và Đăng ký
description: "Aspose.Words Đối Với С Cung cấp các gói khác nhau để mua hoặc Cung cấp Bản Dùng Thử miễn phí và Giấy phép Tạm thời 30 ngày để đánh giá bằng Cách sử dụng Chính sách Cấp phép và Đăng ký."
type: docs
weight: 60
url: /vi/cpp/licensing/
timestamp: 2024-10-24-11-44-28
---

Đôi khi, để nghiên cứu hệ thống tốt hơn, bạn muốn đi sâu vào mã càng nhanh càng tốt. Để làm cho điều này dễ dàng hơn, Aspose.Words cung cấp các gói khác nhau để mua hoặc Cung cấp Bản Dùng Thử miễn phí và Giấy phép Tạm thời 30 ngày để đánh giá.

{{% alert color="primary" %}}

Lưu ý rằng có một số chính sách và thực tiễn chung hướng dẫn bạn cách đánh giá, cấp phép và mua sản phẩm của chúng tôi đúng cách. Bạn có thể tìm thấy chúng trong [Chính sách mua hàng và FAQ](https://purchase.aspose.com/policies/) phần.

{{% /alert %}}

## Dùng Thử Miễn phí Hoặc Giấy Phép Tạm Thời

Aspose.Words là phần mềm đáng kinh ngạc mà các nhà phát triển có thể thử trước khi mua.

### Dùng Thử Miễn Phí

Phiên bản đánh giá giống như phiên bản đã mua - [Phiên bản dùng thử](https://releases.aspose.com/words/) đơn giản chỉ cần trở thành cấp phép khi bạn thêm một vài dòng mã để áp dụng giấy phép.

Phiên bản dùng thử của Aspose.Words không có giấy phép được chỉ định cung cấp chức năng sản phẩm đầy đủ, nhưng chèn hình mờ đánh giá ở đầu tài liệu khi tải và lưu và giới hạn kích thước tài liệu tối đa ở vài trăm đoạn.

### Giấy Phép Tạm Thời

Nếu bạn muốn kiểm tra Aspose.Words mà không có giới hạn của phiên bản Dùng thử, bạn cũng có thể yêu cầu Giấy phép Tạm thời 30 ngày. Để biết thêm chi tiết, hãy xem [Nhận Giấy Phép Tạm Thời](https://purchase.aspose.com/temporary-license/) trang.

## Giấy Phép Đã Mua

Sau khi mua, bạn cần áp dụng tệp giấy phép hoặc bao gồm tệp giấy phép dưới dạng tài nguyên nhúng. Phần này mô tả các tùy chọn về cách điều này có thể được thực hiện và cũng nhận xét về một số câu hỏi phổ biến.

{{% alert color="primary" %}}

Bạn cần đặt giấy phép:

* chỉ một lần cho mỗi miền ứng dụng
* trước khi sử dụng bất kỳ lớp Aspose.Words nào khác

{{% /alert %}}

{{% alert color="primary" %}}

Bạn có thể tìm thấy thông tin giá cả trên [Thông Tin Giá Cả](https://purchase.aspose.com/pricing/words/family/) trang.

{{% /alert %}}

### Bảo Vệ Giấy Phép Đã Mua Của Bạn

Sau khi mua giấy phép, bạn cần đọc kỹ thông tin trên trang [Bảo Vệ Giấy Phép Đã Mua Của Bạn](https://purchase.aspose.com/orders/protecting-your-license-file) để bảo vệ tập tin giấy phép của bạn. Xin lưu ý rằng trang này chỉ có sẵn để xem nếu bạn có giấy phép trả phí.

### Giấy Phép Áp Dụng Tùy Chọn

Giấy phép có thể được áp dụng từ các địa điểm khác nhau:

* Đường dẫn rõ ràng
* Thư mục chứa tệp `Aspose.Words_\*.dll`
* Thư mục chứa cụm được gọi là `Aspose.Words_\*.dll`
* Thư mục chứa cụm mục nhập (`.exe`)của bạn
* Một tài nguyên nhúng trong lắp ráp được gọi là `Aspose.Words_\*.dll`

Thông thường, cách dễ nhất để đặt giấy phép là đặt tệp giấy phép trong cùng thư mục với `Aspose.Words_\*.dll` và chỉ định tên tệp mà không có đường dẫn.

{{% alert color="primary" %}}

Sử dụng phương thức [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) để cấp phép cho một thành phần.

Gọi **SetLicense** nhiều lần không có hại, nó chỉ lãng phí thời gian xử lý.

{{% /alert %}}

#### Áp Dụng Giấy Phép Bằng Cách Sử dụng Một Đối tượng Tệp Hoặc Luồng

Khi phát triển ứng dụng của bạn, hãy gọi **SetLicense** trong mã khởi động của bạn trước khi sử dụng các lớp Aspose.Words.

##### Tải Giấy Phép từ Một Tập tin

Sử dụng phương thức [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/), bạn có thể thử tìm tệp giấy phép trong các tài nguyên nhúng hoặc thư mục lắp ráp để sử dụng thêm.

Ví dụ mã sau đây cho thấy cách khởi tạo giấy phép từ một thư mục:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-file.h" >}}

##### Tải Giấy phép Từ Một Đối Tượng Luồng

Ví dụ mã sau đây cho thấy cách khởi tạo giấy phép từ luồng bằng phương thức [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) khác:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-stream.h" >}}

#### Bao gồm Tệp Giấy phép dưới dạng Tài Nguyên Nhúng

Một cách gọn gàng để đóng gói giấy phép với ứng dụng của bạn và đảm bảo rằng nó sẽ không bị mất là bao gồm nó như một tài nguyên nhúng. Cách nhúng và sử dụng tài nguyên phụ thuộc vào nền tảng mục tiêu của bạn.

##### Windows

Giả sử bạn đã thêm giấy phép làm tài nguyên như hình dưới đây.

```
resource.h
#define IDR_ASPOSE_WORDS_LIC            101
```

```
resource.rc
IDR_ASPOSE_WORDS_LIC RCDATA "Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

Bạn có thể đọc về cách làm việc với các tệp tài nguyên trên [Làm việc Với Các Tệp Tài Nguyên](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) trang.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách khởi tạo giấy phép từ tài nguyên nhúng bằng phương thức [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-windows.h" >}}

##### Linux

Có một cách tương tự để nhúng tài nguyên vào Linux trong một tệp thực thi.

{{% alert color="primary" %}}

Để biết thêm thông tin, xem [Nhúng tài nguyên vào tệp thực thi bằng GCC](https://stackoverflow.com/questions/4158900/embedding-resources-in-executable-using-gcc/4158997#4158997).

{{% /alert %}}

Ví dụ mã mã sau đây cho thấy cách khởi tạo giấy phép từ tài nguyên nhúng bằng phương thức [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-linux.h" >}}

### Thay Đổi Tên Tệp Giấy phép

Tên tệp giấy phép không nhất thiết phải là "Aspose.Words.LIC". Bạn có thể đổi tên nó theo ý thích của mình và sử dụng tên đó khi đặt giấy phép trong ứng dụng của mình.

### "Không thể tìm thấy tên tệp giấy Phép" Ngoại Lệ

Khi bạn mua và tải xuống giấy phép, Trang Web Aspose đặt tên cho tệp giấy phép *"Aspose.Words.LIC"*. Bạn tải xuống tệp giấy phép bằng trình duyệt của mình. Trong trường hợp này, một số trình duyệt nhận ra tệp giấy phép là XML và nối thêm .phần mở rộng xml cho nó, vì vậy tên tệp đầy đủ trên máy tính của bạn trở thành *"Aspose.Words.lic.XML"*.

Khi Microsoft Windows được cấu hình để ẩn phần mở rộng cho các loại tệp đã biết (thật không may, đây là mặc định trong hầu hết các cài đặt Windows), tệp giấy phép sẽ xuất hiện dưới dạng *"Aspose.Words. LIC"* trong Windows Explorer. Bạn có thể sẽ nghĩ rằng đây là tên tệp thực và gọi **SetLicense** chuyển nó *"Aspose.Words.LIC"*, nhưng không có tệp nào như vậy, do đó ngoại lệ.

Để giải quyết vấn đề, hãy đổi tên tệp để xóa vô hình .phần mở rộng xml. Chúng tôi cũng khuyên bạn nên tắt tùy chọn "ẩn tiện ích mở rộng" trong Microsoft Windows.

## Sử Dụng Nhiều Sản Phẩm Aspose

Nếu bạn sử dụng nhiều Sản phẩm Aspose trong ứng dụng của mình, chẳng hạn như Aspose.Words và `Aspose.Cells`, đây là một vài mẹo hữu ích:

* Đặt Giấy phép cho từng Sản phẩm Aspose riêng biệt. Ngay cả khi bạn có một tệp giấy phép duy nhất cho tất cả các thành phần, ví dụ: "Aspose.Total.lic", bạn vẫn cần gọi **SetLicense** riêng cho từng sản phẩm Aspose mà bạn sử dụng trong ứng dụng của mình.
* Sử dụng Tên Lớp Giấy phép Đủ điều kiện. Mỗi Sản phẩm Aspose có một lớp **License** trong không gian tên riêng của nó. Ví dụ: Aspose.Words có [Aspose.Words.License](https://reference.aspose.com/words/cpp/aspose.words/license/) và `Aspose.Cells` có `Aspose.Cells`.Lớp giấy phép. Sử dụng tên lớp đủ điều kiện cho phép bạn tránh nhầm lẫn về giấy phép nào áp dụng cho sản phẩm nào.
