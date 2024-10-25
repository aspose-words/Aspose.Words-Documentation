---
title: Làm việc với Phông chữ trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc Với Phông Chữ
linktitle: Làm việc Với Phông Chữ
description: "Định dạng phông chữ chi tiết bằng cách sử dụng C++."
type: docs
weight: 230
url: /vi/cpp/working-with-fonts/
---

Phông chữ là một tập hợp các ký tự có kích thước, màu sắc và thiết kế nhất định. Aspose.Words cho phép bạn làm việc với các phông chữ bằng cách sử dụng không gian tên [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) và lớp [Font](https://reference.aspose.com/words/cpp/aspose.words/font/).

## Định Dạng Phông Chữ

Định dạng phông chữ hiện tại được biểu thị bằng đối tượng **Font** được trả về bởi thuộc tính [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/). Lớp **Font** chứa nhiều thuộc tính phông chữ, sao chép các thuộc tính có sẵn trong Microsoft Word.

Ví dụ mã sau đây cho thấy cách đặt định dạng phông chữ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

Điền thuộc tính bây giờ cũng có sẵn cho phông chữ để thiết lập định dạng điền văn bản. Nó cung cấp khả năng thay đổi, ví dụ, màu nền trước hoặc độ trong suốt của văn bản điền.

## Nhận Khoảng Cách Dòng Chữ

Khoảng cách dòng phông chữ là khoảng cách dọc giữa các đường cơ sở của hai dòng văn bản liên tiếp. Vì vậy, khoảng cách dòng bao gồm khoảng trống giữa các dòng cùng với chiều cao của chính ký tự.

Thuộc tính [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) đã được giới thiệu với lớp **Font** để có được giá trị này, như được hiển thị trong ví dụ dưới đây:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Font EmphasisMark

Một số Ngôn ngữ Đông Á sử dụng một dấu nhấn mạnh đặc biệt để chỉ ra một sự nhấn mạnh. Lớp **Font** cung cấp thuộc tính [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) để lấy hoặc đặt các giá trị liệt kê `EmphasisMark` được áp dụng khi định dạng.

Ví dụ mã sau đây cho thấy cách đặt thuộc tính **EphasisMark**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
