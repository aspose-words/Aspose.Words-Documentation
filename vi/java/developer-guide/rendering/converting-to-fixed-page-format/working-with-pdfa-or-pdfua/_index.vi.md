---
title: Làm việc với PDF/A hoặc PDF/UA
second_title: Aspose.Words cho Java
articleTitle: Làm việc với PDF/A hoặc PDF/UA
linktitle: Làm việc với PDF/A hoặc PDF/UA
description: "Chuyển sang PDF/A-1, PDF/A-2, PDF/A-4 và PDF/UA bằng Java. Có vài vấn đề khi chuyển đổi sang các tài liệu PDF/A, và Aspose.Words cho Java giải quyết chúng."
type: docs
weight: 28
url: /vi/java/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

Định dạng PDF/A và PDF/UA đặt ra nhiều yêu cầu liên quan đến nội dung tài liệu mà không thể đáp ứng trong quá trình chuyển đổi tự động từ một tài liệu ở định dạng Word sang định dạng PDF. Những yêu cầu này nên được xác minh và sửa đổi hoặc trong một tài liệu word trước khi chuyển đổi hoặc trong một tài liệu pdf sau khi chuyển đổi để tạo ra một tài liệu tuân thủ hoàn toàn với PDF/A và PDF/UA.

Yêu cầu cơ bản dành cho cấu trúc hoặc phông chữ của một tài liệu PDF/A và PDF/UA mà chúng ta sẽ xem xét trong các phần tiếp theo.

{{% alert color="primary" %}}

Vui lòng lưu ý rằng đầu ra PDF/UA-1 cũng sẽ là WCAG 2.0 và tuân thủ phần 508.

{{% /alert %}}

## Yêu cầu cấu trúc tài liệu

Yêu cầu hiện tại là các định dạng PDF/A-1a, PDF/A-2a, PDF/A-4 và PDF/UA-1.

Có một số sắc thái của cách Aspose.Words hoạt động khi chuyển đổi sang các tiêu chuẩn định dạng PDF khác nhau. Chúng phải được tính đến nếu bạn muốn nhận được kết quả như mong đợi.

{{% alert color="primary" %}}

Lưu ý rằng không có yêu cầu cấu trúc hợp lý cho PDF/A-4. Vì lý do đó chúng tôi không xem xét phiên bản PDF/A-4 trong phần "Yêu cầu cấu trúc tài liệu".

{{% /alert %}}

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Bản tiêu chuẩn cho chúng ta biết những điều sau (bành mở để xem chi tiết):</summary>
    <p></p>
    <p>Tráng miệng cho người viết là không hợp lý khi họ tạo ra thông tin cấu trúc hoặc ngữ nghĩa bằng các quy trình tự động mà không có xác nhận phù hợp</p>
    <p>ISO 19005-2, 6.7.1</p>
<chi tiết>
{{% /alert %}}

Các tiểu mục bên dưới mô tả các sự tinh tế của cách Aspose.Words hoạt động khi chuyển đổi sang các tiêu chuẩn và tùy chọn khác nhau của định dạng PDF, và giải pháp cho họ.

### Kiểu cấu trúc

| Các mức tuân thủ chuẩn PDF trong Aspose.Words | Yêu cầu hiện diện |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Một tài liệu PDF là một chuỗi các khối như tiêu đề, đoạn văn, bảng và những người khác. Những khối này tạo thành một cấu trúc tài liệu – mạnh hoặc yếu.

Cả cấu trúc mạnh và yếu đều hợp lệ cho PDF/A. Microsoft Word tài liệu có cấu trúc yếu theo thiết kế, và Aspose.Words tạo ra một tập tin PDF với cấu trúc yếu tương ứng và cũng tạo ra tiêu đề dựa trên các cấp độ phác thảo của các đoạn trong tài liệu nguồn.

Đối với một tài liệu PDF/UA-1 có cấu trúc yếu, ngoài ra còn cần thiết là các số dòng tiêu đề đi theo thứ tự mà không có khoảng cách.

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Tiêu chuẩn nói với chúng ta những điều sau (phải mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Cấu trúc khối có thể theo một trong hai nguyên lý chính sau đây:</p>
    < / ol>
      <li>Cấu trúc mạnh mẽ. Các phần tử nhóm lồng vào nhau nhiều mức cho đến khi cần thiết để thể hiện sự tổ chức của vật liệu thành các bài viết, các phần, tiểu mục, v.v. 
      <li>Cấu trúc yếu Tài liệu tương đối phẳng, có thể chỉ một hoặc hai cấp độ của các phần tử nhóm, với tất cả các tiêu đề, đoạn và các BLSE khác là con ngay lập tức. 
    <ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</chi tiết>
{{% /alert %}}

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Đối với các tài liệu PDF/UA-1, thông số kỹ thuật chứa một bổ sung liên quan đến các mức tiêu đề (bành mở để xem chi tiết):</summary>
    <p></p>
    <p>Nếu ngữ nghĩa tài liệu yêu cầu một chuỗi tiêu đề giảm dần, chuỗi đó phải tiếp tục theo thứ tự số chính xác và không bỏ qua mức tiêu đề can thiệp. 
    <p>ISO-14289-1, 7.4.2</p>
<chi tiết>
{{% /alert %}}

Để đảm bảo đầu ra đúng, người dùng phải đảm bảo rằng nội dung tài liệu nguồn được tổ chức chính xác và các mức phác thảo được chỉ định chính xác cho các đoạn văn. Nếu không, người dùng nên xác minh và sửa chữa cấu trúc của tài liệu PDF đầu ra.

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Trong khối này bạn có thể thấy các ví dụ: cách đặt mức phác thảo trong Microsoft Word hoặc kiểm tra và sửa cấu trúc của tài liệu PDF đầu ra (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Trong Microsoft Word các kiểu mặc định "Heading X" có thể được dùng để đặt mức phác thảo:</p>
        <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Ngoài ra, mức phông chữ có thể được kiểm tra hoặc thay đổi trong cửa sổ "Đoạn văn":</p>
        <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>Trong Acrobat, cấu trúc tài liệu có thể được kiểm tra hoặc thay đổi trong cửa sổ "Thẻ"</p>
        <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
<chi tiết>
{{% /alert %}}

### Đánh dấu Nội dung là một Hiện vật

| Cung cấp mức tuân thủ các tiêu chuẩn PDF trong Aspose.Words | Yêu cầu hiện diện |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Hiện tại Aspose.Words đánh dấu tiêu đề trang và chân trang, các dấu phân cách ghi chú, các ô bảng tiêu đề lặp lại, và hình ảnh trang trí là những mảnh vụn. Hãy lưu ý rằng danh sách này có thể được cập nhật trong tương lai.

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Bản quy định thông báo cho chúng ta những điều sau đây (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Các đối tượng đồ họa trong một tài liệu có thể được chia thành hai lớp:</p>
    <ol>
      <li>Nội dung thực của một tài liệu bao gồm các đối tượng đại diện cho vật liệu do tác giả của tài liệu giới thiệu ban đầu.</li>
      <li>Artifacts là đồ họa không phải là một phần của nội dung gốc của tác giả nhưng được tạo ra bởi người viết tuân thủ trong quá trình sắp xếp trang, bố cục hoặc các quy trình cơ khí khác.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
<details>
{{% /alert %}}

Nếu một tài liệu chứa bất kỳ nội dung nào nên được đánh dấu là một hiện vật, hoặc nếu bất kỳ nội dung hiện vật nào là nội dung thực, khách hàng nên sửa đó trong tệp PDF đầu ra.

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Trong khối này bạn có thể thấy ví dụ: cách đánh dấu hình dạng là trang trí trong Microsoft Word hoặc đánh dấu hình dạng là một di tích trong tài liệu PDF đầu ra (bổ rộng để xem chi tiết)</summary>
    <p></p>
    <p>Ví dụ, những hình dạng có thể được đánh dấu là trang trí trong Microsoft Word, vì vậy chúng sẽ được xuất sang PDF như một tác phẩm nghệ thuật:</p>
        <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Bạn có thể đánh dấu hình dạng như một hiện vật trong tệp PDF đầu ra:</p>
      <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Cũng vậy, bạn có thể chuyển văn bản trong tiêu đề từ đối tượng sang nội dung thực trong tệp PDF đầu ra.</p>
        <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</chi tiết>
{{% /alert %}}

### Spesfication Ngôn ngữ Tự nhiên

| Các mức tuân thủ PDF trong Aspose.Words | Yêu cầu hiện diện |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Ngôn ngữ văn bản được xác định trong Microsoft Word tài liệu. Aspose.Words xuất ngôn ngữ đã chỉ định sang một tập tin PDF với thuộc tính *Lang* gắn vào một chuỗi nội dung đánh dấu hoặc thẻ Span – nó được kiểm soát bởi thuộc tính [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag). Thông thường không có vấn đề ngôn ngữ khi văn bản được nhập bởi người dùng thông qua Microsoft Word. Nhưng có khả năng ngôn ngữ không chính xác nếu văn bản được tạo ra một cách tự động.

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Quy định nói với chúng ta những điều sau (phát triển để thấy chi tiết):</summary>
    <p></p>
    <p>Ngôn ngữ tự nhiên mặc định cho tất cả các văn bản trong một tập tin nên được chỉ định bởi mục nhập Lang trong từ điển danh mục của tài liệu.</p>
    <p>Tất cả nội dung văn bản trong một tập tin khác với ngôn ngữ mặc định nên được chỉ ra bằng cách sử dụng một `Lang` thuộc tính được gắn vào một chuỗi nội dung đánh dấu, hoặc bằng cách có một mục nhập Lang trong một từ điển phần tử cấu trúc...</p>
    <p>ISO - 19005-2, 6.7.4</p>
<chi tiết>
{{% /alert %}}

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Ngoài ra đối với PDF/UA-1, thông số kỹ thuật cho chúng tôi những điều sau đây (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Ngôn ngữ tự nhiên sẽ được tuyên bố... Thay đổi trong ngôn ngữ tự nhiên sẽ được tuyên bố</p>
    <p>ISO-14289-1, 7.2</p>
<details>
{{% /alert %}}

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Trong khối này, bạn có thể thấy ví dụ: cách đảm bảo ngôn ngữ được chỉ ra chính xác (bổ sung để xem chi tiết)</summary>
    <p></p>
    <p>Người dùng nên đảm bảo rằng ngôn ngữ được chỉ rõ chính xác trong tài liệu từ Word nguồn:</p>
        <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Or the output PDF document:</p>
        <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
<chi tiết>
{{% /alert %}}

### Hình chú thích

| Tiêu chuẩn PDF trong phạm vi Aspose.Words | Yêu cầu hiện diện |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word tài liệu cho phép người dùng thêm chú thích hình ảnh

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Bản quy định cho chúng ta biết những điều sau (phát triển để xem chi tiết):</summary>
    <p></p>
    <p>Lời chú thích đi kèm với một hình ảnh sẽ được gắn thẻ với một thẻ Chú thích.</p>
    <p>ISO-14289-1, 7.3</p>
</chi tiết>
{{% /alert %}}

Hiện tại Aspose.Words không thể xuất chú thích với thẻ Caption, nên chúng phải được đánh dấu trong tập tin PDF đầu ra.

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Trong khối này bạn có thể thấy các ví dụ: cách chèn chú thích (mở rộng để xem chi tiết)</summary>
    <p></p>
    <p>Trong Microsoft Word chú thích có thể được chèn thông qua trình đơn ngữ cảnh</p>
        <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>Trong Acrobat, chú thích có thể được thêm hoặc thay đổi bằng hộp thoại `Object` Properties.</p>
        <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
<details>
{{% /alert %}}

### Mô tả thay thế

| Các mức tuân thủ PDF trong Aspose.Words | Yêu cầu hiện diện |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word tài liệu cho phép người dùng thêm văn bản thay thế vào hình ảnh, các hình dạng và bảng. Aspose.Words xuất văn bản thay thế đó thành tập tin PDF đầu ra.

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Bản quy định cho chúng ta biết những điều sau đây (bạn mở rộng để thấy chi tiết):</summary>
    <p></p>
    <p>Tất cả các phần tử cấu trúc mà nội dung của chúng không có một sự tương đương văn bản tự nhiên trước đó, ví dụ như hình ảnh, công thức, v.v., nên cung cấp một mô tả văn bản thay thế sử dụng mục Alt trong từ điển phần tử cấu trúc...</p>
    <p>NOTE Các mô tả thay thế cung cấp các mô tả văn bản giúp hỗ trợ việc hiểu đúng các nội dung phi văn bản không rõ ràng khác.</p>
    <p>ISO-19005-2, 6.7.5</p>
</chi tiết>
{{% /alert %}}

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Trong khối này bạn có thể thấy các ví dụ về cách đảm bảo rằng tất cả các phần tử đều có văn bản thay thế (mở rộng để xem chi tiết)</summary>
    <p></p>
    <p>Người dùng nên đảm bảo rằng tất cả các yếu tố đều có văn bản thay thế trong tài liệu từ Word nguồn:</p>
        <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>hoặc tài liệu PDF đầu ra</p>
        <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
<details>
{{% /alert %}}

### Mô tả thay thế cho các liên kết

| Các mức tuân thủ PDF trong Aspose.Words | Yêu cầu hiện diện |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Ngoài điểm trước, các Microsoft Word tài liệu cũng cho phép người dùng thêm văn bản thay thế cho các liên kết. Aspose.Words xuất văn bản đó ra trong tập tin PDF.

Thật không may, không phải mọi ứng dụng đều cho phép bạn thiết lập một mô tả thay thế. Ví dụ, Adobe Acrobat hiện tại không cho phép thiết lập mô tả như vậy cho các liên kết siêu văn bản. Nhưng trong Microsoft Word, bạn có thể làm như sau:"

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Đôi khi có một vấn đề là không thể đặt văn bản thay thế cho các liên kết tự động trong bảng nội dung (TOC) thông qua giao diện đồ họa Microsoft Word. Aspose.Words có thể cập nhật các trường như vậy và tạo ra các liên kết của nó.

Làm theo ví dụ mã để cập nhật `TOC` trường sử dụng Aspose.Words Document Object Model DOM:

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### Tiêu đề bảng

| Mức tuân thủ PDF trong Aspose.Words | Yêu cầu hiện diện |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Các bảng trong tài liệu PDF/UA-1 phải có các tiêu đề – cột, hàng hoặc cả hai. PDF/A chỉ yêu cầu tiêu chuẩn đánh dấu bảng, không có những hạn chế bổ sung nào. Lời chú ý rằng Aspose.Words tạo ra mã đánh dấu bảng tiêu chuẩn tự động.

{{% alert color="secondary" %}}
</details>
    <summary>Bản đặc tả nói với chúng ta điều sau đây (nói ra để thấy chi tiết):</summary>
    <p></p>
    <p>Các bảng nên có các tiêu đề … Các bảng có thể chứa các tiêu đề cột, tiêu đề hàng hoặc cả hai.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Ở khối này bạn có thể thấy ví dụ: cách đặt tiêu đề bàn (mở rộng để xem chi tiết)</summary>
    <p></p>
    <p>Biểu đầu bảng có thể được thiết lập trong tài liệu nguồn Microsoft Word</p>
        <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Hoặc bản ra PDF:</p>
        <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
<details>
{{% /alert %}}

### Thay thế văn bản

| Các mức tuân thủ chuẩn PDF trong Aspose.Words | Yêu cầu hiện diện |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<chi tiết>
    <tóm tắt> thông số nói với chúng tôi những điều sau (phát triển để xem chi tiết): </tóm tắt>
    <p></p>
    <p>Tiêu chuẩn này nói với chúng ta điều sau đây:</p>
    <p>Tất cả các phần tử cấu trúc văn bản được biểu diễn theo cách không chuẩn, ví dụ như ký tự tùy chỉnh hoặc hình ảnh trong dòng, nên cung cấp văn bản thay thế sử dụng mục `ActualText` trong từ điển phần tử cấu trúc.</p>
    <p>ISO-19005-2, 6.7.7</p>
<chi tiết>
{{% /alert %}}

Microsoft Word tài liệu không cho phép người dùng đặt văn bản thay thế. Vậy nó cần được xác nhận và sửa chữa trong tập tin PDF đầu ra

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Chữ viết tắt và từ viết tắt Chỗ mở rộng

| Các mức tuân thủ PDF trong Aspose.Words | Sự hiện diện của yêu cầu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Bản tiêu chuẩn cho chúng ta biết những điều sau đây (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Tất cả trường hợp của từ viết tắt và từ viết tắt trong nội dung văn bản nên được đặt trong một chuỗi nội dung đã đánh dấu với thẻ Span, mà thuộc tính E cung cấp một sự mở rộng văn bản của từ viết tắt hoặc từ viết tắt...</p>
<p>ISO-19005-2, 6.7.8</p>
</chi tiết>
{{% /alert %}}

Bất kỳ tài liệu Microsoft Word nào cũng không cho phép người dùng thiết lập các từ viết tắt và mở rộng từ viết tắt. Vì vậy điều này cần phải được xác minh và sửa trong PDF đầu ra:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Tiêu đề Tài liệu

| Các mức tuân thủ tiêu chuẩn PDF trong Aspose.Words | Yêu cầu hiện diện |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}} <br /> Tài liệu trong PDF/UA-1 nên có tiêu đề. |

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Spec quy định cho chúng ta những điều sau (bấm vào để xem chi tiết):</summary>
    <p></p>
    <p>Bản quy định nói với chúng ta điều sau đây:</p>
    <p>Dòng siêu dữ liệu trong từ điển danh mục của tài liệu phải chứa một mục dc:title, nơi dc là tiền tố được khuyến nghị cho lược đồ siêu dữ liệu Dublin Core...</p>
    <p>ISO-14289-1, 7.1</p>
<details>
{{% /alert %}}

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Trong khối này, bạn có thể thấy ví dụ về cách đặt tiêu đề tài liệu (mở rộng để xem chi tiết)</summary>
    <p></p>
    <p>Tiêu đề tài liệu có thể được thiết lập hoặc trong tài liệu nguồn Microsoft Word</p>
        <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Hoặc PDF đầu ra:</p>
        <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
<chi tiết>
{{% /alert %}}

## Yêu cầu về phông chữ

| Tiêu chuẩn tuân thủ PDF trong Aspose.Words | Yêu cầu hiện diện |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Cũng có nhiều sắc thái khi làm việc với phông chữ khi chuyển đổi sang các định dạng PDF/A-1, PDF/A-2, PDF/A-4 hoặc PDF/UA-1 sử dụng Aspose.Words. Bạn cần tính đến điều này nếu bạn muốn tránh được những vấn đề có thể xảy ra với tài liệu đầu ra.

Các phần dưới đây mô tả những sắc thái và các phương pháp giải quyết.

### Yêu cầu pháp lý về phông chữ

| Các mức tuân thủ tiêu chuẩn PDF trong Aspose.Words | Yêu cầu hiện diện |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words không kiểm tra các hạn chế pháp lý của phông chữ được sử dụng - nó phụ thuộc vào người dùng. Nói cách khác, người dùng không nên cung cấp các phông chữ không phù hợp cho việc chuyển đổi PDF bằng Aspose.Words.

{{% alert color="secondary" %}}
<chi tiết>
    <tóm tắt>sơ đồ nói với chúng ta những điều sau (bành mở để xem chi tiết):</tóm tắt>
    <p></p>
    <p>Chỉ nên dùng các chương trình phông chữ có thể được đan xen hợp pháp vào một tập tin để có thể hiển thị không giới hạn, phổ quát.</p>
    <p>" ISO-19005-2, 6.2.11.4.1 ; ISO-14289-1, 7.21.4.1 (cùng những dấu ngoặc kép ở hai thông số)"</p>
<details>
{{% /alert %}}

### .notdef Glyph

| Các mức tuân thủ PDF trong Aspose.Words | Yêu cầu hiện diện |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Việc sử dụng `.notdef` glyph bị cấm. Biểu tượng `.notdef` glyph sẽ hiện ra nếu một tài liệu chứa ký tự không có trong phông chữ đã chọn và cũng không thể giải quyết được thông qua cơ chế "Font Fallback.

{{% alert color="secondary" %}}
<details>
    <summary>Bản quy định cho chúng ta biết những điều sau đây (bổ sung để thấy chi tiết):</summary>
    <p></p>
    <p>Một tài liệu tuân thủ không chứa một tham chiếu đến .notdef glyph từ bất kỳ của các văn bản hiển thị toán tử, bất kể chế độ hiển thị văn bản, trong bất kỳ luồng nội dung nào</p>
    <p>ISO -19005-2, 6.2.11.8; ISO -14289-1, 7.21.8 (đúng như hai câu trích dẫn trong hai thông số)</p>
<details>
{{% /alert %}}

{{% alert color="secondary" %}}
<chi tiết">
    <tóm tắt> Trong khối này, bạn có thể thấy ví dụ: cách loại bỏ hoặc thay thế các ký tự (nới rộng để xem chi tiết)</tóm tắt>
    <p></p>
    <p>Người dùng nên loại bỏ hoặc thay thế các ký tự này trong tài liệu nguồn Word:</p>
        <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Hoặc có thể chỉnh sửa tài liệu PDF bằng công cụ "Sửa PDF":</p>
        <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
<details>
{{% /alert %}}

### Khu vực sử dụng riêng (PUA)

| Mức tuân thủ tiêu chuẩn PDF trong Aspose.Words | Yêu cầu hiện diện |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

Ký tự khu vực sử dụng riêng (PUA) xuất hiện chủ yếu đối với Windows phông chữ tượng trưng như "Symbol", "Wingdings", "Webdings" và các loại khác. Microsoft Word định dạng không cung cấp tùy chọn để lưu trữ văn bản thực tế cho ký tự.

{{% alert color="secondary" %}}
<chi tiết>
    <tóm tắt> thông số nói với chúng ta những điều sau (nâng lên để xem chi tiết):</tóm tắt>
    <p></p>
    <p>Đối với mức độ tuân thủ A, đối với bất kỳ ký tự nào ... được ánh xạ đến một mã hoặc các mã trong Khu vực Sử dụng Riêng Unicode (PUA), một mục nhập ActualText ... phải có mặt cho ký tự này hoặc chuỗi ký tự mà ký tự này là một phần của nó.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
<details>
{{% /alert %}}

"Segoe UI Symbol" là một phông chữ Windows Unicode có thể dùng thay thế cho các phông chữ ký hiệu.

{{% alert color="secondary" %}}
<chi tiết>
    <summary>Trong khối này bạn có thể thấy các ví dụ: người dùng nên làm gì để giải quyết vấn đề với phông chữ biểu tượng (biến rộng để xem chi tiết)</summary>
    <p></p>
    <p>Thay thế phông chữ tượng trưng bằng một phông chữ Unicode trong tài liệu nguồn Word:</p>
        <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Hay thêm một mục nhập ActualText cho các ký tự gây vấn đề trong tài liệu PDF đầu ra</p>
        <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
<chi tiết>
{{% /alert %}}
