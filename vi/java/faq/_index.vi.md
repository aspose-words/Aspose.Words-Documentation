---
title: Câu hỏi thường gặp
second_title: Aspose.Words cho Java
articleTitle: Câu hỏi thường gặp
linktitle: Câu hỏi thường gặp
type: docs
description: "Aspose.Words cho Java trả lời những câu hỏi thường gặp nhất Học trang này để nhanh chóng giải quyết vấn đề của bạn trong các câu hỏi chung hoặc các chủ đề cụ thể."
weight: 75
url: /vi/java/faq/
timestamp: 2024-01-31-14-23-37
---

Trang này có câu trả lời cho các câu hỏi thường gặp nhất. Hãy học trang hiện tại - có lẽ điều này sẽ cho phép bạn giải quyết vấn đề của mình nhanh chóng.

Nếu bạn chưa tìm thấy câu trả lời cho thắc mắc của mình, bạn có thể hỏi trên diễn đàn hỗ trợ. Để biết thông tin về cách báo cáo câu hỏi hay vấn đề của bạn một cách đúng đắn, hãy xem trang [Technical Support](/words/java/technical-support/).

{{% alert color="primary" %}}

Câu hỏi thường gặp được nhóm lại theo chủ đề cho bạn tiện dụng.

{{% /alert %}}

## Tổng quát

**Q: Điều gì là Aspose.Words?**

Aspose.Words cho Java là một thư viện lớp cho phép các ứng dụng của bạn thực hiện một loạt các tác vụ xử lý tài liệu. Với Aspose.Words dành cho Java, bạn có thể tạo ra, sửa đổi, chuyển đổi, hiển thị và in tài liệu mà không cần ứng dụng bên thứ ba.

Chi tiết có thể được tìm thấy trong tài liệu của chúng tôi.

------

**Q: Điều đó có nghĩa là 'Aspose.Words' không cần đến các ứng dụng bên thứ ba?**

Aspose.Words để Java không cần cài đặt bất kỳ ứng dụng bên thứ ba hoặc gói phần mềm bổ sung nào để hoạt động. Chỉ cần tải xuống và cài đặt Aspose.Words như đã được mô tả trong bài viết [Installation](/words/java/installation/) và bắt đầu làm việc.

------

**Q:  Nền tảng nào Aspose.Words hỗ trợ?**

Aspose.Words cho Java bao phủ hầu hết các môi trường phát triển phổ biến và nền tảng triển khai. Nó API có thể được sử dụng để phát triển các ứng dụng cho một loạt hệ điều hành như Windows, Linux và Mac OS, và nhiều nền tảng.

Để biết chi tiết, hãy tham khảo trang [Product Overview](/words/java/product-overview/) và phần [Platforms and Interoperability](/words/java/platforms-and-interoperability/).

------

**Q:  Định dạng tài liệu nào Aspose.Words hỗ trợ?**

Aspose.Words cho Java hỗ trợ hầu hết các định dạng tài liệu phổ biến như DOC, DOCX, HTML, Markdown, PDF, XML và các loại khác.

Bạn có thể thấy danh sách đầy đủ các định dạng được hỗ trợ trong trang [Supported Document Formats](/words/java/supported-document-formats/).

------

**Q: Làm sao tôi thử Aspose.Words miễn phí?**

Bạn có thể làm điều này theo hai cách - sử dụng phiên bản thử hoặc Giấy phép tạm thời 30 ngày. Phiên bản dùng thử giống như phiên bản mua, nó cung cấp chức năng đầy đủ của sản phẩm nhưng thêm dấu nước đánh giá ở đầu tài liệu khi tải và lưu và giới hạn kích thước tài liệu tối đa đến vài trăm đoạn văn. Giấy phép tạm thời cho phép bạn thử nghiệm Aspose.Words mà không bị hạn chế thử nghiệm trong vòng 30 ngày.

Xem trang [Licensing and Subscription](/words/java/licensing/) để biết thêm thông tin.

{{% alert color="primary" %}}

Bạn cũng có thể thử một số tính năng phổ biến nhất Aspose.Words thông qua [Aspose.Words free online Apps](https://products.aspose.app/words).

{{% /alert %}}

------

**Q: Làm sao tôi có thể mua Aspose.Words?**

Để mua một Aspose.Words bản quyền, bạn cần đến trang [Purchase](https://purchase.aspose.com/buy), chọn sản phẩm "Aspose.Words" và loại bản quyền phù hợp với bạn. Sau đó thêm giấy phép vào giỏ hàng và làm theo hướng dẫn của Giót hàng.

Sau khi mua, hãy xin giấy phép như được mô tả trong phần [Purchased License](/words/java/licensing/#purchased-license).

Chi tiết cách cài đặt Aspose.Words có thể đọc trên trang [Installation](/words/java/installation/).

------

**Q:  Làm sao tôi được hỗ trợ?**

Sử dụng diễn đàn hỗ trợ kỹ thuật miễn phí. Để biết chi tiết cách ghi nhận một vấn đề và những việc cần làm trước khi liên lạc với diễn đàn, hãy xem trang [Technical Support](/words/java/technical-support/).

## Xử lý một Tài liệu

{{% alert color="primary" %}}

Bạn có thể tìm thấy thêm thông tin chi tiết về việc hiển thị trong phần tài liệu [Rendering](/words/java/rendering/).

{{% /alert %}}

**Q: Tại sao bố cục và kiểu chữ trong tài liệu đầu ra khác với bản gốc?**

Phông chữ có thể không có sẵn, hoặc định dạng phông chữ được hỗ trợ bởi Microsoft Word nhưng không được hỗ trợ bởi Aspose.Words. Aspose.Words sẽ thực hiện [font substitution](/words/java/manipulate-and-substitute-truetype-fonts/).

Để kiểm tra nếu phông chữ bị thiếu:

- Khi dùng Aspose.Words, hãy dùng cảnh báo thay thế phông chữ (xem chi tiết ở phần 'Làm sao để nhận ra phông chữ đã được thay thế' của bài viết [Manipulate and Substitute TrueType Fonts](/words/java/manipulate-and-substitute-truetype-fonts/)).
- Trong Microsoft Word mở hộp thoại "Thay thế phông chữ" (File → Options → Advanced → Font Substitution).

------

**Q: Tại sao bộ chữ không hoạt động trên các nền tảng phi Windows và các ký tự Unicode bị thay thế bằng .notdef glyph?**

Chúng ta thường thấy chữ `.notdef` glyph thay vì một ký tự Unicode nào đó. Đây thường là một hộp hoặc câu hỏi glyph.

Vì vậy vì Microsoft Office fallback cài đặt được chọn theo mặc định, và Microsoft Office phông chữ không có sẵn. Người dùng phải cài đặt Microsoft phông chữ Office hoặc thay đổi các thiết lập mặc định.

------

**Q: Tại sao văn bản chữ phức tạp, chẳng hạn như tiếng Thái hoặc tiếng Do Thái, có thể được hiển thị không chính xác vì một lý do nào đó, chẳng hạn như vị trí sai cho dấu phụ hoặc liên kết không chính xác?**

Một số phông chữ phức tạp yêu cầu các tính năng "Kiểu chữ nâng cao" được xử lý để hiển thị chúng chính xác. Bố cục chữ nâng cao đã bị tắt mặc định trong Aspose.Words. Người dùng phải bật "Advanced Typography" với [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory).

------

**Q: Tôi có cần các tập tin giấy phép cho các phông chữ tôi dùng không?**

Vâng, bạn cũng vậy. Vậy khi sao chép phông chữ thì hãy nhớ rằng hầu hết các phông chữ đều là bản quyền. Tìm giấy phép phông chữ trước và xác nhận rằng chúng có thể chuyển đổi tự do đến máy khác.

## Nested Mail Merge

{{% alert color="primary" %}}

Bạn có thể tìm thêm thông tin chi tiết về mail merge trong phần tài liệu của [Mail Merge and Reporting](/words/java/mail-merge-and-reporting/).

{{% /alert %}}

**Q: Tại sao không có các trường được hợp nhất trong đầu ra được tạo ra?**

Tên gốc của trường hợp hợp nhất vẫn giống như vậy mà không thay thế bằng dữ liệu yêu cầu từ nguồn dữ liệu, sau đó:

"- Kiểm tra dữ liệu được tải đúng vào bảng: thiết lập chính xác [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) với tất cả các khóa chính và mối quan hệ cần thiết."
- Kiểm tra rằng các trường kết hợp được đặt tên đúng cách. Sử dụng phương thức [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) để lấy tất cả tên trường hợp kết hợp và đảm bảo rằng tên của các trường hợp kết hợp trong mẫu của bạn khớp với tên trong nguồn dữ liệu của bạn.

------

**Q:  Tại sao đầu ra của việc hợp nhất lồng nhau lại không hiển thị dữ liệu từ bảng con cho mục nhập đầu tiên trong bảng cha nhưng lại hiển thị tất cả các mặt hàng cho mục nhập cuối cùng trong bảng cha, ngay cả những thứ chưa thực sự liên kết với nó?**

Đây là vì vùng hợp nhất trong mẫu không được hình thành chính xác, điều này có thể khiến tất cả các vùng lồng nhau mail merge dừng hiển thị bất cứ thứ gì cả. Tag mở [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) và tag đóng [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) phải giống nhau và ở cùng một hàng hoặc ô. Ví dụ như khi bạn bắt đầu lồng ghép vùng kết hợp trong một ô của bảng thì bạn phải kết thúc vùng kết hợp ở cùng hàng với ô đầu tiên.

------

**Q:  Tại sao mỗi mục nhập từ bảng cha hiển thị tất cả các mục trong bảng con, ngay cả những mục không liên kết thực sự với nó?**

Đây là vì mối quan hệ giữa bảng cha và bảng con không được thiết lập hoặc chúng bị thiết lập sai. Điều cần thiết là:

- Đảm bảo tính toàn vẹn dữ liệu trong **DataSet** của bạn và sử dụng đối tượng **DataRelation** để biểu diễn mối quan hệ cha-con giữa các bảng dữ liệu có liên quan.
"- Kiểm tra phần "Cách thiết lập mối quan hệ dữ liệu trong Mail Merge lồng nhau với vùng" trong bài viết [Nested Mail Merge with Regions](/words/java/nested-mail-merge-with-regions/)."

------

**Q: Tại sao một ngoại lệ là: "System.ArgumentException: Kiểu ràng buộc này không thể được bật vì không phải tất cả các giá trị đều có giá trị cha tương ứng" khi thực thi lồng mail merge?**

Điều này xảy ra bởi vì không phải tất cả các bản ghi cha đều có bản ghi con nên nguồn dữ liệu của bạn không phù hợp với các tiêu chí sau: *mỗi hàng trong bảng cha nên có một mối quan hệ một-một với các hàng trong bảng con dựa trên khóa chính và khóa ngoại*.

Vô hiệu hóa ràng buộc khóa ngoại khi bạn tạo ra một **DataRelation**.

## Thêm hoặc chèn một tài liệu

{{% alert color="primary" %}}

Bạn có thể tìm thêm thông tin chi tiết về lập trình với tài liệu trong phần [Programming with Documents](/words/java/programming-with-documents/) tài liệu.

{{% /alert %}}

**"Q:  Tại sao nội dung được thêm vào tài liệu không hiển thị trên cùng một trang?"**

Kết quả thêm vào xuất hiện trên một trang riêng biệt vì sự khác nhau trong các [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) thiết lập cho những phần mà các tài liệu được thêm vào cùng. Đặt cùng một cài đặt **PageSetup** cho các phần mà các tài liệu được ghép nối với nhau.

## Chuyển đổi một Tài liệu

{{% alert color="primary" %}}

Bạn có thể tìm thấy thông tin chi tiết hơn về việc chuyển đổi một tài liệu trong phần tài liệu [Convert a Document](/words/java/convert-a-document/).

{{% /alert %}}

**Q:  Làm thế nào để chuyển đổi DOCX sang PDF?**

Nó cũng rất dễ dàng, chỉ cần tải một tài liệu vào mô hình và lưu nó sang bất kỳ định dạng nào được hỗ trợ.

Mã ví dụ sau cho thấy quy trình chuyển đổi một tập tin DOCX sang PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Xử lý với một Tài liệu

{{% alert color="primary" %}}

Bạn có thể tìm thấy thông tin chi tiết hơn về lập trình với tài liệu trong phần [Programming with Documents](/words/java/programming-with-documents/) hướng dẫn.

{{% /alert %}}

**Q: Cách chia một trang tài liệu ra làm nhiều trang riêng biệt?**

Aspose.Words cho phép bạn tách một tài liệu nhiều trang theo trang.

Mã ví dụ bên dưới cho thấy cách chia một tài liệu và lưu mỗi trang như một tài liệu riêng biệt:

{{< highlight java >}}
Document doc = new Document(dataDir + "TestFile (Split).docx");

int pageCount = doc.getPageCount();

// Save each page as a separate document.
for (int page = 0; page <= pageCount; page++)
{
	Document extractedPage = doc.extractPages(page, 1);
	extractedPage.save(dataDir + "SplitDocumentPageByPageOut_" + (page + 1) + ".docx");
}
{{< /highlight >}}

------

**Q: Cách mở một tập tin mã hóa** **thư kiện?**

Bạn có thể thử mở một tài liệu được mã hoá mà không cần mật khẩu, điều này sẽ dẫn đến một ngoại lệ.

Mã ví dụ sau cho thấy cách mở tài liệu được mã hóa với mật khẩu là như thế nào:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// We will not be able to open this document with Microsoft Word or
// Aspose.Words without providing the correct password.
try
{
    doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx"));
}
catch (Exception e)
{
    Assert.assertTrue(e instanceof IncorrectPasswordException);
}
{{< /highlight >}}

------

**Q: Cách in một tài liệu?**

Để có câu trả lời chi tiết hãy đọc bài viết [Printing a Document Programmatically or Using Dialogs](/words/java/print-a-document-programmatically-or-using-dialogs/).
