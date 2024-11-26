---
title: Chỉ định vị trí phông chữ TrueType trong C#
second_title: Aspose.Words cho .NET
articleTitle: Chỉ định vị trí phông chữ TrueType
linktitle: Chỉ định vị trí phông chữ TrueType
description: "Chỉ định các nguồn phông chữ TrueType khác nhau: thư mục hệ thống, nguồn người dùng, tải phông chữ từ luồng, hệ thống tệp hoặc bộ nhớ bằng C#."
type: docs
weight: 30
url: /vi/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Chủ đề này mô tả hành vi mặc định của Aspose.Words khi tìm kiếm phông chữ TrueType, bao gồm cả những khác biệt cụ thể của hệ điều hành và trình bày cách chỉ định nguồn phông chữ của người dùng.

Lớp [FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) được sử dụng để chỉ định các nguồn phông chữ khác nhau. Có một số triển khai của lớp **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

Chi tiết triển khai cho một số lớp được giải thích bên dưới.

## Tải phông chữ từ hệ thống {#loading-fonts-from-system}

Có một lớp [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/) đặc biệt luôn được sử dụng theo mặc định. Nó đại diện cho tất cả các phông chữ TrueType được cài đặt trên hệ thống. Do đó, có thể tạo danh sách nguồn bằng **SystemFontSource** và bất kỳ nguồn bắt buộc nào khác:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

Một phiên bản duy nhất của lớp **SystemFontSource** được xác định theo mặc định trong [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/). Trên các hệ điều hành khác nhau, phông chữ có thể được đặt ở những nơi khác nhau. Tuy nhiên, sử dụng một phiên bản **FontSettings** cho mỗi tài liệu không phải là giải pháp tối ưu. Trong phần lớn các trường hợp, sử dụng [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) là đủ.

Phiên bản trên mỗi tài liệu chỉ cần thiết nếu nó được yêu cầu sử dụng các nguồn phông chữ khác nhau cho các tài liệu khác nhau, đây là một trường hợp hiếm gặp. Việc sử dụng một số phiên bản **FontSettings** sẽ làm giảm hiệu suất vì chúng không chia sẻ bộ đệm.

### Nơi Aspose.Words tìm kiếm phông chữ TrueType trên Windows

Trong hầu hết các trường hợp, người dùng Windows không gặp phải vấn đề nghiêm trọng về phông chữ bị thiếu hoặc bố cục không chính xác. Thông thường, Aspose.Words duyệt qua một tài liệu và khi gặp liên kết của phông chữ, nó sẽ tìm nạp thành công dữ liệu phông chữ từ thư mục hệ thống.

Trên Windows, trước tiên Aspose.Words lấy tất cả các phông chữ có sẵn từ thư mục _%windir%\Fonts. Cài đặt này sẽ phù hợp với bạn hầu hết thời gian. Bạn chỉ chỉ định các thư mục phông chữ của riêng mình nếu cần. Aspose.Words cho .NET cũng tìm kiếm các phông chữ bổ sung được đăng ký trong khóa đăng ký HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. Ngoài ra, Windows 10 còn cho phép cài đặt phông chữ cho người dùng hiện tại. Các phông chữ được đặt vào thư mục %userprofile%\AppData\Local\Microsoft\Windows\Fonts và cũng được chỉ định trong sổ đăng ký HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, nơi Aspose.Words sẽ tìm kiếm các phông chữ này.

Nếu tài liệu chứa phông chữ được nhúng, Aspose.Words có thể đọc dữ liệu phông chữ có liên quan từ tài liệu và sử dụng dữ liệu đó để tạo bố cục của tài liệu. Tài liệu cũng có thể chứa các liên kết đến phông chữ không có trong thư mục hệ thống, trong trường hợp đó, các trường hợp sau sẽ có tác dụng:

- Người dùng có thể thiết lập nguồn phông chữ mới thông qua lớp **FontSettings**
- Aspose.Words có thể thử thay thế phông chữ bị thiếu bằng một phông chữ tương tự

{{% alert color="primary" %}}

Kết xuất Aspose.Words trên máy chủ thường sẽ không hoạt động với ứng dụng ASP.NET được định cấu hình để chạy ở mức Độ tin cậy trung bình vì nó cấm quyền truy cập vào sổ đăng ký và giới hạn quyền truy cập vào hệ thống tệp.

{{% /alert %}}

### Phông chữ trên hệ thống không phải Windows

Aspose.Words sẽ tìm kiếm phông chữ trong thư mục phông chữ hệ thống. Phương pháp [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/) có thể xem danh sách các thư mục này. Nếu không tìm thấy phông chữ được hỗ trợ, Aspose.Words sẽ sử dụng phông chữ mặc định tích hợp Fanwood.ttf.

Vì số liệu phông chữ của Windows và hệ điều hành không phải Windows khác nhau nên Aspose.Words sẽ làm mọi cách có thể để tìm một phông chữ tương tự và xây dựng bố cục tương tự như bản gốc. Tuy nhiên, điều này không phải lúc nào cũng có thể. Trong những trường hợp này, lớp **FontSettings** nên được sử dụng để thêm phông chữ tùy chỉnh hoặc quy tắc thay thế.

#### Nơi Aspose.Words tìm kiếm phông chữ TrueType trên Linux

Các bản phân phối Linux khác nhau có thể lưu trữ phông chữ trong các thư mục khác nhau. Aspose.Words tìm kiếm phông chữ ở một số vị trí. Theo mặc định, Aspose.Words tìm kiếm phông chữ ở tất cả các vị trí sau: `/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts`Hành vi mặc định này sẽ hoạt động đối với hầu hết các bản phân phối Linux, nhưng nó không được đảm bảo hoạt động mọi lúc, trong trường hợp đó bạn có thể cần chỉ định rõ ràng vị trí của phông chữ loại true. Để thực hiện việc này, bạn cần biết phông chữ TrueType được cài đặt ở đâu trên bản phân phối Linux của mình.

#### Nơi Aspose.Words tìm kiếm phông chữ TrueType trên Mac OS X

Aspose.Words tìm kiếm phông chữ trong thư mục /Library/Fonts, đây là vị trí tiêu chuẩn cho phông chữ TrueType trên Mac OS X. Mặc dù cài đặt này hầu như luôn hoạt động với bạn nhưng bạn có thể cần chỉ định các thư mục phông chữ của riêng mình trong trường hợp khi bạn cần phải.

## Tải phông chữ từ thư mục {#loading-fonts-from-folder}

Nếu tài liệu đang được xử lý chứa các liên kết đến các phông chữ không có trên hệ thống hoặc bạn không muốn thêm chúng vào thư mục hệ thống hoặc bạn thiếu quyền, thì giải pháp tốt nhất là thêm một thư mục có phông chữ của riêng bạn bằng cách sử dụng phương pháp [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/) Điều này sẽ cho phép thay thế nguồn hệ thống bằng nguồn người dùng. Aspose.Words sẽ không còn tìm kiếm phông chữ trong sổ đăng ký hoặc thư mục Windows\Font nữa mà thay vào đó chỉ quét phông chữ trong (các) thư mục được chỉ định. Phương thức [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) sẽ trả về các giá trị tương ứng.

### Chỉ định một hoặc nhiều thư mục phông chữ

Các phương thức [SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) và [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) là các phím tắt của phương thức **SetFontSources** với một hoặc một số phiên bản [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/). Các phương thức này được sử dụng để chỉ ra nơi Aspose.Words nên tìm phông chữ. Nếu một thư mục không tồn tại hoặc không thể truy cập được, Aspose.Words sẽ bỏ qua thư mục này. Nếu tất cả các thư mục, bao gồm cả nguồn thay thế phông chữ, bị bỏ qua thì Aspose.Words sẽ sử dụng phông chữ Fanwood làm mặc định.

Ví dụ sau đây minh họa cách đặt thư mục hoặc nguồn mà Aspose.Words sau đó sẽ sử dụng để tìm kiếm phông chữ TrueType trong quá trình kết xuất hoặc nhúng phông chữ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

Tham số Boolean bổ sung kiểm soát xem phông chữ có được quét đệ quy qua tất cả các thư mục hay không, từ đó quét tất cả các thư mục con của một thư mục được chỉ định. Ví dụ sau đây minh họa cách đặt Aspose.Words để tìm phông chữ TrueType trong nhiều thư mục khi kết xuất hoặc nhúng phông chữ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Lưu ý các ưu tiên. Nếu có các phông chữ có cùng họ và kiểu ở các nguồn phông chữ khác nhau thì Aspose.Words sẽ chọn phông chữ từ nguồn có mức độ ưu tiên cao hơn. Xem mô tả của trường "Ưu tiên" bên dưới.

Nếu bạn hoàn toàn không muốn sử dụng phông chữ hệ thống, Aspose.Words cho phép bạn bỏ qua chúng và chỉ sử dụng phông chữ của riêng bạn:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### Thuộc tính ưu tiên

Thuộc tính [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) được sử dụng khi có các phông chữ có cùng họ và kiểu trong các nguồn phông chữ khác nhau. Trong trường hợp này Aspose.Words chọn phông chữ từ nguồn có giá trị ưu tiên cao hơn. Ví dụ: có một phiên bản cũ của phông chữ trên thư mục hệ thống và khách hàng đã thêm phiên bản mới của cùng một phông chữ vào thư mục tùy chỉnh.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Tải phông chữ từ luồng {#loading-fonts-from-stream}

Aspose.Words cung cấp lớp [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/), cho phép tải phông chữ từ luồng. Để sử dụng nguồn phông chữ luồng, người dùng cần tạo một lớp dẫn xuất từ **StreamFontSource** và cung cấp cách triển khai phương thức [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/). Phương thức **OpenFontDataStream** có thể được gọi nhiều lần. Lần đầu tiên, nó sẽ được gọi khi Aspose.Words quét các nguồn phông chữ được cung cấp để lấy danh sách các phông chữ có sẵn. Sau này nó có thể được gọi nếu phông chữ được sử dụng trong tài liệu để phân tích dữ liệu phông chữ và nhúng dữ liệu phông chữ vào một số định dạng đầu ra. **StreamFontSource** có thể hữu ích vì nó chỉ cho phép tải dữ liệu phông chữ khi cần thiết và không lưu trữ dữ liệu đó trong bộ nhớ trong suốt vòng đời [Cài đặt phông chữ](https://fontsettings/).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** là một giải pháp thay thế cho [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/) vì luôn có thể tải một luồng vào bộ nhớ và chuyển nó sang **MemoryFontSource**. Sự khác biệt là **MemoryFontSource** luôn được lưu trữ trong bộ nhớ và **StreamFontSource** được tải theo yêu cầu và xử lý ngay lập tức. Nhưng nó có thể được tải nhiều lần, như mô tả ở trên. Trong một số trường hợp, **MemoryFontSource** được ưu tiên hơn và trong những trường hợp khác, **StreamFontSource** được ưu tiên hơn.

## Lưu và tải bộ đệm tìm kiếm phông chữ

Khi tìm kiếm phông chữ lần đầu tiên, Aspose.Words lặp lại các nguồn phông chữ do người dùng chỉ định và tạo bộ đệm tìm kiếm phông chữ dựa trên dữ liệu từ các nguồn này. Do đó, bộ đệm sẽ thu thập thông tin về các phông chữ có sẵn: họ phông chữ, kiểu, tên phông chữ đầy đủ và các phông chữ khác. Trong các cuộc gọi tiếp theo, Aspose.Words tìm kiếm thông tin về phông chữ mong muốn theo tên của nó trong bộ đệm tìm kiếm phông chữ, sau đó nó phân tích các tệp được chỉ định để sử dụng phông chữ.

Quá trình phân tích tất cả các file font có sẵn để khởi tạo cache khá tốn thời gian. Aspose.Words cho phép bạn lưu và tải bộ đệm bằng phương pháp [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) để giải quyết vấn đề về hiệu suất. Nghĩa là, người dùng có thể tải bộ đệm đã lưu trước đó từ một tệp và bỏ qua bước phân tích tất cả các tệp phông chữ có sẵn.

{{% alert color="primary" %}}

Sử dụng phương pháp **SaveSearchCache** tương tự để cập nhật bộ đệm.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách chuẩn bị trước nguồn phông chữ và tạo bộ nhớ đệm tìm kiếm phông chữ:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

Ví dụ mã sau đây cho thấy cách đặt nguồn phông chữ và tải bộ đệm tìm kiếm trước khi xử lý tài liệu:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

Bộ đệm tìm kiếm phông chữ rất tốt cho việc tích hợp Aspose.Words trong AWS Lambda do một số hạn chế. Ví dụ: về kích thước vùng chứa chính và kết quả là về số lượng phông chữ.

Bộ nhớ đệm cũng phù hợp với các tình huống khác khi phông chữ được tải qua mạng. Hoặc trong các trường hợp không có cách nào để lưu trữ phiên bản `FontSettings` với bộ nhớ đệm đã tải.

{{% /alert %}}

## Nhận danh sách các phông chữ có sẵn {#get-a-list-of-available-fonts}

Nếu bạn muốn lấy danh sách các phông chữ có sẵn, chẳng hạn như phông chữ có thể được sử dụng để hiển thị tài liệu PDF, bạn có thể sử dụng phương pháp [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/), như trong ví dụ về mã sau đây. Lớp [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) chỉ định thông tin về phông chữ vật lý có sẵn cho công cụ phông chữ Aspose.Words:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
