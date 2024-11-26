---
title: Thao tác và Thay thế các phông chữ TrueType
second_title: Aspose.Words cho Java
articleTitle: Thao tác và Thay thế các phông chữ TrueType
linktitle: Thao tác và Thay thế các phông chữ TrueType
description: "Bạn Aspose.Words cho Java có thể nhúng các kiểu chữ TrueType chính xác vào tài liệu kết quả để đảm bảo nó được hiển thị chính xác, hoặc tìm kiếm một sự thay thế phông chữ phù hợp, hoặc sử dụng cơ chế phông chữ dự phòng."
type: docs
weight: 10
url: /vi/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Mục Aspose.Words yêu cầu các phông chữ TrueType cho một loạt các nhiệm vụ, bao gồm cả việc hiển thị tài liệu theo định dạng trang cố định, ví dụ như PDF hoặc XPS. Khi Aspose.Words hiển thị một tài liệu, nó cần phải thực hiện việc nhúng và nhúng tập con của phông chữ TrueType vào tài liệu kết quả, đó là một thực hành thông thường trong quá trình tạo tài liệu, bao gồm các định dạng phổ biến PDF hay XPS. Điều này đảm bảo rằng tài liệu sẽ xuất hiện giống nhau với bất kỳ ai xem nó. Ngoài ra, thông số kỹ thuật XPS yêu cầu phông chữ phải luôn được nhúng trong tài liệu.

Để đảm bảo Aspose.Words đo chính xác ký tự và nhúng thành công phông chữ liên quan, các điều kiện sau phải được đáp ứng

1. Aspose.Words phải có khả năng tìm và truy cập các tập tin phông chữ TrueType trên hệ thống.
1. Phải có đủ TrueType font sẵn có cho Aspose.Words, với cùng các tên gia đình font như những người được sử dụng trong tài liệu.

Xin lưu ý rằng phông chữ trong tài liệu đại diện cho một thực thể, chẳng hạn như họ tên, kiểu dáng, kích thước màu sắc, khác với thực thể phông chữ `TrueType` (phân tử phông chữ vật lý). Aspose.Words giải quyết phông chữ trong tài liệu thành phân tử phông chữ vật lý ở một giai đoạn nào đó của xử lý. Điều này cho phép một số tác vụ, phổ biến nhất là nhiệm vụ tính toán kích thước văn bản trong quá trình bố cục và nhúng / phân đoạn đến các định dạng trang cố định. Một số nhiệm vụ ít phổ biến hơn như giải quyết và thay thế phông chữ trong khi tải tệp HTML hoặc nhúng và phân chia để tạo ra một số định dạng dòng, cũng được bật.

## Vấn đề thao tác và hiệu suất phông chữ

Tất cả các cơ chế thao tác phông chữ có thể có đều được chứa trong lớp [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Lớp này chịu trách nhiệm lấy các phông chữ trong các nguồn phông chữ được xác định cũng như quá trình thay thế phông chữ, như được mô tả bên dưới.

Các phông chữ được phân tích trong nhiều bước:

1. Lấy thông tin cho phông chữ, giải quyết từ tất cả các phông chữ có sẵn.
1. Phân tích các phông chữ đã giải quyết để nhận được các glyph có sẵn và các giá trị ( ngang và dọc ).
1. Phân tích các phông chữ đã giải để nhúng và phân đoạn nhỏ.

Khi Aspose.Words gặp một phông chữ trong tài liệu lần đầu tiên nó cố gắng lấy thông tin cơ bản về phông chữ như tên đầy đủ, gia đình, phiên bản, kiểu từ các tập tin nằm trong mỗi nguồn phông chữ. Sau khi tất cả các phông chữ được lấy lại, Aspose.Words sử dụng chi tiết này để tìm dữ liệu phông chữ cần thiết hoặc một sự thay thế phù hợp cho phông chữ đã yêu cầu.

Vì thủ tục được mô tả ở trên là mất nhiều thời gian, nó có thể ảnh hưởng tiêu cực đến hiệu năng của ứng dụng khi lần đầu khởi chạy. Tuy nhiên, mỗi trường hợp của **FontSettings** có bộ nhớ đệm riêng của nó, điều này có thể làm giảm thời gian xử lý các tài liệu tiếp theo. Ví dụ, bạn có thể chia sẻ một thực thể của lớp **FontSettings** giữa các tài liệu khác nhau, điều đó cho phép bạn tăng tốc độ tải của các tài liệu. Ví dụ sau đây minh họa điều này:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

Trong trường hợp khi **FontSettings** không được định nghĩa rõ ràng, Aspose.Words sử dụng trường hợp mặc định của **FontSettings**. Ví dụ này cũng được chia sẻ tự động giữa các tài liệu và có thể trích xuất như sau:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Nếu bạn chắc rằng tất cả các tài liệu xử lý yêu cầu cùng một cài đặt phông chữ, sau đó được đề nghị để thiết lập và sử dụng mặc định **FontSettings** trường hợp. Giả sử bạn cần sử dụng các nguồn phông chữ giống nhau cho tất cả các tài liệu của bạn. Trong trường hợp này, bạn có thể sửa đổi trường hợp mặc định như sau:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

Các tùy chọn **FontSettings** có ưu tiên cao hơn các ví dụ mặc định.

{{% /alert %}}

## Tính có sẵn của phông chữ và thay thế

Một văn bản trong tài liệu có thể được định dạng với các phông chữ khác nhau như là Arial, Times New Roman, Verdana và những phông chữ khác. Khi Aspose.Words render một tài liệu, nó cố gắng chọn các phông chữ được chỉ định trong tài liệu đó.

Tuy nhiên có những trường hợp mà chính xác của phông chữ không thể tìm thấy và Aspose.Words phải thay thế nó bằng một phông chữ tương tự thay vì nó. Aspose.Words chọn phông chữ theo quy trình sau:

1. Aspose.Words thử tìm một phông chữ trong nguồn phông chữ có sẵn với tên phông chữ chính xác.
1. Aspose.Words sẽ cố gắng tìm kiếm phông chữ cần thiết trong các phông chữ được nhúng trong tài liệu gốc. Một số định dạng tài liệu như DOCX có thể chứa phông chữ nhúng.
1. Nếu Aspose.Words không thể tìm thấy phông chữ cần thiết với tên chính xác, và thuộc tính [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) được định nghĩa cho phông chữ này, thì Aspose.Words sẽ tìm thấy phông chữ được định nghĩa với **AltName** từ lớp [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/), nó chỉ định thông tin phông chữ.
1. Nếu Aspose.Words không thể tìm thấy phông chữ được định nghĩa, và **AltName** cũng không được định nghĩa, thì quy tắc thay thế phông chữ sẽ được áp dụng từng bước một, như mô tả ở dưới đây (khi có sự thay thế phù hợp, quy trình thay thế phông chữ sẽ dừng lại và bước tiếp theo không được thực hiện):
   1. Aspose.Words sẽ cố gắng áp dụng các cài đặt phông chữ của hệ điều hành, nếu chúng có sẵn, bằng cách sử dụng tiện ích `FontConfig`. Tính năng không Windows này phải được dùng với một hệ điều hành tương thích FontConfig. Hầu như mọi hệ điều hành dựa trên Unix đều có một thư viện `FontConfig` được thiết kế để cung cấp cấu hình phông chữ ở quy mô toàn hệ thống và tùy biến cũng như truy cập các ứng dụng. Nếu không, thư viện này có thể được cài đặt bởi người dùng một cách dễ dàng.<br>
      Aspose.Words biết cách truy vấn dữ liệu và giải thích kết quả của FontConfig cho mục đích riêng của nó. Theo mặc định, tiện ích `FontConfig` bị tắt. Bạn có thể kích hoạt nó như sau:<br>
      **Java** <br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. Bước tiếp theo là một cơ chế đơn giản nhưng cực kỳ mạnh mẽ gọi là [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/) Theo mặc định, tính năng này là hoạt động và có sẵn cho bất kỳ hệ điều hành nào. Aspose.Words sử dụng bảng XML xác định các quy tắc thay thế cơ bản cho các hệ điều hành khác nhau. Theo quy tắc "Table Substitution", danh sách các tên phông chữ thay thế sẽ được sử dụng.<br>
      **XML** <br>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - phông chữ cần thay thế, SubstituteFonts - danh sách các biến thể thay thế, phân cách bằng dấu phẩy. Phông chữ đầu tiên có sẵn được sử dụng cho việc thay thế.<br>
      Tính năng chính của quy tắc này là khả năng tải các bảng thay thế của riêng bạn, như được hiển thị trong ví dụ sau:<br>
      **Java** <br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Bạn có thể lấy làm cơ sở bảng hiện có từ trong kho hoặc lưu nó một cách lập trình bằng phương thức sau đây: <br />
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Dù cơ chế này có độ linh hoạt nhưng cũng có những trường hợp nên tắt nó đi, như dưới đây:<br>
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. Quy tắc thay thế **FontInfo** sẽ được áp dụng nếu quy tắc thay thế bảng không tìm thấy phông chữ. Cơ chế này được bật theo mặc định. Aspose.Words tìm ra phông chữ phù hợp nhất với thông tin về phông chữ có trong một tài liệu cụ thể. Thông tin này có thể được lấy từ lớp **FontInfo** như hiển thị ở dưới đây:<br />
      **Java** <br>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Người dùng không thể can thiệp vào luồng công việc của tính năng này trừ khi họ quyết định vô hiệu hóa nó trong trường hợp kết quả không thỏa đáng: <br>
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Nếu **FontInfo** không có sẵn cho phông chữ bị thiếu, thì quá trình dừng lại.
   1. Quy tắc thay thế **DefaultFont** sẽ được áp dụng khi quy tắc thay thế `FontInfo` cũng thất bại. Quy tắc này cũng được kích hoạt theo mặc định. Theo quy tắc này thì Aspose.Words sẽ cố gắng sử dụng phông chữ mặc định được chỉ định trong thuộc tính [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName). Nếu người dùng chưa chọn phông chữ mặc định của họ, sau đó "Times New Roman" sẽ được sử dụng như là phông chữ mặc định. Quy tắc này có thể bị vô hiệu hóa như hiển thị ở dưới đây: <br>
      **Java** <br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Để kiểm tra phông chữ mặc định hiện tại, sử dụng:<br>
      **Java** <br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Để thiết lập tùy chọn thay thế của riêng bạn, hãy áp dụng: <br>
      **Java** <br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Nếu Aspose.Words không thể thực hiện việc thay thế phông chữ, nó sẽ cố gắng lấy phông chữ đầu tiên có sẵn từ các nguồn phông chữ có sẵn.
1. Cuối cùng, nếu Aspose.Words không thể tìm thấy bất kỳ phông chữ nào trong các nguồn phông chữ có sẵn, nó sẽ hiển thị tài liệu bằng phông chữ miễn phí Fanwood được nhúng vào bộ lắp ráp Aspose.Words.

{{% alert color="primary" %}}

Nếu **FontInfo** có sẵn, quy tắc *substitution FontInfo* sẽ luôn giải quyết phông chữ và ghi đè quy tắc phông chữ mặc định. Nếu bạn muốn sử dụng quy tắc phông chữ mặc định, bạn nên vô hiệu hóa Quy tắc thay thế *FontInfo*. Lưu ý rằng *quy tắc thay thế FontConfig* sẽ giải quyết phông chữ trong hầu hết các trường hợp và do đó áp đảo tất cả các quy tắc khác.

{{% /alert %}}

## Làm thế nào để nhận ra kiểu chữ đã được thay thế

Đôi khi có thể không rõ tại sao bố cục tài liệu đã thay đổi hoặc vì sao một phông chữ lại không giống như mong đợi. Trong những trường hợp như thế, những thông báo cảnh báo thay thế phông chữ được thực hiện bởi giao diện [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) đến để cứu trợ. Chúng có kiểu cảnh báo [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) và định dạng văn bản mô tả chuẩn," "Phông chữ '<OriginalFont>' không được tìm thấy. Sử dụng kiểu chữ <SubstitutionFont> thay thế. Lý do: <Lý do>", với những lý do sau đây:

- tên thay thế từ tài liệu - cho [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
"- fontconfig-substitution" – để thay thế theo quy tắc của fontconfig
- "substitution bảng" – để thay thế bằng quy tắc bảng
"- thông tin phông chữ thay thế" – "cho việc thay thế bằng quy tắc thông tin phông chữ"
"- "phân thể mặc định" – cho phép thay thế theo quy tắc phông chữ mặc định"
"- ‘phông chữ đầu tiên có sẵn’ – để thay thế bằng phông chữ đầu tiên có sẵn"

## Cài đặt Font FallBack từ XML

Có hai cơ chế khác nhau được dùng trong Aspose.Words - Thay thế phông chữ và Phép hồi phục phông chữ. Thay thế phông chữ được sử dụng khi phông chữ được chỉ định trong tài liệu không thể tìm thấy trong nguồn phông chữ vì nó đã được mô tả trong các phần trên. Cơ chế phông chữ dự phòng được sử dụng khi phông chữ được giải quyết, nhưng nó không chứa ký tự cụ thể. Trong trường hợp này, Aspose.Words cố gắng sử dụng một trong những phông chữ dự phòng cho ký tự.

Có một phương pháp [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) đó tự động xây dựng các thiết lập mặc định bằng cách quét các phông chữ có sẵn. Bởi vì phương pháp này có thể tạo ra một cài đặt dự phòng không tối ưu, bạn có thể kiểm soát hành vi của phông chữ dự phòng bằng cách sử dụng các thuộc tính của lớp [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/). Lớp này chỉ định các cài đặt của cơ chế chuyển tiếp phông chữ. Bạn có thể lấy một bản thể của lớp **FontFallbackSettings** như sau:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

Tương tự với *Quy tắc thay thế bảng*, cơ chế này sử dụng các bảng XML để cấu hình. Những bảng XML này có thể được tải và lưu bằng những phương pháp sau:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

Bản phát hành Aspose.Words bao gồm hai bảng: *MsOfficeFallbackSetting.xml* và *NotoFallbackSetting.xml*.

Bảng *MsOfficeFallbackSetting* định nghĩa một chiến lược thay thế cho một phạm vi các ký tự, tương tự như chiến lược được sử dụng bởi Microsoft Word. Chiến lược này yêu cầu cài đặt Microsoft phông chữ Office. *MsOfficeFallbackSetting* có thể được kích hoạt bằng cách sử dụng phương pháp sau:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

Bảng *NotoFallbackSetting* được tạo ra để dùng với các phông chữ Google Noto (xem thêm về các thiết lập phông chữ Google Noto trong phần tiếp theo) và có thể được kích hoạt như sau:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

Mã ví dụ sau cho thấy cách tải cài đặt phông chữ dự phòng từ một tập tin XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

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

## Cài sẵn các cài đặt Font FallBack cho Google Noto phông chữ

Aspose.Words cung cấp các thiết lập phông chữ mặc định cho Google Noto phông chữ. Đây là các phông chữ miễn phí được cấp phép theo Giấy phép Phông chữ Mở của SIL có thể tải xuống từ Google Noto Phông chữ. Lớp **FontFallbackSettings** cung cấp một phương pháp [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings). Nó tải cài đặt mặc định thay thế sử dụng Google Noto phông chữ như được hiển thị trong ví dụ mã sau:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Chỉ sử dụng phông chữ Sans-style Noto với trọng lượng thường trong cài đặt mặc định.

{{% /alert %}}

## Nơi nào Aspose.Words tìm kiếm kiểu chữ?

Aspose.Words thử tìm các phông chữ truetype trong hệ thống tập tin một cách tự động. Thông thường, bạn có thể dựa vào hành vi mặc định của Aspose.Words để tìm các phông chữ `TrueType`, nhưng đôi khi bạn cần chỉ rõ thư mục chứa phông chữ TrueType. Chủ đề [Specify TrueType Fonts Location](/words/java/specify-truetype-fonts-location/) mô tả cách và nơi mà Aspose.Words tìm kiếm các phông chữ cũng như cách để chỉ định vị trí phông chữ của riêng bạn.

## Sự khác nhau trong việc xử lý Định dạng Phông chữ ở Aspose.Words và Microsoft Word

Có một số sự khác biệt trong việc xử lý các định dạng phông chữ giữa Aspose.Words và Microsoft Word như thể hiện trong bảng dưới đây:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| Phông chữ TrueType và phông chữ OpenType với đường viền TrueType | Được hỗ trợ. | Được hỗ trợ. |
| Phông chữ OpenType với đường viền PostScript | Hỗ trợ cho hầu hết các tình huống. Nhúng vào định dạng trang cố định như PDF và XPS không được hỗ trợ. Văn bản được thay thế bằng hình ảnh bitmap. | Được hỗ trợ cho hầu hết các tình huống, bao gồm nhúng vào định dạng trang cố định. |
| Biến thể Phông chữ OpenType | Chỉ các trường hợp được đặt tên mới được hỗ trợ. Các biến đổi liên tục không được hỗ trợ. | Hỗ trợ cho trường hợp mặc định duy nhất. Cụ thể và biến thể liên tục không được hỗ trợ. |
| Phông chữ Loại 1 | Hỗ trợ trên Windows phiên bản trước 2013 và trên các phiên bản MacOS. Hỗ trợ bị ngừng trên Windows phiên bản bắt đầu từ 2013. | Không được hỗ trợ. |

## Xem Thêm

- [Google Noto Fonts](https://fonts.google.com/noto) để tải phông chữ miễn phí


