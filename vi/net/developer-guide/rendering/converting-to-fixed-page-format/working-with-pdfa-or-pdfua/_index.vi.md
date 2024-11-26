---
title: Làm việc với PDF/A hoặc PDF/UA
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với PDF/A hoặc PDF/UA
linktitle: Làm việc với PDF/A hoặc PDF/UA
description: "Chuyển đổi sang PDF/A-1, PDF/A-2, PDF/A-4 và PDF/UA bằng C#. Có một số vấn đề khi chuyển đổi sang tài liệu PDF/A và Aspose.Words cho .NET sẽ giải quyết chúng."
type: docs
weight: 28
url: /vi/net/working-with-pdfa-or-pdfua/
timestamp: 2024-07-10-14-38-57
---

Định dạng PDF/A và PDF/UA đặt ra một số yêu cầu liên quan đến nội dung tài liệu không thể đáp ứng được trong quá trình chuyển đổi tự động từ tài liệu ở định dạng Word sang PDF. Các yêu cầu này phải được xác minh và sửa trong tài liệu Word trước khi chuyển đổi hoặc trong tài liệu PDF sau khi chuyển đổi để tạo ra tài liệu tuân thủ PDF/A và PDF/UA đầy đủ.

Các yêu cầu cơ bản là về cấu trúc hoặc phông chữ của tài liệu PDF/A và PDF/UA mà chúng tôi sẽ xem xét trong các phần sau.

{{% alert color="primary" %}}

Xin lưu ý rằng đầu ra PDF/UA-1 cũng sẽ tuân thủ WCAG 2.0 và Mục 508.

{{% /alert %}}

## Yêu cầu về cấu trúc tài liệu

Các yêu cầu hiện tại dành cho các định dạng PDF/A-1a, PDF/A-2a, PDF/A-4 và PDF/UA-1.

Có một số sắc thái về cách hoạt động của Aspose.Words khi chuyển đổi sang các tiêu chuẩn định dạng PDF khác nhau. Chúng phải được tính đến nếu bạn muốn nhận được kết quả như mong đợi.

{{% alert color="primary" %}}

Lưu ý rằng không có yêu cầu về cấu trúc logic đối với PDF/A-4. Vì lý do này, chúng tôi không xem xét phiên bản PDF/A-4 trong phần "Yêu cầu về cấu trúc tài liệu" này.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Thông số kỹ thuật cho chúng ta biết những điều sau (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Người viết không nên tạo ra thông tin cấu trúc hoặc ngữ nghĩa bằng cách sử dụng các quy trình tự động mà không có sự xác minh thích hợp.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Các phần phụ bên dưới mô tả các sắc thái về cách Aspose.Words hoạt động khi chuyển đổi sang các tiêu chuẩn định dạng PDF khác nhau và các tùy chọn cho giải pháp của chúng.

### Loại cấu trúc

|  Mức độ tuân thủ tiêu chuẩn PDF trong Aspose.Words |  Sự hiện diện của yêu cầu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Tài liệu PDF là một chuỗi các khối như tiêu đề, đoạn văn, bảng và các khối khác. Các khối này tạo thành cấu trúc tài liệu – mạnh hoặc yếu.

Cả cấu trúc mạnh và yếu đều hợp lệ cho PDF/A. Theo thiết kế, các tài liệu Microsoft Word có cấu trúc yếu và Aspose.Words lần lượt tạo ra các tệp PDF có cấu trúc yếu, đồng thời tạo các tiêu đề theo mức độ phác thảo của các đoạn văn trong tài liệu nguồn.

Đối với tài liệu PDF/UA-1 có cấu trúc yếu, cần đánh số tiêu đề theo thứ tự không có khoảng trống.

{{% alert color="secondary" %}}
<details>
    <summary>Thông số kỹ thuật cho chúng ta biết những điều sau (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Cấu trúc cấp khối có thể tuân theo một trong hai mô hình chính:</p>
    </ol>
      <li>Có cấu trúc mạnh mẽ. Các thành phần nhóm được lồng vào nhiều cấp độ cần thiết để phản ánh việc tổ chức tài liệu thành các bài viết, phần, tiểu mục, v.v. Ở mỗi cấp độ, các phần tử con của thành phần nhóm phải bao gồm một tiêu đề (H), một hoặc nhiều đoạn văn (P) cho nội dung ở cấp độ đó và có lẽ một hoặc nhiều thành phần nhóm bổ sung cho các phần con lồng nhau.</li>
      <li>Cấu hình yếu. Tài liệu này tương đối phẳng, có lẽ chỉ có một hoặc hai cấp độ của các phần tử nhóm, với tất cả các tiêu đề, đoạn văn và các BLSE khác là con trực tiếp của chúng. Trong trường hợp này, việc tổ chức tài liệu không được phản ánh trong cấu trúc logic; tuy nhiên, nó có thể được thể hiện bằng cách sử dụng các tiêu đề có cấp độ cụ thể (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Đối với tài liệu PDF/UA-1, thông số kỹ thuật có phần bổ sung liên quan đến cấp độ tiêu đề (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Nếu ngữ nghĩa tài liệu yêu cầu một chuỗi tiêu đề giảm dần thì trình tự đó sẽ diễn ra theo thứ tự số nghiêm ngặt và không được bỏ qua cấp độ tiêu đề ở giữa. H1 H2 H3 được phép, trong khi H1 H3 thì không.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Để đảm bảo đầu ra chính xác, người dùng phải đảm bảo rằng nội dung tài liệu nguồn được sắp xếp hợp lý và mức độ phác thảo được chỉ định chính xác cho các đoạn văn. Nếu không, người dùng nên xác minh và sửa cấu trúc của tài liệu PDF đầu ra.

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem các ví dụ: cách đặt mức phác thảo trong Microsoft Word hoặc kiểm tra và sửa cấu trúc của tài liệu PDF đầu ra (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Trong các kiểu "Tiêu đề X" mặc định của Microsoft Word có thể được sử dụng để đặt mức phác thảo:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Ngoài ra, mức độ phác thảo có thể được kiểm tra hoặc thay đổi trong cửa sổ "Đoạn":</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineCấp độ" style="width:800px"/>
    <p>Trong Acrobat, cấu trúc tài liệu có thể được kiểm tra hoặc thay đổi trong khung "Thẻ":</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatThẻPane" style="width:800px"/>
</details>
{{% /alert %}}

### Đánh dấu nội dung là một hiện vật

|  Mức độ tuân thủ tiêu chuẩn PDF trong Aspose.Words |  Sự hiện diện của yêu cầu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Hiện tại, Aspose.Words đánh dấu đầu trang và chân trang, dấu phân cách ghi chú, ô tiêu đề bảng lặp lại và hình ảnh trang trí dưới dạng tạo phẩm. Lưu ý rằng danh sách này có thể được cập nhật trong tương lai.

{{% alert color="secondary" %}}
<details>
    <summary>Thông số kỹ thuật cho chúng ta biết những điều sau (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Các đối tượng đồ họa trong tài liệu có thể được chia thành hai lớp:</p>
    </ol>
      <li>Nội dung thực sự của một tài liệu bao gồm các đối tượng thể hiện tài liệu được tác giả tài liệu giới thiệu ban đầu.</li>
      <li>Hiện vật là các đối tượng đồ họa không phải là một phần của nội dung gốc của tác giả mà được tạo ra bởi người viết tuân thủ trong quá trình phân trang, bố cục hoặc các quy trình máy móc nghiêm ngặt khác.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Nếu tài liệu chứa bất kỳ nội dung nào khác cần được đánh dấu là giả tạo hoặc nếu bất kỳ nội dung giả tạo nào là nội dung thực thì khách hàng nên sửa nội dung đó trong tệp PDF đầu ra.

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem các ví dụ: cách đánh dấu hình dạng là trang trí trong Microsoft Word hoặc đánh dấu hình dạng là tạo phẩm trong tài liệu PDF đầu ra (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Ví dụ: các hình dạng có thể được đánh dấu là trang trí trong Microsoft Word, vì vậy chúng sẽ được xuất sang PDF dưới dạng tạo phẩm:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWTrang TríHình Dạng" style="width:800px"/>
    <p>Bạn có thể đánh dấu hình dạng là một tạo phẩm trong tệp PDF đầu ra:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfXóaThẻ trống" style="width:800px"/>
    <p>Ngoài ra, bạn có thể chuyển văn bản trong tiêu đề từ nội dung giả sang nội dung thực trong tệp PDF đầu ra:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Đặc tả ngôn ngữ tự nhiên

|  Mức độ tuân thủ tiêu chuẩn PDF trong Aspose.Words |  Sự hiện diện của yêu cầu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Ngôn ngữ văn bản được chỉ định trong tài liệu Microsoft Word. Aspose.Words xuất ngôn ngữ được chỉ định sang tệp PDF đầu ra có thuộc tính *Lang* được đính kèm với chuỗi nội dung được đánh dấu hoặc thẻ Span – nó được kiểm soát bởi thuộc tính [ExportLanguageToSpanTag](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/exportlanguagetospantag/). Nói chung không có vấn đề về ngôn ngữ khi người dùng nhập văn bản qua Microsoft Word. Nhưng có khả năng ngôn ngữ có thể không chính xác nếu văn bản được tạo tự động.

{{% alert color="secondary" %}}
<details>
    <summary>Thông số kỹ thuật cho chúng ta biết những điều sau (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Ngôn ngữ tự nhiên mặc định cho tất cả văn bản trong một tệp phải được chỉ định bởi mục nhập Lang trong từ điển Danh mục của tài liệu.</p>
    <p>Tất cả nội dung văn bản trong một tệp khác với ngôn ngữ mặc định phải được biểu thị bằng cách sử dụng thuộc tính `Lang` được đính kèm với chuỗi nội dung được đánh dấu hoặc bằng mục nhập Lang trong từ điển thành phần cấu trúc ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Ngoài ra, đối với PDF/UA-1, thông số kỹ thuật cho chúng ta biết những thông tin sau (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Khai báo ngôn ngữ tự nhiên… Khai báo những thay đổi trong ngôn ngữ tự nhiên.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem các ví dụ: cách đảm bảo ngôn ngữ được chỉ định chính xác (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Người dùng phải đảm bảo rằng ngôn ngữ được chỉ định chính xác trong tài liệu Word nguồn:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-language.png" alt="MW Language" style="width:800px"/>
    <p>Hoặc tài liệu PDF đầu ra:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="Acrobat Kiểm traThay đổiNgôn ngữ" style="width:800px"/>
</details>
{{% /alert %}}

### Chú thích hình

|  Mức độ tuân thủ tiêu chuẩn PDF trong Aspose.Words |  Sự hiện diện của yêu cầu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Tài liệu Microsoft Word cho phép người dùng thêm chú thích hình.

{{% alert color="secondary" %}}
<details>
    <summary>Thông số kỹ thuật cho chúng ta biết những điều sau (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Chú thích kèm theo hình sẽ được gắn thẻ Chú thích.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Hiện tại Aspose.Words không thể xuất phụ đề bằng thẻ Caption nên chúng phải được gắn cờ trong tệp PDF đầu ra.

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem ví dụ: cách chèn chú thích (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Trong Microsoft Word, chú thích có thể được chèn thông qua menu ngữ cảnh:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="hình-chú thích-mw" style="width:800px"/>
    <p>Trong Acrobat, chú thích có thể được thêm hoặc thay đổi thông qua hộp thoại Thuộc tính `Object`:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="hình-chú thích-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Mô tả thay thế

|  Mức độ tuân thủ tiêu chuẩn PDF trong Aspose.Words |  Sự hiện diện của yêu cầu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Tài liệu Microsoft Word cho phép người dùng thêm văn bản thay thế vào hình ảnh, hình dạng và bảng. Aspose.Words xuất văn bản thay thế đó sang tệp PDF đầu ra.

{{% alert color="secondary" %}}
<details>
    <summary>Thông số kỹ thuật cho chúng ta biết những điều sau (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Tất cả các thành phần cấu trúc có nội dung không có văn bản tương tự tự nhiên được xác định trước, ví dụ: hình ảnh, công thức, v.v., phải cung cấp mô tả văn bản thay thế bằng cách sử dụng mục Alt trong từ điển thành phần cấu trúc...</p>
    <p>LƯU Ý Các mô tả thay thế cung cấp các mô tả bằng văn bản hỗ trợ việc diễn giải đúng nội dung phi văn bản không rõ ràng.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem các ví dụ: cách đảm bảo rằng tất cả các thành phần đều có văn bản thay thế (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Người dùng phải đảm bảo rằng tất cả các thành phần đều có văn bản thay thế trong tài liệu Word nguồn:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWBảngAltText" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWHình dạngAltText" style="width:800px"/>
    <p>Hoặc tài liệu PDF đầu ra:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatBảngAltText" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatHình dạngAltVăn bản" style="width:800px"/>
</details>
{{% /alert %}}

### Mô tả thay thế cho siêu liên kết

|  Mức độ tuân thủ tiêu chuẩn PDF trong Aspose.Words |  Sự hiện diện của yêu cầu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Ngoài điểm trước, tài liệu Microsoft Word còn cho phép người dùng thêm văn bản thay thế vào siêu liên kết. Aspose.Words xuất văn bản thay thế đó sang tệp PDF đầu ra.

Thật không may, không phải ứng dụng nào cũng cho phép bạn thiết lập mô tả thay thế. Ví dụ: Adobe Acrobat hiện không cho phép thiết lập mô tả như vậy cho các siêu liên kết. Nhưng trong Microsoft Word, bạn có thể thực hiện việc này như sau:

<img src="/words/net/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="description thay thế-siêu liên kết-mw" style="width:800px"/>

Đôi khi có một vấn đề là không thể đặt văn bản thay thế cho các siêu liên kết được tạo tự động trong mục lục (TOC) thông qua GUI Microsoft Word. Aspose.Words có thể cập nhật các trường như vậy và tự tạo các liên kết.

Làm theo mã ví dụ để cập nhật các trường `TOC` bằng Aspose.Words Document Object Model (DOM):

{{< highlight csharp >}}
Document doc = new Document(fileName);

	var tocHyperLinks = doc.Range.Fields
		.Where(f => f.Type == FieldType.FieldHyperlink)
		.Cast<FieldHyperlink>()
		.Where(f => f.HRef.StartsWith("#_Toc"));
	
	foreach (FieldHyperlink link in tocHyperLinks)
		link.ScreenTip = link.DisplayResult;
	
	PdfSaveOptions opt = new PdfSaveOptions()
	{
		Compliance = PdfCompliance.PdfUa1,
		DisplayDocTitle = true,
		ExportDocumentStructure = true,
	};
	opt.OutlineOptions.HeadingsOutlineLevels = 3;
	opt.OutlineOptions.CreateMissingOutlineLevels = true;
	
	var outFile = Path.ChangeExtension(fileName, "_aw.pdf");
	doc.Save(outFile, opt);
{{< /highlight >}}

### Tiêu đề bảng

|  Mức độ tuân thủ tiêu chuẩn PDF trong Aspose.Words |  Sự hiện diện của yêu cầu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Các bảng trong tài liệu PDF/UA-1 phải có tiêu đề – cột, hàng hoặc cả hai. PDF/A chỉ yêu cầu đánh dấu bảng tiêu chuẩn, không có hạn chế bổ sung. Lưu ý rằng Aspose.Words tự động tạo đánh dấu bảng tiêu chuẩn.

{{% alert color="secondary" %}}
<details>
    <summary>Thông số kỹ thuật cho chúng ta biết những điều sau (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Bảng phải bao gồm tiêu đề… Bảng có thể chứa tiêu đề cột, tiêu đề hàng hoặc cả hai.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem các ví dụ: cách đặt tiêu đề bảng (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Tiêu đề bảng có thể được thiết lập trong tài liệu Microsoft Word nguồn:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="bảng tiêu đề-mw" style="width:800px"/>
    <p>Hoặc bản PDF đầu ra:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="tiêu đề bảng-acrobat-tiêu đề-ô" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-acrobat-scope1 tiêu đề" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="tiêu đề bảng-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Văn bản thay thế

|  Mức độ tuân thủ tiêu chuẩn PDF trong Aspose.Words |  Sự hiện diện của yêu cầu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Thông số kỹ thuật cho chúng ta biết những điều sau (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Thông số kỹ thuật cho chúng ta biết những điều sau:</p>
    <p>Tất cả các thành phần cấu trúc văn bản được thể hiện theo cách không chuẩn, ví dụ: các ký tự tùy chỉnh hoặc đồ họa nội tuyến, phải cung cấp văn bản thay thế bằng cách sử dụng mục nhập `ActualText` trong từ điển thành phần cấu trúc...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Tài liệu Microsoft Word không cho phép người dùng đặt văn bản thay thế. Vì vậy, điều này cần được xác minh và sửa trong bản PDF đầu ra:

<img src="/words/net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatVăn bản thay thế" style="width:800px"/>

### Từ viết tắt và mở rộng từ viết tắt

|  Mức độ tuân thủ tiêu chuẩn PDF trong Aspose.Words |  Sự hiện diện của yêu cầu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Thông số kỹ thuật cho chúng ta biết những điều sau (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Tất cả các trường hợp viết tắt và từ viết tắt trong nội dung văn bản phải được đặt theo trình tự nội dung được đánh dấu bằng thẻ Span có thuộc tính E cung cấp phần mở rộng văn bản của từ viết tắt hoặc từ viết tắt...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Tài liệu Microsoft Word không cho phép người dùng thiết lập các từ viết tắt và mở rộng từ viết tắt. Vì vậy, điều này cần được xác minh và sửa trong bản PDF đầu ra:

<img src="/words/net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Tiêu đề tài liệu

|  Mức độ tuân thủ tiêu chuẩn PDF trong Aspose.Words |  Sự hiện diện của yêu cầu |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br /> Tài liệu ở dạng PDF/UA-1 phải có tiêu đề |

{{% alert color="secondary" %}}
<details>
    <summary>Thông số kỹ thuật cho chúng ta biết những điều sau (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Thông số kỹ thuật cho chúng ta biết những điều sau:</p>
    <p>Luồng siêu dữ liệu trong từ điển danh mục của tài liệu sẽ chứa mục nhập dc:title, trong đó dc là tiền tố được đề xuất cho lược đồ siêu dữ liệu Dublin Core…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem các ví dụ: cách đặt tiêu đề tài liệu (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Tiêu đề tài liệu có thể được thiết lập từ tài liệu Microsoft Word nguồn:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/document-title-mw.png" alt="tài liệu-tiêu đề-mw" style="width:800px"/>
    <p>Hoặc bản PDF đầu ra:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="tài liệu-tiêu đề-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Yêu cầu về phông chữ

|  Mức độ tuân thủ tiêu chuẩn PDF trong Aspose.Words |  Sự hiện diện của yêu cầu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Ngoài ra còn có một số sắc thái khi làm việc với phông chữ khi chuyển đổi sang các định dạng PDF/A-1, PDF/A-2, PDF/A-4 hoặc PDF/UA-1 bằng Aspose.Words. Chúng phải được tính đến nếu bạn muốn tránh các vấn đề có thể xảy ra với tài liệu đầu ra.

Các phần bên dưới mô tả các sắc thái và lựa chọn cho giải pháp của họ.

### Yêu cầu pháp lý về phông chữ

|  Mức độ tuân thủ tiêu chuẩn PDF trong Aspose.Words |  Sự hiện diện của yêu cầu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words không xác minh các giới hạn pháp lý của phông chữ được sử dụng – điều này tùy thuộc vào người dùng. Nói cách khác, người dùng không nên cung cấp phông chữ không phù hợp để chuyển đổi PDF bằng Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>Thông số kỹ thuật cho chúng ta biết những điều sau (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Chỉ được sử dụng các chương trình phông chữ có thể nhúng hợp pháp vào một tệp để hiển thị phổ biến, không giới hạn.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (có cùng trích dẫn trong hai thông số kỹ thuật)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  Mức độ tuân thủ tiêu chuẩn PDF trong Aspose.Words |  Sự hiện diện của yêu cầu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Việc sử dụng `.notdef` glyph bị cấm. `.notdef` glyph sẽ xuất hiện nếu tài liệu chứa các ký tự không có trong phông chữ đã chọn và cũng không thể giải quyết được thông qua cơ chế Dự phòng Phông chữ.

{{% alert color="secondary" %}}
<details>
    <summary>Thông số kỹ thuật cho chúng ta biết những điều sau (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Tài liệu tuân thủ không được chứa tham chiếu đến .notdef glyph từ bất kỳ toán tử hiển thị văn bản nào, bất kể chế độ hiển thị văn bản, trong bất kỳ luồng nội dung nào.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (có cùng trích dẫn trong hai thông số kỹ thuật)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem ví dụ: cách xóa hoặc thay thế các ký tự này (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Người dùng nên xóa hoặc thay thế các ký tự này trong tài liệu Word nguồn:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Hoặc xuất tài liệu PDF bằng công cụ "Chỉnh sửa PDF":</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Khu vực sử dụng riêng (PUA)

|  Mức độ tuân thủ tiêu chuẩn PDF trong Aspose.Words |  Sự hiện diện của yêu cầu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Các ký tự trong Khu vực sử dụng riêng (PUA) chủ yếu xuất hiện cho các phông chữ biểu tượng Windows như "Symbol", "Wingdings", "Webdings" và các phông chữ khác. Các định dạng Microsoft Word không cung cấp tùy chọn lưu trữ văn bản thực tế cho các ký tự.

{{% alert color="secondary" %}}
<details>
    <summary>Thông số kỹ thuật cho chúng ta biết những điều sau (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Chỉ dành cho tuân thủ Cấp A, đối với bất kỳ ký tự nào ... được ánh xạ tới một mã hoặc các mã trong Khu vực sử dụng riêng Unicode (PUA), mục nhập Văn bản thực tế ... sẽ xuất hiện cho ký tự này hoặc một chuỗi ký tự trong đó một nhân vật là một phần.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Biểu tượng giao diện người dùng Segoe" là phông chữ Windows Unicode có thể được sử dụng thay thế cho phông chữ tượng trưng.

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem các ví dụ: người dùng nên làm gì để giải quyết vấn đề với phông chữ tượng trưng (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Thay thế phông chữ tượng trưng bằng phông chữ Unicode trong tài liệu Word nguồn:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWChènBiểu tượng" style="width:800px"/>
    <p>Hoặc thêm mục nhậpActualText vào các ký tự có vấn đề trong tài liệu PDF đầu ra:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagVăn bản thực tế" style="width:800px"/>
</details>
{{% /alert %}}
