---
title: Aspose.Words Mô Hình Đối tượng Tài liệu (DOM) trong C++
second_title: Aspose.Words cho C++
articleTitle: Aspose.Words Mô Hình Đối Tượng Tài Liệu (DOM)
linktitle: Aspose.Words Mô Hình Đối Tượng Tài Liệu (DOM)
type: docs
description: "Mô Hình đối tượng tài liệu (DOM) là một biểu diễn trong bộ nhớ của Tài liệu Word. Đọc, thao tác và sửa đổi nội dung và định dạng Của Tài liệu Word bằng C++."
weight: 10
url: /vi/cpp/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Mô hình Đối tượng Tài liệu Aspose.Words (DOM) là một biểu diễn trong bộ nhớ của Tài liệu Word. Aspose.Words DOM cho phép bạn lập trình đọc, thao tác và sửa đổi nội dung và định dạng Của Tài liệu Word.

Phần này mô tả các lớp chính của Aspose.Words DOM và các mối quan hệ của chúng. Bằng cách sử dụng các lớp Aspose.Words DOM, bạn có thể có được quyền truy cập lập trình vào các phần tử tài liệu và định dạng.

## Tạo Cây Đối Tượng Tài Liệu {#create-a-document-objects-tree}

Khi một tài liệu được đọc vào Aspose.Words DOM, thì một cây đối tượng được xây dựng và các loại phần tử khác nhau của tài liệu nguồn có các đối tượng cây DOM riêng với các thuộc tính khác nhau.

### Xây Dựng Cây Nút Tài Liệu {#build-document-nodes-tree}

Khi Aspose.Words đọc Tài liệu Word vào bộ nhớ, nó sẽ tạo các đối tượng thuộc các loại khác nhau đại diện cho các thành phần tài liệu khác nhau. Mỗi lần chạy văn bản, đoạn văn, bảng hoặc phần là một nút và thậm chí bản thân tài liệu cũng là một nút. Aspose.Words định nghĩa một lớp cho mọi loại nút tài liệu.

Cây tài liệu trong Aspose.Words theo Mẫu Thiết kế Tổng hợp:

- Tất cả các lớp nút cuối cùng đều xuất phát từ lớp [Node](https://reference.aspose.com/words/cpp/aspose.words/node/), là lớp cơ sở trong Mô hình Đối tượng Tài liệu Aspose.Words.
- Các nút có thể chứa các nút khác, ví dụ, **Section** hoặc **Paragraph**, lấy từ lớp [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/), từ đó bắt nguồn từ lớp **Node**.

Sơ đồ được cung cấp dưới đây cho thấy sự kế thừa giữa các lớp nút của Mô hình Đối tượng Tài liệu Aspose.Words (DOM). Tên của các lớp trừu tượng Được In Nghiêng.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM cũng chứa các lớp không phải nút, chẳng hạn như [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) hoặc [Font](https://reference.aspose.com/words/cpp/aspose.words/font/), được sử dụng để tùy chỉnh giao diện và kiểu trong tài liệu. Các lớp này không được hiển thị trong sơ đồ này là không được kế thừa từ lớp `Node`.

{{% /alert %}}

Hãy xem xét một ví dụ. Hình ảnh sau đây hiển thị tài liệu Microsoft Word với các loại nội dung khác nhau.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

Khi đọc tài liệu trên vào Aspose.Words DOM, cây của các đối tượng được tạo, như trong lược đồ bên dưới.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), và tất cả các hình elip khác trên sơ đồ là Aspose.Words các đối tượng đại diện cho các phần tử của Tài liệu Word.

### Nhận một `Node` Loại {#get-a-node-type}

Mặc dù lớp [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) đủ để phân biệt các nút khác nhau với nhau, Aspose.Words cung cấp liệt kê [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) để đơn giản hóa một số tác vụ API, chẳng hạn như chọn các nút thuộc loại cụ thể.

Loại của mỗi nút có thể được lấy bằng thuộc tính [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/). Thuộc tính này trả về **NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph** và một nút bảng được biểu thị bằng **Table** class returns **NodeType**.**Table**.

Ví dụ sau đây cho thấy cách lấy loại nút bằng cách sử dụng liệt kê **NodeType**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## Điều Hướng Cây Tài Liệu {#document-tree-navigation}

Aspose.Words đại diện cho một tài liệu dưới dạng cây nút, cho phép bạn điều hướng giữa các nút. Phần này mô tả cách khám phá và điều hướng cây tài liệu trong Aspose.Words.

Khi bạn mở tài liệu mẫu, được trình bày trước đó, trong Document Explorer, cây nút xuất hiện chính xác như được biểu diễn trong Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### Mối Quan Hệ Nút Tài Liệu {#document-nodes-relationships}

Các nút trong cây có mối quan hệ giữa chúng:

- Một nút chứa một nút khác là *parent.*
- Nút chứa trong nút cha là *child.* Nút Con của cùng một cha mẹ là *sibling*nút.
- Nút *root* luôn là nút [Document](https://reference.aspose.com/words/cpp/aspose.words/document/).

Các nút có thể chứa các nút khác bắt nguồn từ lớp [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode) và tất cả các nút cuối cùng bắt nguồn từ lớp [Node](https://reference.aspose.com/words/cpp/aspose.words/node/). Hai lớp cơ sở này cung cấp các phương thức và thuộc tính chung cho điều hướng và sửa đổi cấu trúc cây.

Sơ đồ đối tượng UML sau đây hiển thị một số nút của tài liệu mẫu và mối quan hệ của chúng với nhau thông qua các thuộc tính cha, con và anh chị em:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### Tài liệu Là Chủ Sở hữu Nút

Một nút luôn thuộc về một tài liệu cụ thể, ngay cả khi nó vừa được tạo hoặc xóa khỏi cây, bởi vì các cấu trúc toàn tài liệu quan trọng như kiểu và danh sách được lưu trữ trong nút **Document**. Ví dụ: không thể có **Paragraph** mà không có **Document** vì mỗi đoạn có một kiểu được gán được xác định trên toàn cầu cho tài liệu. Quy tắc này được sử dụng khi tạo bất kỳ nút mới nào. Thêm một **Paragraph** mới trực tiếp vào DOM yêu cầu một đối tượng tài liệu được truyền cho hàm tạo.

{{% alert color="primary" %}}

Thuộc tính [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) trả về tài liệu mà nút thuộc về.

{{% /alert %}}

Khi tạo một đoạn mới bằng [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), trình tạo luôn có lớp **Document** được liên kết với nó thông qua thuộc tính [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/).

Ví dụ mã sau đây cho thấy rằng khi tạo bất kỳ nút nào, một tài liệu sẽ sở hữu nút luôn được xác định:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### Nút Cha

Mỗi nút có một cha mẹ được chỉ định bởi thuộc tính [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/). Một nút không có nút cha, nghĩa là **ParentNode** là null, trong các trường hợp sau:

- Nút vừa được tạo và chưa được thêm vào cây.
- Nút đã bị xóa khỏi cây.
- Đây là nút root **Document** luôn có nút cha null.

Bạn có thể xóa một nút khỏi cha mẹ của nó bằng cách gọi phương thức [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/).Ví dụ mã sau đây cho thấy cách truy cập nút cha:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### Các Nút Con

Cách hiệu quả nhất để truy cập các nút con của [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) là thông qua các thuộc tính [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) và [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/) trả về các nút con đầu tiên và cuối cùng, tương ứng. Nếu không có nút con, các thuộc tính này trả về *null*.

**CompositeNode**

Nếu một nút không có con, thì thuộc tính **ChildNodes** trả về một bộ sưu tập trống. Bạn có thể kiểm tra xem **CompositeNode** có chứa bất kỳ nút con nào bằng thuộc tính [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/) hay không.

Ví dụ mã sau đây cho thấy cách liệt kê các nút con ngay lập tức của `CompositeNode` bằng cách sử dụng liệt kê được cung cấp bởi bộ sưu tập `ChildNodes`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

Ví dụ mã sau đây cho thấy cách liệt kê các nút con ngay lập tức của `CompositeNode` bằng cách sử dụng truy cập được lập chỉ mục:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### Các Nút Anh Chị Em

Bạn có thể lấy nút ngay trước hoặc theo một nút cụ thể bằng cách sử dụng thuộc tính [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) và [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/), tương ứng. Nếu một nút là con cuối cùng của cha mẹ của nó, thì thuộc tính **NextSibling** là *null*. Ngược lại, nếu nút là con đầu tiên của cha mẹ, thuộc tính **PreviousSibling** là *null*.

Ví dụ mã sau đây cho thấy cách truy cập hiệu quả tất cả các nút con trực tiếp và gián tiếp của một nút tổng hợp:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### Nhập Quyền Truy cập Vào Các Nút Con Và Cha Mẹ

Cho đến nay, chúng tôi đã thảo luận về các thuộc tính trả về một trong các loại cơ sở – **Node** hoặc **CompositeNode**. Nhưng đôi khi có những tình huống mà bạn có thể cần truyền các giá trị cho một lớp nút cụ thể, chẳng hạn như **Run** hoặc **Paragraph**. Đó là, bạn không thể hoàn toàn thoát khỏi việc đúc khi làm việc với Aspose.Words DOM, là composite.

Để giảm nhu cầu truyền, hầu hết các lớp Aspose.Words cung cấp các thuộc tính và bộ sưu tập cung cấp quyền truy cập được nhập mạnh mẽ. Có ba mẫu cơ bản của truy cập đánh máy:

- Một nút cha hiển thị các thuộc tính **FirstXXX** và **LastXXX** đã nhập. Ví dụ: thuộc tính **Document** có [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) và [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/). Tương tự, **Table** có các thuộc tính như [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/), [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/) và các thuộc tính khác.
- Một nút cha hiển thị một tập hợp các nút con được nhập, chẳng hạn như [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/) và các nút khác.
- Một nút con cung cấp quyền truy cập đã nhập cho cha mẹ của nó, chẳng hạn như [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/) và các nút khác.

Các thuộc tính được gõ chỉ là các phím tắt hữu ích đôi khi cung cấp quyền truy cập dễ dàng hơn các thuộc tính chung được kế thừa từ [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) và [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/).

Ví dụ mã sau đây cho thấy cách sử dụng các thuộc tính đã nhập để truy cập các nút của cây tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
