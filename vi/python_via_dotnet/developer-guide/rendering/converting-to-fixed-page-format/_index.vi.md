---
title: Chuyển đổi sang định dạng trang cố định
second_title: Aspose.Words cho Python via .NET
articleTitle: Chuyển đổi sang định dạng trang cố định
linktitle: Chuyển đổi sang định dạng trang cố định
description: "Lưu tài liệu sang các định dạng PDF, XPS, HTML, XAML, PostScript và PCL bằng Python."
type: docs
weight: 10
url: /vi/python-net/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words triển khai công cụ bố cục trang của riêng mình. Trước khi đi sâu vào các thông số kỹ thuật của nó, trước tiên bạn nên thảo luận về tài liệu ở mức cao. Khi nghĩ về một tài liệu, người dùng thường tưởng tượng ra một số tờ giấy chứa các từ, hình ảnh, bảng biểu và biểu đồ. Tài liệu có thể có nhiều loại khác nhau, chẳng hạn như văn bản, bảng tính, trang trình bày, bản vẽ CAD, sơ đồ và do đó, về cơ bản có thể có các bố cục khác nhau. Hầu hết các ứng dụng đều cho phép gửi tài liệu tới máy in; đây là lúc người dùng thực sự có thể xem diện mạo dự định cuối cùng của tài liệu.

## Hiển thị tài liệu trong các ứng dụng khác nhau

Các ứng dụng xem hoặc xuất bản tài liệu khác nhau cho phép người dùng mở (Adobe Acrobat, XPS Viewer) và đôi khi chỉnh sửa tài liệu (Adobe InDesign) ở các định dạng cụ thể. Các ứng dụng này thường tạo ra cái gọi là tài liệu có định dạng "trang cố định". Định dạng tài liệu như vậy mô tả chính xác vị trí đặt nội dung của tài liệu trên mỗi trang. Bên trong, định dạng PDF hoặc XPS chứa mô tả của mỗi trang cũng như hướng dẫn vẽ, chỉ định bố cục nội dung trên trang. Điều này tương tự như các định dạng hình ảnh, mô tả nơi nội dung được hiển thị ở dạng raster hoặc vector.

Ngược lại, một số ứng dụng soạn thảo văn bản không hỗ trợ xem các trang của tài liệu. Ví dụ: Microsoft Notepad hỗ trợ rất ít chức năng ngoài việc chỉ hiển thị, chỉnh sửa và in văn bản. Điều quan trọng ở đây là các ứng dụng như vậy không thể hiển thị các trang của tài liệu cũng như không cho người dùng biết số lượng trang sẽ được in mà chỉ cho phép xem nội dung tài liệu. Tài liệu có thể được lưu ở định dạng văn bản thuần túy và có thể được mở bằng nhiều ứng dụng khác. Sử dụng một ứng dụng cho phép xem nội dung nhị phân của một tệp tùy ý, người ta có thể thấy những gì được lưu trữ trong tệp tài liệu – nó chỉ là văn bản thuần túy, không có gì khác trong đó.

Các ứng dụng chỉnh sửa văn bản phức tạp hơn một chút, chẳng hạn như Microsoft WordPad, lưu tài liệu ở Định dạng văn bản đa dạng thức (RTF), hỗ trợ nhiều chức năng định dạng hơn, chẳng hạn như chèn hình ảnh, định dạng ký tự, lề đoạn văn và khoảng cách. Tuy nhiên, định dạng RTF cũng chỉ chứa nội dung của tài liệu mà không có thông tin về các trang.

Microsoft Word là ứng dụng soạn thảo văn bản Windows tiên tiến nhất hiện nay. Nó định dạng các tệp ở định dạng DOCX, mô tả nội dung của tài liệu một cách linh hoạt và rộng rãi, cho phép người dùng chỉ định kích thước trang, hướng cho một phần tài liệu và là một ứng dụng WYSIWYG thậm chí còn hiển thị các trang tài liệu trên màn hình. Tuy nhiên, vẫn chưa có thông tin nào về cách hiển thị nội dung của tài liệu trên các trang có sẵn trong tệp tài liệu. Tệp tài liệu chỉ mô tả nội dung và mối quan hệ của các đối tượng tài liệu với nhau, cùng với một số ràng buộc hình học. Kết quả là trước khi hiển thị một tài liệu, Microsoft Word sẽ tự tính toán thông tin đó. Đây là nơi bố cục trang phát huy tác dụng.

## Bố cục trang là gì

Bố cục trang tài liệu là một cấu trúc dữ liệu, mô tả vị trí của một đối tượng cụ thể trên các trang cho tất cả các đối tượng tài liệu. Ngoài ra, vì các đối tượng có các đặc tính ảnh hưởng đến hình thức của chúng, chẳng hạn như kích thước phông chữ, hiệu ứng đổ bóng hoặc vẽ, nên bạn không chỉ cần biết đối tượng ở đâu mà còn phải biết nó chiếm (các) khu vực nào trên trang và liệu nó có chiếm giữ hay không. áp dụng cho nhiều trang để các đối tượng khác không chồng lên (các) khu vực giống nhau.

Aspose.Words triển khai chức năng bố cục trang nội bộ cho phép nó tạo ra tất cả các định dạng trang cố định, chẳng hạn như PDF, XPS và các định dạng hình ảnh khác nhau. Nếu không có bố cục trang, thông tin được lưu trữ trong tệp tài liệu trang cố định sẽ không có sẵn và tất cả các định dạng này sẽ không được hỗ trợ.

Mối quan hệ giữa một tài liệu và bố cục trang khá đơn giản. Trong khi một tài liệu mô tả nội dung thì bố cục trang tương ứng sẽ mô tả hình dạng của nội dung đó. Lưu ý rằng bố cục trang không thể tồn tại nếu không có tài liệu vì sẽ không có nội dung để tính toán hình học, nhưng tài liệu có thể tồn tại mà không cần bố cục trang. Ví dụ: khi một tài liệu DOCX được chuyển đổi thành tài liệu RTF, thông thường không cần thiết phải biết hình học vì cả hai định dạng đều không lưu trữ nó.

## Tạo bố cục trang

Tạo bố cục trang có thể là một thủ tục tốn kém, cả về tốc độ và bộ nhớ. Điều này là do một số lý do:

- Tài liệu có thể có lượng nội dung lớn, có thể cần hiển thị trên hàng nghìn trang. Hình dạng của mọi đối tượng trên mỗi trang sẽ cần phải được mô tả, tiêu tốn tài nguyên bộ nhớ.
- Tài liệu có thể có nhiều quy tắc, đặt ra những ràng buộc về hình học. Có thể sử dụng thời gian tính toán đáng kể để đảm bảo mọi ràng buộc đều được thỏa mãn
- Một số tính năng của tài liệu, ví dụ như trường `NUMPAGES`, tạo ra các phụ thuộc đệ quy cho các giá trị thuộc tính trong tương lai, không có sẵn tại thời điểm tính toán. Điều này dẫn đến việc tính toán lặp đi lặp lại và làm tăng thời gian tính toán.

Vì những lý do nêu trên, Aspose.Words sẽ chỉ tạo bố cục trang khi cần thiết. Lý do điển hình cho điều này là yêu cầu hiển thị các trang tài liệu hoặc để lấy giá trị trường phụ thuộc vào thông tin có sẵn trong bố cục trang. Một lý do ít rõ ràng hơn có thể là xuất tài liệu sang HTML. Mặc dù HTML không phải là định dạng trang cố định và nó không mô tả hình học của các đối tượng nội dung nhưng nó vẫn hỗ trợ hình ảnh. Những hình ảnh như vậy có thể ở dạng hình dạng được tạo trong Microsoft Word với văn bản bên trong chúng. Ví dụ: biểu đồ có nhãn trục có thể được xuất sang HTML dưới dạng hình ảnh, nhưng trước khi thực hiện được điều này, Aspose.Words cần hiển thị hình ảnh đó và do đó cần biết vị trí hiển thị nhãn. Xem ví dụ biểu đồ dưới đây:

<img src="/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="chuyển đổi sang định dạng cố định trang_1" style="width:800px"/>

### Thuộc tính phi hình học

Ngoài việc xử lý thông tin hình học, bố cục trang còn chịu trách nhiệm tính toán màu sắc và kiểu đường viền. Trong Microsoft Word, màu văn bản có thể được chỉ định là tự động, ngụ ý rằng việc lựa chọn màu phải dựa trên màu bóng của ô hoặc đoạn văn hoặc dựa trên màu của trang nơi văn bản xuất hiện.

Bố cục trang tính toán vị trí văn bản sẽ xuất hiện và nội dung nào sẽ được hiển thị phía sau văn bản đó, cho phép tính toán màu sắc. Có những tính toán cụ thể khác được thực hiện bởi bố cục trang. Ví dụ: đường viền ngang trong bảng phụ thuộc vào việc hàng của bảng có nằm cuối cùng trong một cột văn bản hay không và liệu nó có bị ngắt giữa các cột hay không. Nếu một hàng được hiển thị cuối cùng trong một cột thì đường viền dưới cùng sẽ được sử dụng thay vì đường viền ngang.

![converting-to-fixed-page-format_2](/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

Trong Aspose.Words, người dùng có thể yêu cầu tạo bố cục trang mới hay cập nhật bố cục trang hiện có. Cả hai điều này đều có thể được thực hiện bằng phương thức [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) do lớp [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) cung cấp. Nếu bố cục trang không tồn tại nhưng cần có nó (ví dụ: khi tài liệu được xuất sang định dạng trang cố định), Aspose.Words sẽ tự động gọi phương thức này. Tuy nhiên, nếu bố cục trang đã tồn tại, Aspose.Words sẽ sử dụng bố cục trang hiện có để tránh tiêu tốn tài nguyên cần thiết để cập nhật bố cục đó. Trong trường hợp này, người dùng cần gọi phương thức [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) để đảm bảo rằng bố cục trang được cập nhật với mô hình tài liệu.

### Cấu trúc động

Quá trình tạo bố cục trang bao gồm các bước sau:

- *Conversion* – liệt kê nội dung của mô hình tài liệu và chuẩn bị các đối tượng bố cục tương ứng.
- *Build* – sắp xếp các đối tượng bố cục để thể hiện nội dung của tài liệu trên các trang.
- *Reflow* – cập nhật cách sắp xếp đối tượng để đáp ứng các ràng buộc về hình học.
- *Chiếu các đối tượng bố cục thành một trang trình bày cố định và hoàn thiện thông tin màu sắc*.
- *Xây dựng và chỉnh sửa nội dung hình dạng* – một bước bắt buộc nếu tài liệu chứa các hình dạng có nội dung văn bản lồng nhau.

Lưu ý rằng bố cục trang là một cấu trúc động, có thể được xây dựng lại một phần. Điều này đặc biệt cần thiết khi không thể tính toán giá trị trường mà không xây dựng lại cấu trúc bố cục tài liệu. Trường có thể tham chiếu vị trí của một đối tượng trên một trang, đồng thời bản thân giá trị trường đó cũng được hiển thị trên trang, ảnh hưởng đến vị trí của đối tượng được tham chiếu. Không thể tạo bố cục trang một lần vì giá trị trường có thể chưa có sẵn tại thời điểm định vị trên trang.

Hãy xem xét tình huống điển hình khi trường `NUMPAGES` xuất hiện ở chân trang của trang đầu tiên trong tài liệu. Giá trị của trường này là tổng số trang. Để định vị trường trên một trang, cần phải biết giá trị của nó. Nếu hiện tại chỉ có trang đầu tiên đang được xây dựng thì tổng số trang vẫn chưa được biết. Trong trường hợp này, bố cục trang phải sử dụng giá trị mặc định và sau đó quay lại trường đó và thay đổi giá trị của nó theo tính toán thực tế. Tuy nhiên, việc thay đổi giá trị trường có thể ảnh hưởng đến nội dung tài liệu khác trên một trang và cuối cùng khiến một trang mới được thêm vào hoặc một trang hiện có bị xóa, do đó làm cho giá trị tính toán trở nên lỗi thời. Vấn đề này có thể được giải quyết bằng cách cập nhật bố cục trang hiện có.

Khi tạo bố cục, cũng có thể thiết lập các thuộc tính [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) ảnh hưởng đến đầu ra của tài liệu trên các trang.

## Lưu vào định dạng trang cố định

Sau khi bố cục trang được xây dựng và tính toán hình dạng của các đối tượng cũng như vị trí của chúng trên trang, tài liệu có thể được lưu ở định dạng trang cố định được Aspose.Words hỗ trợ. Khi lưu tài liệu sang các định dạng trang cố định, có thể sử dụng các tùy chọn hiển thị chung cho tất cả các định dạng này. Chúng cho phép kiểm soát:

- Số lượng và phạm vi trang chứa trong tài liệu đầu ra ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/page_set/)).
- Là tập hợp các ký tự dùng để hiển thị số ([numeral_format](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/numeral_format/)).
- Trình phát siêu tệp ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/metafile_rendering_options/)). Để biết thêm chi tiết, xem bài viết [Xử lý siêu tệp Windows](/words/vi/python-net/handling-windows-metafiles/).
- Tỷ lệ chất lượng để nén hình ảnh JPEG, giá trị của tỷ lệ này có thể khác một chút, tùy thuộc vào định dạng lưu đã chọn ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/jpeg_quality/)).
- Tối ưu hóa đồ họa vector ở đầu ra Aspose.Words ([optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/)).
- Tùy chọn đồ họa khi lưu sang định dạng Tiff, PNG, Bmp, Jpeg, Emf ([use_anti_aliasing](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_anti_aliasing/), [use_high_quality_rendering](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_high_quality_rendering/)).
- Lưu tài liệu ở dạng thang độ xám ([color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/color_mode/)).
- Chuyển đổi giữa hiển thị hình dạng DrawML và hình dạng dự phòng ([dml_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_rendering_mode/)).
- Chuyển đổi giữa các chế độ kết xuất hiệu ứng DML ([dml_effects_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_effects_rendering_mode/)).

Ví dụ bên dưới minh họa cách lưu tài liệu sang định dạng JPEG bằng phương pháp [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) và các tùy chọn hiển thị:

{{< highlight python >}}
# Open the document
doc = aw.Document(docs_base.my_dir + "Rendering.docx")
# Save as a JPEG image file with default options
doc.save(docs_base.artifacts_dir + "Rendering.JpegDefaultOptions.jpg")

# Save document to stream as a JPEG with default options
docStream = io.BytesIO()
doc.save(docStream, aw.SaveFormat.JPEG)
# Rewind the stream position back to the beginning, ready for use
docStream.seek(0)

# Save document to a JPEG image with specified options.
# Render the third page only and set the JPEG quality to 80%
# In this case we need to pass the desired SaveFormat to the ImageSaveOptions constructor 
# to signal what type of image to save as.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
imageOptions.page_index = 2
imageOptions.page_count = 1
imageOptions.jpeg_quality = 80
doc.save(docs_base.artifacts_dir + "Rendering.JpegCustomOptions.jpg", imageOptions)
{{< /highlight >}}
