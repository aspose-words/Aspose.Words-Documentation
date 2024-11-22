---
title: Tổng quan về các trường trong C++
second_title: Aspose.Words cho C++
articleTitle: Tổng Quan Về Lĩnh Vực
linktitle: Tổng Quan Về Lĩnh Vực
description: "Các trường tính năng chi tiết, mã trường và kết quả trường được giải thích trong Aspose.Words cho C++."
type: docs
weight: 10
url: /vi/cpp/fields-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words là một thư viện lớp được thiết kế để xử lý phía máy chủ các tài liệu Microsoft Word và hỗ trợ các trường theo các cách sau:

- tất cả các trường trong tài liệu được bảo toàn trong quá trình mở/lưu và chuyển đổi
- có thể cập nhật kết quả của hầu hết các trường

Trong bài viết này, chúng ta sẽ tìm hiểu thêm về cấu trúc trường, các trường được hỗ trợ trong Aspose.Words và chi tiết làm việc với các trường đó.

## Cấu Trúc Trường

Một lĩnh vực bao gồm:

- Các nút bắt đầu trường và dấu phân cách được sử dụng để bao gồm nội dung tạo nên mã trường (thường là văn bản thuần túy).
- Dấu phân cách trường và đầu trường bao gồm kết quả trường. Điều này có thể được tạo thành từ nhiều loại nội dung khác nhau, từ chạy văn bản đến đoạn văn đến bảng.
- Một số trường có thể không có dấu phân cách có nghĩa là toàn bộ nội dung tạo nên mã trường.
- Mã trường xác định hành vi của trường và bao gồm định danh trường và thường là các tham số khác như tên trường và công tắc.
- Kết quả trường chứa đánh giá gần đây nhất của trường. Giá trị này được lưu trữ trong kết quả trường và là những gì được hiển thị cho người dùng. Một số trường có thể không có bất kỳ kết quả trường nào, do đó sẽ không hiển thị bất cứ điều gì trong tài liệu. Tương tự như vậy, một số trường có thể chưa được cập nhật do đó cũng sẽ không có kết quả trường.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

Nội dung tạo nên mã trường được lưu trữ dưới dạng các nút [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) giữa [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) và [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/). Kết quả trường được lưu trữ giữa các nút **FieldSeparator** và [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) và có thể được tạo thành từ nhiều loại nội dung khác nhau. Thông thường, kết quả trường chỉ chứa văn bản được tạo thành từ các nút **Run**, tuy nhiên có thể nút **FieldEnd** được đặt trong một đoạn hoàn toàn khác và do đó làm cho kết quả trường bao gồm [các nút cấp khối](/words/cpp/logical-levels-of-nodes-in-a-document/) chẳng hạn như các nút **Table** và **Paragraph** là tốt.

Dưới đây là cách xem một trường được lưu trữ trong Aspose.Words bằng cách sử dụng ví dụ "*DocumentExplorer"*.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## Các trường trong Mô hình Đối tượng Tài liệu Aspose.Words (DOM)

Khi một tài liệu được tải vào Aspose.Words, các trường của tài liệu được tải vào [Aspose.Words Mô Hình Đối Tượng Tài Liệu](/words/cpp/aspose-words-document-object-model/) là một tập hợp các thành phần riêng biệt (nút). Một trường duy nhất được tải dưới dạng tập hợp các nút **FieldStart**, **FieldSeparator** và **FieldEnd** cùng với nội dung ở giữa các nút này. Nếu một trường không có kết quả trường thì sẽ không có nút **FieldSeparator**. Tất cả các nút này luôn được tìm thấy nội tuyến (là con của [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) hoặc [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

Trong Aspose.Words mỗi nút **FieldXXX** bắt nguồn từ [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/). Lớp này cung cấp một thuộc tính để kiểm tra loại trường được biểu thị bằng nút được chỉ định thông qua thuộc tính [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/). Ví dụ **FieldType.FieldMergeField** đại diện cho một trường hợp nhất trong tài liệu.

{{% alert color="primary" %}}

Có một số trường cụ thể tồn tại trong Tài liệu Word không được nhập vào Aspose.Words dưới dạng tập hợp các nút **FieldXXX**. Ví dụ, trường `LINK` và trường `INCLUDEPICTURE` được nhập vào Aspose.Words dưới dạng đối tượng `Shape`. Đối tượng này cung cấp các thuộc tính để làm việc với dữ liệu hình ảnh thường được lưu trữ trong các trường này. Để nhập trường `INCLUDEPICTURE` dưới dạng **FieldXXX** nút, tùy chọn [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) phải được chỉ định là **true**.

Các trường biểu mẫu cũng được nhập vào Aspose.Words làm lớp đặc biệt của riêng chúng. Lớp [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) đại diện cho một trường biểu mẫu trong Tài liệu Word và cung cấp các phương thức bổ sung dành riêng cho trường biểu mẫu.

{{% /alert %}}

## Các Trường Được Hỗ Trợ

Tính toán các trường sau được hỗ trợ trong phiên bản hiện tại của Aspose.Words:

- = (công thức)
`ADDRESSBLOCK`
`ASK`
`AUTHOR`
`AUTONUM`
`AUTONUMLGL`
`AUTONUMOUT`
`AUTOTEXT`
`BARCODE`
`COMMENTS`
`COMPARE`
`CREATEDATE`
`DATABASE`
`DATE`
`DISPLAYBARCODE`
`DOCPROPERTY`
`DOCVARIABLE`
`EDITTIME`
`EQ`
`FILENAME`
`FILESIZE`
`FILLIN`
`FORMCHECKBOX`
`FORMDROPDOWN`
`FORMTEXT`
`GLOSSARY`
`GOTOBUTTON`
`GREETINGLINE`
`HYPERLINK`
`IF`
`IMPORT`
`INCLUDE`
`INCLUDEPICTURE`
`INCLUDETEXT`
`INDEX`
`INFO`
`KEYWORDS`
`LASTSAVEDBY`
`LISTNUM`
`MACROBUTTON`
`MERGEBARCODE`
`MERGEFIELD`
`MERGEREC`
`MERGESEQ`
`NEXT`
`NEXTIF`
`NOTEREF`
`NUMCHARS`
`NUMPAGES`
`NUMWORDS`
`PAGE`
`PAGEREF`
`PRINTDATE`
`QUOTE`
`REF`
`REVNUM`
`SAVEDATE`
`SECTION`
`SECTIONPAGES`
`SEQ`
`SET`
`SHAPE`
`SKIPIF`
`STYLEREF`
`SUBJECT`
`SYMBOL`
`TEMPLATE`
`TIME`
`TITLE`
`TOA`
`TOC`
`USERADDRESS`
`USERINITIALS`
`USERNAME`

## Phân Tích Trường Tinh Vi

Aspose.Words theo cách Microsoft Word xử lý các trường và kết quả là nó xử lý chính xác:

- trường lồng nhau:
`IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- đối số trường có thể là kết quả của một trường lồng nhau
- các trường có thể được lồng trong một mã trường cũng như trong kết quả trường
- không gian/không có không gian, dấu ngoặc kép/không có dấu ngoặc kép, nhân vật thoát trong lĩnh vực vv.:
`MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- các trường trải dài trên nhiều đoạn văn

### Lĩnh Vực Công Thức

Aspose.Words cung cấp một triển khai rất nghiêm túc của công cụ công thức và hỗ trợ như sau:

- toán tử số học và logic:
`=(54+4*(6-77)-(5))+(-6-5)/4/5`
- chức năng:
`=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- tham chiếu đến dấu trang:
`=IF(C>4, 5,ABS(A)*.76) +3.85`
- công tắc định dạng số:
`=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Các chức năng sau trong biểu thức được hỗ trợ: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

Chỉ cần một số biểu thức `IF` mà Aspose.Words có thể dễ dàng tính toán sẽ cung cấp cho bạn ý tưởng về tính năng này mạnh mẽ như thế nào:

`IF 3 > 5.7^4+MAX(4,3) True False`
`IF "abcd" > "abc" True False`
`IF "?ab*" = "1abdsg" True False`
`IF 4 = "2*2" True False`
`COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words hỗ trợ tất cả các công tắc định dạng ngày và giờ có sẵn trong Microsoft Word, một số ví dụ là:

`DATE @ "d-MMM-yy"`
`DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Trường

Aspose.Words không giới hạn độ phức tạp của các trường Mail Merge trong tài liệu của bạn và hỗ trợ các trường `IF` và công thức lồng nhau và thậm chí có thể tính toán tên của trường hợp nhất bằng công thức.

Một số ví dụ về các trường Mail Merge mà Aspose.Words hỗ trợ:

- Công tắc trường Mail merge:
`MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- các trường hợp nhất lồng nhau trong một công thức:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- tính tên của trường hợp nhất trong thời gian chạy:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- di chuyển có điều kiện đến bản ghi tiếp theo trong nguồn dữ liệu:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Công Tắc Định Dạng

Một trường trong tài liệu có thể có các công tắc định dạng chỉ định cách định dạng giá trị kết quả. Aspose.Words hỗ trợ các công tắc định dạng sau:

- @ – định dạng ngày và giờ
- \\\# – định dạng số
- \\\\\\\\* Mũ
- \\\\\\\\* FirstCap
- \\\\\\\\* Thấp Hơn
- \\\\\\\\* Trên
- \\\\\\\\* CHARFORMAT – định dạng kết quả theo ký tự đầu tiên của mã trường
- \\\\\\\\* MERGEFORMAT – định dạng kết quả theo cách định dạng kết quả cũ

### Định dạng Ngày Và Số Trong Các Trường

Khi Aspose.Words tính toán kết quả trường, nó thường cần phân tích một chuỗi thành một số hoặc giá trị ngày và cũng để định dạng lại thành một string.By mặc định Aspose.Words sử dụng văn hóa luồng hiện tại để thực hiện phân tích cú pháp và định dạng khi tính toán các giá trị trường trong quá trình cập nhật trường và mail merge. Ngoài ra còn có các tùy chọn được cung cấp dưới dạng lớp [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/) cho phép kiểm soát thêm văn hóa nào được sử dụng trong quá trình cập nhật trường.

- theo mặc định thuộc tính [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) được đặt thành [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) định dạng các trường bằng cách sử dụng văn hóa luồng hiện tại
- thuộc tính này có thể được đặt thành [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) vì vậy ngôn ngữ được đặt từ mã trường của trường được sử dụng để định dạng thay thế

### Định dạng Bằng Cách Sử Dụng Văn Hóa Của Luồng hiện Tại

Để kiểm soát văn hóa được sử dụng trong quá trình tính toán trường, chỉ cần đặt thuộc tính **CurrentCulture** thành văn hóa bạn chọn trước khi gọi tính toán trường.

Ví dụ mã sau đây cho thấy cách thay đổi văn hóa được sử dụng trong các trường định dạng trong quá trình cập nhật:

EXAMPLE

Sử dụng văn hóa hiện tại để định dạng các trường cho phép một hệ thống kiểm soát dễ dàng và nhất quán cách tất cả các trường trong tài liệu được định dạng trong quá trình cập nhật trường.

### Định dạng Bằng Văn Hóa Trong Tài liệu

Mặt khác, Microsoft Word định dạng từng trường riêng lẻ dựa trên ngôn ngữ của văn bản được tìm thấy trong trường (cụ thể là chạy từ mã trường). Đôi khi trong quá trình cập nhật trường, đây có thể là hành vi mong muốn, ví dụ: nếu bạn có các tài liệu toàn cầu hóa chứa nội dung được tạo thành từ nhiều ngôn ngữ khác nhau và muốn mỗi trường tôn vinh ngôn ngữ được sử dụng từ văn bản. Aspose.Words cũng hỗ trợ chức năng này.

Lớp [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) cung cấp thuộc tính [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/) chứa các thành viên có thể được sử dụng để kiểm soát cách các trường được cập nhật trong tài liệu.

Ví dụ mã sau đây cho thấy cách chỉ định văn hóa được sử dụng để định dạng ngày trong quá trình cập nhật trường và Mail Merge được chọn từ đâu:

EXAMPLE
