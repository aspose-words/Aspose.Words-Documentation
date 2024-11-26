---
title: MFont Tính Khả dụng và Thay thế trong C++
second_title: Aspose.Words cho C++
articleTitle: Tính khả dụng và Thay thế phông chữ
linktitle: Tính khả dụng và Thay thế phông chữ
description: "Khi không thể tìm thấy phông chữ thay thế chính xác, Aspose.Words phải thay thế nó bằng một phông chữ tương tự. Bài viết này mô tả quá trình tìm phông chữ phù hợp nhất."
type: docs
weight: 12
url: /vi/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

Một văn bản trong tài liệu có thể được định dạng với nhiều phông chữ khác nhau, chẳng hạn như Arial, Times New Roman, Verdana và các phông chữ khác. Khi Aspose.Words hiển thị tài liệu, nó sẽ cố gắng chọn các phông chữ được chỉ định trong tài liệu.

Tuy nhiên, có những tình huống không thể tìm thấy phông chữ chính xác và Aspose.Words phải thay thế nó bằng một phông chữ tương tự. Aspose.Words chọn phông chữ theo quy trình sau:

1. Aspose.Words cố gắng tìm một phông chữ trong số các nguồn phông chữ có sẵn với tên phông chữ chính xác.
1. Aspose.Words cố gắng tìm phông chữ bắt buộc trong số các phông chữ được nhúng trong tài liệu gốc. Một số định dạng tài liệu như DOCX có thể chứa phông chữ nhúng.
1. Nếu Aspose.Words không thể định vị phông chữ được yêu cầu với tên chính xác khớp và thuộc tính [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) được xác định cho phông chữ này, thì Aspose.Words sẽ tìm phông chữ được xác định bằng **AltName** từ lớp [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info), chỉ định thông tin phông chữ.
1. Nếu Aspose.Words không thể định vị phông chữ được xác định và **AltName** cũng không được xác định, thì các quy tắc thay thế phông chữ được áp dụng từng cái một, như được mô tả bên dưới (khi tìm thấy thay thế thích hợp, Quá trình Thay Thế Phông chữ dừng lại và bước tiếp theo không được thực thi):
   1. Aspose.Words sẽ cố gắng áp dụng cài đặt phông chữ OS, nếu chúng có sẵn, bằng cách sử dụng tiện ích `FontConfig`. Tính năng Không phảiWindows này phải được sử dụng với FontConfig-tương thích OS. Hầu Như Bất Kỳ Thư viện OS Dựa Trên Unix nào đã có thư viện `FontConfig` được thiết kế để cung cấp cấu hình phông chữ toàn hệ thống, tùy chỉnh và truy cập vào các ứng dụng. Nếu không, thư viện này có thể dễ dàng cài đặt bởi người dùng.<br>
      Aspose.Words biết cách truy vấn dữ liệu và diễn giải FontConfig kết quả cho các mục đích riêng của nó. Theo mặc định, tiện ích `FontConfig` bị vô hiệu hóa. Bạn có thể kích hoạt nó như sau:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. Bước tiếp theo là một cơ chế đơn giản, nhưng cực kỳ mạnh mẽ được gọi là [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). Theo mặc định, tính năng này đang hoạt động và có sẵn cho bất kỳ OS. Aspose.Words sử dụng các bảng XML xác định các quy tắc thay thế cơ bản cho OS khác nhau. Theo quy tắc Thay Thế Bảng, danh sách các tên phông chữ thay thế sẽ được sử dụng.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - phông chữ cần thay thế, SubstituteFonts - danh sách các biến thể thay thế, được phân tách bằng dấu phẩy. Phông chữ đầu tiên có sẵn được sử dụng để thay thế.<br>
      Tính năng chính của quy tắc này là khả năng tải các bảng thay thế của riêng bạn, vì nó được hiển thị trong ví dụ sau:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      Bạn có thể lấy làm cơ sở bảng hiện có từ bình hoặc lưu nó theo chương trình theo cách sau:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      Mặc dù tính linh hoạt của cơ chế này, có một số trường hợp khi tốt hơn là vô hiệu hóa nó, như hình dưới đây:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. Quy tắc thay thế **FontInfo** sẽ được áp dụng nếu quy tắc thay thế bảng không thể tìm thấy phông chữ. Cơ chế này được bật theo mặc định. Aspose.Words tìm phông chữ phù hợp nhất theo thông tin phông chữ có trong một tài liệu cụ thể. Thông tin này có thể được lấy từ lớp **FontInfo** như hình dưới đây:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Người dùng không thể can thiệp vào quy trình làm việc của tính năng này trừ khi họ quyết định vô hiệu hóa nó trong trường hợp kết quả không đạt yêu cầu:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Nếu **FontInfo** không có sẵn cho phông chữ bị thiếu, thì quá trình sẽ dừng lại.
   1. Quy tắc thay thế **DefaultFont** sẽ được áp dụng trong trường hợp thay thế `FontInfo` cũng không thành công. Quy tắc này cũng được bật theo mặc định. Theo quy tắc này, Aspose.Words sẽ cố gắng sử dụng phông chữ mặc định được chỉ định trong thuộc tính [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/). Nếu người dùng chưa chọn phông chữ mặc định của riêng họ, thì "Times New Roman" sẽ được sử dụng làm phông chữ mặc định. Quy tắc này có thể bị vô hiệu hóa như hình dưới đây:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Để kiểm tra phông chữ mặc định hiện tại, hãy sử dụng:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      Để thiết lập tùy chọn thay thế của riêng bạn, hãy áp dụng:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. Nếu Aspose.Words không thể thực hiện thay thế phông chữ, nó sẽ cố gắng lấy phông chữ có sẵn đầu tiên từ các nguồn phông chữ có sẵn.
1. Cuối cùng, nếu Aspose.Words không thể tìm thấy bất kỳ phông chữ nào trong số các nguồn phông chữ có sẵn, nó sẽ hiển thị tài liệu bằng cách sử dụng Phông Chữ Fanwood miễn phí được nhúng vào cụm Aspose.Words.

{{% alert color="primary" %}}

Nếu **FontInfo** có sẵn, *FontInfo substitution rule* sẽ luôn giải quyết phông chữ và ghi đè quy tắc phông chữ mặc định. Nếu bạn muốn sử dụng quy tắc phông chữ mặc định, bạn nên tắt *FontInfo substitution rule*. Lưu ý rằng *FontConfig substitution rule* sẽ giải quyết phông chữ trong hầu hết các trường hợp và do đó ghi đè tất cả các quy tắc khác.

{{% /alert %}}


