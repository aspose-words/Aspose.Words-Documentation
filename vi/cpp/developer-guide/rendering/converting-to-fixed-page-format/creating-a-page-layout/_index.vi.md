---
title: Tạo Bố Cục Trang trong C++
second_title: Aspose.Words cho C++
articleTitle: Tạo Bố Cục Trang
linktitle: Tạo Bố Cục Trang
description: "Tạo bố cục trang có thể là một thủ tục tốn kém. Aspose.Words sẽ chỉ tạo bố cục trang khi cần thiết: hiển thị các trang tài liệu, lấy giá trị trường, xuất tài liệu sang HTML, v. v."
type: docs
weight: 10
url: /vi/cpp/creating-a-page-layout/
---

Tạo bố cục trang có thể là một thủ tục tốn kém, cả về tốc độ và bộ nhớ. Điều này là do một số lý do:

- Tài liệu có thể có một lượng lớn nội dung, có thể cần được hiển thị trên hàng nghìn trang. Hình dạng của mọi đối tượng trên mỗi trang sẽ cần được mô tả, tiêu tốn tài nguyên bộ nhớ.
- Tài liệu có thể có nhiều quy tắc, đặt các ràng buộc về hình học. Thời gian tính toán đáng kể có thể được chi tiêu, đảm bảo mọi ràng buộc được thỏa mãn.
- Một số tính năng tài liệu, ví dụ: trường `NUMPAGES`, tạo phụ thuộc đệ quy cho các giá trị thuộc tính trong tương lai, không có sẵn tại thời điểm tính toán. Điều này dẫn đến các phép tính lặp đi lặp lại và cộng lại trong thời gian tính toán.

Do những lý do nói trên, Aspose.Words sẽ chỉ tạo bố cục trang khi cần thiết. Một lý do điển hình cho điều này sẽ là yêu cầu hiển thị các trang tài liệu hoặc để có được giá trị trường phụ thuộc vào thông tin có sẵn trong bố cục trang. Một lý do ít rõ ràng hơn có thể là xuất tài liệu sang HTML. Mặc dù HTML không phải là định dạng trang cố định và nó không mô tả hình học của các đối tượng nội dung, nó vẫn hỗ trợ hình ảnh. Những hình ảnh như vậy có thể ở dạng hình dạng được tạo trong Microsoft Word với một văn bản bên trong chúng. Ví dụ: biểu đồ có nhãn trục có thể được xuất thành HTML dưới dạng hình ảnh, nhưng trước khi điều này có thể được thực hiện Aspose.Words cần hiển thị hình ảnh đó và do đó cần biết nơi hiển thị nhãn. Xem ví dụ biểu đồ bên dưới:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## Tính Chất Phi Hình Học

Ngoài việc xử lý thông tin hình học, bố cục trang cũng chịu trách nhiệm tính toán màu sắc và kiểu đường viền. Trong Microsoft Word, màu văn bản có thể được chỉ định là tự động, ngụ ý rằng lựa chọn màu phải dựa trên màu tô bóng của ô hoặc đoạn văn hoặc dựa trên màu của trang, nơi văn bản xuất hiện.

Bố cục trang tính toán nơi văn bản sẽ xuất hiện và nội dung nào sẽ được hiển thị phía sau nó, cho phép tính màu. Có các tính toán cụ thể khác được thực hiện bởi bố cục trang. Ví dụ: đường viền ngang trong bảng phụ thuộc vào việc một hàng bảng có cuối cùng trong một cột văn bản hay không và liệu nó có bị hỏng trên các cột hay không. Nếu một hàng được hiển thị cuối cùng trong một cột, đường viền dưới cùng được sử dụng thay vì ngang.

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

Trong Aspose.Words, người dùng có thể yêu cầu xây dựng bố cục trang mới hay cập nhật bố cục hiện có. Cả hai điều này có thể được thực hiện bằng phương thức [UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/), được cung cấp bởi lớp [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Nếu bố cục trang không tồn tại, nhưng cần có nó (ví dụ: khi tài liệu được xuất sang định dạng trang cố định), Aspose.Words sẽ tự động gọi phương thức này. Tuy nhiên, nếu bố cục trang đã tồn tại, Aspose.Words sẽ sử dụng bố cục hiện có, để tránh tiêu thụ các tài nguyên cần thiết để cập nhật nó. Trong trường hợp này, người dùng cần gọi phương thức `UpdatePageLayout`, để đảm bảo rằng bố cục trang được cập nhật với mô hình tài liệu.

## Cấu Trúc Động

Quá trình tạo bố cục trang bao gồm các bước sau:

- *Conversion* – liệt kê nội dung của mô hình tài liệu và chuẩn bị các đối tượng bố cục tương ứng.
- *Build* – sắp xếp các đối tượng bố cục để thể hiện nội dung của tài liệu trên các trang.
- *Reflow* – cập nhật cách sắp xếp đối tượng để đáp ứng các ràng buộc hình học.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* – một bước bắt buộc nếu tài liệu chứa các hình dạng có nội dung văn bản lồng nhau.

Lưu ý rằng bố cục trang là một cấu trúc động, có thể được xây dựng lại một phần. Điều này đặc biệt cần thiết khi không thể tính toán các giá trị trường mà không xây dựng lại cấu trúc bố cục tài liệu. Trường có thể tham chiếu vị trí của một đối tượng trên một trang, đồng thời, giá trị trường cũng được hiển thị trên trang, ảnh hưởng đến vị trí của đối tượng được tham chiếu. Bố cục trang không thể được xây dựng trong một lần, vì các giá trị trường có thể chưa khả dụng tại thời điểm định vị trên một trang.

Xem xét kịch bản điển hình khi trường `NUMPAGES` xuất hiện ở chân trang đầu tiên trong tài liệu. Giá trị của trường này là tổng số trang. Để định vị trường trên một trang, giá trị của nó nên được biết. Nếu chỉ trang đầu tiên hiện đang được xây dựng thì tổng số trang vẫn chưa được biết. Trong trường hợp này, bố cục trang phải sử dụng giá trị mặc định và sau đó quay lại trường đó và thay đổi giá trị của nó theo các tính toán thực tế. Tuy nhiên, việc thay đổi giá trị trường có thể ảnh hưởng đến nội dung tài liệu khác trên một trang và cuối cùng khiến một trang mới được thêm vào hoặc một trang hiện có bị xóa, do đó làm cho giá trị được tính toán đã lỗi thời. Vấn đề này có thể được giải quyết bằng cách làm cho nó có thể cập nhật bố cục trang hiện có.

Khi tạo bố cục, cũng có thể thiết lập các thuộc tính [LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/) ảnh hưởng đến đầu ra của tài liệu trên các trang.