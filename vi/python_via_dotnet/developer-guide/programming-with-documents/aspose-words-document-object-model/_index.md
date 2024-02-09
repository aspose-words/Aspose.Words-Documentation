---
title: Aspose.Words DOM
second_title: Aspose.Words cho Python via .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) là bản trình bày trong bộ nhớ của tài liệu Word. Đọc, thao tác và sửa đổi nội dung cũng như định dạng của tài liệu Word bằng Python."
weight: 10
url: /vi/python-net/aspose-words-document-object-model/
---

Aspose.Words Document Object Model (DOM) là bản trình bày trong bộ nhớ của tài liệu Word. Aspose.Words DOM cho phép bạn đọc, thao tác và sửa đổi nội dung cũng như định dạng của tài liệu Word theo chương trình.

Phần này mô tả các lớp chính của Aspose.Words DOM và mối quan hệ của chúng. Bằng cách sử dụng các lớp Aspose.Words DOM, bạn có thể có được quyền truy cập theo chương trình vào các thành phần và định dạng tài liệu.

## Tạo cây đối tượng `Document` {#create-a-document-objects-tree}

Khi một tài liệu được đọc vào Aspose.Words DOM, thì một cây đối tượng sẽ được xây dựng và các loại phần tử khác nhau của tài liệu nguồn sẽ có các đối tượng cây DOM riêng với các thuộc tính khác nhau.

### Xây dựng cây nút tài liệu {#build-document-nodes-tree}

Khi Aspose.Words đọc tài liệu Word vào bộ nhớ, nó sẽ tạo các đối tượng thuộc các loại khác nhau đại diện cho các thành phần tài liệu khác nhau. Mỗi lần chạy văn bản, đoạn văn, bảng hoặc phần đều là một nút và thậm chí bản thân tài liệu cũng là một nút. Aspose.Words định nghĩa một lớp cho mọi loại nút tài liệu.

Cây tài liệu trong Aspose.Words tuân theo Mẫu thiết kế tổng hợp:

- Cuối cùng, tất cả các lớp nút đều xuất phát từ lớp [Node](https://reference.aspose.com/words/python-net/aspose.words/node/), đây là lớp cơ sở trong Aspose.Words Document Object Model.
- Các nút có thể chứa các nút khác, ví dụ [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) hoặc [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), xuất phát từ lớp [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/), sau đó lại xuất phát từ lớp [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

Sơ đồ được cung cấp bên dưới hiển thị tính kế thừa giữa các lớp nút của Aspose.Words Document Object Model (DOM). Tên của các lớp trừu tượng được in nghiêng.

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="giả định từ-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM cũng chứa các lớp không phải nút, chẳng hạn như [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) hoặc [Font](https://reference.aspose.com/words/python-net/aspose.words/font/), được sử dụng để tùy chỉnh giao diện và kiểu dáng trong tài liệu. Các lớp này không được hiển thị trong sơ đồ này vì không được kế thừa từ lớp [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

{{% /alert %}}

Hãy xem một ví dụ. Hình ảnh sau đây hiển thị tài liệu Microsoft Word với các loại nội dung khác nhau.

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="tài liệu-ví dụ-aspose-words" style="width:700px"/>

Khi đọc tài liệu trên vào Aspose.Words DOM, cây đối tượng sẽ được tạo, như thể hiện trong lược đồ bên dưới.

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-từ" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) và tất cả các hình elip khác trên sơ đồ là các đối tượng Aspose.Words đại diện cho các thành phần của tài liệu Word.

### Nhận {#get-a-node-type} loại `Node`

Mặc dù lớp [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) đủ để phân biệt các nút khác nhau, Aspose.Words cung cấp bảng liệt kê [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) để đơn giản hóa một số tác vụ API, chẳng hạn như chọn các nút thuộc một loại cụ thể.

Loại của mỗi nút có thể được lấy bằng thuộc tính [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/). Thuộc tính này trả về giá trị liệt kê [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/). Ví dụ: nút đoạn văn được biểu thị bằng lớp [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) trả về [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph) và nút bảng được biểu thị bằng lớp [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) trả về [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table).

Ví dụ sau đây cho thấy cách lấy loại nút bằng cách sử dụng bảng liệt kê [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## Điều hướng cây tài liệu {#document-tree-navigation}

Aspose.Words thể hiện tài liệu dưới dạng cây nút, cho phép bạn điều hướng giữa các nút. Phần này mô tả cách khám phá và điều hướng cây tài liệu trong Aspose.Words.

Khi bạn mở tài liệu mẫu được trình bày trước đó trong Document Explorer, cây nút sẽ xuất hiện chính xác như được thể hiện trong Aspose.Words.

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="tài liệu trong tài liệu-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Bạn có thể tìm hiểu dự án mẫu "Document Explorer" trên [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples).

{{% /alert %}}

### Mối quan hệ nút tài liệu {#document-nodes-relationships}

Các nút trong cây có mối quan hệ giữa chúng:

- Nút chứa nút khác là *parent.*
- Nút chứa trong nút cha là nút *child.*. Các nút con của cùng nút cha là nút *sibling*.
- Nút *root* luôn là nút [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Các nút có thể chứa các nút khác xuất phát từ lớp [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) và tất cả các nút cuối cùng đều xuất phát từ lớp [Node](https://reference.aspose.com/words/python-net/aspose.words/node/). Hai lớp cơ sở này cung cấp các phương thức và thuộc tính chung cho việc điều hướng và sửa đổi cấu trúc cây.

Sơ đồ đối tượng UML sau đây hiển thị một số nút của tài liệu mẫu và mối quan hệ của chúng với nhau thông qua các thuộc tính cha, con và anh chị em:

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="tài liệu-nút-mối quan hệ-aspose-từ" style="width:370px"/>

#### Tài liệu là chủ sở hữu nút

Một nút luôn thuộc về một tài liệu cụ thể, ngay cả khi nó vừa được tạo hoặc bị xóa khỏi cây, vì các cấu trúc quan trọng trên toàn tài liệu như kiểu và danh sách được lưu trữ trong nút [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Ví dụ: không thể có [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) mà không có [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) vì mỗi đoạn có một kiểu được chỉ định được xác định chung cho tài liệu. Quy tắc này được sử dụng khi tạo bất kỳ nút mới nào. Việc thêm trực tiếp [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) mới vào DOM yêu cầu một đối tượng tài liệu được chuyển đến hàm tạo.

{{% alert color="primary" %}}

Thuộc tính [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) trả về tài liệu chứa nút đó.

{{% /alert %}}

Khi tạo một đoạn mới bằng [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), trình tạo luôn có lớp [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) được liên kết với nó thông qua thuộc tính [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/).

Ví dụ mã sau đây cho thấy rằng khi tạo bất kỳ nút nào, tài liệu sẽ sở hữu nút đó luôn được xác định:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### Nút gốc

Mỗi nút có một nút cha được chỉ định bởi thuộc tính [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/). Một nút không có nút cha, nghĩa là [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) là *None*, trong các trường hợp sau:

- Nút vừa được tạo và chưa được thêm vào cây.
- Nút đã bị xóa khỏi cây.
- Đây là nút [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) gốc luôn có nút cha Không có.

Bạn có thể xóa một nút khỏi nút cha của nó bằng cách gọi phương thức [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/). Ví dụ mã sau đây cho biết cách truy cập nút cha:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### Nút con

Cách hiệu quả nhất để truy cập các nút con của [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) là thông qua các thuộc tính [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) và [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) tương ứng trả về các nút con đầu tiên và cuối cùng. Nếu không có nút con, các thuộc tính này trả về *None*.

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) cũng cung cấp bộ sưu tập [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) cho phép truy cập được lập chỉ mục hoặc liệt kê vào các nút con. Phương thức [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) trả về một tập hợp các nút trực tiếp, có nghĩa là bất cứ khi nào tài liệu được thay đổi, chẳng hạn như khi các nút được xóa hoặc thêm vào, bộ sưu tập **get_child_nodes** sẽ tự động được cập nhật.

Nếu một nút không có nút con thì phương thức **get_child_nodes** sẽ trả về một tập hợp trống. Bạn có thể kiểm tra xem [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) có chứa bất kỳ nút con nào hay không bằng thuộc tính [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/).

Ví dụ về mã sau đây cho thấy cách liệt kê các nút con trực tiếp của [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) bằng cách sử dụng bộ liệt kê do bộ sưu tập **get_child_nodes** cung cấp:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### Nút anh chị em

Bạn có thể lấy nút ngay trước hoặc sau một nút cụ thể bằng cách sử dụng thuộc tính [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) và [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) tương ứng. Nếu một nút là nút con cuối cùng của nút cha thì thuộc tính [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) là *None*. Ngược lại, nếu nút là con đầu tiên của nút cha thì thuộc tính [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) là *None*.

Ví dụ mã sau đây cho thấy cách truy cập hiệu quả tất cả các nút con trực tiếp và gián tiếp của nút tổng hợp:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### Đã nhập quyền truy cập vào nút con và nút cha {#typed-access-to-child-and-parent-nodes}

Cho đến nay, chúng ta đã thảo luận về các thuộc tính trả về một trong các loại cơ sở – [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) hoặc [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). Nhưng đôi khi có những tình huống mà bạn có thể cần truyền các giá trị tới một lớp nút cụ thể, chẳng hạn như [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) hoặc [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/). Nghĩa là, bạn không thể hoàn toàn thoát khỏi việc truyền khi làm việc với Aspose.Words DOM, là kết hợp.

Để giảm nhu cầu truyền, hầu hết các lớp Aspose.Words đều cung cấp các thuộc tính và bộ sưu tập cung cấp quyền truy cập được định kiểu mạnh. Có ba mẫu truy cập được gõ cơ bản:

- Nút cha hiển thị các thuộc tính **đầu tiên_XXX** và **cuối cùng_XXX** đã nhập. Ví dụ: [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) có các thuộc tính [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) và [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/). Tương tự, [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) có các thuộc tính như [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/) và các thuộc tính khác.
- Nút cha hiển thị một tập hợp các nút con được đánh máy, chẳng hạn như [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/) và các nút khác.
- Nút con cung cấp quyền truy cập được đánh máy vào nút cha của nó, chẳng hạn như [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/) và các nút khác.

Thuộc tính được nhập chỉ đơn thuần là các phím tắt hữu ích đôi khi cung cấp khả năng truy cập dễ dàng hơn các thuộc tính chung được kế thừa từ [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) và [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/).

Ví dụ mã sau đây cho thấy cách sử dụng các thuộc tính đã nhập để truy cập các nút của cây tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
