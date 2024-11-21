---
title: Nhập môn về các lĩnh vực trong Java
second_title: Aspose.Words cho Java
articleTitle: Giới thiệu về Trường hợp
linktitle: Giới thiệu về Trường hợp
description: "Tính năng trường trong chi tiết, mã trường và kết quả được giải thích ở Aspose.Words cho Java."
type: docs
weight: 10
url: /vi/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words là một thư viện lớp được thiết kế cho xử lý phía máy chủ của các tài liệu Microsoft Word và hỗ trợ trường theo những cách sau:

"- tất cả các trường trong một tài liệu đều được bảo quản khi mở/lưu và chuyển đổi"
- có thể cập nhật kết quả của hầu hết các trường

Trong bài viết này, chúng ta sẽ tìm hiểu thêm về cấu trúc trường, các trường được hỗ trợ trong Aspose.Words và chi tiết khi làm việc với các trường như vậy.

## Cấu trúc Trường

Một trường bao gồm:

- Các nút "start" và "separator" được sử dụng để bao phủ nội dung mà tạo nên mã trường (thường là dưới dạng văn bản đơn giản).
- Phần phân tách trường và phần kết thúc trường bao gồm kết quả trường. Đây có thể bao gồm nhiều loại nội dung khác nhau từ dòng văn bản đến đoạn văn và bảng.
- Một số trường có thể không có dấu phân cách, có nghĩa là toàn bộ nội dung tạo nên mã trường đó.
- Mã trường xác định hành vi của trường và bao gồm mã nhận dạng trường và thường các tham số khác như tên trường và chuyển đổi.
- Kết quả thực địa chứa đánh giá mới nhất của lĩnh vực đó. Giá trị này được lưu trữ trong trường kết quả và chính là những gì được hiển thị cho người dùng. Một số trường có thể không có kết quả nào của trường và do đó sẽ không hiển thị gì trong tài liệu. Cũng vậy, một số trường có thể chưa được cập nhật vì thế cũng sẽ không có kết quả trường nào.

![fields-aspose-words-java](introduction-to-fields-1.png)

Nội dung tạo nên mã là được lưu trữ dưới dạng các [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) nút giữa [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) và [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/). Kết quả được lưu trữ giữa các nút **FieldSeparator** và [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) và có thể bao gồm nhiều loại nội dung khác nhau. Thông thường kết quả của trường chứa chỉ văn bản được tạo bởi các nút Run, tuy nhiên là có thể cho các nút FieldEnd nằm hoàn toàn ở một đoạn văn khác nhau, và do đó khiến kết quả của trường bao gồm [block level nodes](/words/java/logical-levels-of-nodes-in-a-document/) như **Table** và **Paragraph** nút cũng vậy.

Đây là một ví dụ về cách lưu trữ một trường trong Aspose.Words bằng cách sử dụng ví dụ "Độ *Thám hiểm Tài liệu*" có thể được tìm thấy trên [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](introduction-to-fields-2.png)

## Các trường trong Aspose.Words Document Object Model (DOM)

Khi một tài liệu được tải vào Aspose.Words, các trường của tài liệu được tải vào bộ phận Aspose.Words Document Object Model như một tập hợp các thành phần riêng biệt (các nút). Một trường duy nhất được tải như là một tập hợp gồm **FieldStart**, **FieldSeparator** và **FieldEnd** nút cùng với nội dung giữa các nút này. Nếu một trường không có kết quả của trường thì sẽ không có nút **FieldSeparator** nào. Tất cả các nút này luôn được tìm thấy inline (như con của [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) hoặc [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/).)

Trong Aspose.Words, mỗi node trong số **FieldXXX** được bắt nguồn từ [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/). Lớp này cung cấp một thuộc tính để kiểm tra loại trường được đại diện bởi nút được chỉ định thông qua thuộc tính [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/). Ví dụ " `FieldType.FieldMergeField` " đại diện cho một trường hợp ghi hợp nhất trong tài liệu.

{{% alert color="primary" %}}

Có một số trường đặc biệt tồn tại trong tài liệu Word không được nhập vào Aspose.Words dưới dạng tập hợp các **FieldXXX** nút. Ví dụ " `LINK` trường và `INCLUDEPICTURE` trường được nhập vào Aspose.Words như một [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) đối tượng". Đối tượng này cung cấp các thuộc tính để làm việc với dữ liệu hình ảnh thường được lưu trữ trong những trường này. Để nhập `INCLUDEPICTURE` trường như **FieldXXX** nút, tùy chọn [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) phải được chỉ định như **true**.

Trường nhập liệu cũng được nhập vào Aspose.Words với lớp đặc biệt riêng của nó. Lớp [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) đại diện cho một trường biểu mẫu trong tài liệu Word và cung cấp các phương pháp bổ sung đặc trưng cho một trường biểu mẫu.

{{% /alert %}}

## Các trường được hỗ trợ

Tính toán của các trường sau được hỗ trợ trong phiên bản hiện tại của Aspose.Words:

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
- `TOC` (bao gồm TOT và TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Phân tích Trường Nâng cao

Aspose.Words theo sau cách mà Microsoft Word xử lý các trường và như là kết quả, nó xử lý đúng đắn:

- các trường lồng nhau:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- tham số trường có thể là kết quả của một trường lồng nhau
"- các trường có thể được lồng vào mã trường cũng như trong kết quả trường"
- khoảng trắng/không khoảng trắng, dấu ngoặc kép/không dấu ngoặc kép, ký tự thoát trong các trường:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
"- các lĩnh vực trải dài qua nhiều đoạn văn"

### Các trường công thức

Aspose.Words cung cấp một thực hiện rất nghiêm túc của bộ động cơ công thức và hỗ trợ các điều sau đây:

Các toán tử số học và logic:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- chức năng:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- tham chiếu đến bookmark:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
"- chuyển đổi định dạng số:"
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Các hàm sau trong biểu thức được hỗ trợ: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` và `COMPARE` trường

Chỉ một số ít trong các `IF` biểu thức mà Aspose.Words có thể tính toán dễ dàng nên cho bạn một ý tưởng về sức mạnh của tính năng này:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### Những trường `DATE` và `TIME`

Aspose.Words hỗ trợ tất cả các công tắc định dạng ngày giờ có sẵn trong Microsoft Word, một vài ví dụ là:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Trường

Aspose.Words không đặt giới hạn về độ phức tạp của mail merge trường trong tài liệu và hỗ trợ các trường lồng nhau `IF` và trường công thức và thậm chí có thể tính tên trường hợp hợp bằng một công thức.

Một số ví dụ về trường mail merge mà Aspose.Words hỗ trợ:

- Mail merge chuyển đổi trường:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- các trường lồng nhau trong một công thức:
  `IF { `MÉRGEFIELD` Value1 } >= { `MÉRGEFIELD` Value2 } True False`
- tính toán tên của trường gộp khi chạy:
  `MERGEFIELD { `IF ` { ` MERGEFIELD ` Value1 } >= { ` MERGEFIELD ` Value2 } FirstName"LastName" }`
- di chuyển có điều kiện đến bản ghi tiếp theo trong nguồn dữ liệu:
  `NEXTIF { `MERGEFIELD ` Value1 } <= { =IF(-2.45 >= 6*{ ` MERGEFIELD ` Value2 }, 2, -.45) }`

### Chuyển đổi định dạng

Một trường trong một tài liệu có thể có các công tắc định dạng mà chỉ ra cách giá trị kết quả nên được định dạng. Aspose.Words hỗ trợ những công tắc định dạng sau:

- @ – Định dạng ngày và giờ
- \\\# – định dạng số
- \\\\\\\\* Caps
- \\\\\\\\* Đầu Tiên
- \\\\\\\\* Thấp hơn
- \\\\\\\\* Lên trên
- \\\\\\\\* CHARFORMAT – định dạng kết quả theo ký tự đầu tiên của mã trường
"- \\\\\\\\* MERGEFORMAT – định dạng kết quả theo cách mà kết quả cũ được định dạng"

### Date và Định Dạng Số trong Các Trường

Khi Aspose.Words tính toán một kết quả trường, nó thường cần phân tích một chuỗi vào một giá trị số hoặc ngày và cũng định dạng nó trở lại thành một chuỗi. Theo mặc định Aspose.Words sử dụng văn hóa luồng hiện tại để thực hiện phân tích và định dạng khi tính toán các giá trị trường trong cập nhật trường và mail merge. Có các tùy chọn được cung cấp trong dạng của lớp [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) cho phép kiểm soát thêm về văn hóa nào được sử dụng trong quá trình cập nhật trường

* theo mặc định, thuộc tính [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) được đặt là [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD), nó định dạng các trường bằng văn hóa của luồng hiện tại
* thuộc tính này có thể được đặt thành [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) để ngôn ngữ được đặt từ mã trường của trường được sử dụng để định dạng thay vì

### Định dạng bằng cách sử dụng Văn hóa của Current Thread

Để kiểm soát văn hóa được sử dụng trong việc tính toán trường, chỉ cần đặt thuộc tính **CurrentCulture** vào một văn hóa theo lựa chọn của bạn trước khi gọi tính toán trường.

Mã ví dụ sau cho thấy cách thay đổi văn hóa được sử dụng trong việc định dạng các trường trong quá trình cập nhật

LIÊN KẾT (dùng public wrapper CurrentThreadSettings.getLocale() và setLocale() thay vì private `Thread.CurrentThread`.CurrentCulture)

Sử dụng văn hóa hiện tại để định dạng trường cho phép một hệ thống dễ dàng và nhất quán kiểm soát cách tất cả các trường trong tài liệu được định dạng trong quá trình cập nhật trường.

### Định dạng bằng cách sử dụng Văn hóa trong Tài liệu

Nhưng mặt khác, Microsoft Word định dạng từng trường riêng lẻ dựa trên ngôn ngữ của văn bản được tìm thấy trong trường (đặc biệt, các dòng từ mã trường). Đôi khi trong cập nhật từ xa này có thể là hành vi mong muốn, ví dụ nếu bạn có tài liệu toàn cầu bao gồm nội dung được tạo ra bởi nhiều ngôn ngữ khác nhau và muốn mỗi trường tôn trọng khu vực địa phương từ văn bản. Aspose.Words cũng hỗ trợ chức năng này.

Lớp [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) cung cấp thuộc tính [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) chứa các thành viên có thể được dùng để kiểm soát cách cập nhật trong tài liệu.

Mã ví dụ dưới cho thấy cách chỉ định nơi văn hóa được sử dụng trong việc định dạng ngày trong quá trình cập nhật trường và mail merge được chọn từ:


