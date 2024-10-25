---
title: Làm Thế Nào Để Chạy Các Ví Dụ
second_title: Aspose.Words cho C++
articleTitle: Làm Thế Nào Để Chạy Các Ví Dụ
linktitle: Làm Thế Nào Để Chạy Các Ví Dụ
description: "Tải về Aspose.Words cho C++ ví dụ từ kho GitHub của chúng tôi và tìm hiểu cách chạy chúng để làm quen với các khả năng và tính năng Aspose.Words."
type: docs
weight: 110
url: /vi/cpp/how-to-run-the-examples/
---

Để trở nên quen thuộc hơn với các khả năng và tính năng Aspose.Words, chúng tôi cung cấp các ví dụ có thể được tải xuống từ kho GitHub của chúng tôi, chạy và tìm hiểu chi tiết.

Trong bài viết này, bạn có thể tìm thấy các yêu cầu hệ thống, cũng như thông tin về cách chạy các ví dụ.

## Windows với Nuget Gói

### Yêu cầu phần mềm và Điều kiện tiên quyết

Vui lòng đảm bảo rằng bạn đáp ứng các yêu cầu sau trước khi tải xuống và chạy các ví dụ:

1. Visual Studio Mã, Visual Studio 2022.
2. Đã cài Đặt NuGet Trình Quản lý Gói và phiên bản NuGet API mới nhất cho Visual Studio. (tùy chọn)
3. Đã chọn **nuget.org** tùy chọn trong hộp thoại" Công cụ → Tùy chọn "trong"NuGet Trình Quản lý Gói → Nguồn Gói".
4. Kết nối Internet đang hoạt động để sử dụng Tính năng Khôi phục Gói Tự động `NuGet` trong dự án Ví dụ. Nếu bạn không có kết nối Internet đang hoạt động trên máy mà các ví dụ sẽ được thực thi, hãy làm theo Hướng dẫn từ Windows với Cmake Gói.

### Tải Xuống Và Chạy Các Ví Dụ

Tất cả Aspose.Words cho C++ ví dụ được lưu trữ trên [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Bạn có thể sao chép kho lưu trữ bằng ứng dụng khách GitHub yêu thích của mình hoặc tải xuống [tập tin ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Sau khi nhận được một bản sao của kho lưu trữ, bạn có thể thấy rằng:

- Tất cả các ví dụ được đặt trong thư mục **Examples**.
- Có Visual Studio tệp giải pháp cho C++ được tạo trong Visual Studio 2022.

Để chạy các ví dụ, hãy mở tệp giải pháp trong Visual Studio và xây dựng dự án:

- Đối với các ví dụ **API Reference**, cấu trúc dựa trên tên lớp, đối với các ví dụ **Docs**, nó chủ yếu dựa trên [Nhà Phát Triển Guiled](/words/cpp/developer-guide/) phần tài liệu.
- Trong lần chạy đầu tiên, các phụ thuộc sẽ được tự động tải xuống qua NuGet.
- Thư mục **Data** ở thư mục gốc của **Examples** chứa các tệp đầu vào đã được sử dụng trong các ví dụ.
- Tất cả các ví dụ có thể được chạy như các bài kiểm tra đơn vị.

## Windows với CMake Gói

### Yêu cầu phần mềm và Điều kiện tiên quyết

Vui lòng đảm bảo rằng bạn đáp ứng các yêu cầu sau trước khi tải xuống và chạy các ví dụ:

1. Visual Studio Mã, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. Tải xuống gói CMake mới nhất từ https://downloads.aspose.com/words/cpp

### Tải Xuống Và Chạy Các Ví Dụ

Tất cả Aspose.Words cho C++ ví dụ được lưu trữ trên [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Bạn có thể sao chép kho lưu trữ bằng ứng dụng khách GitHub yêu thích của mình hoặc tải xuống [tập tin ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Đặt các thư mục `Aspose.Words.Cpp` và `CodePorting.Native.Cs2Cpp_*` vào thư mục gốc của một bản sao của kho lưu trữ.

Tất cả các ví dụ được đặt trong thư mục **Examples**.

Để chạy các ví dụ hãy chạy các lệnh sau từ thư mục gốc của một bản sao của kho lưu trữ:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

Giải pháp cho Visual Studio sẽ được tạo trong `Examples\DocsExamples\build`

Để chạy các ví dụ, hãy mở tệp giải pháp trong Visual Studio và xây dựng dự án:

- Đối với các ví dụ **API Reference**, cấu trúc dựa trên tên lớp, đối với các ví dụ **Docs**, nó chủ yếu dựa trên [Nhà Phát Triển Guiled](/words/cpp/developer-guide/) phần tài liệu.
- Thư mục **Data** ở thư mục gốc của **Examples** chứa các tệp đầu vào đã được sử dụng trong các ví dụ.
- Tất cả các ví dụ có thể được chạy như các bài kiểm tra đơn vị.

## Linux

### Yêu cầu phần mềm và Điều kiện tiên quyết

Vui lòng đảm bảo rằng bạn đáp ứng các yêu cầu sau trước khi tải xuống và chạy các ví dụ:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. Tải xuống gói CMake mới nhất từ https://downloads.aspose.com/words/cpp

### Tải Xuống Và Chạy Các Ví Dụ

Tất cả Aspose.Words cho C++ ví dụ được lưu trữ trên [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Bạn có thể sao chép kho lưu trữ bằng ứng dụng khách GitHub yêu thích của mình hoặc tải xuống [tập tin ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Đặt các thư mục `Aspose.Words.Cpp` và `CodePorting.Native.Cs2Cpp_*` vào thư mục gốc của một bản sao của kho lưu trữ.

Tất cả các ví dụ được đặt trong thư mục **Examples**.

Để chạy các ví dụ hãy chạy các lệnh sau từ thư mục gốc của một bản sao của kho lưu trữ:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- Đối với các ví dụ **API Reference**, cấu trúc dựa trên tên lớp, đối với các ví dụ **Docs**, nó chủ yếu dựa trên [Nhà Phát Triển Guiled](/words/cpp/developer-guide/) phần tài liệu.
- Thư mục **Data** ở thư mục gốc của **Examples** chứa các tệp đầu vào đã được sử dụng trong các ví dụ.
- Tất cả các ví dụ có thể được chạy như các bài kiểm tra đơn vị.

{{% alert color="primary" %}}

Xin vui lòng liên hệ với chúng tôi bằng cách sử dụng [Aspose.Words Diễn Đàn Gia Đình Sản Phẩm](https://forum.aspose.com/c/words/8) nếu bạn có bất kỳ vấn đề thiết lập hoặc chạy các ví dụ.

{{% /alert %}}

## Góp Phần Cải Thiện Các Ví Dụ

Nếu bạn muốn thêm hoặc cải thiện một ví dụ, chúng tôi khuyến khích bạn đóng góp cho dự án. Tất cả các ví dụ và các dự án giới thiệu trong kho lưu trữ này là mã nguồn mở và có thể được sử dụng tự do trong các ứng dụng của bạn.

Bạn có thể tách kho lưu trữ, chỉnh sửa mã nguồn và tạo yêu cầu kéo để đóng góp. Chúng tôi sẽ xem xét các thay đổi và đưa chúng vào kho lưu trữ nếu thấy hữu ích.

## Xem Thêm

- [Chi tiết về cách cài đặt NuGet Trình Quản lý Gói](https://docs.microsoft.com/nuget/guides/install-nuget)
