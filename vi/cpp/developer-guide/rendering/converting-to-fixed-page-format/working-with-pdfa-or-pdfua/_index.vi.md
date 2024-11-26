---
title: Làm việc với PDF/A hoặc PDF/UA
second_title: Aspose.Words cho C++
articleTitle: Làm việc với PDF/A hoặc PDF/UA
linktitle: Làm việc với PDF/A hoặc PDF/UA
description: "Chuyển đổi sang PDF/A-1, PDF/A-2, PDF/A-4 và PDF/UA sử dụng C++. Có một số vấn đề khi chuyển đổi thành tài liệu PDF/A và Aspose.Words cho C++ giải quyết chúng."
type: docs
weight: 38
url: /vi/cpp/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

Định dạng PDF/A và PDF/UA áp đặt một số yêu cầu liên quan đến nội dung tài liệu không thể đáp ứng trong quá trình chuyển đổi tự động từ tài liệu ở Định dạng Word sang PDF. Các yêu cầu này cần được xác minh và sửa chữa trong Tài liệu Word trước khi chuyển đổi hoặc trong tài liệu PDF sau khi chuyển đổi để tạo ra tài liệu tuân thủ đầy đủ PDF/A và PDF/UA.

Các yêu cầu cơ bản dành cho cấu trúc hoặc phông chữ của tài liệu PDF/A và PDF/UA, chúng tôi sẽ xem xét trong các phần sau.

{{% alert color="primary" %}}

Xin lưu ý rằng đầu ra PDF/UA-1 cũng sẽ tuân thủ WCAG 2.0 Và Phần 508.

{{% /alert %}}

## Yêu Cầu Cấu Trúc Tài Liệu

Các yêu cầu hiện tại là dành cho PDF/A-1a, PDF/A-2a, PDF/A-4, và PDF/UA-1 định dạng.

Có một số sắc thái về cách Aspose.Words hoạt động khi chuyển đổi sang các tiêu chuẩn định dạng PDF khác nhau. Chúng phải được tính đến nếu bạn muốn có được kết quả mong đợi.

{{% alert color="primary" %}}

Lưu ý rằng không có yêu cầu cấu trúc logic cho PDF/A-4. Vì lý do này, chúng tôi không xem xét phiên bản PDF/A-4 trong phần "Yêu cầu Cấu trúc Tài liệu" này.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Đặc điểm kỹ thuật cho chúng ta biết những điều sau đây (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Người viết không nên tạo thông tin cấu trúc hoặc ngữ nghĩa bằng các quy trình tự động mà không cần xác minh thích hợp.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Các phần phụ dưới đây mô tả các sắc thái về cách Aspose.Words hoạt động khi chuyển đổi sang các tiêu chuẩn và tùy chọn định dạng PDF khác nhau cho giải pháp của chúng.

### Loại Cấu Trúc

| PDF mức độ tuân thủ tiêu chuẩn trong Aspose.Words | Sự hiện diện của yêu cầu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Tài liệu PDF là một chuỗi các khối như tiêu đề, đoạn văn, bảng và các khối khác. Các khối này tạo thành một cấu trúc tài liệu – mạnh hoặc yếu.

Cả cấu trúc mạnh và yếu đều có giá trị cho PDF/A. Microsoft Word tài liệu có cấu trúc yếu theo thiết kế và Aspose.Words tạo PDF với cấu trúc yếu tương ứng và cũng tạo tiêu đề theo mức phác thảo của các đoạn trong tài liệu nguồn.

Đối với một tài liệu PDF/UA-1 có cấu trúc yếu, ngoài ra, các số tiêu đề phải đi theo thứ tự mà không có khoảng trống.

{{% alert color="secondary" %}}
<details>
    <summary>Đặc điểm kỹ thuật cho chúng ta biết những điều sau đây (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Cấu trúc cấp khối có thể tuân theo một trong hai mô hình chính:</p>
    </ol>
      <li>Cấu trúc mạnh mẽ. Các yếu tố nhóm làm tổ đến nhiều cấp độ cần thiết để phản ánh việc tổ chức tài liệu thành các bài báo, phần, tiểu mục, v. v. Ở mỗi cấp độ, các phần tử con của phần tử nhóm phải bao gồm một tiêu đề (H), một hoặc nhiều đoạn (P) cho nội dung ở cấp độ đó và có lẽ một hoặc nhiều phần tử nhóm bổ sung cho các phần phụ lồng nhau.</li>
      <li>Cấu trúc yếu. Tài liệu tương đối bằng phẳng, có lẽ chỉ có một hoặc hai cấp độ của các phần tử nhóm, với tất cả các tiêu đề, đoạn văn và BLSEs khác là con cái trực tiếp của chúng. Trong trường hợp này, việc tổ chức vật liệu không được phản ánh trong cấu trúc logic; tuy nhiên, nó có thể được thể hiện bằng cách sử dụng các tiêu đề với các cấp độ cụ thể (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Đối với tài liệu PDF/UA-1, thông số kỹ thuật chứa một bổ sung liên quan đến các cấp tiêu đề (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Nếu ngữ nghĩa tài liệu yêu cầu một chuỗi tiêu đề giảm dần, một chuỗi như vậy sẽ tiến hành theo thứ tự số nghiêm ngặt và không được bỏ qua mức tiêu đề can thiệp. H1 H2 H3 được cho phép, trong khi H1 H3 thì không.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Để đảm bảo đầu ra chính xác, người dùng phải đảm bảo rằng nội dung tài liệu nguồn được sắp xếp hợp lý và các mức phác thảo được chỉ định chính xác cho các đoạn văn. Nếu không, người dùng nên xác minh và sửa cấu trúc của tài liệu PDF đầu ra.

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem các ví dụ: cách đặt các mức phác thảo trong Microsoft Word hoặc kiểm tra và sửa cấu trúc của tài liệu PDF đầu ra (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Trong Microsoft Word các kiểu "Tiêu Đề X" mặc định có thể được sử dụng để đặt mức phác thảo:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Ngoài ra, mức phác thảo có thể được kiểm tra hoặc thay đổi trong cửa sổ "Đoạn văn":</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>Trong Acrobat, cấu trúc tài liệu có thể được kiểm tra hoặc thay đổi trong ngăn "Thẻ":</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Đánh Dấu Nội Dung như Một Hiện vật

| PDF mức độ tuân thủ tiêu chuẩn trong Aspose.Words | Sự hiện diện của yêu cầu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Hiện tại, Aspose.Words đánh dấu đầu trang và chân trang, dấu phân cách ghi chú, ô tiêu đề bảng lặp lại và hình ảnh trang trí làm hiện vật. Lưu ý rằng danh sách này có thể được cập nhật trong tương lai.

{{% alert color="secondary" %}}
<details>
    <summary>Đặc điểm kỹ thuật cho chúng ta biết những điều sau đây (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Các đối tượng đồ họa trong tài liệu có thể được chia thành hai lớp:</p>
    </ol>
      <li>Nội dung thực của một tài liệu bao gồm các đối tượng đại diện cho tài liệu ban đầu được giới thiệu bởi tác giả của tài liệu.</li>
      <li>Hiện vật là các đối tượng đồ họa không phải là một phần của nội dung gốc của tác giả mà được tạo ra bởi người viết phù hợp trong quá trình phân trang, bố cục hoặc các quy trình cơ học nghiêm ngặt khác.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Nếu tài liệu chứa bất kỳ nội dung nào khác nên được đánh dấu là tạo tác hoặc nếu bất kỳ nội dung tạo tác nào là nội dung thực, khách hàng nên sửa nội dung đó trong đầu ra PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể thấy các ví dụ: cách đánh dấu các hình dạng là trang trí trong Microsoft Word hoặc đánh dấu hình dạng như một tạo tác trong tài liệu PDF đầu ra (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Ví dụ: hình dạng có thể được đánh dấu là trang trí trong Microsoft Word, vì vậy chúng sẽ được xuất sang PDF dưới dạng hiện vật:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Bạn có thể đánh dấu hình dạng như một tạo tác trong đầu ra PDF:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Ngoài ra, bạn có thể chuyển văn bản trong tiêu đề từ tạo phẩm sang nội dung thực trong đầu ra PDF:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Đặc Điểm Kỹ Thuật Ngôn Ngữ Tự Nhiên

| PDF mức độ tuân thủ tiêu chuẩn trong Aspose.Words | Sự hiện diện của yêu cầu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Ngôn ngữ văn bản được chỉ định trong tài liệu Microsoft Word. Aspose.Words xuất ngôn ngữ được chỉ định sang đầu ra PDF với thuộc tính *Lang* được gắn vào chuỗi nội dung được đánh dấu hoặc thẻ Nhịp-nó được điều khiển bởi thuộc tính [ExportLanguageToSpanTag](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_exportlanguagetospantag/). Nói chung không có vấn đề ngôn ngữ khi văn bản được nhập bởi người dùng thông qua Microsoft Word. Nhưng có khả năng ngôn ngữ có thể không chính xác nếu văn bản được tạo tự động.

{{% alert color="secondary" %}}
<details>
    <summary>Đặc điểm kỹ thuật cho chúng ta biết những điều sau đây (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Ngôn ngữ tự nhiên mặc định cho tất cả văn bản trong một tệp phải được chỉ định bởi mục Lang trong từ điển Danh mục của tài liệu.</p>
    <p>Tất cả nội dung văn bản trong một tệp khác với ngôn ngữ mặc định phải được chỉ định bằng cách sử dụng thuộc tính `Lang` được gắn vào chuỗi nội dung được đánh dấu hoặc bằng mục Lang trong từ điển phần tử cấu trúc ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Ngoài ra đối với PDF/UA-1, thông số kỹ thuật cho chúng ta biết những điều sau (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Ngôn ngữ tự nhiên sẽ được khai báo... Những Thay đổi trong ngôn ngữ tự nhiên sẽ được khai báo.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem các ví dụ: cách đảm bảo rằng ngôn ngữ được chỉ định chính xác (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Người dùng nên đảm bảo rằng ngôn ngữ được chỉ định chính xác trong tài Liệu Word nguồn:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Hoặc tài liệu đầu ra PDF:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Chú Thích Hình

| PDF mức độ tuân thủ tiêu chuẩn trong Aspose.Words | Sự hiện diện của yêu cầu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word tài liệu cho phép người dùng thêm chú thích hình.

{{% alert color="secondary" %}}
<details>
    <summary>Đặc điểm kỹ thuật cho chúng ta biết những điều sau đây (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Một chú thích đi kèm với một con số sẽ được gắn Thẻ Với một thẻ Chú thích.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Hiện tại Aspose.Words không thể xuất chú thích bằng thẻ Chú thích, vì vậy chúng phải được gắn cờ trong đầu ra PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem các ví dụ: cách chèn chú thích (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Trong Microsoft Word, chú thích có thể được chèn thông qua menu ngữ cảnh:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>Trong Acrobat, chú thích có thể được thêm hoặc thay đổi thông qua hộp thoại Thuộc tính `Object`:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Mô Tả Thay Thế

| PDF mức độ tuân thủ tiêu chuẩn trong Aspose.Words | Sự hiện diện của yêu cầu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word tài liệu cho phép người dùng thêm văn bản thay thế vào hình ảnh, hình dạng và bảng. Aspose.Words xuất một văn bản thay thế như vậy sang đầu ra PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Đặc điểm kỹ thuật cho chúng ta biết những điều sau đây (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Tất cả các yếu tố cấu trúc có nội dung không có tương tự văn bản được xác định trước tự nhiên, ví dụ: hình ảnh, công thức, v. v., nên cung cấp một mô tả văn bản thay thế bằng cách sử dụng mục alt trong từ điển phần tử cấu trúc...</p>
    <p>NOTE Các mô tả Thay thế cung cấp các mô tả văn bản hỗ trợ việc giải thích đúng nội dung phi văn bản không rõ ràng.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem các ví dụ: cách đảm bảo rằng tất cả các phần tử có một văn bản thay thế (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Người dùng nên đảm bảo rằng tất cả các yếu tố có một văn bản thay thế trong tài Liệu Word nguồn:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Hoặc tài liệu đầu ra PDF:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Mô tả thay thế Cho Các Siêu Liên Kết

| PDF mức độ tuân thủ tiêu chuẩn trong Aspose.Words | Sự hiện diện của yêu cầu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Ngoài điểm trước, tài liệu Microsoft Word cũng cho phép người dùng thêm văn bản thay thế vào các siêu liên kết. Aspose.Words xuất một văn bản thay thế như vậy sang đầu ra PDF.

Thật không may, không phải mọi ứng dụng đều cho phép bạn thiết lập một mô tả thay thế. Ví dụ: Adobe Acrobat hiện không cho phép thiết lập mô tả như vậy cho các siêu liên kết. Nhưng trong Microsoft Word, bạn có thể làm điều này như sau:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Đôi khi có một vấn đề là không thể đặt văn bản alt cho các siêu liên kết được tạo tự động trong mục lục (TOC) thông qua Microsoft Word GUI. Aspose.Words có thể cập nhật các trường như vậy và tự tạo các liên kết.

Làm theo ví dụ mã để cập nhật các trường `TOC` bằng Mô hình Đối tượng Tài liệu Aspose.Words (DOM):

{{< highlight cpp >}}
auto doc = MakeObject<Document>(filename);
auto tocHyperLinks = doc->get_Range()->get_Fields()->
    LINQ_Where([](SharedPtr<Field> f) {return f->get_Type() == FieldType::FieldHyperlink; })->            
    LINQ_Where([](SharedPtr<FieldHyperlink> f) { return f->get_DisplayResult().StartsWith(u"#_Toc"); });

for (const auto& link : tocHyperLinks)
    link->set_ScreenTip(link->get_DisplayResult());

auto opt = MakeObject<PdfSaveOptions>();
opt->set_Compliance(PdfCompliance::PdfUa1);
opt->set_DisplayDocTitle(true);
opt->set_ExportDocumentStructure(true);
opt->get_OutlineOptions()->set_HeadingsOutlineLevels(3);
opt->get_OutlineOptions()->set_CreateMissingOutlineLevels(true);

auto outFile = filename.substr(0, filename.find_last_of('.')) + "_aw.pdf";
doc->Save(outFile, opt);
{{< /highlight >}}

### Tiêu Đề Bảng

| PDF mức độ tuân thủ tiêu chuẩn trong Aspose.Words | Sự hiện diện của yêu cầu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Các bảng trong PDF/UA-1 tài liệu phải có tiêu đề – cột, hàng hoặc cả hai. PDF/A chỉ yêu cầu đánh dấu bảng tiêu chuẩn, không có hạn chế bổ sung. Lưu ý rằng Aspose.Words tự động tạo đánh dấu bảng tiêu chuẩn.

{{% alert color="secondary" %}}
<details>
    <summary>Đặc điểm kỹ thuật cho chúng ta biết những điều sau đây (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Bảng nên bao gồm tiêu đề... Bảng có thể chứa tiêu đề cột, tiêu đề hàng hoặc cả hai.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem các ví dụ: cách đặt tiêu đề bảng (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Tiêu đề bảng có thể được thiết lập hoặc tài liệu nguồn Microsoft Word:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Hoặc đầu ra PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Văn Bản Thay Thế

| PDF mức độ tuân thủ tiêu chuẩn trong Aspose.Words | Sự hiện diện của yêu cầu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Đặc điểm kỹ thuật cho chúng ta biết những điều sau đây (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Đặc điểm kỹ thuật cho chúng ta biết những điều sau:</p>
    <p>Tất cả các phần tử cấu trúc văn bản được biểu diễn theo cách không chuẩn, ví dụ: ký tự tùy chỉnh hoặc đồ họa nội tuyến, nên cung cấp văn bản thay thế bằng cách sử dụng mục `ActualText` trong từ điển phần tử cấu trúc...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word tài liệu không cho phép người dùng đặt văn bản thay thế. Vì vậy, điều này cần được xác minh và cố định trong đầu ra PDF:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Viết tắt Và Từ Viết Tắt Mở rộng

| PDF mức độ tuân thủ tiêu chuẩn trong Aspose.Words | Sự hiện diện của yêu cầu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Đặc điểm kỹ thuật cho chúng ta biết những điều sau đây (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Tất cả các trường hợp viết tắt và từ viết tắt trong nội dung văn bản nên được đặt trong một chuỗi nội dung được đánh dấu với thẻ Span có thuộc Tính E cung cấp mở rộng văn bản của chữ viết tắt hoặc từ viết tắt...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word tài liệu không cho phép người dùng đặt các từ viết tắt và từ viết tắt mở rộng. Vì vậy, điều này cần được xác minh và cố định trong đầu ra PDF:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Tiêu Đề Tài Liệu

| PDF mức độ tuân thủ tiêu chuẩn trong Aspose.Words | Sự hiện diện của yêu cầu |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />Tài liệu trong PDF/UA-1 nên có tiêu đề. |

{{% alert color="secondary" %}}
<details>
    <summary>Đặc điểm kỹ thuật cho chúng ta biết những điều sau đây (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Đặc điểm kỹ thuật cho chúng ta biết những điều sau:</p>
    <p>Luồng Siêu Dữ liệu trong từ điển danh mục của tài liệu sẽ chứa mục nhập dc: title, trong đó dc là tiền tố được đề xuất cho lược đồ siêu dữ liệu Lõi Dublin…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem các ví dụ: cách đặt tiêu đề tài liệu (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Tiêu đề tài liệu có thể được thiết lập hoặc tài liệu nguồn Microsoft Word:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Hoặc đầu ra PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Yêu Cầu Phông Chữ

| PDF mức độ tuân thủ tiêu chuẩn trong Aspose.Words | Sự hiện diện của yêu cầu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Ngoài ra còn có một số sắc thái khi làm việc với phông chữ khi chuyển đổi sang PDF/A-1, PDF/A-2, PDF/A-4 hoặc PDF/UA-1 định dạng sử dụng Aspose.Words. Chúng phải được tính đến nếu bạn muốn tránh các vấn đề có thể xảy ra với tài liệu đầu ra.

Các phần dưới đây mô tả các sắc thái và tùy chọn như vậy cho giải pháp của họ.

### Yêu Cầu Pháp Lý Về Phông Chữ

| PDF mức độ tuân thủ tiêu chuẩn trong Aspose.Words | Sự hiện diện của yêu cầu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words không xác minh các hạn chế pháp lý của phông chữ đã sử dụng – tùy thuộc vào người dùng. Nói cách khác, người dùng không nên cung cấp phông chữ không phù hợp cho PDF chuyển đổi bằng Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>Đặc điểm kỹ thuật cho chúng ta biết những điều sau đây (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Chỉ các chương trình phông chữ có thể nhúng hợp pháp trong một tệp để hiển thị phổ quát, không giới hạn mới được sử dụng.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (chính xác cùng một trích dẫn trong hai thông số kỹ thuật)</p>
</details>
{{% /alert %}}

### .m Glyph

| PDF mức độ tuân thủ tiêu chuẩn trong Aspose.Words | Sự hiện diện của yêu cầu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Việc sử dụng glyph `.notdef` bị cấm. Glyph `.notdef` sẽ xuất hiện nếu một tài liệu chứa các ký tự không có trong phông chữ đã chọn và cũng không thể được giải quyết thông qua cơ chế Dự phòng Phông chữ.

{{% alert color="secondary" %}}
<details>
    <summary>Đặc điểm kỹ thuật cho chúng ta biết những điều sau đây (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Một tài liệu phù hợp sẽ không chứa một tham chiếu đến .notdef glyph từ bất kỳ văn bản nào hiển thị các toán tử, bất kể chế độ kết xuất văn bản, trong bất kỳ luồng nội dung nào.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (chính xác cùng một trích dẫn trong hai thông số kỹ thuật)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem các ví dụ: cách xóa hoặc thay thế các ký tự này (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Người dùng nên xóa hoặc thay thế các ký tự này trong tài Liệu Word nguồn:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Hoặc tài liệu đầu ra PDF bằng công cụ" Chỉnh sửa PDF":</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Khu Vực Sử Dụng Riêng (PUA)

| PDF mức độ tuân thủ tiêu chuẩn trong Aspose.Words | Sự hiện diện của yêu cầu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

Các ký tự khu Vực sử dụng riêng (PUA) xuất hiện chủ yếu cho các phông chữ tượng trưng Windows như "Biểu tượng", "Wingdings", "Webdings" và các phông chữ khác. Microsoft Word định dạng không cung cấp một tùy chọn để lưu trữ văn bản thực tế cho các ký tự.

{{% alert color="secondary" %}}
<details>
    <summary>Đặc điểm kỹ thuật cho chúng ta biết những điều sau đây (mở rộng để xem chi tiết):</summary>
    <p></p>
    <p>Đối Với Mức Độ phù hợp chỉ, cho bất kỳ nhân vật ... điều đó được ánh xạ tới một mã hoặc mã trong Khu Vực Sử dụng Riêng Unicode (PUA), một mục ActualText... sẽ có mặt cho nhân vật này hoặc một chuỗi các ký tự trong đó một nhân vật như vậy là một phần.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Biểu tượng Segoe UI" là phông Chữ Unicode Windows có thể được sử dụng thay thế cho phông chữ tượng trưng.

{{% alert color="secondary" %}}
<details>
    <summary>Trong khối này, bạn có thể xem các ví dụ: người dùng nên làm gì để giải quyết vấn đề với phông chữ tượng trưng (mở rộng để xem chi tiết).</summary>
    <p></p>
    <p>Thay thế phông chữ tượng trưng bằng Một Unicode trong tài liệu Word nguồn:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Hoặc thêm một mục ActualText vào các ký tự có vấn đề trong tài liệu PDF đầu ra:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
