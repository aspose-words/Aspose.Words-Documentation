---
title: Chỉ định vị trí font TrueType trong Java
second_title: Aspose.Words cho Java
articleTitle: Chỉ định vị trí của TrueType Fonts
linktitle: Chỉ định vị trí của TrueType Fonts
description: "Chỉ ra các nguồn TrueType khác nhau: thư mục hệ thống, nguồn người dùng, tải phông chữ từ một luồng, một hệ thống tệp hoặc bộ nhớ bằng cách sử dụng Java."
type: docs
weight: 30
url: /vi/java/specify-truetype-fonts-location/
---

Chủ đề này mô tả hành vi mặc định của Aspose.Words khi tìm kiếm phông chữ TrueType, bao gồm sự khác biệt đặc thù hệ điều hành, và hướng dẫn cách chỉ định nguồn phông chữ người dùng.

Các [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) được sử dụng để chỉ định các nguồn phông chữ khác nhau. Có nhiều cách thực hiện của lớp **FontSourceBase**":

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

Chi tiết thực hiện cho một số lớp được giải thích bên dưới.

## Tải phông chữ từ hệ thống {#loading-fonts-from-system}

Có một lớp đặc biệt [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) luôn được sử dụng mặc định. Nó biểu diễn tất cả các phông chữ TrueType đã cài đặt trên hệ thống. Do đó, có thể tạo một danh sách nguồn với **SystemFontSource** và bất kỳ nguồn nào khác được yêu cầu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

Một trường hợp duy nhất của lớp **SystemFontSource** được định nghĩa mặc định trong [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Trong các hệ điều hành khác nhau, phông chữ có thể nằm ở những nơi khác nhau. Tuy nhiên việc sử dụng một **FontSettings** cho mỗi tài liệu không phải là giải pháp tối ưu. Trong đa số trường hợp, sử dụng [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) nên là đủ.

Các trường hợp tài liệu là cần thiết chỉ nếu nó yêu cầu sử dụng các nguồn phông chữ khác nhau cho các tài liệu khác nhau, điều này là một trường hợp hiếm hoi. Sử dụng nhiều các bản **FontSettings** làm giảm hiệu năng vì chúng không chia sẻ bộ nhớ đệm.

### Where Aspose.Words Looks for TrueType Fonts on Windows

Trong hầu hết các trường hợp, Windows người dùng không gặp vấn đề lớn với phông chữ bị thiếu hoặc bố cục không chính xác. Thông thường, Aspose.Words đi qua một tài liệu và khi nó gặp liên kết của phông chữ, nó đã thu được dữ liệu phông chữ thành công từ thư mục hệ thống.

Vào ngày Windows, Aspose.Words lần đầu tiên lấy tất cả các phông chữ có sẵn từ thư mục _%windir%\Fonts. Cài đặt này sẽ hoạt động cho bạn hầu hết thời gian. Bạn chỉ cần xác định thư mục phông chữ của riêng bạn nếu bạn cần. Aspose.Words cũng tìm kiếm các phông chữ bổ sung được đăng ký trong khóa HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts registry. Ngoài ra," Windows "10 cho phép cài đặt phông chữ cho người dùng hiện tại. Phông chữ được đặt trong thư mục %userprofile%\AppData\Local\Microsoft\Windows\Fonts và cũng được chỉ định trong thư mục HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, nơi Aspose.Words sẽ tìm kiếm các phông chữ này.

Nếu một tài liệu chứa các phông chữ nhúng, Aspose.Words có thể đọc dữ liệu phông chữ liên quan từ tài liệu và sử dụng nó để tạo bố cục của tài liệu đó. Các tài liệu cũng có thể chứa các liên kết đến các phông chữ không nằm trong thư mục hệ thống, trong trường hợp đó các tình huống sau sẽ xảy ra:

- Người dùng có thể thiết lập các nguồn phông chữ mới qua lớp **FontSettings**
- Aspose.Words có thể thử thay thế phông chữ bị thiếu bằng một cái tương tự

### Phông chữ trên các hệ thống không phải Windows

Aspose.Words sẽ tìm các phông chữ trong các thư mục phông chữ của hệ thống. A list of these folders can be seen by the [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) method.. Nếu không tìm thấy phông chữ hỗ trợ, Aspose.Words sẽ sử dụng phông chữ mặc định được tích hợp Fanwood.ttf.

Vì các thông số của phông chữ trong hệ điều hành Windows và không phải Windows khác nhau, Aspose.Words làm mọi thứ có thể để tìm một phông chữ giống và tạo bố cục tương tự như gốc. Tuy nhiên, điều này không luôn luôn có thể. Trong những trường hợp này, lớp **FontSettings** nên được dùng để thêm các phông chữ tùy chỉnh hoặc quy tắc thay thế.

#### Nơi Aspose.Words tìm kiếm các phông chữ TrueType trên Linux

 Theo mặc định, Aspose.Words tìm kiếm các phông chữ ở tất cả các địa điểm sau: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fontsHành vi mặc định này sẽ hoạt động đối với hầu hết các bản phân phối Linux, nhưng không đảm bảo hoạt động mọi lúc, trong trường hợp đó bạn có thể cần phải chỉ rõ địa điểm của loại phông chữ true. Để làm điều này bạn cần biết nơi mà các phông chữ TrueType được cài đặt trên phân phối Linux của bạn.

#### Nơi Aspose.Words tìm kiếm phông chữ kiểu TrueType trên hệ điều hành Mac OS X

Aspose.Words tìm các phông chữ trong thư mục /Library/Fonts, đó là vị trí mặc định cho các phông chữ TrueType trên hệ điều hành Mac OS X. Mặc dù cài đặt này sẽ hoạt động cho bạn hầu hết các thời gian, bạn có thể cần phải chỉ định thư mục phông chữ của riêng mình trong trường hợp khi bạn cần.

#### Phông chữ TrueType trên Android

Ngày Android, font workflow được đóng gói trong lớp Typeface.
Có năm loại kiểu chữ, mỗi kiểu chữ đại diện cho một nhóm các gia đình phông chữ tương tự nhau:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Ví dụ như trong Android's [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) config file, "times" thuộc về gia đình "serif", nên NotoSerif-Regular.ttf sẽ được dùng khi "times" được yêu cầu:

**Fonts.xml**

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

Để tìm các phông chữ tương tự, các chiến lược được mô tả ở trên được sử dụng

Ngoài họ, Aspose.Words có danh sách riêng của mình với các sự thay thế cho nền tảng Android.

Giả sử tài liệu chứa phông chữ PMingLiU-ExtB, đầu tiên Aspose.Words đang tìm kiếm phông chữ cần thiết trong các nguồn hệ thống.

Danh sách mặc định của Android thư mục của phông chữ là:

- /system/fonts
- /system/phông chữ
- /data/phông chữ

The Aspose.Words nhìn qua nguồn được định nghĩa người dùng đã đặt với phương pháp:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

Trong trường hợp có sự thay thế rõ ràng đã được chỉ định, Aspose.Words thay thế phông chữ bị thiếu với đề xuất của người dùng:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Nếu không có quy tắc nào hoạt động thì Aspose.Words kiểm tra bảng thay thế nội bộ. Nếu bảng chứa thông tin về một sự vừa vặn tốt thì phông chữ được thay thế. Trong trường hợp của chúng tôi, Aspose.Words sẽ chọn `Typeface.SERIF`. Nhưng nếu bảng không biết gì về phông chữ đã yêu cầu thì Aspose.Words sẽ chọn một phông chữ dựa trên các quy tắc đặc biệt của MS Word hoặc khoảng cách gần nhất trong không gian Panose.

#### Phông chữ TrueType trên .NET Core và Xamarin

Đối với .NET Core và Xamarin, cùng một quy tắc được áp dụng như đối với Aspose.Words cho Java phiên bản. Theo mặc định, tất cả các phông chữ hệ thống của nền tảng mà ứng dụng chạy đều có sẵn.
Danh sách các thư mục mà tìm kiếm sẽ được thực hiện có thể được tìm thấy bằng cách gọi phương pháp:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Tải phông chữ từ thư mục {#loading-fonts-from-folder}

Nếu tài liệu đang xử lý chứa liên kết đến phông chữ không có trên hệ thống, hoặc bạn không muốn thêm chúng vào thư mục hệ thống, hoặc bạn thiếu quyền truy cập, thì giải pháp tốt nhất sẽ là thêm một thư mục với phông chữ của riêng bạn bằng phương pháp `SetFontsSources`. Điều này sẽ cho phép thay thế nguồn hệ thống với một nguồn người dùng. Aspose.Words sẽ không còn tìm kiếm các phông chữ trong registry hoặc Windows\Font thư mục và thay vào đó chỉ quét để tìm các phông chữ bên trong các thư mục được chỉ định. Phương pháp `GetFontSources` sẽ trả về các giá trị tương ứng.

### Chỉ định một hoặc nhiều thư mục kiểu chữ

Các phương thức The [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) và SetFontsFolders là các phím tắt cho phương thức **SetFontSources** với một hoặc nhiều [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) trường hợp. Những phương pháp này được dùng để chỉ ra nơi nào Aspose.Words nên tìm kiếm các phông chữ. Nếu một thư mục không tồn tại hoặc không thể truy cập được, Aspose.Words sẽ bỏ qua thư mục này. Nếu tất cả các thư mục, bao gồm nguồn cho sự thay thế phông chữ, đều bị bỏ qua, Aspose.Words sẽ sử dụng phông chữ Fanwood như là phông chữ mặc định.

Ví dụ sau cho thấy cách thiết lập thư mục hoặc nguồn, mà Aspose.Words sau đó sẽ sử dụng để tìm kiếm các phông chữ TrueType trong quá trình hiển thị hoặc nhúng phông chữ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Một tham số boolean bổ sung kiểm soát việc phông chữ được quét đệ quy qua tất cả các thư mục, do đó quét tất cả các thư mục con của một thư mục đã chỉ định. Ví dụ sau trình bày cách thiết lập Aspose.Words để tìm kiếm nhiều thư mục cho các phông chữ TrueType khi tạo hoặc nhúng phông chữ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Ghi nhớ ưu tiên của anh ấy. Nếu có các phông chữ cùng tên gia đình và phong cách trong các nguồn phông chữ khác nhau, sau đó Aspose.Words sẽ chọn phông chữ từ nguồn với mức ưu tiên cao hơn. Xem mô tả cho trường "Ưu tiên" ở dưới.

{{% /alert %}}

Nếu bạn không muốn dùng phông chữ hệ thống chút nào, Aspose.Words cho phép bạn bỏ qua chúng và chỉ dùng phông chữ của riêng bạn:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Công trình ưu tiên

Cái [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) thuộc tính được sử dụng khi có các phông chữ cùng tên gia đình và phong cách trong các nguồn phông khác nhau. Trong trường hợp này Aspose.Words chọn phông chữ từ nguồn với giá trị ưu tiên cao hơn. Ví dụ, có một phiên bản cũ của phông chữ trong thư mục hệ thống và khách hàng đã thêm một phiên bản mới của cùng một phông chữ trong một thư mục tùy chỉnh.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Tải phông chữ từ Stream {#loading-fonts-from-stream}

Aspose.Words cung cấp lớp [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/), cho phép tải phông chữ từ dòng. Để sử dụng nguồn phông chữ luồng, người dùng cần phải tạo một lớp con từ **StreamFontSource** và cung cấp một thực hiện của phương pháp [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream). Phương pháp **OpenFontDataStream** có thể được gọi nhiều lần. Lần đầu tiên, nó sẽ được gọi khi Aspose.Words quét nguồn phông chữ được cung cấp để nhận danh sách các phông chữ có sẵn. Tiếp theo nó có thể được gọi nếu phông chữ được sử dụng trong tài liệu để phân tích dữ liệu phông chữ và nhúng dữ liệu phông chữ vào một số định dạng đầu ra. **StreamFontSource** có thể hữu ích vì nó cho phép tải dữ liệu phông chữ chỉ khi nó cần thiết, và không lưu trữ nó trong bộ nhớ cho `FontSettings` thời gian tồn tại.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** là một lựa chọn thay thế cho [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) bởi vì luôn có thể tải một luồng dữ liệu vào bộ nhớ và truyền nó đến **MemoryFontSource**. Sự khác nhau là **MemoryFontSource** được lưu trữ trong bộ nhớ suốt thời gian, và **StreamFontSource** được tải theo nhu cầu và ngay lập tức bị loại bỏ. Nhưng nó có thể được tải nhiều lần như đã mô tả ở trên. Trong một số trường hợp **MemoryFontSource** thích hơn và trong những trường hợp khác, **StreamFontSource**.

## Lưu và Tải bộ nhớ cache tìm kiếm phông chữ

Khi tìm kiếm phông chữ lần đầu tiên, Aspose.Words lặp lại qua các nguồn phông chữ được chỉ định bởi người dùng và tạo một bộ nhớ đệm tìm kiếm phông chữ dựa trên dữ liệu từ những nguồn này. Vậy bộ nhớ đệm sẽ thu thập thông tin về các phông chữ có sẵn: họ phông chữ, phong cách, tên phông chữ đầy đủ và những thứ khác. Trong các cuộc gọi tiếp theo, Aspose.Words tìm kiếm thông tin về phông chữ mong muốn của nó bằng tên trong bộ nhớ tìm kiếm phông chữ, sau đó phân tích các tệp được chỉ định để sử dụng phông chữ.

Quy trình phân tích tất cả các tập tin phông chữ có sẵn để khởi tạo bộ nhớ đệm là khá tốn thời gian. Aspose.Words cho phép bạn lưu và tải bộ nhớ đệm bằng phương pháp **FontSettings.SaveSearchCache** để giải quyết vấn đề hiệu năng. Đó là người dùng có thể tải một bộ nhớ cache trước đó từ một tệp và bỏ qua bước phân tích tất cả các tệp phông chữ có sẵn.

{{% alert color="primary" %}}

Hãy dùng cùng một **SaveSearchCache** phương pháp để cập nhật bộ nhớ đệm.

{{% /alert %}}

{{% alert color="primary" %}}

Bộ nhớ đệm này cũng thích hợp cho các kịch bản khác khi các phông chữ được tải qua mạng. Hoặc đối với những trường hợp không có cách nào để lưu trữ một `FontSettings` với bộ nhớ đệm đã được tải sẵn.

{{% /alert %}}


## Lấy Danh sách các Font có sẵn {#get-a-list-of-available-fonts}

Nếu bạn muốn lấy danh sách các phông chữ có sẵn, mà, ví dụ, có thể được sử dụng để hiển thị một tài liệu PDF, bạn có thể sử dụng phương pháp [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts), như được trình bày trong ví dụ mã sau đây. Lớp [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) chỉ định thông tin về phông chữ vật lý có sẵn cho bộ xử lý phông chữ Aspose.Words

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
