---
title: Làm thế nào Để Nhận Ra Rằng Phông Chữ đã Được Thay thế trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm Thế nào Để Nhận Ra Rằng Phông Chữ Đã Được Thay thế
linktitle: Làm Thế nào Để Nhận Ra Rằng Phông Chữ Đã Được Thay thế
description: "Nếu bạn không chắc tại sao bố cục của tài liệu đã thay đổi hoặc tại sao một phông chữ nhất định trông không như mong đợi, các thông báo cảnh báo thay thế phông chữ có thể hữu ích."
type: docs
weight: 13
url: /vi/cpp/how-to-recognize-that-the-font-was-replaced/
---

Đôi khi, có thể không rõ tại sao bố cục tài liệu đã thay đổi hoặc tại sao một số phông chữ trông không như mong đợi. Trong những trường hợp như vậy, các thông báo cảnh báo thay thế phông chữ được triển khai bởi giao diện IWarningCallback sẽ được giải cứu. Chúng có loại cảnh báo [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) và định dạng văn bản mô tả tiêu chuẩn, "Phông chữ '<OriginalFont>' chưa được tìm thấy. Thay vào đó, sử dụng phông chữ '<SubstitutionFont>'. Lý do: <Reason>", với những lý do sau:

- "tên thay thế từ tài liệu" – để thay thế bằng [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "thay thế fontconfig" – để thay thế bằng quy tắc cấu hình phông chữ
- "thay thế bảng" – để thay thế theo quy tắc bảng
- "thay thế thông tin phông chữ" – để thay thế bằng quy tắc thông tin phông chữ
- "thay thế phông chữ mặc định" - để thay thế theo quy tắc phông chữ mặc định
- "phông chữ đầu tiên có sẵn" – để thay thế bằng phông chữ đầu tiên có sẵn
