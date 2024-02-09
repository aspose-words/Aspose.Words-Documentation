---
title: Làm việc với Phông chữ trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với phông chữ
linktitle: Làm việc với phông chữ
description: "Định dạng phông chữ chi tiết bằng C#. Dấu nhấn mạnh trong C#. Nhận khoảng cách dòng phông chữ bằng C#."
type: docs
weight: 230
url: /vi/net/working-with-fonts/
---

Phông chữ là một tập hợp các ký tự có kích thước, màu sắc và kiểu dáng nhất định. Aspose.Words cho phép bạn làm việc với các phông chữ bằng cách sử dụng không gian tên [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) và lớp [Font](https://reference.aspose.com/words/net/aspose.words/font/).

## Định dạng phông chữ

Định dạng phông chữ hiện tại được thể hiện bằng đối tượng **Font** được thuộc tính [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) trả về. Lớp **Font** chứa nhiều thuộc tính phông chữ khác nhau, sao chép các thuộc tính có sẵn trong Microsoft Word.

Ví dụ mã sau đây cho thấy cách đặt định dạng phông chữ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

Thuộc tính điền cũng có sẵn cho phông chữ để đặt định dạng điền văn bản. Điều này cho phép thay đổi, chẳng hạn như màu nền trước hoặc độ trong suốt của phần tô văn bản.

## Lấy khoảng cách dòng phông chữ

Khoảng cách dòng phông chữ là khoảng cách theo chiều dọc giữa các đường cơ sở của hai dòng văn bản liên tiếp. Vì vậy, khoảng cách dòng bao gồm khoảng trống giữa các dòng cùng với chiều cao của ký tự.

Thuộc tính [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/) đã được đưa vào lớp **Font** để lấy giá trị này, như trong ví dụ bên dưới:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Dấu nhấn mạnh phông chữ

Một số ngôn ngữ Đông Á sử dụng dấu nhấn mạnh đặc biệt để biểu thị sự nhấn mạnh. Lớp **Font** cung cấp thuộc tính [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) để lấy hoặc đặt các giá trị liệt kê [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/emphasismark/) sẽ được áp dụng khi định dạng.

Ví dụ mã sau đây cho biết cách đặt thuộc tính **EphasisMark**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
