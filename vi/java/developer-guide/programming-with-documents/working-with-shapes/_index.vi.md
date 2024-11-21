---
title: Làm việc với các hình dạng trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với hình dạng
linktitle: Làm việc với hình dạng
type: docs
description: "Giới thiệu ngôn ngữ đánh dấu hình dạng, tạo các hình dạng khác nhau bằng Java."
weight: 280
url: /vi/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Mục này thảo luận về cách làm việc với các hình dạng một cách lập trình bằng Aspose.Words.

Các hình dạng trong Aspose.Words đại diện cho một đối tượng trong lớp vẽ, chẳng hạn như một AutoShape, hộp văn bản, tự do, đối tượng OLE, điều khiển ActiveX hoặc ảnh. Một tài liệu Word có thể chứa một hoặc nhiều hình dạng khác nhau. Các hình dạng của tài liệu được đại diện bởi lớp [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/).

## Chèn hình dạng bằng Trình xây dựng tài liệu

Bạn có thể chèn hình dạng inline với loại và kích thước được chỉ định và hình dạng thả nổi tự do với vị trí, kích thước và kiểu bọc văn bản được chỉ định vào một tài liệu bằng phương pháp [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double). Phương pháp **InsertShape** cho phép chèn hình dạng DML vào mô hình tài liệu. Tài liệu phải được lưu ở định dạng hỗ trợ hình dạng DML, nếu không thì các nút sẽ được chuyển đổi thành hình dạng VML khi lưu tài liệu.

Mã ví dụ sau cho thấy cách chèn các loại hình dạng này vào tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Cài đặt Tỷ lệ khung hình khóa

Sử dụng Aspose.Words bạn có thể chỉ định xem tỷ số khung hình có bị khóa hay không thông qua thuộc tính [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked).

Đoạn mã ví dụ sau cho thấy cách làm việc với thuộc tính **AspectRatioLocked**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Đặt bố cục hình dạng trong ô

Bạn cũng có thể chỉ định xem hình dạng có được hiển thị bên trong bảng hay bên ngoài nó bằng thuộc tính [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell).

Ví dụ mã sau cho thấy cách làm việc với thuộc tính **IsLayoutInCell**":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Thêm Góc Lấy bớt

Bạn có thể tạo một hình chữ nhật góc lồi bằng cách sử dụng Aspose.Words. Loại hình dạng là: *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* và *DiagonalCornersRounded.*

Hình dạng DML được tạo ra bằng phương pháp **InsertShape** với các kiểu hình dạng này. Những kiểu này không thể được dùng để tạo ra hình dạng VML. Việc cố gắng tạo hình bằng cách sử dụng công cụ xây dựng công cộng của lớp "Shape" sẽ gây ra ngoại lệ "NotSupportedException.

Ví dụ mã sau cho thấy cách chèn những hình dạng như vậy vào tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Lấy Điểm Giới hạn Hình dạng Thực tế

Sử dụng Aspose.Words API, bạn có thể nhận được vị trí và kích thước của khối chứa hình dạng trong điểm, tương đối với điểm neo của hình dạng cao nhất. Để làm điều này, hãy dùng thuộc tính [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints).

Ví dụ mã sau cho thấy cách làm việc với thuộc tính **BoundsInPoints**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Chỉ định Cột neo dọc

Bạn có thể chỉ định căn chỉnh văn bản theo chiều dọc bên trong một hình dạng bằng thuộc tính [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor).

Mảnh mã ví dụ sau cho thấy cách làm việc với thuộc tính **VerticalAnchor**:"

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Tìm hình dạng SmartArt

Aspose.Words cũng cho phép phát hiện nếu hình dạng có `SmartArt` đối tượng. Để làm điều này hãy sử dụng tính năng [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt).

Mẫu mã sau cho thấy cách làm việc với thuộc tính **HasSmartArt** như thế nào:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Định dạng Đường ngang

Bạn có thể chèn hình dạng quy tắc ngang vào tài liệu bằng cách sử dụng [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) phương pháp.

Aspose.Words API cung cấp [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) thuộc tính để truy cập vào các thuộc tính của hình dạng thanh ngang. Lớp [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) cung cấp các thuộc tính cơ bản như Chiều cao, Màu sắc, Không có bóng tối v.v... để định dạng một quy tắc ngang.

Cái ví dụ mã sau cho thấy cách thiết lập **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
