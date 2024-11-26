---
title: Chế độ FIPS
second_title: Aspose.Words cho Java
articleTitle: Chế độ FIPS
linktitle: Chế độ FIPS
description: "Aspose.Words cho Java sử dụng một số thuật toán mã hóa và băm khi xử lý tài liệu để tuân thủ các tiêu chuẩn FIP."
type: docs
weight: 80
url: /vi/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Words sử dụng nhiều thuật toán mã hóa và băm khi xử lý tài liệu và bài viết này mô tả cách nó liên quan đến các tiêu chuẩn NIST.

Các tiêu chuẩn xử lý thông tin liên bang (FIPS) là một tập hợp các tiêu chuẩn được công bố rộng rãi do chính phủ liên bang Hoa Kỳ phát triển để thiết lập các yêu cầu cho nhiều mục đích, chẳng hạn như đảm bảo an ninh máy tính và khả năng tương tác.

## BouncyCastle tới cứu giúp

Aspose.Words cho Java và Aspose.Words cho Android sử dụng Bouncy Castle FIP JAR cho việc mã hóa, giải mã và ký tài liệu. Bộ JAR đã được thiết kế và thực hiện để đáp ứng các yêu cầu cấp độ 1 của NIST 140-2.

FIPS 140-2 là một tiêu chuẩn an ninh máy tính của chính phủ Mỹ được sử dụng để chấp thuận các mô-đun mã hóa. Tiêu chuẩn này quy định các yêu cầu an ninh sẽ được thỏa mãn bởi một mô-đun mã hóa và cung cấp mức độ bảo mật cao nhằm bao phủ một phạm vi ứng dụng và môi trường tiềm năng rộng lớn. Để biết chi tiết thêm về FIPS 140-2, xem [bản xuất bản của NIST](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words cho .NET sử dụng phiên bản Bouncy Castle thông thường mà không có hỗ trợ cho FIPS.

## Chế độ kích hoạt FIPS

Bắt đầu từ phiên bản 18.10 Aspose.Words cho phép làm việc trong hai chế độ: thông thường và FIPS.

Theo mặc định Aspose.Words hoạt động ở chế độ chung, vì vậy không có hạn chế nào đối với việc sử dụng các thuật toán và khóa trong trường hợp này.

Bạn có thể chuyển đổi Aspose.Words từ chế độ chung sang chế độ IPS sử dụng phương pháp sau đây:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Vì lý do an ninh, bạn không thể thay đổi chế độ về chế độ chung tại thời gian chạy.

Và cũng lưu ý rằng Aspose.Words không thể tự động nhận biết được hệ điều hành của bạn ở chế độ FIPS, do đó bạn phải chuyển Aspose.Words sang chế độ FIPS rõ ràng

Sử dụng phương pháp sau để đảm bảo Aspose.Words cho Java là ở chế độ FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Khi chế độ FIPs đang bật, Aspose Words sẽ ngăn bạn sử dụng một số thuật toán mã hóa và khóa với độ dài không được phê duyệt.

Ví dụ, khi cố gắng mở một tài liệu được mã hóa ODT trong khi chế độ FIPS đang hoạt động, bạn có thể thấy ngoại lệ sau đây:

{{% alert color="primary" %}}

UnapprovedSecurityOperationException: Một nỗ lực mở một tập tin ODT sử dụng thuật toán Blowfish. Algoritma này không nằm trong danh sách thuật toán được phê duyệt của NIST.

{{% /alert %}}

Điều này xảy ra vì thuật toán Blowfish không nằm trong danh sách các thuật toán được phê duyệt của NIST.

Một ngoại lệ tương tự có thể xảy ra nếu những chìa khóa có độ dài không phù hợp được sử dụng:

UnapprovedSecurityOperationException: Bạn không thể sử dụng khóa có kích thước 1024 cho RSA trong chế độ FIPS.

Để biết chi tiết về danh sách thuật toán đã được phê duyệt, xem [Hướng dẫn người dùng BouncyCastle](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), "Thuật toán mã hóa (tính đối xứng)".


