---
title: Chỉ định vị trí Phông chữ TrueType Trong C++
second_title: Aspose.Words cho C++
articleTitle: Chỉ Định Vị Trí Phông Chữ TrueType
linktitle: Chỉ Định Vị Trí Phông Chữ TrueType
description: "Chỉ định các nguồn phông chữ TrueType khác nhau: thư mục hệ thống, nguồn người dùng, tải phông chữ từ luồng, hệ thống tệp hoặc bộ nhớ."
type: docs
weight: 30
url: /vi/cpp/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Chủ đề này mô tả hành vi mặc định của Aspose.Words khi tìm kiếm phông chữ TrueType, bao gồm sự khác biệt cụ thể của hệ điều hành và trình bày cách chỉ định nguồn phông chữ của người dùng.

Lớp [FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase) được sử dụng để chỉ định các nguồn phông chữ khác nhau. Có một số triển khai của lớp **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

Chi tiết thực hiện cho một số lớp được giải thích dưới đây.

## Tải Phông chữ Từ Hệ thống {#loading-fonts-from-system}

Có một lớp [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/) đặc biệt luôn được sử dụng theo mặc định. Nó đại diện cho tất cả các phông chữ TrueType được cài đặt trên hệ thống. Do đó, có thể tạo danh sách nguồn với **SystemFontSource** và bất kỳ nguồn bắt buộc nào khác:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

Một thể hiện duy nhất của lớp **SystemFontSource** được định nghĩa theo mặc định trong [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/). Trên các hệ điều hành khác nhau, phông chữ có thể được đặt ở những nơi khác nhau. Tuy nhiên, sử dụng một cá thể **FontSettings** cho mỗi tài liệu không phải là một giải pháp tối ưu. Trong phần lớn các trường hợp, sử dụng [DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/) là đủ.

Các trường hợp trên mỗi tài liệu chỉ cần thiết nếu bắt buộc phải sử dụng các nguồn phông chữ khác nhau cho các tài liệu khác nhau, đây là một trường hợp hiếm gặp. Sử dụng một số trường hợp **FontSettings** làm giảm hiệu suất vì chúng không chia sẻ bộ đệm.

### Trong đó Aspose.Words Tìm kiếm TrueType Phông chữ trên Windows

Trong hầu hết các trường hợp, Windows người dùng không gặp phải vấn đề đáng kể với phông chữ bị bỏ lỡ hoặc bố cục không chính xác. Thông thường, Aspose.Words đi qua một tài liệu và khi gặp liên kết của phông chữ, nó sẽ tìm nạp thành công dữ liệu phông chữ từ thư mục hệ thống.

Trên Windows, Aspose.Words đầu tiên lấy tất cả các phông chữ có sẵn từ thư mục _%windir%\Fonts. Cài đặt này sẽ hoạt động cho bạn hầu hết thời gian. Bạn chỉ chỉ định các thư mục phông chữ của riêng bạn nếu bạn cần. Aspose.Words cũng tìm kiếm các phông chữ bổ sung được đăng ký trong khóa đăng ký HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. Ngoài ra, Windows 10 cho phép cài đặt phông chữ cho người dùng hiện tại. Phông chữ được đặt vào thư mục %userprofile%\AppData\Local\Microsoft\Windows\Fonts và cũng được chỉ định trong sổ đăng ký HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, trong đó Aspose.Words sẽ tìm kiếm các phông chữ này.

Nếu tài liệu chứa phông chữ nhúng, Aspose.Words có thể đọc dữ liệu phông chữ có liên quan từ tài liệu và sử dụng nó để tạo bố cục của tài liệu. Tài liệu cũng có thể chứa các liên kết đến phông chữ không có trong thư mục hệ thống, trong trường hợp đó, các tình huống sau đây sẽ hoạt động:

- Người dùng có thể thiết lập các nguồn phông chữ mới thông qua lớp **FontSettings**
- Aspose.Words có thể cố gắng thay thế phông chữ bị bỏ lỡ bằng một phông chữ tương tự

{{% alert color="primary" %}}

Aspose.Words kết xuất trên máy chủ thường sẽ không hoạt động với ứng dụngASP .NET được định cấu hình để chạy Ở Mức Độ Tin Cậy Trung bình, vì nó cấm truy cập vào sổ đăng ký và giới hạn quyền truy cập vào hệ thống tệp.

{{% /alert %}}

### Phông Chữ Trên Hệ Thống KhôngWindows

Aspose.Words sẽ tìm các phông chữ trong các thư mục phông chữ hệ thống. Một danh sách các thư mục này có thể được nhìn thấy bằng phương thức [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Nếu không tìm thấy phông chữ được hỗ trợ, Aspose.Words sẽ sử dụng Fanwood phông chữ mặc định tích hợp.ttf.

Vì các số liệu phông chữ của Windows và non - Windows OS là khác nhau, Aspose.Words làm mọi thứ có thể để tìm một phông chữ tương tự và xây dựng một bố cục tương tự như bản gốc. Tuy nhiên, điều này không phải lúc nào cũng có thể. Trong những trường hợp này, lớp **FontSettings** nên được sử dụng để thêm phông chữ tùy chỉnh hoặc quy tắc thay thế.

#### Trong đó Aspose.Words Tìm kiếm TrueType Phông chữ trên Linux

Các bản phân phối Linux khác nhau có thể lưu trữ phông chữ trong các thư mục khác nhau. Aspose.Words tìm kiếm phông chữ ở một số vị trí. Theo mặc định, Aspose.Words tìm kiếm các phông chữ ở tất cả các vị trí sau: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. Hành vi mặc định này sẽ hoạt động đối với hầu hết các bản phân phối Linux, nhưng nó không được đảm bảo hoạt động mọi lúc, trong trường hợp đó bạn có thể cần chỉ định rõ ràng vị trí của phông chữ true type. Để làm điều này, bạn cần biết nơi TrueType phông chữ được cài đặt trên bản phân phối Linux của bạn.

#### Trong đó Aspose.Words Tìm kiếm TrueType Phông chữ Trên Mac OS X

Aspose.Words tìm kiếm phông chữ trong thư mục `/Library/Fonts`, là vị trí tiêu chuẩn cho TrueType phông chữ Trên Mac OS X. Mặc dù cài đặt này sẽ hoạt động cho bạn hầu hết thời gian, Bạn có thể cần chỉ định các thư mục phông chữ của riêng mình trong trường hợp khi bạn cần.

#### TrueType phông chữ trên Android

Trên Android, quy trình làm việc phông chữ được gói gọn trong lớp Kiểu chữ.
Có năm loại kiểu chữ, mỗi kiểu chữ đại diện cho một nhóm các họ phông chữ tương tự nhau:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Ví dụ, theo Android ' s [phông chữ.xl](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) tệp cấu hình," thời gian "thuộc về gia đình" serif " vì vậy NotoSerif-Thường xuyên.ttf sẽ được sử dụng khi" thời gian " được yêu cầu:

**Phông chữ.xl**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

Để tìm kiếm các phông chữ tương tự, các chiến lược được mô tả trước đó được sử dụng.

Ngoài chúng, Aspose.Words có danh sách thay thế riêng cho nền tảng Android.

Giả sử tài liệu chứa phông Chữ PMingLiU-ExtB, trước hết, Aspose.Words đang tìm kiếm phông chữ cần thiết trong các nguồn hệ thống.

Danh sách mặc định của các thư mục của phông chữ Android là:

- / hệ thống / phông chữ
- / hệ thống / phông chữ
- / dữ liệu / phông chữ

Aspose.Words xem qua các nguồn do người dùng xác định được đặt bằng phương thức:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

Trong trường hợp thay thế rõ ràng đã được chỉ định, Aspose.Words thay thế phông chữ bị thiếu bằng đề xuất của người dùng:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

Nếu không có quy tắc nào hoạt động, Aspose.Words kiểm tra bảng thay thế nội bộ. Nếu bảng chứa thông tin về sự phù hợp thì phông chữ sẽ được thay thế. Trong trường hợp của chúng tôi Aspose.Words sẽ chọn `Typeface.SERIF`. Nhưng nếu bảng không biết gì về phông chữ được yêu cầu thì Aspose.Words chọn một phông chữ dựa trên các quy tắc Từ MS đặc biệt hoặc khoảng cách gần Nhất trong Không gian Panose.

#### TrueType phông chữ trên .NET Core và Xamarin

Đối với .NET Core và Xamarin quy tắc tương tự được áp dụng như đối với Aspose.Words cho Java phiên bản. Theo mặc định, tất cả các phông chữ hệ thống của nền tảng mà ứng dụng chạy đều có sẵn.
Danh sách các thư mục nơi tìm kiếm sẽ được thực hiện có thể được tìm thấy bằng cách gọi phương thức:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## Tải Phông chữ Từ Thư mục {#loading-fonts-from-folder}

Nếu tài liệu đang được xử lý chứa các liên kết đến các phông chữ không có trên hệ thống hoặc bạn không muốn thêm chúng vào thư mục hệ thống hoặc bạn thiếu quyền, thì giải pháp tốt nhất là thêm một thư mục có phông chữ của riêng bạn bằng phương thức [SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/). Điều này sẽ cho phép thay thế nguồn hệ thống bằng nguồn người dùng. Aspose.Words sẽ không còn tìm kiếm phông chữ trong sổ đăng ký hoặc thư mục Windows\Font và thay vào đó chỉ quét các phông chữ trong(các) thư mục được chỉ định. Phương thức [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/) sẽ trả về các giá trị tương ứng.

### Chỉ Định một Hoặc Nhiều Thư Mục Phông Chữ

Các phương thức [SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/) và [SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/) là các phím tắt cho phương thức **SetFontSources** với một hoặc một số trường hợp [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/). Các phương pháp này được sử dụng để chỉ ra nơi Aspose.Words nên tìm phông chữ. Nếu một thư mục không tồn tại hoặc không thể truy cập được, Aspose.Words chỉ cần bỏ qua thư mục này. Nếu tất cả các thư mục, bao gồm các nguồn thay thế phông chữ, đã bị bỏ qua, Aspose.Words sẽ sử dụng Phông Chữ Fanwood làm mặc định.

Ví dụ sau đây trình bày cách đặt thư mục hoặc nguồn, sau đó Aspose.Words sẽ sử dụng để tìm phông chữ TrueType trong quá trình kết xuất hoặc nhúng phông chữ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Một Tham Số Boolean bổ sung kiểm soát liệu phông chữ có được quét đệ quy qua tất cả các thư mục hay không, do đó quét tất cả các thư mục con của một thư mục được chỉ định. Ví dụ sau đây trình bày cách đặt Aspose.Words để tìm trong nhiều thư mục cho phông chữ TrueType khi kết xuất hoặc nhúng phông chữ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Lưu ý các ưu tiên. Nếu có các phông chữ có cùng họ và kiểu trong các nguồn phông chữ khác nhau, thì Aspose.Words sẽ chọn phông chữ từ nguồn có mức độ ưu tiên cao hơn. Xem mô tả về trường" Ưu tiên " bên dưới.

Nếu bạn không muốn sử dụng phông chữ hệ thống, Aspose.Words cho phép bạn bỏ qua chúng và chỉ sử dụng phông chữ của riêng bạn:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### Tài Sản Ưu Tiên

Thuộc tính [Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/) được sử dụng khi có các phông chữ có cùng họ và kiểu trong các nguồn phông chữ khác nhau. Trong trường hợp này Aspose.Words chọn phông chữ từ nguồn có giá trị ưu tiên cao hơn. Ví dụ: có một phiên bản cũ của phông chữ trên thư mục hệ thống và khách hàng đã thêm một phiên bản mới của cùng một phông chữ trong một thư mục tùy chỉnh.

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## Tải Phông chữ Từ Luồng {#loading-fonts-from-stream}

Aspose.Words cung cấp lớp [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource), cho phép tải phông chữ từ luồng. Để sử dụng nguồn phông chữ luồng, người dùng cần tạo một lớp dẫn xuất từ **StreamFontSource** và cung cấp triển khai phương thức [OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/). Phương thức **OpenFontDataStream** có thể được gọi nhiều lần. Lần đầu tiên, nó sẽ được gọi khi Aspose.Words quét các nguồn phông chữ được cung cấp để lấy danh sách các phông chữ có sẵn. Sau đó, nó có thể được gọi nếu phông chữ được sử dụng trong tài liệu để phân tích dữ liệu phông chữ và nhúng dữ liệu phông chữ vào một số định dạng đầu ra. **StreamFontSource** có thể hữu ích vì nó chỉ cho phép tải dữ liệu phông chữ khi được yêu cầu và không lưu trữ nó trong bộ nhớ trong suốt cuộc đời [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## Lưu Và Tải Bộ Nhớ Cache Tìm Kiếm Phông Chữ

Khi tìm kiếm phông chữ lần đầu tiên, Aspose.Words lặp lại các nguồn phông chữ do người dùng chỉ định và tạo thành bộ đệm tìm kiếm phông chữ dựa trên dữ liệu từ các nguồn này. Do đó, bộ đệm sẽ thu thập thông tin về các phông chữ có sẵn: họ phông chữ, kiểu, tên phông chữ đầy đủ và các phông chữ khác. Trong các cuộc gọi tiếp theo, Aspose.Words tìm kiếm thông tin về phông chữ mong muốn theo tên của nó trong bộ đệm tìm kiếm phông chữ, sau đó nó phân tích các tệp được chỉ định để sử dụng phông chữ.

Quy trình phân tích cú pháp tất cả các tệp phông chữ có sẵn để khởi tạo bộ đệm khá tốn thời gian. Aspose.Words cho phép bạn lưu và tải bộ đệm bằng phương pháp [SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/) để giải quyết vấn đề hiệu suất. Đó là, người dùng có thể tải bộ đệm đã lưu trước đó từ một tệp và bỏ qua bước phân tích cú pháp tất cả các tệp phông chữ có sẵn.

{{% alert color="primary" %}}

Sử dụng cùng một phương thức **SaveSearchCache** để cập nhật bộ đệm.

{{% /alert %}}

{{% alert color="primary" %}}

Bộ đệm cũng phù hợp với các tình huống khác khi phông chữ được tải qua mạng. Hoặc cho các kịch bản khi không có cách nào để lưu trữ một cá thể `FontSettings` với bộ đệm được tải.

{{% /alert %}}

## Nhận Danh sách Các Phông Chữ có sẵn {#get-a-list-of-available-fonts}

Nếu bạn muốn lấy danh sách các phông chữ có sẵn, ví dụ, có thể được sử dụng để hiển thị tài liệu PDF, bạn có thể sử dụng phương thức [GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/), như được hiển thị trong ví dụ mã sau. Lớp [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo) chỉ định thông tin về phông chữ vật lý có sẵn cho công cụ phông chữ Aspose.Words:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
