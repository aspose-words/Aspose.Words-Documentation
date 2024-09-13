---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words cho Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) là sự thể hiện trong bộ nhớ của một tài liệu Word. Đọc, thao tác và sửa đổi nội dung và định dạng của một tài liệu word bằng Java."
weight: 10
url: /vi/java/aspose-words-document-object-model/
---

Tập tin Aspose.Words Document Object Model (DOM) là biểu diễn bộ nhớ của một tài liệu Word. Hàm Aspose.Words DOM cho phép bạn đọc, thao tác và sửa đổi nội dung và định dạng của một tài liệu Word bằng cách lập trình.

Phần này mô tả các lớp chính của Aspose.Words DOM và mối quan hệ của chúng. Bằng cách sử dụng các lớp Aspose.Words DOM, bạn có thể nhận được quyền truy cập lập trình vào các yếu tố tài liệu và định dạng.

## Tạo Cây Đối Tượng Tài Liệu {#create-a-document-objects-tree}

Khi một tài liệu được đọc vào trong Aspose.Words DOM, sau đó một cây đối tượng được xây dựng và các loại phần tử khác nhau của tài liệu nguồn có các đối tượng cây DOM riêng với nhiều thuộc tính.

### Xây dựng cây các nút tài liệu {#build-document-nodes-tree}

Khi Aspose.Words đọc một tài liệu Word vào bộ nhớ, nó tạo ra các đối tượng của nhiều loại khác nhau để đại diện cho các yếu tố tài liệu khác nhau. Mỗi đoạn văn bản, đoạn văn, bảng hoặc phần là một nút và thậm chí cả tài liệu cũng là một nút. Aspose.Words định nghĩa một lớp cho mỗi loại nút của tài liệu.

Cây tài liệu ở Aspose.Words tuân theo mẫu thiết kế Composite:

- Tất cả các lớp nút cuối cùng đều được thừa kế từ lớp [Node](https://reference.aspose.com/words/java/com.aspose.words/node/), đó là lớp cơ sở trong Aspose.Words Document Object Model.
- Các node có thể chứa các node khác, ví dụ **Section** hay **Paragraph** thì xuất phát từ lớp [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/), còn lại lại xuất phát từ lớp **Node**.

Biểu đồ dưới đây hiển thị sự thừa kế giữa các lớp của nút Aspose.Words Document Object Model (DOM). Tên của các lớp trừu tượng được viết bằng chữ nghiêng.

<img src="aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

The Aspose.Words DOM cũng chứa các lớp không phải là nút, chẳng hạn như [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) hoặc [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), được sử dụng để tùy chỉnh hình thức và kiểu trong một tài liệu. Các lớp này không được hiển thị trong sơ đồ này vì chúng không thừa kế từ lớp `Node`.

{{% /alert %}}

Chúng ta hãy xem xét một ví dụ. Hình ảnh sau đây hiển thị một Microsoft Word với các loại nội dung khác nhau.

<img src="document-example.png" alt="document-example" style="width:700px"/>

Khi đọc tài liệu ở trên vào phần Aspose.Words DOM, cây đối tượng được tạo ra như hình minh họa bên dưới.

<img src="document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), và tất cả các dấu chấm chéo khác trên biểu đồ là Aspose.Words đối tượng đại diện cho các phần tử của tài liệu từ.

### Nhận một `Node` Loại {#get-a-node-type}



Loại của mỗi nút có thể được lấy bằng cách sử dụng thuộc tính [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType). Tính chất này trả về giá trị của một **NodeType**. Ví dụ, một đoạn văn được thể hiện bởi lớp **Paragraph** trả về **NodeType**.**Paragraph**, và một bảng được thể hiện bởi lớp **Table** trả về **NodeType**.**Table**.

Ví dụ sau cho thấy cách lấy một kiểu nút bằng cách sử dụng **NodeType** enum:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Điều hướng Cây Tài liệu {#document-tree-navigation}

Aspose.Words đại diện cho một tài liệu dưới dạng cây nút, điều này cho phép bạn di chuyển giữa các nút. Phần này mô tả cách khám phá và điều hướng cây tài liệu trong Aspose.Words.

Khi bạn mở tài liệu mẫu đã được giới thiệu trước đó trong Trình Xem Tài liệu, cây nút sẽ xuất hiện chính xác như nó được trình bày trong Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Bạn có thể học dự án mẫu "Document Explorer" trên [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### Tóm tắt mối quan hệ tài liệu {#document-nodes-relationships}

Các nút trong cây có mối quan hệ giữa chúng

"- Một nút chứa một nút khác là *parent.*"
The node chứa trong nút cha là *child.* Các nút con cùng một nút cha là *sibling* nút.
- Mối nút *root* luôn là mối nút [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).

Các node có thể chứa các node khác thì được thừa hưởng từ lớp [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/), và tất cả các node đều thừa hưởng cuối cùng từ lớp [Node](https://reference.aspose.com/words/java/com.aspose.words/node/). Những hai lớp cơ bản này cung cấp các phương pháp và thuộc tính chung cho việc điều hướng cấu trúc cây và sửa đổi.

Biểu đồ đối tượng UML sau cho thấy một số nút của tài liệu mẫu và mối quan hệ của chúng với nhau thông qua các thuộc tính cha mẹ, con và anh chị em

<img src="document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Tài liệu là Chủ sở hữu của nó

Điểm nào luôn thuộc về một tài liệu cụ thể, ngay cả khi nó mới được tạo hoặc xóa khỏi cây vì các cấu trúc quan trọng của tài liệu như kiểu và danh sách được lưu trữ trong **Document** điểm. Ví dụ, không thể có một **Paragraph** mà không có một **Document** vì mỗi đoạn văn có kiểu được định nghĩa toàn cục cho tài liệu. Quy tắc này được dùng khi tạo ra bất kỳ các node mới nào. Thêm một cái mới **Paragraph** trực tiếp vào DOM yêu cầu một đối tượng tài liệu được truyền đến trình tạo.

{{% alert color="primary" %}}

Tính [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) thuộc trả về tài liệu mà nút thuộc về

{{% /alert %}}

Khi tạo một đoạn văn mới bằng cách sử dụng [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), người xây dựng luôn có một lớp **Document** liên kết với nó thông qua thuộc tính [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document).

Ví dụ mã sau cho thấy khi tạo bất kỳ nút nào, một tài liệu sẽ sở hữu nút luôn được định nghĩa

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Node Cha

Mỗi nút có một bố được chỉ định bởi thuộc tính [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode). Một nút không có nút cha, tức là **ParentNode** là không có trong các trường hợp sau đây:

"- Nút đã mới được tạo và chưa còn thêm vào cây."
- Node đã được xóa khỏi cây.
- Đây là nút gốc **Document** mà luôn có nút cha rỗng.

Bạn có thể loại bỏ một nút khỏi cha của nó bằng cách gọi phương thức [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove). Ví dụ mã sau cho thấy cách truy cập nút cha:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Node con

Cách hiệu quả nhất để truy cập các nút con của một [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) là qua thuộc tính [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) và [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) trả về các nút con đầu tiên và cuối cùng tương ứng. Nếu không có nút con, các thuộc tính này sẽ trả về *null*

**CompositeNode** cũng cung cấp bộ sưu tập [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) cho phép truy cập được lập chỉ mục hoặc đếm số đến các nút con. Tính thuộc tính **ChildNodes** là một tập hợp các nút đang hoạt động, có nghĩa là bất cứ khi nào tài liệu được thay đổi, chẳng hạn như khi các nút bị xóa hoặc thêm, bộ sưu tập **ChildNodes** sẽ tự động được cập nhật.

Nếu một nút không có con, thuộc tính **ChildNodes** trả về một bộ sưu tập trống. Bạn có thể kiểm tra xem **CompositeNode** có chứa nút con nào không bằng cách dùng thuộc tính [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes).

Mã ví dụ sau cho thấy cách liệt kê các nút con ngay lập tức của một `CompositeNode` bằng cách sử dụng bộ đếm được cung cấp bởi bộ sưu tập `ChildNodes`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

Mã ví dụ sau cho thấy cách liệt kê các nút con ngay lập tức của một `CompositeNode` sử dụng truy cập chỉ số:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Nodes anh chị em

Bạn có thể lấy nút mà ngay trước hoặc sau một nút cụ thể sử dụng thuộc tính [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) và [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) tương ứng. Nếu một nút là con cuối cùng của bố nó thì thuộc tính **NextSibling** là *null*. Ngược lại, nếu nút là con cái đầu tiên của nút cha, tính **PreviousSibling** thuộc tính là *null*.

Mã ví dụ sau cho thấy cách truy cập hiệu quả tất cả các nút con trực tiếp và gián tiếp của một nút hợp chất:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Truy cập qua bàn phím vào nút con và nút cha

Cho đến nay chúng ta đã thảo luận về các tính chất mà trả về một trong các loại cơ bản – **Node** hoặc **CompositeNode**. Nhưng đôi khi có những tình huống mà bạn cần gán các giá trị đến một lớp nút cụ thể, chẳng hạn như **Run** hoặc **Paragraph**. Đó là, bạn không thể hoàn toàn thoát khỏi việc sử dụng các kiểu khi làm việc với Aspose.Words DOM, đó là đối tượng phức tạp.

Để giảm nhu cầu ghi đè, hầu hết các lớp Aspose.Words đều có thuộc tính và tập hợp cung cấp quyền truy cập kiểu mạnh. Có ba mẫu cơ bản của truy cập bằng bàn phím:

- A parent node exposes **FirstXXX** và **LastXXX** thuộc tính được gán kiểu. Ví dụ, **Document** có [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) và [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) thuộc tính. Cũng vậy, **Table** có các đặc tính như [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow) và những thứ khác.
"- A cha mẹ một nút phơi bày một tập hợp có kiểu của các nút con, chẳng hạn như [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs) và những người khác."
"- Một nút con cung cấp truy cập được gõ để cha của nó, chẳng hạn như [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection) và những người khác."

Tính chất được gõ là những công cụ hữu ích chỉ cung cấp quyền truy cập dễ dàng hơn đôi khi so với các tính chất chung kế thừa từ [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) và [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

Mã ví dụ sau cho thấy cách sử dụng các thuộc tính được gõ để truy cập các nút của cây tài liệu":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
