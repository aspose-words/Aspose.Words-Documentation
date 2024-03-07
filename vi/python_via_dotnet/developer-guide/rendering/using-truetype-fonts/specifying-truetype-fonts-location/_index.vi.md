---
title: Chỉ định vị trí phông chữ TrueType
second_title: Aspose.Words cho Python via .NET
articleTitle: Chỉ định vị trí phông chữ TrueType
linktitle: Chỉ định vị trí phông chữ TrueType
description: "Chỉ định các nguồn phông chữ TrueType khác nhau: thư mục hệ thống, nguồn người dùng, tải phông chữ từ luồng, hệ thống tệp hoặc bộ nhớ bằng Python."
type: docs
weight: 30
url: /vi/python-net/specifying-truetype-fonts-location/
---

Chủ đề này mô tả hành vi mặc định của Aspose.Words khi tìm kiếm phông chữ TrueType, bao gồm cả những khác biệt cụ thể của hệ điều hành và trình bày cách chỉ định nguồn phông chữ của người dùng.

Lớp [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) được sử dụng để chỉ định các nguồn phông chữ khác nhau. Có một số triển khai của lớp [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/):

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

Chi tiết triển khai cho một số lớp được giải thích bên dưới.

## Đang tải phông chữ từ hệ thống

Có một lớp [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) đặc biệt luôn được sử dụng theo mặc định. Nó đại diện cho tất cả các phông chữ TrueType được cài đặt trên hệ thống. Do đó, có thể tạo danh sách nguồn bằng [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) và bất kỳ nguồn bắt buộc nào khác:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

Một phiên bản duy nhất của lớp [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) được xác định theo mặc định trong [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). Trên các hệ điều hành khác nhau, phông chữ có thể được đặt ở những nơi khác nhau. Tuy nhiên, sử dụng phiên bản [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) cho mỗi tài liệu không phải là giải pháp tối ưu. Trong phần lớn các trường hợp, sử dụng [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) là đủ.

Phiên bản trên mỗi tài liệu chỉ cần thiết nếu nó được yêu cầu sử dụng các nguồn phông chữ khác nhau cho các tài liệu khác nhau, đây là một trường hợp hiếm gặp. Việc sử dụng một số phiên bản [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) sẽ làm giảm hiệu suất vì chúng không chia sẻ bộ đệm.

### Nơi Aspose.Words tìm kiếm phông chữ TrueType trên Windows

Trong hầu hết các trường hợp, người dùng Windows không gặp phải vấn đề nghiêm trọng về phông chữ bị thiếu hoặc bố cục không chính xác. Thông thường, Aspose.Words duyệt qua một tài liệu và khi gặp liên kết của phông chữ, nó sẽ tìm nạp thành công dữ liệu phông chữ từ thư mục hệ thống.

Trên Windows, trước tiên Aspose.Words lấy tất cả các phông chữ có sẵn từ thư mục _%windir%\Fonts. Cài đặt này sẽ phù hợp với bạn hầu hết thời gian. Bạn chỉ chỉ định các thư mục phông chữ của riêng mình nếu cần. Aspose.Words cho .NET cũng tìm kiếm các phông chữ bổ sung được đăng ký trong khóa đăng ký *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts*. Ngoài ra, Windows 10 còn cho phép cài đặt phông chữ cho người dùng hiện tại. Các phông chữ được đặt vào thư mục *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* và cũng được chỉ định trong sổ đăng ký *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts*, nơi Aspose.Words sẽ tìm các phông chữ này.

Nếu tài liệu chứa phông chữ được nhúng, Aspose.Words có thể đọc dữ liệu phông chữ có liên quan từ tài liệu và sử dụng dữ liệu đó để tạo bố cục của tài liệu. Tài liệu cũng có thể chứa các liên kết đến phông chữ không có trong thư mục hệ thống, trong trường hợp đó, các trường hợp sau sẽ có tác dụng:

- Người dùng có thể thiết lập nguồn phông chữ mới thông qua lớp [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)
- Aspose.Words có thể thử thay thế phông chữ bị thiếu bằng một phông chữ tương tự


### Phông chữ trên hệ thống không phải Windows

Aspose.Words sẽ tìm kiếm phông chữ trong thư mục phông chữ hệ thống. Phương pháp [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/) có thể xem danh sách các thư mục này. Nếu không tìm thấy phông chữ được hỗ trợ, Aspose.Words sẽ sử dụng phông chữ mặc định tích hợp Fanwood.ttf.

Vì số liệu phông chữ của Windows và hệ điều hành không phải Windows khác nhau nên Aspose.Words sẽ làm mọi cách có thể để tìm một phông chữ tương tự và xây dựng bố cục tương tự như bản gốc. Tuy nhiên, điều này không phải lúc nào cũng có thể. Trong những trường hợp này, lớp [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) nên được sử dụng để thêm phông chữ tùy chỉnh hoặc quy tắc thay thế.

#### Nơi Aspose.Words tìm kiếm phông chữ TrueType trên Linux

Các bản phân phối Linux khác nhau có thể lưu trữ phông chữ trong các thư mục khác nhau. Aspose.Words tìm kiếm phông chữ ở một số vị trí. Theo mặc định, Aspose.Words tìm kiếm phông chữ ở tất cả các vị trí sau: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*. Hành vi mặc định này sẽ hoạt động với hầu hết các bản phân phối Linux nhưng không đảm bảo sẽ hoạt động mọi lúc, trong trường hợp đó bạn có thể cần chỉ định rõ ràng vị trí của phông chữ loại true. Để thực hiện việc này, bạn cần biết phông chữ TrueType được cài đặt ở đâu trên bản phân phối Linux của mình.

#### Nơi Aspose.Words tìm kiếm phông chữ TrueType trên Mac OS X

Aspose.Words tìm kiếm phông chữ trong thư mục */Library/Fonts*, đây là vị trí tiêu chuẩn cho phông chữ TrueType trên Mac OS X. Mặc dù cài đặt này hầu như luôn phù hợp với bạn, nhưng bạn có thể cần chỉ định các thư mục phông chữ của riêng mình trong thư mục trường hợp khi bạn cần.

## Đang tải phông chữ từ thư mục

Nếu tài liệu đang được xử lý chứa các liên kết đến các phông chữ không có trên hệ thống hoặc bạn không muốn thêm chúng vào thư mục hệ thống hoặc bạn thiếu quyền, thì giải pháp tốt nhất là thêm một thư mục có phông chữ của riêng bạn bằng cách sử dụng phương pháp [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) Điều này sẽ cho phép thay thế nguồn hệ thống bằng nguồn người dùng. Aspose.Words sẽ không còn tìm kiếm phông chữ trong sổ đăng ký hoặc thư mục Windows\Font nữa mà thay vào đó chỉ quét phông chữ trong (các) thư mục được chỉ định. Phương thức [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) sẽ trả về các giá trị tương ứng.

### Chỉ định một hoặc nhiều thư mục phông chữ

Các phương thức [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) và [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) là các phím tắt của phương thức [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) với một hoặc một số phiên bản [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/). Các phương thức này được sử dụng để chỉ ra nơi Aspose.Words nên tìm phông chữ. Nếu một thư mục không tồn tại hoặc không thể truy cập được, Aspose.Words sẽ bỏ qua thư mục này. Nếu tất cả các thư mục, bao gồm cả nguồn thay thế phông chữ, bị bỏ qua thì Aspose.Words sẽ sử dụng phông chữ Fanwood làm mặc định.

Ví dụ sau đây minh họa cách đặt thư mục hoặc nguồn mà Aspose.Words sau đó sẽ sử dụng để tìm kiếm phông chữ TrueType trong quá trình kết xuất hoặc nhúng phông chữ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

Tham số Boolean bổ sung kiểm soát xem phông chữ có được quét đệ quy qua tất cả các thư mục hay không, từ đó quét tất cả các thư mục con của một thư mục được chỉ định. Ví dụ sau đây minh họa cách đặt Aspose.Words để tìm phông chữ TrueType trong nhiều thư mục khi hiển thị hoặc nhúng phông chữ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Lưu ý các ưu tiên. Nếu có các phông chữ có cùng họ và kiểu ở các nguồn phông chữ khác nhau thì Aspose.Words sẽ chọn phông chữ từ nguồn có mức độ ưu tiên cao hơn. Xem mô tả về trường "ưu tiên" bên dưới.

Nếu bạn hoàn toàn không muốn sử dụng phông chữ hệ thống, Aspose.Words cho phép bạn bỏ qua chúng và chỉ sử dụng phông chữ của riêng bạn:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Thuộc tính ưu tiên

Thuộc tính **sự ưu tiên** được sử dụng khi có các phông chữ có cùng họ và kiểu trong các nguồn phông chữ khác nhau. Trong trường hợp này Aspose.Words chọn phông chữ từ nguồn có giá trị ưu tiên cao hơn. Ví dụ: có một phiên bản cũ của phông chữ trên thư mục hệ thống và khách hàng đã thêm phiên bản mới của cùng một phông chữ vào thư mục tùy chỉnh.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Lấy danh sách các phông chữ có sẵn

Nếu bạn muốn lấy danh sách các phông chữ có sẵn, chẳng hạn như phông chữ có thể được sử dụng để hiển thị tài liệu PDF, bạn có thể sử dụng phương pháp [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/), như trong ví dụ về mã sau đây. Lớp [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) chỉ định thông tin về phông chữ vật lý có sẵn cho công cụ phông chữ Aspose.Words:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
