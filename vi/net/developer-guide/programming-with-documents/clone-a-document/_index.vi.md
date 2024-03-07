---
title: Sao chép tài liệu trong C#
second_title: Aspose.Words cho .NET
articleTitle: Sao chép một tài liệu
linktitle: Sao chép một tài liệu
type: docs
description: "Sao chép tài liệu để có được bản sao giống hệt bằng C#. Khi tạo bản sao, các nút và thuộc tính của tài liệu gốc sẽ được sao chép."
weight: 70
url: /vi/net/clone-a-document/
---

Sao chép tài liệu là quá trình tạo một bản sao giống hệt của tài liệu gốc, bản sao này có thể cải thiện hiệu suất và giúp bạn tránh bị rò rỉ bộ nhớ.

Bài viết này sẽ giải thích các trường hợp sử dụng chính của việc sao chép tài liệu và cách tạo bản sao tài liệu bằng Aspose.Words.

## Thao tác với tài liệu nhân bản

Thao tác sao chép cho phép bạn thực hiện quá trình tạo tài liệu nhanh hơn vì bạn sẽ không cần phải tải và phân tích tài liệu từ một tệp mỗi lần.

Sau khi tạo bản sao tài liệu của mình, bạn sẽ có thể chỉnh sửa và thực hiện các thao tác khác nhau trên đó, chẳng hạn như so sánh nó với tài liệu gốc, nối thêm hoặc chèn nó vào tài liệu khác. Bạn cũng có thể sửa đổi các phần tử nhân bản hoặc nội dung của chúng trước khi chèn chúng vào tài liệu khác.

## Tạo bản sao tài liệu

Aspose.Words cho phép bạn sao chép tài liệu bằng phương pháp [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/) thực hiện sao chép sâu tài liệu và trả lại tài liệu đó. Nói cách khác, nó sẽ nhận được một bản sao đầy đủ của DOM. Phương pháp `Clone` tăng tốc độ tạo tài liệu và bạn chỉ cần một dòng mã để có được bản sao tài liệu của mình.

Nhân bản tạo ra một tài liệu mới có cùng nội dung với tài liệu gốc nhưng có một bản sao duy nhất của từng [nodes](https://reference.aspose.com/words/net/aspose.words/node/) của tài liệu gốc. Bạn cũng có thể áp dụng thao tác sao chép cho nút tài liệu bằng cách sử dụng phương thức [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) của nút, cho phép bạn sao chép các nút tài liệu tổng hợp có và không có nút con của chúng.

{{% alert color="primary" %}}

Lưu ý rằng khi áp dụng phương pháp nhân bản, tất cả các thuộc tính của tài liệu sẽ được sao chép.

{{% /alert %}}

Ví dụ về mã sau đây cho biết cách sao chép một tài liệu và tạo bản sao của một phần trong tài liệu đó:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("This is the original document before applying the clone method"); 

// Clone the document.
Document clone = doc.Clone();

// Edit the cloned document.
DocumentBuilder builder = new DocumentBuilder(clone);
builder.Write("Section 1");
builder.InsertBreak(BreakType.SectionBreakNewPage);
builder.Write("Section 2");

// This shows what is in the document originally. The document has two sections.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());

// Duplicate the last section and append the copy to the end of the document.
int lastSectionIdx = clone.Sections.Count - 1;
Section newSection = clone.Sections[lastSectionIdx].Clone();
clone.Sections.Add(newSection);

// Check what the document contains after we changed it.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());
{{< /highlight >}}
