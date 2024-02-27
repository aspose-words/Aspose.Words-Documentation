---
title: Aspose.Words Document Object Model (DOM) trong C#
second_title: Aspose.Words cho .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) là bản trình bày trong bộ nhớ của tài liệu Word. Đọc, thao tác và sửa đổi nội dung cũng như định dạng của tài liệu Word bằng C#."
weight: 10
url: /vi/net/aspose-words-document-object-model/
---

Aspose.Words Document Object Model (DOM) là bản trình bày trong bộ nhớ của tài liệu Word. Aspose.Words DOM cho phép bạn đọc, thao tác và sửa đổi nội dung cũng như định dạng của tài liệu Word theo chương trình.

Phần này mô tả các lớp chính của Aspose.Words DOM và mối quan hệ của chúng. Bằng cách sử dụng các lớp Aspose.Words DOM, bạn có thể có được quyền truy cập theo chương trình vào các thành phần và định dạng tài liệu.

## Tạo cây đối tượng `Document` {#create-a-document-objects-tree}

Khi một tài liệu được đọc vào Aspose.Words DOM, thì một cây đối tượng sẽ được xây dựng và các loại phần tử khác nhau của tài liệu nguồn sẽ có các đối tượng cây DOM riêng với các thuộc tính khác nhau.

### Xây dựng cây nút tài liệu {#build-document-nodes-tree}

Khi Aspose.Words đọc tài liệu Word vào bộ nhớ, nó sẽ tạo các đối tượng thuộc các loại khác nhau đại diện cho các thành phần tài liệu khác nhau. Mỗi lần chạy văn bản, đoạn văn, bảng hoặc phần đều là một nút và thậm chí bản thân tài liệu cũng là một nút. Aspose.Words định nghĩa một lớp cho mọi loại nút tài liệu.

Cây tài liệu trong Aspose.Words tuân theo Mẫu thiết kế tổng hợp:

- Cuối cùng, tất cả các lớp nút đều xuất phát từ lớp [Node](https://reference.aspose.com/words/net/aspose.words/node/), đây là lớp cơ sở trong Aspose.Words Document Object Model.
- Các nút có thể chứa các nút khác, ví dụ **Section** hoặc **Paragraph**, xuất phát từ lớp [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/), sau đó lại xuất phát từ lớp **Node**.

Sơ đồ được cung cấp bên dưới hiển thị tính kế thừa giữa các lớp nút của Aspose.Words Document Object Model (DOM). Tên của các lớp trừu tượng được in nghiêng.

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="giả định từ-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM cũng chứa các lớp không phải nút, chẳng hạn như [Style](https://reference.aspose.com/words/net/aspose.words/style/) hoặc [Font](https://reference.aspose.com/words/net/aspose.words/font/), được sử dụng để tùy chỉnh giao diện và kiểu dáng trong tài liệu. Các lớp này không được hiển thị trong sơ đồ này vì không được kế thừa từ lớp `Node`.

{{% /alert %}}

Hãy xem một ví dụ. Hình ảnh sau đây hiển thị tài liệu Microsoft Word với các loại nội dung khác nhau.

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="tài liệu-ví dụ-aspose-words" style="width:700px"/>

Khi đọc tài liệu trên vào Aspose.Words DOM, cây đối tượng sẽ được tạo, như thể hiện trong lược đồ bên dưới.

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-từ" style="width:700px"/>

[Document](https://reference.aspose.com/words/net/aspose.words/document/), [Section](https://reference.aspose.com/words/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/net/aspose.words/run/) và tất cả các hình elip khác trên sơ đồ là các đối tượng Aspose.Words đại diện cho các thành phần của tài liệu Word.

### Nhận {#get-a-node-type} loại `Node`

Mặc dù lớp [Node](https://reference.aspose.com/words/net/aspose.words/node/) đủ để phân biệt các nút khác nhau, Aspose.Words cung cấp bảng liệt kê [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) để đơn giản hóa một số tác vụ API, chẳng hạn như chọn các nút thuộc một loại cụ thể.

Loại của mỗi nút có thể được lấy bằng thuộc tính [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/). Thuộc tính này trả về giá trị liệt kê **NodeType**. Ví dụ: nút đoạn văn được biểu thị bằng lớp **Paragraph** trả về **NodeType**.**Paragraph** và nút bảng được biểu thị bằng lớp **Table** trả về **NodeType**.**Table**.

Ví dụ sau đây cho thấy cách lấy loại nút bằng cách sử dụng bảng liệt kê **NodeType**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## Điều hướng cây tài liệu {#document-tree-navigation}

Aspose.Words thể hiện tài liệu dưới dạng cây nút, cho phép bạn điều hướng giữa các nút. Phần này mô tả cách khám phá và điều hướng cây tài liệu trong Aspose.Words.

Khi bạn mở tài liệu mẫu được trình bày trước đó trong Document Explorer, cây nút sẽ xuất hiện chính xác như được thể hiện trong Aspose.Words.

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="tài liệu trong tài liệu-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Bạn có thể tìm hiểu dự án mẫu "Document Explorer" trên [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

{{% /alert %}}

### Mối quan hệ nút tài liệu {#document-nodes-relationships}

Các nút trong cây có mối quan hệ giữa chúng:

- Nút chứa nút khác là *parent.*
- Nút chứa trong nút cha là nút *child.*. Các nút con của cùng nút cha là nút *sibling*.
- Nút *root* luôn là nút [Document](https://reference.aspose.com/words/net/aspose.words/document/).

Các nút có thể chứa các nút khác xuất phát từ lớp [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) và tất cả các nút cuối cùng đều xuất phát từ lớp [Node](https://reference.aspose.com/words/net/aspose.words/node/). Hai lớp cơ sở này cung cấp các phương thức và thuộc tính chung cho việc điều hướng và sửa đổi cấu trúc cây.

Sơ đồ đối tượng UML sau đây hiển thị một số nút của tài liệu mẫu và mối quan hệ của chúng với nhau thông qua các thuộc tính cha, con và anh chị em:

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="tài liệu-nút-mối quan hệ-aspose-từ" style="width:370px"/>

#### Tài liệu là chủ sở hữu nút

Một nút luôn thuộc về một tài liệu cụ thể, ngay cả khi nó vừa được tạo hoặc bị xóa khỏi cây, vì các cấu trúc quan trọng trên toàn tài liệu như kiểu và danh sách được lưu trữ trong nút **Document**. Ví dụ: không thể có **Paragraph** mà không có **Document** vì mỗi đoạn có một kiểu được chỉ định được xác định chung cho tài liệu. Quy tắc này được sử dụng khi tạo bất kỳ nút mới nào. Việc thêm trực tiếp **Paragraph** mới vào DOM yêu cầu một đối tượng tài liệu được chuyển đến hàm tạo.

{{% alert color="primary" %}}

Thuộc tính [Node.Document](https://reference.aspose.com/words/net/aspose.words/node/document/) trả về tài liệu chứa nút đó.

{{% /alert %}}

Khi tạo một đoạn mới bằng [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), trình tạo luôn có lớp **Document** được liên kết với nó thông qua thuộc tính [DocumentBuilder.Document](https://reference.aspose.com/words/net/aspose.words/documentbuilder/document/).

Ví dụ mã sau đây cho thấy rằng khi tạo bất kỳ nút nào, tài liệu sẽ sở hữu nút đó luôn được xác định:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### Nút gốc

Mỗi nút có một nút cha được chỉ định bởi thuộc tính [ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/). Một nút không có nút cha, nghĩa là **ParentNode** là null, trong các trường hợp sau:

- Nút vừa được tạo và chưa được thêm vào cây.
- Nút đã bị xóa khỏi cây.
- Đây là nút **Document** gốc luôn có nút cha rỗng.

Bạn có thể xóa một nút khỏi nút cha của nó bằng cách gọi phương thức [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/). Ví dụ mã sau đây cho biết cách truy cập nút cha:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### Nút con

Cách hiệu quả nhất để truy cập các nút con của [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) là thông qua các thuộc tính [FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) và [LastChild](https://reference.aspose.com/words/net/aspose.words/compositenode/lastchild/) tương ứng trả về các nút con đầu tiên và cuối cùng. Nếu không có nút con, các thuộc tính này trả về *null*.

**CompositeNode** cũng cung cấp phương thức [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) cho phép truy cập được lập chỉ mục hoặc liệt kê vào các nút con. Thuộc tính **ChildNodes** là một tập hợp trực tiếp các nút, có nghĩa là bất cứ khi nào tài liệu được thay đổi, chẳng hạn như khi các nút được xóa hoặc thêm vào, bộ sưu tập **ChildNodes** sẽ tự động được cập nhật.

Nếu một nút không có nút con thì thuộc tính **ChildNodes** sẽ trả về một bộ sưu tập trống. Bạn có thể kiểm tra xem **CompositeNode** có chứa bất kỳ nút con nào hay không bằng thuộc tính [HasChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/haschildnodes/).

Ví dụ về mã sau đây cho thấy cách liệt kê các nút con trực tiếp của `CompositeNode` bằng cách sử dụng bộ liệt kê do bộ sưu tập `ChildNodes` cung cấp:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

Ví dụ về mã sau đây cho thấy cách liệt kê các nút con ngay lập tức của `CompositeNode` bằng cách sử dụng quyền truy cập được lập chỉ mục:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### Nút anh chị em

Bạn có thể lấy nút ngay trước hoặc sau một nút cụ thể bằng cách sử dụng thuộc tính [PreviousSibling](https://reference.aspose.com/words/net/aspose.words/node/previoussibling/) và [NextSibling](https://reference.aspose.com/words/net/aspose.words/node/nextsibling/) tương ứng. Nếu một nút là nút con cuối cùng của nút cha thì thuộc tính **NextSibling** là *null*. Ngược lại, nếu nút là con đầu tiên của nút cha thì thuộc tính **PreviousSibling** là *null*.

Ví dụ mã sau đây cho thấy cách truy cập hiệu quả tất cả các nút con trực tiếp và gián tiếp của nút tổng hợp:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### Đã nhập quyền truy cập vào nút con và nút cha {#typed-access-to-child-and-parent-nodes}

Cho đến nay, chúng ta đã thảo luận về các thuộc tính trả về một trong các loại cơ sở – **Node** hoặc **CompositeNode**. Nhưng đôi khi có những tình huống mà bạn có thể cần truyền các giá trị tới một lớp nút cụ thể, chẳng hạn như **Run** hoặc **Paragraph**. Nghĩa là, bạn không thể hoàn toàn thoát khỏi việc truyền khi làm việc với Aspose.Words DOM, là kết hợp.

Để giảm nhu cầu truyền, hầu hết các lớp Aspose.Words đều cung cấp các thuộc tính và bộ sưu tập cung cấp quyền truy cập được định kiểu mạnh. Có ba mẫu truy cập được gõ cơ bản:

- Nút cha hiển thị các thuộc tính **FirstXXX** và **LastXXX** đã nhập. Ví dụ: **Document** có các thuộc tính [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) và [LastSection](https://reference.aspose.com/words/net/aspose.words/document/lastsection/). Tương tự, **Table** có các thuộc tính như [FirstRow](https://reference.aspose.com/words/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/net/aspose.words.tables/table/lastrow/) và các thuộc tính khác.
- Nút cha hiển thị một tập hợp các nút con được đánh máy, chẳng hạn như [Document.Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/net/aspose.words/story/paragraphs/) và các nút khác.
- Nút con cung cấp quyền truy cập được đánh máy vào nút cha của nó, chẳng hạn như [Run.ParentParagraph](https://reference.aspose.com/words/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/net/aspose.words/paragraph/parentsection/) và các nút khác.

Thuộc tính được nhập chỉ đơn thuần là các phím tắt hữu ích đôi khi cung cấp quyền truy cập dễ dàng hơn các thuộc tính chung được kế thừa từ [Node.ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) và [CompositeNode.FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/).

Ví dụ mã sau đây cho thấy cách sử dụng các thuộc tính đã nhập để truy cập các nút của cây tài liệu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
