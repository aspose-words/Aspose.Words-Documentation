---
title: Thao tác phông Chữ Và Các Vấn đề Về Hiệu suất trong C++
second_title: Aspose.Words cho C++
articleTitle: Các Vấn đề Về Thao tác phông chữ và Hiệu suất
linktitle: Các Vấn đề Về Thao tác phông chữ và Hiệu suất
description: "Aspose.Words cho C++ sử dụng tên đầy đủ phông chữ, họ, phiên bản, kiểu để tìm dữ liệu phông chữ cần thiết hoặc thay thế phù hợp cho phông chữ được yêu cầu. FontSettings cho phép bạn tăng tốc độ tải tài liệu."
type: docs
weight: 11
url: /vi/cpp/font-manipulation-and-performance-issues/
---

Tất cả các cơ chế thao tác phông chữ có sẵn được chứa trong lớp [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings). Lớp này chịu trách nhiệm tìm nạp phông chữ trong các nguồn phông chữ được xác định cũng như cho quá trình Thay Thế Phông chữ, như được mô tả dưới đây.

## Phân tích Các Phông Chữ Đã Giải quyết

Phông chữ được phân tích cú pháp trong một số bước:

1. Lấy thông tin cho phông chữ, giải quyết từ tất cả các phông chữ có sẵn.
1. Phân tích các phông chữ đã giải quyết để có được glyphs và số liệu có sẵn (ngang và dọc).
1. Phân tích các phông chữ đã giải quyết để nhúng và đặt con.

Khi Aspose.Words gặp một phông chữ trong tài liệu lần đầu tiên, nó cố gắng lấy thông tin phông chữ cơ bản, chẳng hạn như tên đầy đủ phông chữ, họ, phiên bản, kiểu, từ các tệp phông chữ nằm trong mỗi nguồn phông chữ. Sau khi tất cả các phông chữ được truy xuất, Aspose.Words sử dụng các chi tiết này để tìm dữ liệu phông chữ cần thiết hoặc thay thế phù hợp cho phông chữ được yêu cầu.

## Vấn Đề Hiệu Suất Khi Thay Thế Phông Chữ

Vì quy trình được mô tả ở trên tốn nhiều thời gian, nó có thể ảnh hưởng tiêu cực đến hiệu suất ứng dụng khi ra mắt lần đầu tiên. Tuy nhiên, mỗi phiên bản của **FontSettings** có bộ đệm riêng, điều này có thể làm giảm thời gian xử lý của các tài liệu tiếp theo. Ví dụ: bạn có thể chia sẻ một thể hiện của lớp **FontSettings** giữa các tài liệu khác nhau, cho phép bạn tăng tốc độ tải tài liệu. Ví dụ sau đây chứng minh điều này:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

Trong trường hợp khi **FontSettings** không được xác định rõ ràng, Aspose.Words sử dụng cá thể **FontSettings** mặc định. Trường hợp này cũng được tự động chia sẻ giữa các tài liệu và có thể được trích xuất như sau:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## Sử Dụng Cá Thể FontSettings Mặc Định

Nếu bạn chắc chắn rằng tất cả các tài liệu xử lý yêu cầu cài đặt phông chữ giống nhau, thì bạn nên thiết lập và sử dụng cá thể **FontSettings** mặc định. Giả sử rằng bạn cần sử dụng cùng một nguồn phông chữ cho tất cả các tài liệu của mình. Trong trường hợp này, bạn chỉ có thể sửa đổi phiên bản mặc định như sau:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

Tùy chỉnh **FontSettings** có mức độ ưu tiên cao hơn phiên bản mặc định.

{{% /alert %}}