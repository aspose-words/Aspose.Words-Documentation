---
title: Giấy phép
second_title: Aspose.Words cho Java
articleTitle: Giấy phép
linktitle: Giấy phép
description: "Cài đặt Aspose.Words cho Android thông qua Java."
type: docs
weight: 60
url: /vi/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

Đôi khi để học hệ thống tốt hơn, bạn muốn nhảy xuống mã nhanh nhất có thể. Để giúp điều này dễ dàng hơn, Aspose.Words cung cấp các gói khác nhau cho việc mua hoặc cung cấp một thử nghiệm miễn phí và giấy phép tạm thời 30 ngày để đánh giá.

{{% alert color="primary" %}}

Lưu ý rằng có một số chính sách và thực tiễn chung để hướng dẫn bạn về cách đánh giá, cấp giấy phép thích hợp và mua sản phẩm của chúng tôi. Bạn có thể tìm thấy chúng trong phần [Chính sách mua hàng và Câu hỏi thường gặp](https://purchase.aspose.com/policies/).

{{% /alert %}}

## Thử dùng hoặc Giấy phép tạm thời

Aspose.Words là phần mềm đáng kinh ngạc mà các nhà phát triển có thể thử trước khi mua. Bạn có thể dễ dàng tải xuống/cài đặt Aspose.Words cho Java và Aspose.Words cho Android thông qua Java [từ trang tải xuống] (https://releases.aspose.com/words/androidjava/) để đánh giá.

Phiên bản đánh giá giống như phiên bản mua - phiên bản Thử đơn giản trở thành có giấy phép khi bạn thêm vài dòng mã để áp dụng giấy phép.

{{% alert color="primary" %}}

Học thêm chi tiết về Thử dùng miễn phí hoặc Giấy phép tạm thời cho Aspose.Words trong Android thông qua Java trên [trang cấp phép và đăng ký] / words / java / licensing /.

{{% /alert %}}

## Giấy phép đã mua

Sau khi mua, bạn cần phải áp dụng tập tin giấy phép hoặc bao gồm tập tin giấy phép như một tài nguyên nhúng. Phần này mô tả các lựa chọn làm thế nào để thực hiện nó và cũng nhận xét về một số câu hỏi phổ biến.

{{% alert color="primary" %}}

Giấy phép là một tệp văn bản đơn giản chứa chi tiết như tên sản phẩm, số lượng nhà phát triển được cấp phép, ngày hết hạn đăng ký và v.v.

Tập tin đã được ký số, vì vậy không thay đổi tập tin. Ngay cả việc thêm một dòng ngắt bổ sung vào tập tin cũng sẽ vô hiệu hóa nó.

{{% /alert %}}

{{% alert color="primary" %}}

Bạn cần đặt giấy phép:

* chỉ một lần trong mỗi miền ứng dụng
* trước khi sử dụng bất kỳ Aspose.Words lớp nào khác

{{% /alert %}}

{{% alert color="primary" %}}

Bạn có thể tìm thấy thông tin giá cả trên trang [Thông tin về giá cả] (https://purchase.aspose.com/pricing/words/family/).

{{% /alert %}}

### Bảo vệ Giấy phép Mua của bạn

Sau khi mua một bản quyền, bạn cần đọc cẩn thận thông tin trên trang [Bảo vệ bản quyền đã mua của bạn](https://purchase.aspose.com/orders/protecting-your-license-file) để bảo vệ tập tin bản quyền của bạn. Vui lòng lưu ý rằng trang này chỉ có thể xem được nếu bạn có giấy phép trả phí.

### Tùy chọn cấp phép

Các giấy phép có thể được áp dụng từ các vị trí khác nhau:

* Đường dẫn rõ ràng
* Tài nguyên được nhúng
* Là một giấy phép có phí – một cơ chế cấp phép mới

#### Đang tải tập tin giấy phép

Trong Aspose.Words cho Android trên Java, giấy phép có thể được nhúng [như một tài nguyên] hoặc tải từ một luồng:

1. Đặt tập tin giấy phép ở bất kỳ vị trí nào trên **/mnt/sdcard/**.
1. Tạo một luồng mà tham chiếu đến tập tin.
1. Chạy dòng (chứa tập tin cấp phép) qua phương thức 'SetLicense'.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

Áp dụng một Giấy phép từ Tài nguyên Nhúng. Để truy cập vào giấy phép như là một tài nguyên bởi tên từ một Android tệp gói:

1. Thêm tập tin giấy phép như một tài nguyên vào thư mục **res/raw** của ứng dụng của bạn.
   Tập tin cấp phép nên hiển thị trong thư mục **res/raw**
1. Truy cập/tải giấy phép từ tài nguyên với đoạn mã mẫu sau.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Áp dụng Giấy phép theo Yêu cầu

Aspose.Words cho phép nhà phát triển áp dụng khóa có giới hạn. Đó là một cơ chế cấp phép mới. Cơ chế cấp phép mới sẽ được sử dụng cùng với phương pháp cấp phép hiện có. Những khách hàng muốn được tính phí dựa trên việc sử dụng các tính năng API có thể dùng giấy phép tính từng lần.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### Thay đổi tên tập tin giấy phép

Tên tệp giấy phép không cần phải là '{0}.{1}.{2}.lic}'. Bạn có thể đổi tên nó thành gì tùy thích và sử dụng tên đó khi gọi `License.SetLicense`.

### Lỗi - Không thể tìm thấy tên tập tin giấy phép

Khi bạn tải xuống một giấy phép mà bạn đã mua, tập tin cấp phép được đặt tên theo mặc định là **Aspose.Words.Android.Java.lic**. Tập tin giấy phép được tải xuống thông qua trình duyệt của bạn và một số trình duyệt nhận ra tập tin giấy phép như là XML và thêm một phần mở rộng .xml vào tên. Tập tin đã tải xuống trở thành **Aspose.Words.Android.Java.lic.XML**.

Khi Microsoft Windows được cấu hình để ẩn phần mở rộng của các loại tập tin quen thuộc (thật không may điều này là mặc định trong hầu hết các lần cài đặt Windows), tệp giấy phép được liệt kê như **Aspose.Words.Android.Java.lic** trong trình khám phá Windows. Nó trông giống như tên tập tin mong đợi. Nếu bạn gọi `License.SetLicense` và truyền 'Aspose.Words.Android.Java.lic', bạn sẽ thấy một ngoại lệ vì không có tệp nào như vậy

Để giải quyết vấn đề, hãy đổi tên tập tin để loại bỏ phần mở rộng .xml vô hình. Chúng tôi đề nghị bạn tắt tùy chọn "ẩn phần mở rộng tệp" trong Microsoft Windows.

## Sử dụng Nhiều Sản phẩm Aspose

Nếu bạn sử dụng nhiều sản phẩm Aspose trong một ứng dụng, ví dụ như Aspose.Words và 'Aspose.Cells', dưới đây là một vài mẹo hữu ích.

Đặt giấy phép cho từng sản phẩm của Aspose riêng.
  Ngay cả khi bạn có một tập tin cấp phép duy nhất cho tất cả các thành phần, ví dụ 'Aspose.Total.Android.Java.lic', bạn vẫn cần gọi phương thức `License.SetLicense` riêng cho từng sản phẩm Aspose.
- Sử dụng tên lớp giấy phép được phân loại đầy đủ.
  Mỗi sản phẩm của Aspose có một lớp "License" trong không gian tên của nó. Ví dụ, " Aspose.Words có com.aspose.words.License và 'Aspose.Cells' có com.aspose.cells.License lớp". Sử dụng tên lớp toàn phần cho phép bạn tránh nhầm lẫn về loại giấy phép nào được áp dụng cho sản phẩm nào.
