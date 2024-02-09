---
title: Tổng quan về các trường trong C#
second_title: Aspose.Words cho .NET
articleTitle: Tổng quan về trường
linktitle: Tổng quan về trường
description: "Tính năng chi tiết của các trường, mã trường và kết quả trường được giải thích trong Aspose.Words cho .NET."
type: docs
weight: 10
url: /vi/net/fields-overview/
---

Aspose.Words là thư viện lớp được thiết kế để xử lý tài liệu Microsoft Word phía máy chủ và hỗ trợ các trường theo các cách sau:

- tất cả các trường trong tài liệu được giữ nguyên trong quá trình mở/lưu và chuyển đổi
- có thể cập nhật kết quả của hầu hết các trường

Trong bài viết này, chúng ta sẽ tìm hiểu thêm về cấu trúc trường, các trường được hỗ trợ trong Aspose.Words và chi tiết cách làm việc với các trường đó.

## Cấu trúc trường

Một trường bao gồm:

- Nút bắt đầu trường và nút phân cách được sử dụng để bao gồm nội dung tạo nên mã trường (thường ở dạng văn bản thuần túy).
- Dấu phân cách trường và cuối trường bao gồm kết quả của trường. Điều này có thể được tạo thành từ nhiều loại nội dung khác nhau, từ các dòng văn bản, đoạn văn đến bảng biểu.
- Một số trường có thể không có dấu phân cách nghĩa là toàn bộ nội dung tạo thành mã trường.
- Mã trường xác định hành vi của trường và bao gồm mã định danh trường và thường là các tham số khác như tên trường và công tắc.
- Kết quả trường chứa đánh giá gần đây nhất của trường. Giá trị này được lưu trữ trong kết quả trường và là những gì được hiển thị cho người dùng. Một số trường có thể không có bất kỳ kết quả trường nào, do đó sẽ không hiển thị bất kỳ nội dung nào trong tài liệu. Tương tự, một số trường có thể chưa được cập nhật nên cũng sẽ không có kết quả trường.

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

Nội dung tạo nên mã trường được lưu trữ dưới dạng các nút [Run](https://reference.aspose.com/words/net/aspose.words/run/) giữa [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) và [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/). Kết quả trường được lưu trữ giữa các nút **FieldSeparator** và [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) và có thể được tạo thành từ nhiều loại nội dung khác nhau. Thông thường, kết quả trường chỉ chứa văn bản được tạo thành từ các nút **Run**, tuy nhiên, nút **FieldEnd** có thể được đặt ở một đoạn hoàn toàn khác và do đó làm cho kết quả trường bao gồm [Mức độ logic của các nút trong tài liệu](/words/vi/net/logical-levels-of-nodes-in-a-document/) chẳng hạn như các nút **Table** và **Paragraph**.

Dưới đây là chế độ xem cách một trường được lưu trữ trong Aspose.Words bằng cách sử dụng ví dụ "*DocumentExplorer"* có thể tìm thấy trên [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## Các trường trong Aspose.Words Document Object Model (DOM)

Khi một tài liệu được tải vào Aspose.Words, các trường của tài liệu sẽ được tải vào [Aspose.Words Document Object Model (DOM)](/words/vi/net/aspose-words-document-object-model/) dưới dạng một tập hợp các thành phần (nút) riêng biệt. Một trường duy nhất được tải dưới dạng tập hợp các nút **FieldStart**, **FieldSeparator** và **FieldEnd** cùng với nội dung ở giữa các nút này. Nếu một trường không có kết quả trường thì sẽ không có nút **FieldSeparator**. Tất cả các nút này luôn được tìm thấy nội tuyến (là con của [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) hoặc [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/).

Trong Aspose.Words, mỗi nút **FieldXXX** đều xuất phát từ [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/). Lớp này cung cấp một thuộc tính để kiểm tra loại trường được biểu thị bởi nút được chỉ định thông qua thuộc tính [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/). Ví dụ **FieldType.FieldMergeField** đại diện cho trường hợp nhất trong tài liệu.

{{% alert color="primary" %}}

Có một số trường cụ thể tồn tại trong tài liệu Word không được nhập vào Aspose.Words dưới dạng tập hợp các nút **FieldXXX**. Ví dụ: trường `LINK` và trường `INCLUDEPICTURE` được nhập vào Aspose.Words dưới dạng đối tượng [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/). Đối tượng này cung cấp các thuộc tính để làm việc với dữ liệu hình ảnh thường được lưu trữ trong các trường này. Để nhập trường `INCLUDEPICTURE` dưới dạng nút **FieldXXX**, tùy chọn [PreserveIncludePictureField](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) phải được chỉ định dưới dạng **true**.

Các trường biểu mẫu cũng được nhập vào Aspose.Words dưới dạng lớp đặc biệt của riêng chúng. Lớp [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) đại diện cho một trường biểu mẫu trong tài liệu Word và cung cấp các phương thức bổ sung dành riêng cho trường biểu mẫu.

{{% /alert %}}

## Các trường được hỗ trợ

Tính toán các trường sau được hỗ trợ trong phiên bản Aspose.Words hiện tại:

- = (công thức)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Phân tích trường phức tạp

Aspose.Words tuân theo cách Microsoft Word xử lý các trường và kết quả là nó xử lý chính xác:

- các trường lồng nhau:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- đối số trường có thể là kết quả của trường lồng nhau
- các trường có thể được lồng trong mã trường cũng như trong kết quả của trường
- dấu cách/không có dấu cách, dấu ngoặc kép/không dấu ngoặc kép, ký tự thoát trong các trường, v.v.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- các trường trải rộng trên nhiều đoạn văn

### Trường công thức

Aspose.Words cung cấp cách triển khai công cụ công thức rất nghiêm túc và hỗ trợ những tính năng sau:

- Các toán tử số học và logic:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- chức năng:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- tham chiếu đến dấu trang:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- công tắc định dạng số:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Các hàm sau trong biểu thức được hỗ trợ: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### Trường `IF` và `COMPARE`

Chỉ một số biểu thức `IF` mà Aspose.Words có thể dễ dàng tính toán sẽ cho bạn ý tưởng về tính năng này mạnh mẽ như thế nào:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### Trường `DATE` và `TIME`

Aspose.Words hỗ trợ tất cả các công tắc định dạng ngày và giờ có sẵn trong Microsoft Word, một số ví dụ là:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Trường Mail Merge

Aspose.Words không áp đặt giới hạn nào về độ phức tạp của các trường mail merge trong tài liệu của bạn và hỗ trợ các trường công thức và `IF` lồng nhau, đồng thời thậm chí có thể tính toán tên của trường hợp nhất bằng công thức.

Một số ví dụ về trường mail merge mà Aspose.Words hỗ trợ:

- Công tắc trường Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- các trường hợp nhất lồng nhau trong một công thức:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- tính tên của trường hợp nhất khi chạy:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- điều kiện di chuyển tới bản ghi tiếp theo trong nguồn dữ liệu:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Chuyển đổi định dạng

Một trường trong tài liệu có thể có các công tắc định dạng chỉ định cách định dạng giá trị kết quả. Aspose.Words hỗ trợ các chuyển đổi định dạng sau:

- \\\@ – định dạng ngày và giờ
- \\\# – định dạng số
- \\\* Mũ
- \\\* FirstCap
- \\\* Thấp hơn
- \\\* Phía trên
- \\\* CHARFORMAT – định dạng kết quả theo ký tự đầu tiên của mã trường
- \\\* MERGEFORMAT – định dạng kết quả theo cách định dạng kết quả cũ

### Date và định dạng số trong trường

Khi Aspose.Words tính toán kết quả trường, nó thường cần phân tích cú pháp một chuỗi thành giá trị số hoặc ngày, đồng thời định dạng lại thành chuỗi. Theo mặc định, Aspose.Words sử dụng văn hóa luồng hiện tại để thực hiện phân tích cú pháp và định dạng khi tính toán giá trị trường trong quá trình cập nhật trường và mail merge. Ngoài ra còn có các tùy chọn được cung cấp dưới dạng lớp [FieldOptions](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/) cho phép kiểm soát sâu hơn về nền văn hóa nào được sử dụng trong quá trình cập nhật trường.

- theo mặc định, thuộc tính [FieldUpdateCultureSource](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) được đặt thành [CurrentThread](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) để định dạng các trường bằng cách sử dụng văn hóa luồng hiện tại
- thuộc tính này có thể được đặt thành [FieldCode](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) để ngôn ngữ được đặt từ mã trường của trường được sử dụng để định dạng thay thế

### Định dạng bằng Văn hóa của Chủ đề Hiện tại

Để kiểm soát văn hóa được sử dụng trong quá trình tính toán trường, chỉ cần đặt thuộc tính **Thread.CurrentThread.CurrentCulture** thành văn hóa bạn chọn trước khi gọi tính toán trường.

Ví dụ về mã sau đây cho biết cách thay đổi văn hóa được sử dụng trong các trường định dạng trong quá trình cập nhật:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

Việc sử dụng văn hóa hiện tại để định dạng các trường cho phép hệ thống kiểm soát dễ dàng và nhất quán cách định dạng tất cả các trường trong tài liệu trong quá trình cập nhật trường.

### Định dạng bằng Văn hóa trong Tài liệu

Mặt khác, Microsoft Word định dạng từng trường riêng lẻ dựa trên ngôn ngữ của văn bản được tìm thấy trong trường đó (cụ thể là các dòng chạy từ mã trường). Đôi khi trong quá trình cập nhật trường, đây có thể là hành vi mong muốn, ví dụ: nếu bạn có tài liệu toàn cầu hóa chứa nội dung được tạo thành từ nhiều ngôn ngữ khác nhau và muốn mỗi trường tôn trọng ngôn ngữ được sử dụng trong văn bản. Aspose.Words cũng hỗ trợ chức năng này.

Lớp [Document](https://reference.aspose.com/words/net/aspose.words/document/) cung cấp thuộc tính [FieldOptions](https://reference.aspose.com/words/net/aspose.words/document/fieldoptions/) chứa các thành viên có thể được sử dụng để kiểm soát cách cập nhật các trường trong tài liệu.

Ví dụ về mã sau đây cho biết cách chỉ định vị trí văn hóa được sử dụng để định dạng ngày trong quá trình cập nhật trường và mail merge được chọn từ đó:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
