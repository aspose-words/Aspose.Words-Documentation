---
title: yêu cầu hệ thống
second_title: Aspose.Words cho Python via .NET
articleTitle: yêu cầu hệ thống
linktitle: yêu cầu hệ thống
description: "Trước khi bạn bắt đầu làm việc với Aspose.Words cho Python via .NET, hãy đảm bảo rằng bạn đáp ứng các yêu cầu về hệ điều hành, nền tảng và môi trường để các hoạt động trên thiết bị của bạn được tính toán hợp lý."
type: docs
weight: 50
url: /vi/python-net/system-requirements/
---

Aspose.Words cho Python via .NET không yêu cầu cài đặt bất kỳ sản phẩm của bên thứ ba nào như Microsoft Word. Bản thân Aspose.Words là một công cụ để tạo, sửa đổi, chuyển đổi và hiển thị tài liệu ở nhiều định dạng khác nhau, bao gồm cả định dạng tài liệu Microsoft Word.

## hệ điều hành được hỗ trợ

Aspose.Words cho Python via .NET hỗ trợ mọi hệ điều hành 64 bit hoặc 32 bit có cài đặt Python 3.5 trở lên.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">Hệ điều hành</td>
        <td style="font-weight: bold; width:400px">Phiên bản</td>
    </tr>
    <tr>
        <td>Microsoft Windows</td>
        <td><ul>
            <li>Windows 2003 Server (x64, x86)</li>
            <li>Windows 2008 Server (x64, x86)</li>
            <li>Windows 2012 Server (x64, x86)</li>
            <li>Windows 2012 R2 Server (x64, x86)</li>
            <li>Windows 2016 Server (x64, x86)</li>
            <li>Windows 2019 Server (x64, x86)</li>
            <li>Windows XP (x64, x86)</li>
            <li>Windows Vista (x64, x86)</li>
            <li>Windows 7 (x64, x86)</li>
            <li>Windows 8, 8.1 (x64, x86)</li>
            <li>Windows 10 (x64, x86)</li>
        </ul></td>
    </tr>
    <tr>
        <td>hệ điều hành Mac</td>
        <td><ul>
            <li>macOS-x86_64: 10.14 trở lên</li>
            <li>macOS-arm64: 11.0 trở lên</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>mởSUSE</li>
            <li>CentOS</li>
            <li>và những người khác</li>
        </ul></td>
    </tr>
</table>

## Yêu cầu hệ thống đối với nền tảng Target Linux và macOS

- Thư viện thời gian chạy GCC-6 (hoặc mới hơn).

- Sự phụ thuộc của .NET Core Runtime. Bản thân việc cài đặt .NET Core Runtime là bắt buộc phải có `NOT`.

- Đối với Python 3.5-3.7: Cần có bản `pymalloc` của Python. Tùy chọn xây dựng `--with-pymalloc` Python được bật theo mặc định. Thông thường, bản dựng `pymalloc` của Python được đánh dấu bằng hậu tố `m` trong tên tệp.

- Thư viện Python chia sẻ `libpython`. Tùy chọn xây dựng `--enable-shared` Python bị tắt theo mặc định, một số bản phân phối Python không chứa thư viện chia sẻ `libpython`. Đối với một số nền tảng linux, thư viện chia sẻ `libpython` có thể được cài đặt bằng trình quản lý gói, ví dụ: `sudo apt-get install libpython3.7`. Vấn đề phổ biến là thư viện `libpython` được cài đặt ở vị trí khác với vị trí hệ thống tiêu chuẩn dành cho thư viện dùng chung. Sự cố có thể được khắc phục bằng cách sử dụng tùy chọn xây dựng Python để đặt đường dẫn thư viện thay thế khi biên dịch Python hoặc khắc phục bằng cách tạo liên kết tượng trưng đến tệp thư viện `libpython` ở vị trí tiêu chuẩn hệ thống cho thư viện dùng chung. Thông thường, tên tệp thư viện chia sẻ `libpython` là `libpythonX.Ym.so.1.0` cho Python 3.5-3.7 hoặc `libpythonX.Y.so.1.0` cho Python 3.8 trở lên (ví dụ: libpython3.7m.so.1.0, libpython3.9.so.1.0)
