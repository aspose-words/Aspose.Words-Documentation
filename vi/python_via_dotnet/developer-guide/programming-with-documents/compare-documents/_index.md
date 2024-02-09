---
title: So sánh các tài liệu trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: So sánh tài liệu
linktitle: So sánh tài liệu
description: "So sánh hai tài liệu ở bất kỳ định dạng được hỗ trợ nào và hiển thị các thay đổi nội dung bằng Python. Bạn có thể áp dụng các tùy chọn nâng cao khi so sánh."
type: docs
weight: 60
url: /vi/python-net/compare-documents/
---

So sánh tài liệu là một quá trình xác định các thay đổi giữa hai tài liệu và chứa các thay đổi đó dưới dạng bản sửa đổi. Quá trình này so sánh hai tài liệu bất kỳ, bao gồm các phiên bản của một tài liệu cụ thể, sau đó những thay đổi giữa cả hai tài liệu sẽ được hiển thị dưới dạng bản sửa đổi trong tài liệu đầu tiên.

Phương pháp so sánh đạt được bằng cách so sánh các từ ở cấp độ ký tự hoặc cấp độ từ. Nếu một từ có sự thay đổi của ít nhất một ký tự thì trong kết quả, sự khác biệt sẽ được hiển thị dưới dạng thay đổi của toàn bộ từ chứ không phải một ký tự. Quá trình so sánh này là một nhiệm vụ thông thường trong ngành pháp lý và tài chính.

Thay vì tìm kiếm thủ công sự khác biệt giữa các tài liệu hoặc giữa các phiên bản khác nhau của chúng, bạn có thể sử dụng Aspose.Words để so sánh các tài liệu và nhận các thay đổi về nội dung trong định dạng, đầu trang/chân trang, bảng, v.v.

Bài viết này giải thích cách so sánh tài liệu và cách chỉ định các thuộc tính so sánh nâng cao.

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể so sánh trực tuyến hai tài liệu bằng cách sử dụng công cụ [So sánh tài liệu trực tuyến](https://products.aspose.app/words/comparison).

Lưu ý rằng phương pháp so sánh được mô tả bên dưới được sử dụng trong công cụ này để đảm bảo nhận được kết quả như nhau. Vì vậy, bạn sẽ nhận được kết quả tương tự ngay cả khi sử dụng công cụ so sánh trực tuyến hoặc sử dụng phương pháp so sánh trong Aspose.Words.

{{% /alert %}}

## Hạn chế và định dạng tệp được hỗ trợ {#limitations-and-supported-file-formats}

So sánh tài liệu là một tính năng rất phức tạp. Có nhiều phần khác nhau của sự kết hợp nội dung cần được phân tích để nhận ra tất cả sự khác biệt. Lý do cho sự phức tạp này là do Aspose.Words hướng tới mục tiêu đạt được kết quả so sánh giống như thuật toán so sánh Microsoft Word.

Hạn chế chung đối với hai tài liệu được so sánh là chúng không được có bản sửa đổi trước khi gọi phương thức so sánh vì hạn chế này tồn tại trong Microsoft Word.

{{% alert color="primary" %}}

Lưu ý rằng bạn có thể so sánh hai tài liệu bất kỳ trong [Định dạng tài liệu được hỗ trợ](/words/vi/python-net/supported-document-formats/). Về cơ bản, bạn có thể so sánh các đối tượng tài liệu và thậm chí bạn có thể tạo các đối tượng đó từ đầu mà không cần bất kỳ định dạng cụ thể nào.

{{% /alert %}}

## So sánh hai tài liệu {#compare-two-documents}

Khi bạn so sánh các tài liệu, những điểm khác biệt giữa tài liệu sau và tài liệu trước sẽ hiển thị dưới dạng bản sửa đổi so với tài liệu trước. Khi bạn sửa đổi một tài liệu, mỗi lần chỉnh sửa sẽ có bản sửa đổi riêng sau khi chạy phương thức so sánh.

Aspose.Words cho phép bạn xác định sự khác biệt của tài liệu bằng phương pháp [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) - phương pháp này tương tự như tính năng so sánh tài liệu Microsoft Word. Nó cho phép bạn kiểm tra tài liệu hoặc phiên bản tài liệu để tìm ra sự khác biệt và thay đổi, bao gồm sửa đổi định dạng như thay đổi phông chữ, thay đổi khoảng cách, thêm từ và đoạn văn.

Qua so sánh, các tài liệu có thể được xác định là bằng nhau hoặc không bằng nhau. Thuật ngữ tài liệu "bằng nhau" có nghĩa là phương pháp so sánh không thể biểu diễn các thay đổi dưới dạng bản sửa đổi. Điều này có nghĩa là cả văn bản tài liệu và định dạng văn bản đều giống nhau. Nhưng có thể có sự khác biệt khác giữa các tài liệu. Ví dụ: Microsoft Word chỉ hỗ trợ sửa đổi định dạng cho kiểu và bạn không thể biểu thị việc chèn/xóa kiểu. Vì vậy, tài liệu có thể có nhiều kiểu khác nhau và phương pháp [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) vẫn không tạo ra bản sửa đổi nào.

Ví dụ mã sau đây cho biết cách kiểm tra xem hai tài liệu có bằng nhau hay không:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

Ví dụ về mã sau đây cho thấy cách áp dụng phương pháp `Compare` cho hai tài liệu một cách đơn giản:

{{< highlight python >}}
# The source document doc1.
doc1 = aw.Document()
builder = aw.DocumentBuilder(doc1)
builder.writeln("This is the original document.")

# The target document doc2.
doc2 = aw.Document()
builder = aw.DocumentBuilder(doc2)
builder.writeln("This is the edited document.")

# If either document has a revision, an exception will be thrown.
if (doc1.revisions.count == 0 and doc2.revisions.count == 0) :
    doc1.compare(doc2, "authorName", datetime.today())

# If doc1 and doc2 are different, doc1 now has some revisions after the comparison, which can now be viewed and processed.
self.assertEqual(2, doc1.revisions.count)

for r in doc1.revisions :
    print(f"Revision type: {r.revision_type}, on a node of type \"{r.parent_node.node_type}\"")
    print(f"\tChanged text: \"{r.parent_node.get_text()}\"")

# All the revisions in doc1 are differences between doc1 and doc2, so accepting them on doc1 transforms doc1 into doc2.
doc1.revisions.accept_all()

# doc1, when saved, now resembles doc2.
doc1.save(docs_base.artifacts_dir + "Document.Compare.docx")
doc1 = aw.Document(docs_base.artifacts_dir + "Document.Compare.docx")
self.assertEqual(0, doc1.revisions.count)
self.assertEqual(doc2.get_text().strip(), doc1.get_text().strip())
{{< /highlight >}}

## Chỉ định thuộc tính so sánh nâng cao {#specify-advanced-comparing-properties}

Có nhiều thuộc tính khác nhau của lớp [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) mà bạn có thể áp dụng khi muốn so sánh tài liệu.

Ví dụ: Aspose.Words cho phép bạn bỏ qua những thay đổi được thực hiện trong quá trình so sánh đối với một số loại đối tượng nhất định trong tài liệu gốc. Bạn có thể chọn thuộc tính thích hợp cho loại đối tượng, chẳng hạn như [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/) và các thuộc tính khác bằng cách đặt chúng thành `True`.

Ngoài ra, Aspose.Words còn cung cấp thuộc tính [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) mà bạn có thể chỉ định theo dõi các thay đổi theo ký tự hay theo từ.

Một thuộc tính chung khác là sự lựa chọn trong đó tài liệu sẽ hiển thị các thay đổi so sánh. Ví dụ: "Hộp thoại so sánh tài liệu" trong Microsoft Word có tùy chọn "Hiển thị các thay đổi trong" – điều này cũng ảnh hưởng đến kết quả so sánh. Aspose.Words cung cấp thuộc tính [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) phục vụ mục đích này.

Ví dụ mã sau đây cho thấy cách đặt thuộc tính so sánh nâng cao:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
