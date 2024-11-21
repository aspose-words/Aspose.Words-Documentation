---
title: Làm việc với Phông chữ trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với phông chữ
linktitle: Làm việc với phông chữ
description: "Tùy chỉnh cài đặt phông chữ bằng Python."
type: docs
weight: 230
url: /vi/python-net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Phông chữ là một tập hợp các ký tự có kích thước, màu sắc và kiểu dáng nhất định. Aspose.Words cho phép bạn làm việc với các phông chữ bằng mô-đun [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) và lớp [Font](https://reference.aspose.com/words/python-net/aspose.words/font/).

## Định dạng phông chữ

Định dạng phông chữ hiện tại được thể hiện bằng đối tượng **Font** được thuộc tính [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) trả về. Lớp **Font** chứa nhiều thuộc tính phông chữ khác nhau, sao chép các thuộc tính có sẵn trong Microsoft Word.

Ví dụ mã sau đây cho thấy cách đặt định dạng phông chữ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Các thuộc tính điền hiện cũng có sẵn cho phông chữ để đặt định dạng điền cho văn bản. Nó cung cấp khả năng thay đổi, chẳng hạn như màu nền trước hoặc độ trong suốt của phần điền văn bản.

## Lấy khoảng cách dòng phông chữ

Khoảng cách dòng phông chữ là khoảng cách theo chiều dọc giữa các đường cơ sở của hai dòng văn bản liên tiếp. Vì vậy, khoảng cách dòng bao gồm khoảng trống giữa các dòng cùng với chiều cao của ký tự.

Thuộc tính [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) được giới thiệu trong lớp [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) để nhận giá trị này như trong ví dụ dưới đây:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Dấu nhấn mạnh phông chữ

Một số ngôn ngữ Đông Á sử dụng dấu nhấn mạnh đặc biệt để biểu thị sự nhấn mạnh. Lớp **Font** cung cấp thuộc tính [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) để lấy hoặc đặt các giá trị liệt kê [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) sẽ được áp dụng trong định dạng.

Ví dụ mã sau đây cho biết cách đặt thuộc tính **EphasisMark**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
