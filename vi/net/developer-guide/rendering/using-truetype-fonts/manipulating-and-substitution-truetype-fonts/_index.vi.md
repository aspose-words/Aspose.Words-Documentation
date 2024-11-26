---
title: Thao tác và thay thế phông chữ TrueType trong C#
second_title: Aspose.Words cho .NET
articleTitle: Thao tác và thay thế phông chữ TrueType
linktitle: Thao tác và thay thế phông chữ TrueType
description: "Aspose.Words dành cho .NET có thể nhúng đúng phông chữ TrueType vào tài liệu thu được để đảm bảo rằng nó hiển thị chính xác bằng C#. Nếu không có phông chữ hoặc ký tự cụ thể, Aspose.Words sẽ tìm kiếm phông chữ thay thế phù hợp hoặc sử dụng cơ chế Dự phòng phông chữ."
type: docs
weight: 10
url: /vi/net/manipulating-and-substitution-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words yêu cầu phông chữ TrueType cho nhiều tác vụ khác nhau, bao gồm hiển thị tài liệu sang định dạng trang cố định, ví dụ: PDF hoặc XPS. Khi Aspose.Words kết xuất một tài liệu, nó cần thực hiện nhúng và nhúng tập hợp con phông chữ TrueType vào tài liệu kết quả, đây là thông lệ trong quá trình tạo tài liệu, bao gồm các định dạng PDF hoặc XPS phổ biến. Điều này đảm bảo rằng tài liệu sẽ xuất hiện giống nhau đối với bất kỳ người xem nào. Hơn nữa, đặc tả XPS yêu cầu phông chữ phải luôn được nhúng trong tài liệu.

Để đảm bảo Aspose.Words đo chính xác các ký tự và nhúng thành công các phông chữ có liên quan, phải đáp ứng các điều kiện sau:

1. Aspose.Words có thể tìm và truy cập các tệp phông chữ TrueType trên hệ thống.
1. Phải có đủ phông chữ TrueType cho Aspose.Words, tốt nhất là có cùng tên họ phông chữ với các phông chữ được sử dụng trong tài liệu.

Lưu ý rằng phông chữ trong tài liệu đại diện cho một thực thể, chẳng hạn như tên họ, kiểu, kích thước, màu sắc, khác với thực thể phông chữ `TrueType` (phông chữ vật lý). Aspose.Words phân giải phông chữ trong tài liệu thành phông chữ vật lý ở một số giai đoạn xử lý. Điều này cho phép thực hiện một số tác vụ nhất định, phổ biến nhất là tác vụ tính toán kích thước văn bản trong quá trình xây dựng bố cục và nhúng/đặt lại các định dạng trang cố định. Một số tác vụ ít phổ biến khác, chẳng hạn như phân giải và thay thế phông chữ trong khi tải HTML hoặc nhúng/đặt lại vào một số định dạng luồng, cũng được bật tương tự.

## Các vấn đề về thao tác phông chữ và hiệu suất

Tất cả các cơ chế thao tác phông chữ có sẵn đều có trong lớp [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/). Lớp này chịu trách nhiệm tìm nạp các phông chữ trong các nguồn phông chữ được xác định cũng như quy trình Thay thế Phông chữ, như được mô tả bên dưới.

Phông chữ được phân tích cú pháp theo một số bước:

1. Lấy thông tin về phông chữ, giải quyết từ tất cả các phông chữ có sẵn.
1. Phân tích cú pháp các phông chữ đã được giải quyết để nhận các glyph và số liệu có sẵn (ngang và dọc).
1. Phân tích các phông chữ đã được giải quyết để nhúng và đặt lại.

Khi Aspose.Words gặp một phông chữ trong tài liệu lần đầu tiên, nó sẽ cố gắng lấy thông tin cơ bản về phông chữ, chẳng hạn như tên đầy đủ của phông chữ, họ, phiên bản, kiểu, từ các tệp phông chữ nằm trong mỗi nguồn phông chữ. Sau khi tất cả các phông chữ được truy xuất, Aspose.Words sử dụng các chi tiết này để tìm dữ liệu phông chữ cần thiết hoặc sự thay thế phù hợp cho phông chữ được yêu cầu.

Vì quy trình được mô tả ở trên tốn nhiều thời gian nên nó có thể ảnh hưởng tiêu cực đến hiệu suất ứng dụng ở lần khởi chạy đầu tiên. Tuy nhiên, mỗi phiên bản **FontSettings** có bộ đệm riêng, điều này có thể làm giảm thời gian xử lý các tài liệu tiếp theo. Ví dụ: bạn có thể chia sẻ một phiên bản của lớp **FontSettings** giữa các tài liệu khác nhau, điều này cho phép bạn tăng tốc độ tải tài liệu. Ví dụ sau đây chứng minh điều này:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOption.cs" >}}

Trong trường hợp **FontSettings** không được xác định rõ ràng, Aspose.Words sẽ sử dụng phiên bản **FontSettings** mặc định. Phiên bản này cũng được tự động chia sẻ giữa các tài liệu và có thể được trích xuất như sau:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsDefaultInstance.cs" >}}

Nếu bạn chắc chắn rằng tất cả tài liệu đang xử lý đều yêu cầu cài đặt phông chữ giống nhau thì bạn nên thiết lập và sử dụng phiên bản **FontSettings** mặc định. Giả sử bạn cần sử dụng cùng một nguồn phông chữ cho tất cả tài liệu của mình. Trong trường hợp này, bạn chỉ có thể sửa đổi phiên bản mặc định như sau:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cs" >}}

{{% alert color="primary" %}}

**FontSettings** tùy chỉnh có mức độ ưu tiên cao hơn phiên bản mặc định.

{{% /alert %}}

## Tính sẵn có và thay thế phông chữ

Văn bản trong tài liệu có thể được định dạng bằng nhiều phông chữ khác nhau, chẳng hạn như Arial, Times New Roman, Verdana và các phông chữ khác. Khi Aspose.Words hiển thị một tài liệu, nó sẽ cố gắng chọn các phông chữ được chỉ định trong tài liệu.

Tuy nhiên, có những trường hợp không thể tìm thấy phông chữ chính xác và Aspose.Words phải thay thế bằng phông chữ tương tự. Aspose.Words chọn phông chữ theo quy trình sau:
1. Aspose.Words cố gắng tìm phông chữ trong số các nguồn phông chữ có sẵn với tên phông chữ chính xác.
1. Aspose.Words cố gắng tìm phông chữ được yêu cầu trong số các phông chữ được nhúng trong tài liệu gốc. Một số định dạng tài liệu như DOCX có thể chứa phông chữ được nhúng.
1. Nếu Aspose.Words không thể định vị phông chữ được yêu cầu có tên trùng khớp chính xác và thuộc tính [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/altname/) được xác định cho phông chữ này thì Aspose.Words sẽ tìm thấy phông chữ được xác định bằng **AltName** từ lớp [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/), lớp này chỉ định thông tin phông chữ.
1. Nếu Aspose.Words không thể định vị phông chữ được xác định và **AltName** cũng không được xác định thì các quy tắc thay thế phông chữ sẽ được áp dụng từng phông chữ một, như được mô tả bên dưới (khi tìm thấy phông chữ thay thế phù hợp, Quá trình thay thế phông chữ sẽ dừng và bước tiếp theo không được thực hiện):
   1. Đầu tiên, Aspose.Words cố gắng xử lý tên phông chữ để thay thế, đặc biệt nó cố gắng loại bỏ các hậu tố bằng dấu phân cách "-" và ",".<br>
      Nếu quy tắc thay thế này diễn ra thì không tìm thấy "Phông chữ '<OriginalFont>'. Thay vào đó, hãy sử dụng phông chữ '<SubstitutionFont>'. Lý do: thay thế tên phông chữ." cảnh báo xuất hiện.<br>
            {{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersSystemAndCustomFolder-GetSubstitutionWithoutSuffixes.cs" >}}
   1. Sau đó, Aspose.Words sẽ cố gắng áp dụng cài đặt phông chữ của hệ điều hành, nếu có, bằng cách sử dụng tiện ích **FontConfig**. Tính năng Không phải Windows này phải được sử dụng với HĐH tương thích với FontConfig. Hầu hết mọi hệ điều hành dựa trên Unix đều có thư viện `FontConfig` được thiết kế để cung cấp cấu hình phông chữ, tùy chỉnh và quyền truy cập vào các ứng dụng trên toàn hệ thống. Nếu không, người dùng có thể dễ dàng cài đặt thư viện này.
      Aspose.Words biết cách truy vấn dữ liệu và diễn giải kết quả FontConfig cho mục đích riêng của mình. Theo mặc định, tiện ích `FontConfig` bị tắt. Bạn có thể kích hoạt nó như sau:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.FontConfigSubstitution.Enabled = true;
      {{< /highlight >}}
   1. Bước tiếp theo sử dụng cơ chế đơn giản nhưng mạnh mẽ được gọi là quy tắc thay thế **Table**. Theo mặc định, tính năng này hoạt động và có sẵn cho hệ điều hành nhất định. Aspose.Words sẽ thay thế phông chữ bằng quy tắc này nếu nó không được thay thế bằng quy tắc thay thế `FontConfig`.<br>
      Aspose.Words sử dụng các bảng XML xác định các quy tắc thay thế cơ bản cho các hệ điều hành khác nhau. Theo quy tắc thay thế Bảng, danh sách tên phông chữ thay thế sẽ được sử dụng.<br>
      **XML**<br>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
      	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      Tính năng chính của quy tắc này là khả năng tải các bảng thay thế của riêng bạn, như được hiển thị trong ví dụ sau:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Load("Table.xml");
      {{< /highlight >}}
      Mặc dù cơ chế này linh hoạt nhưng có một số trường hợp tốt hơn là nên tắt nó, như minh họa bên dưới:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Enabled = false;
      {{< /highlight >}}
   1. Quy tắc thay thế **FontInfo** sẽ được áp dụng nếu quy tắc thay thế bảng không tìm thấy phông chữ. Cơ chế này được kích hoạt theo mặc định. Aspose.Words tìm phông chữ phù hợp nhất theo thông tin phông chữ có trong một tài liệu cụ thể. Thông tin này có thể được lấy từ lớp **FontInfo** như dưới đây:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.FontInfos;
      {{< /highlight >}}
      Người dùng không thể can thiệp vào quy trình làm việc của tính năng này, trừ khi họ quyết định tắt tính năng này trong trường hợp kết quả không đạt yêu cầu:<br>
      **.NET**<br>
      {{< highlight csharp >}}
            fontSettings.SubstitutionSettings.FontInfoSubstitution.Enabled = false;
      {{< /highlight >}}
      Nếu phông chữ bị thiếu không có sẵn **FontInfo** thì quá trình sẽ dừng lại.<br>
   1. Quy tắc thay thế **DefaultFont** sẽ được áp dụng trong trường hợp việc thay thế `FontInfo` cũng không thành công. Quy tắc này cũng được bật theo mặc định. Theo quy tắc này, Aspose.Words sẽ cố gắng sử dụng phông chữ mặc định được chỉ định trong thuộc tính [DefaultFontName](https://reference.aspose.com/words/net/aspose.words.fonts/defaultfontsubstitutionrule/defaultfontname/). Nếu người dùng chưa chọn phông chữ mặc định của riêng mình thì "Time New Roman" sẽ được sử dụng làm phông chữ mặc định. Quy tắc này có thể bị vô hiệu hóa như hình dưới đây:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.Enabled = false;
      {{< /highlight >}}
      Để kiểm tra phông chữ mặc định hiện tại, hãy sử dụng:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName;
      {{< /highlight >}}
      Để thiết lập tùy chọn thay thế của riêng bạn, hãy áp dụng:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName = "Arial";
      {{< /highlight >}}
1. Nếu Aspose.Words không thể thực hiện thay thế phông chữ, nó sẽ cố gắng lấy phông chữ có sẵn đầu tiên từ các nguồn phông chữ có sẵn.
1. Cuối cùng, nếu Aspose.Words không thể tìm thấy bất kỳ phông chữ nào trong số các nguồn phông chữ có sẵn, nó sẽ hiển thị tài liệu bằng phông chữ Fanwood miễn phí được nhúng vào tập hợp Aspose.Words.<br>

Nếu **FontInfo** có sẵn, *quy tắc thay thế FontInfo* sẽ luôn phân giải phông chữ và ghi đè quy tắc phông chữ mặc định. Nếu bạn muốn sử dụng quy tắc phông chữ mặc định, bạn nên tắt *quy tắc thay thế FontInfo*. Lưu ý rằng *quy tắc thay thế FontConfig* sẽ phân giải phông chữ trong hầu hết các trường hợp và do đó sẽ ghi đè tất cả các quy tắc khác.

## Cách nhận biết phông chữ đã bị thay thế

Đôi khi, có thể không rõ tại sao bố cục tài liệu lại thay đổi hoặc tại sao một số phông chữ trông không như mong đợi. Trong những trường hợp như vậy, các thông báo cảnh báo thay thế phông chữ do giao diện [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) triển khai sẽ được giải cứu. Chúng có loại cảnh báo [FontSubstitution](https://reference.aspose.com/words/net/aspose.words/warningtype/) và định dạng văn bản mô tả tiêu chuẩn, "Phông chữ '<OriginalFont> ' chưa được tìm thấy. Sử dụng '<SubstitutionFont> ' thay vào đó là phông chữ. Lý do:<Reason> ", với những lý do sau:

- "tên thay thế từ tài liệu" – để thay thế bằng [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/properties/altname)
- "thay thế fontconfig" – để thay thế bằng quy tắc cấu hình phông chữ
- "thay thế bảng" – để thay thế theo quy tắc bảng
- "thay thế thông tin phông chữ" – để thay thế bằng quy tắc thông tin phông chữ
- "thay thế phông chữ mặc định" – để thay thế theo quy tắc phông chữ mặc định
- "phông chữ có sẵn đầu tiên" – để thay thế bằng phông chữ có sẵn đầu tiên

## Cài đặt phông chữ dự phòng từ XML

Có hai cơ chế khác nhau được sử dụng trong Aspose.Words - Thay thế phông chữ và Dự phòng phông chữ. Thay thế phông chữ được sử dụng khi không thể tìm thấy phông chữ được chỉ định trong tài liệu trong số các nguồn phông chữ như được mô tả trong các phần trên. Cơ chế dự phòng Phông chữ được sử dụng khi phông chữ được giải quyết nhưng không chứa ký tự cụ thể. Trong trường hợp này, Aspose.Words cố gắng sử dụng một trong các phông chữ dự phòng cho ký tự.

Có một phương pháp [BuildAutomatic](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/buildautomatic/) tự động xây dựng cài đặt dự phòng bằng cách quét các phông chữ có sẵn. Vì phương pháp này có thể tạo ra cài đặt dự phòng không tối ưu nên bạn có thể kiểm soát hành vi dự phòng phông chữ bằng cách sử dụng các thuộc tính của lớp [FontFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/). Lớp này chỉ định các cài đặt của cơ chế dự phòng phông chữ. Bạn có thể lấy một thể hiện của lớp **FontFallbackSettings** như sau:

**.NET**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.FallbackSettings;
{{< /highlight >}}

Tương tự như *Quy tắc thay thế bảng*, cơ chế này sử dụng bảng XML để cấu hình. Các bảng XML này có thể được tải và lưu bằng các phương thức sau:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.Load("MyNewFallbackTable.xml");
fontSettings.FallbackSettings.Save("Current_FallbackTable.xml");
{{< /highlight >}}

Bản phát hành Aspose.Words bao gồm hai bảng: *MsOfficeFallbackSetting.xml* và *NotoFallbackSetting.xml*.

Bảng *MsOfficeFallbackSetting* xác định chiến lược thay thế cho một phạm vi ký tự, tương tự như chiến lược được Microsoft Word sử dụng. Vì vậy, chiến lược yêu cầu cài đặt phông chữ Microsoft Office. *MsOfficeFallbackSetting* có thể được kích hoạt bằng phương pháp sau:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadMsOfficeFallbackSettings();
{{< /highlight >}}

Bảng *NotoFallbackSetting* được tạo đặc biệt để sử dụng với phông chữ Google Noto (xem thêm về cài đặt phông chữ Google Noto trong phần tiếp theo) và có thể được bật như sau:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadNotoFallbackSettings();
{{< /highlight >}}

Ví dụ mã sau đây minh họa cách tải cài đặt phông chữ dự phòng từ tệp XML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetFontFallbackSettings.cs" >}}

Trong ví dụ mã trên, tệp XML sau được sử dụng:

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

## Cài đặt dự phòng phông chữ được xác định trước cho phông chữ Google Noto

Aspose.Words cung cấp cài đặt dự phòng phông chữ được xác định trước cho phông chữ Google Noto. Đây là những phông chữ miễn phí được cấp phép theo Giấy phép Phông chữ Mở SIL, có thể tải xuống từ Phông chữ Google Noto. Lớp **FontFallbackSettings** cung cấp một phương thức [LoadNotoFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/loadnotofallbacksettings/). Nó tải các cài đặt dự phòng được xác định trước, sử dụng phông chữ Google Noto như trong ví dụ mã bên dưới:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetPredefinedFontFallbackSettings.cs" >}}

{{% alert color="primary" %}}

Chỉ các phông chữ Noto kiểu Sans có độ dày thông thường mới được sử dụng trong cài đặt được xác định trước.

{{% /alert %}}

## Nơi Aspose.Words tìm kiếm phông chữ

Aspose.Words cố gắng tự động tìm phông chữ TrueType trên hệ thống tệp. Thông thường, bạn có thể dựa vào hoạt động mặc định của Aspose.Words để tìm phông chữ `TrueType`, nhưng đôi khi bạn cần chỉ định các thư mục của riêng mình chứa phông chữ TrueType. Chủ đề [Chỉ định vị trí phông chữ TrueType](/words/vi/net/specifying-truetype-fonts-location/) mô tả cách thức và vị trí Aspose.Words tìm kiếm phông chữ cũng như cách chỉ định vị trí phông chữ của riêng bạn.

## Sự khác biệt trong việc xử lý định dạng phông chữ trong Aspose.Words và Microsoft Word

Có một số khác biệt trong việc xử lý định dạng phông chữ trong Aspose.Words và Microsoft Word như trong bảng bên dưới:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| Phông chữ TrueType và phông chữ OpenType với đường viền TrueType | Được hỗ trợ. | Được hỗ trợ. |
| Phông chữ OpenType với đường viền PostScript | Được hỗ trợ cho hầu hết các kịch bản. Nhúng vào các định dạng trang cố định như PDF và XPS không được hỗ trợ. Văn bản được thay thế bằng hình ảnh bitmap. | Được hỗ trợ cho hầu hết các trường hợp, bao gồm cả việc nhúng vào các định dạng trang cố định. |
| Các biến thể phông chữ OpenType | Chỉ các trường hợp được đặt tên mới được hỗ trợ. Các biến thể liên tục không được hỗ trợ. | Chỉ được hỗ trợ cho phiên bản mặc định. Các phiên bản được đặt tên và các biến thể liên tục không được hỗ trợ. |
| Phông chữ loại 1 | Được hỗ trợ trên các phiên bản Windows trước năm 2013 và trên các phiên bản MacOS. Hỗ trợ bị loại bỏ trên các phiên bản Windows bắt đầu từ năm 2013. | Không được hỗ trợ. |

## Xem thêm

- [Phông chữ Google Noto](https://fonts.google.com/noto) để tải xuống phông chữ miễn phí
