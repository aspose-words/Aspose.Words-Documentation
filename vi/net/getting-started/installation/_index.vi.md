---
title: Cài đặt
second_title: Aspose.Words cho .NET
articleTitle: Cài đặt
linktitle: Cài đặt
description: "Cài đặt Aspose.Words cho .NET bằng các công cụ Visual Studio như Manage NuGet Packages hoặc Package Manager Console và trình cài đặt MSI. Sử dụng quyền Full Trust được đặt trong C#."
type: docs
weight: 10
url: /vi/net/installation/
timestamp: 2024-01-27-14-07-04
---

Đảm bảo máy của bạn đáp ứng [yêu cầu hệ thống](/words/vi/net/system-requirements/) trước khi bạn bắt đầu.

Bài viết này giải thích cách cài đặt Aspose.Words cho .NET trên máy tính của bạn.

## Cài đặt hoặc cập nhật Aspose.Words cho .NET bằng Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet là cách dễ nhất để tải xuống và cài đặt [Aspose.Words cho .NET](https://www.nuget.org/packages/Aspose.Words/) API. Để làm điều này, hãy làm theo các bước sau:

1. Mở *Microsoft Visual Studio* và *Manage NuGet Packages* từ menu để mở trình quản lý gói
2. Tìm kiếm "aspose" hoặc "aspose.words" để tìm Aspose API mong muốn<br>
   <img src="/words/net/installation/aspose-words-nuget.png" alt="giả định-từ-nuget" style="width:800px"/>
3. Chọn Aspose API mong muốn và nhấp vào "Cài đặt"

API đã chọn sẽ được tải xuống và tham chiếu trong dự án của bạn.

Bạn cũng có thể cập nhật Aspose.Words cho .NET lên phiên bản mong muốn bằng cách sử dụng *Manage NuGet Packages*.

## Cài đặt hoặc cập nhật Aspose.Words bằng Package Manager Console

Bạn cũng có thể cài đặt hoặc cập nhật Aspose.Words cho .NET API bằng cách sử dụng *Package Manager Console*. Để làm điều này, hãy làm theo các bước sau:

1. Mở *Microsoft Visual Studio* và *Package Manager Console* từ menu để mở bảng điều khiển quản lý gói<br>
   <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2. Gõ lệnh `Install-Package Aspose.Words` và nhấn Enter để cài đặt bản phát hành đầy đủ mới nhất vào ứng dụng của bạn<br>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br>
   Ngoài ra, {{% alert color="primary" %}}, bạn có thể thêm hậu tố `-prerelease` vào lệnh để chỉ định rằng bản phát hành mới nhất, bao gồm cả các hotfix, cũng phải được cài đặt.{{% /alert %}}
3. Sau khi tải xuống, bạn sẽ thấy thông báo xác nhận<br>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/><br>
   {{% alert color="primary" %}}Nếu bạn không quen với [Đề nghị EULA](https://about.aspose.com/legal/eula/), bạn nên đọc giấy phép được tham chiếu trong URL.{{% /alert %}}
4. Bây giờ bạn có thể thấy rằng Aspose.Words đã được thêm và tham chiếu thành công trong ứng dụng của bạn cho bạn<br>
   <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-words-nuget-tài liệu tham khảo" style="width:400px"/>

Trong *Package Manager Console*, bạn cũng có thể sử dụng lệnh `Update-Package Aspose.Words` để kiểm tra các bản cập nhật cho gói Aspose.Words và cài đặt chúng nếu có. Bạn cũng có thể thêm hậu tố `-prerelease` để cập nhật bản phát hành mới nhất.

## Cài đặt Aspose.Words cho .NET bằng Trình cài đặt

Aspose.Words cho .NET có thể được cài đặt bằng cách tải xuống trực tiếp trình cài đặt MSI từ [phần tải xuống](https://releases.aspose.com/words/).

{{% alert color="primary" %}}

Bạn phải đăng nhập để tải xuống trình cài đặt. Nếu bạn chưa đăng ký, bạn có thể đăng ký miễn phí.

{{% /alert %}}

Để cài đặt Aspose.Words cho .NET, hãy làm theo các bước sau:

1. Tải xuống `Aspose.Words_{LatestVersion}.msi` từ [phần tải xuống](https://releases.aspose.com/words/)
2. Nhấp đúp vào tệp đã tải xuống, từ đó khởi động trình hướng dẫn thiết lập, làm theo hướng dẫn của trình hướng dẫn thiết lập<br>
   <img src="/words/net/installation/aspose-words-setup-1.png" alt="giả định-words-setup-1" style="width:500px"/>
3. Khi trình hướng dẫn thiết lập hoàn tất quá trình cài đặt, các tệp được yêu cầu sẽ có sẵn trong thư mục tại đường dẫn thư mục được cung cấp<br>
   <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="giả định-words-setup-4" style="width:500px"/>
4. Mở giải pháp/dự án của bạn trong Visual Studio
5. Nhấp chuột phải vào dự án của bạn trong *Solution Explorer* và thêm tham chiếu vào các tập hợp đã cài đặt
6. Các tập hợp được cài đặt Aspose.Words cho .NET sẽ xuất hiện trong các phần mở rộng trong phần Tập hợp – chỉ cần chọn thành phần DLL được yêu cầu<br>
   <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7. Cuối cùng, nhấn OK

## Những điều cần cân nhắc khi chạy trong môi trường Server dùng chung

Tất cả các thành phần Aspose .NET được khuyến nghị chạy với bộ quyền *Full Trust*. Điều này là do thành phần Aspose .NET đôi khi cần quyền truy cập vào cài đặt đăng ký và tệp nằm ở những nơi không phải thư mục ảo, chẳng hạn như đọc phông chữ. Hơn nữa, các thành phần `Aspose.NET` dựa trên các lớp hệ thống .NET cốt lõi, một số trong đó cũng yêu cầu quyền *Full Trust* để chạy trong một số trường hợp.

Các nhà cung cấp dịch vụ Internet lưu trữ nhiều ứng dụng từ các công ty khác nhau hầu hết đều thực thi mức độ bảo mật *Độ tin cậy trung bình*. Trong trường hợp .NET 2.0, mức bảo mật như vậy có thể áp đặt các ràng buộc sau, điều này có thể ảnh hưởng đến khả năng hoạt động bình thường của Aspose.Words:

- **RegistryPermission** không có sẵn. Điều này có nghĩa là bạn không thể truy cập sổ đăng ký, sổ đăng ký này được yêu cầu để liệt kê các phông chữ đã cài đặt khi hiển thị tài liệu.
- **FileIOPermission** bị hạn chế. Điều này có nghĩa là bạn chỉ có thể truy cập các tệp trong hệ thống phân cấp thư mục ảo của ứng dụng. Điều này cũng có nghĩa là không thể đọc được phông chữ trong khi xuất.

Vì những lý do nêu trên, bạn nên chạy Aspose.Words với quyền Full Trust. Bạn có thể thấy rằng một số tính năng của thư viện sẽ hoạt động khi thực hiện các tác vụ khác nhau với độ tin cậy Trung bình và một số tính năng sẽ không hoạt động, chẳng hạn như hiển thị. Điều này có thể liên quan đến các cuộc gọi xử lý ảnh GDI+.
