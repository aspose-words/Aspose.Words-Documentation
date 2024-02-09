---
title: Tổng quan về các trường trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Tổng quan về trường
linktitle: Tổng quan về trường
description: "Bạn có thể truy cập sửa đổi trường bằng Python. Các trường của tài liệu được tải vào Aspose.Words Document Object Model (DOM)."
type: docs
weight: 10
url: /vi/python-net/fields-overview/
---


Thông thường, một trường khi được chèn vào Microsoft Word đã chứa giá trị cập nhật. Ví dụ: nếu trường là công thức hoặc số trang, nó sẽ chứa giá trị được tính toán chính xác cho phiên bản đã cho của tài liệu. Nhưng nếu bạn có một ứng dụng tạo hoặc sửa đổi tài liệu có các trường (ví dụ: kết hợp hai tài liệu hoặc điền dữ liệu) thì để tài liệu đó hữu ích, lý tưởng nhất là tất cả các trường phải được cập nhật.

Một trường bao gồm:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- Nút bắt đầu trường và nút phân cách được sử dụng để bao gồm nội dung tạo nên mã trường (thường ở dạng văn bản thuần túy)
- Dấu phân cách trường và cuối trường bao gồm kết quả của trường. Điều này có thể được tạo thành từ nhiều loại nội dung khác nhau, từ các dòng văn bản, đoạn văn đến bảng biểu.
- Một số trường có thể không có dấu phân cách nghĩa là toàn bộ nội dung tạo thành mã trường.
- Mã trường xác định hành vi của trường và bao gồm mã định danh trường và thường là các tham số khác như tên trường và công tắc.
- Kết quả trường chứa đánh giá gần đây nhất của trường. Giá trị này được lưu trữ trong kết quả trường và là những gì được hiển thị cho người dùng. Một số trường có thể không có bất kỳ kết quả trường nào, do đó sẽ không hiển thị bất kỳ nội dung nào trong tài liệu. Tương tự, một số trường có thể chưa được cập nhật nên cũng sẽ không có kết quả trường.

Dưới đây là chế độ xem cách một trường được lưu trữ trong Aspose.Words bằng cách sử dụng ví dụ "*DocumentExplorer"* có thể tìm thấy trên [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words là thư viện lớp được thiết kế để xử lý tài liệu Microsoft Word phía máy chủ và hỗ trợ các trường theo các cách sau:

- Tất cả các trường trong tài liệu được giữ nguyên trong quá trình mở/lưu và chuyển đổi.
- Có thể cập nhật kết quả của một số lĩnh vực phổ biến nhất.

## Các trường trong Microsoft Word

Các trường trong tài liệu Microsoft Word rất phức tạp. Có hơn 50 loại trường (mỗi loại cần quy trình tính toán kết quả riêng), công thức và biểu thức, dấu trang và tham chiếu, chức năng và các công tắc khác nhau. Các trường cũng có thể được lồng nhau. Thông thường khi mở tài liệu, kết quả trường (giá trị của trường) được hiển thị cho tất cả các trường trong tài liệu. Bạn có thể chuyển đổi cách hiển thị kết quả trường hoặc mã trường trong Microsoft Word cho tất cả các trường bằng cách nhấn **ALT+F9**.

| Mã trường | Kết quả trường |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### Chèn trường trong Microsoft Word

Để chèn một trường trong Microsoft Word:

1. Nhấp vào menu **Insert**.
1. Nhấp vào menu thả xuống **Quick Parts**
1. Chọn **Field**
1. Bạn sẽ thấy một màn hình cho phép bạn nhập thông tin chi tiết về trường này. Ở bên trái, bạn được cung cấp danh sách các trường có thể có và ở bên phải là màn hình để chỉnh sửa trực quan các thuộc tính của trường.<br>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. Ngoài ra, bạn có thể nhấn nút **Field Codes** để cho phép bạn viết trực tiếp mã trường.<br>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. Cũng có thể chèn công tắc bằng cách sử dụng nút **Options**<br>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. Sử dụng một trong hai phương pháp, điền thông tin thích hợp vào các trường mong muốn rồi nhấn **Ok**.
1. Trường được chèn vào tài liệu tại vị trí con trỏ hiện tại.<br>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### Cập nhật các trường trong Microsoft Word

Để cập nhật một trường trong Microsoft Word:

1. Di chuyển dấu mũ vào trường bạn muốn cập nhật.
1. Nhấn **F9** để cập nhật trường này.

Để cập nhật tất cả các trường trong Microsoft Word:

1. Nhấn **Ctrl+A** để chọn toàn bộ nội dung trong tài liệu.
1. Nhấn **F9** để cập nhật tất cả các trường được tìm thấy trong vùng chọn.

### Chuyển đổi giữa hiển thị mã trường và kết quả trường

Để chuyển đổi mã trường của một trường trong Microsoft Word:

1. Di chuyển dấu mũ vào trường mong muốn.
1. Nhấn **SHIFT+F9** để chuyển đổi mã trường chỉ dành cho trường này.

Để chuyển đổi mã trường của tất cả các trường trong Microsoft Word:

1. Nhấn **ALT+F9**

### Chuyển đổi trường thành văn bản tĩnh trong Microsoft Word

Để chuyển đổi trường động thành văn bản tĩnh trong Microsoft Word:

1. Di chuyển dấu mũ vào trường bạn muốn chuyển đổi.
1. Nhấn **Ctrl+Shift+F9** để chuyển đổi các trường thành văn bản tĩnh.

### Xóa trường trong Microsoft Word

Để xóa một trường trong Microsoft Word:

1. Chọn toàn bộ nội dung tạo nên trường. Nếu mã trường được hiển thị thì dấu ngoặc nhọn mở và kết thúc cũng cần được chọn.
1. Nhấn **Delete** để xóa toàn bộ trường.

## Các trường trong Aspose.Words

Khi một tài liệu được tải vào Aspose.Words, các trường của tài liệu đó sẽ được tải vào Aspose.Words Document Object Model dưới dạng một tập hợp các thành phần (nút) riêng biệt. Một trường duy nhất được tải dưới dạng tập hợp các nút [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) và [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) cùng với nội dung ở giữa các nút này. Nếu một trường không có kết quả trường thì sẽ không có nút [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Tất cả các nút này luôn được tìm thấy nội tuyến (là con của [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) hoặc [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

Nội dung tạo nên mã trường được lưu trữ dưới dạng các nút [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) giữa [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) và [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Kết quả trường được lưu trữ giữa các nút [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) và [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) và có thể được tạo thành từ nhiều loại nội dung khác nhau. Thông thường, kết quả trường chỉ chứa văn bản được tạo thành từ các nút [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), tuy nhiên, nút [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) có thể được đặt trong một đoạn hoàn toàn khác và do đó làm cho kết quả trường bao gồm các nút cấp khối như nút [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) và [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

Trong Aspose.Words, mỗi nút **FieldXXX** đều xuất phát từ [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). Lớp này cung cấp một thuộc tính để kiểm tra loại trường được biểu thị bởi nút được chỉ định thông qua thuộc tính [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/). Ví dụ [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) đại diện cho trường hợp nhất trong tài liệu.

{{% alert color="primary" %}}

Có một số trường cụ thể tồn tại trong tài liệu Word không được nhập vào Aspose.Words dưới dạng tập hợp các nút **FieldXXX**. Ví dụ: trường `LINK` và trường `INCLUDEPICTURE` được nhập vào Aspose.Words dưới dạng đối tượng [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/). Đối tượng này cung cấp các thuộc tính để làm việc với dữ liệu hình ảnh thường được lưu trữ trong các trường này.

Các trường biểu mẫu cũng được nhập vào Aspose.Words dưới dạng lớp đặc biệt của riêng chúng. Lớp [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) đại diện cho một trường biểu mẫu trong tài liệu Word và cung cấp các phương thức bổ sung dành riêng cho trường biểu mẫu.

{{% /alert %}}

### Các trường được hỗ trợ trong quá trình cập nhật

Tính toán các trường sau được hỗ trợ trong phiên bản Aspose.Words hiện tại:

- = (trường công thức)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (bao gồm TOT và TOF)
- TC

### Phân tích cú pháp tinh vi

Aspose.Words tuân theo cách Microsoft Word xử lý các trường và kết quả là nó xử lý chính xác:

- Các trường lồng nhau
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- Đối số trường có thể là kết quả của một trường lồng nhau.
- Các trường có thể được lồng trong mã trường cũng như trong kết quả của trường.
- Dấu cách/không có dấu cách, dấu ngoặc kép/không dấu ngoặc kép, ký tự thoát trong các trường, v.v.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Các trường trải dài trên nhiều đoạn văn.

#### Trường công thức

Aspose.Words cung cấp cách triển khai công cụ công thức rất nghiêm túc và hỗ trợ những tính năng sau:

- Các toán tử số học và logic:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Chức năng:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Tham khảo bookmark:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Công tắc định dạng số:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Các hàm sau trong biểu thức được hỗ trợ: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### Trường `IF` và `COMPARE`

Chỉ một số biểu thức `IF` mà Aspose.Words có thể dễ dàng tính toán sẽ cho bạn ý tưởng về tính năng này mạnh mẽ như thế nào:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### Trường `DATE` và `TIME`

Aspose.Words hỗ trợ tất cả các công tắc định dạng ngày và giờ có sẵn trong Microsoft Word, một số ví dụ là:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Trường Mail Merge

Aspose.Words không áp đặt giới hạn nào về độ phức tạp của các trường mail merge trong tài liệu của bạn và hỗ trợ các trường công thức và `IF` lồng nhau, đồng thời thậm chí có thể tính toán tên của trường hợp nhất bằng công thức.

Một số ví dụ về trường mail merge mà Aspose.Words hỗ trợ:

- Công tắc trường Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Các trường hợp nhất lồng nhau trong một công thức:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Tính tên trường merge khi chạy:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- Điều kiện di chuyển tới bản ghi tiếp theo trong nguồn dữ liệu:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### Chuyển đổi định dạng

Một trường trong tài liệu có thể có các công tắc định dạng chỉ định cách định dạng giá trị kết quả. Aspose.Words hỗ trợ các chuyển đổi định dạng sau:

- @ - định dạng ngày và giờ
- \\\# - định dạng số
- \\\\\\\\* Mũ
- \\\\\\\\* FirstCap
- \\\\\\\\* Thấp hơn
- \\\\\\\\* Phía trên
- \\\\\\\\* CHARFORMAT – định dạng kết quả theo ký tự đầu tiên của mã trường.
- \\\\\\\\* MERGEFORMAT – định dạng kết quả theo cách định dạng kết quả cũ.

#### Date và định dạng số trong trường

Khi Aspose.Words tính toán một kết quả trường, nó thường cần phân tích một chuỗi thành một giá trị số hoặc ngày, đồng thời định dạng lại chuỗi đó. Theo mặc định, Aspose.Words sử dụng văn hóa luồng hiện tại để thực hiện phân tích cú pháp và định dạng khi tính toán các giá trị trường trong quá trình cập nhật trường và mail merge. Ngoài ra còn có các tùy chọn được cung cấp dưới dạng lớp [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) cho phép kiểm soát sâu hơn về nền văn hóa nào được sử dụng trong quá trình cập nhật trường.

- Theo mặc định, thuộc tính [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) được đặt thành [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) để định dạng các trường bằng cách sử dụng văn hóa luồng hiện tại.
- Thuộc tính này có thể được đặt thành [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) để ngôn ngữ được đặt từ mã trường của trường được sử dụng để định dạng thay thế.

#### Định dạng bằng Văn hóa của Chủ đề Hiện tại

Để kiểm soát văn hóa được sử dụng trong quá trình tính toán trường, chỉ cần sử dụng phương pháp **locale.setlocale** để đặt văn hóa bạn chọn trước khi gọi tính toán trường.
Ví dụ dưới đây cho thấy cách thay đổi văn hóa được sử dụng trong các trường định dạng trong quá trình cập nhật.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

Việc sử dụng văn hóa hiện tại để định dạng các trường cho phép hệ thống kiểm soát dễ dàng và nhất quán cách định dạng tất cả các trường trong tài liệu trong quá trình cập nhật trường.

#### Định dạng bằng Văn hóa trong Tài liệu

Mặt khác, Microsoft Word định dạng từng trường riêng lẻ dựa trên ngôn ngữ của văn bản được tìm thấy trong trường đó (cụ thể là các dòng chạy từ mã trường). Đôi khi trong quá trình cập nhật trường, đây có thể là hành vi mong muốn, ví dụ: nếu bạn có tài liệu toàn cầu hóa chứa nội dung được tạo thành từ nhiều ngôn ngữ khác nhau và muốn mỗi trường tôn trọng ngôn ngữ được sử dụng trong văn bản. Aspose.Words cũng hỗ trợ chức năng này.

Lớp [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) cung cấp thuộc tính [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) chứa các thành viên có thể được sử dụng để kiểm soát cách cập nhật các trường trong tài liệu. Ví dụ dưới đây cho thấy cách chỉ định nơi văn hóa được sử dụng để định dạng ngày trong quá trình cập nhật trường và mail merge được chọn từ đó.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Tìm mã trường và kết quả trường

Trường được chèn bằng [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) sẽ trả về đối tượng [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Đây là lớp mặt tiền cung cấp các phương thức hữu ích để nhanh chóng tìm thấy các thuộc tính như vậy của một trường. Lưu ý nếu bạn chỉ tìm kiếm tên của các trường hợp nhất trong tài liệu thì thay vào đó bạn có thể sử dụng phương thức [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) tích hợp sẵn. Ví dụ dưới đây cho thấy cách lấy tên của tất cả các trường hợp nhất trong tài liệu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Cách đổi tên các trường hợp nhất

Ví dụ dưới đây cho thấy cách đổi tên các trường hợp nhất trong tài liệu Word.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
