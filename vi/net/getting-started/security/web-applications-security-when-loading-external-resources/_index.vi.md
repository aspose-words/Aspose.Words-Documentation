---
title: Bảo mật ứng dụng web khi tải tài nguyên
second_title: Aspose.Words cho .NET
articleTitle: Bảo mật ứng dụng web khi tải tài nguyên bên ngoài
linktitle: Bảo mật ứng dụng web khi tải tài nguyên bên ngoài
type: docs
description: "Tải tài nguyên từ xa, đó có thể là nguyên nhân gây ra rủi ro bảo mật. Hãy xem các vấn đề bảo mật phổ biến và giải pháp của chúng bằng C#."
weight: 100
url: /vi/net/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

Theo mặc định, Aspose.Words cho .NET có thể tải các tài nguyên từ xa như hình ảnh, kiểu CSS hoặc tài liệu HTML bên ngoài khi nhập tài liệu hoặc chèn hình ảnh bằng DocumentBuilder. Hành vi này cho phép bạn xử lý tài liệu của mình một cách chi tiết nhưng có thể là nguyên nhân gây ra một số rủi ro bảo mật nếu thư viện là một phần của ứng dụng web.

Trong bài viết này, chúng tôi xem xét các vấn đề bảo mật phổ biến có thể phát sinh khi tải tài nguyên bên ngoài và đưa ra các đề xuất về cách tránh những vấn đề đó.

{{% alert color="primary" %}}

Aspose.Words không hoạt động như phần mềm chống vi-rút. Do đó, nó không cung cấp thông tin về sự hiện diện của các thành phần độc hại trong tài liệu. Để đảm bảo tính bảo mật cho dữ liệu của bạn, hãy tự mình kiểm tra các tài liệu thu được từ nguồn bên ngoài. Đổi lại, Aspose.Words đưa ra các đề xuất về cách xử lý các vấn đề có thể phát sinh khi tải tài nguyên bên ngoài.

{{% /alert %}}

## Vân đê bảo mật

Có một số vấn đề bảo mật điển hình khi tải tài nguyên bên ngoài.

### Tiết lộ thông tin xác thực qua hình ảnh được liên kết

Trên máy chủ dựa trên Windows, tài liệu chứa tham chiếu đến tài nguyên sử dụng đường dẫn UNC như *'\\example.com\a\b*' sẽ được xử lý theo mặc định. Trong môi trường miền, điều này sẽ khiến máy chủ gửi thông tin xác thực tên miền của nó ở định dạng băm đến máy chủ được chỉ định.

Nếu kẻ tấn công có thể thuyết phục người dùng hoặc máy chủ xử lý tài liệu có liên kết tài nguyên trỏ đến máy chủ mà họ kiểm soát, thì kẻ tấn công sẽ nhận được thông tin xác thực tài khoản người dùng hoặc dịch vụ ở định dạng băm NTLM. Những dữ liệu như vậy sau đó có thể được sử dụng lại trong một cuộc tấn công pass-the-hash cổ điển, cho phép kẻ tấn công có quyền truy cập vào bất kỳ tài nguyên nào với tư cách là tài khoản dịch vụ hoặc người dùng nạn nhân.

Nếu tài khoản được đề cập sử dụng mật khẩu yếu hoặc có thể đoán được, kẻ tấn công có thể thực hiện thêm một cuộc tấn công bẻ khóa mật khẩu để khôi phục mật khẩu tài khoản nhằm mục đích sử dụng độc hại hơn nữa.

### Tiết lộ hình ảnh địa phương thông qua hình ảnh được liên kết

Tương tự như trường hợp trước, việc xử lý tài liệu có tham chiếu đến tệp hình ảnh cục bộ sẽ dẫn đến việc tệp đó được đưa vào tài liệu cuối cùng. Điều này có thể dẫn đến việc tiết lộ thông tin nhạy cảm.

### Từ chối dịch vụ

Kẻ tấn công có thể tải lên một tài liệu tham chiếu hoặc bao gồm các hình ảnh cực lớn – cái gọi là "bom giải nén". Khi xử lý những hình ảnh này, thư viện sẽ tiêu tốn một lượng lớn bộ nhớ và thời gian CPU.

### Giả mạo yêu cầu bên Server thông qua nội dung được liên kết

Kẻ tấn công có thể tạo một loạt tài liệu chứa các liên kết nhúng đến các kết hợp phổ biến giữa địa chỉ IP nội bộ và cổng, sau đó gửi chúng đến dịch vụ web bằng thư viện Aspose.Words để xử lý tài liệu.

Dựa trên khoảng thời gian dịch vụ sử dụng để xử lý tài liệu, kẻ tấn công có thể xác định xem tổ hợp IP/Cổng nhất định có bị tường lửa lọc hay không:

- thời gian xử lý lâu hơn cho thấy gói TCP SYN do máy chủ gửi đã bị tường lửa loại bỏ
- thời gian xử lý nhanh cho thấy kết nối thành công đã được thực hiện

## Giải pháp về vấn đề bảo mật

Để giải quyết các vấn đề được mô tả ở trên và cải thiện tính bảo mật của ứng dụng web, bạn có thể kiểm soát hoặc vô hiệu hóa việc tải tài nguyên bên ngoài bằng [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/).

Ví dụ mã sau đây cho thấy cách tắt tính năng tải hình ảnh bên ngoài:

**.NET**
{{< highlight csharp >}}

public class DisableExternalImagesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        // Skip external images loading.
        return (args.ResourceType == ResourceType.Image)
            ? ResourceLoadingAction.Skip
            : ResourceLoadingAction.Default;
    }
}
...
const string documentFilename = "input.docx";
var disableExternalImagesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableExternalImagesHandler()
};
var doc = new Document(documentFilename, disableExternalImagesOptions);

{{< /highlight >}}

Ví dụ mã sau đây cho thấy cách tắt tài nguyên từ xa:

**.NET**
{{< highlight csharp >}}

private class DisableRemoteResourcesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        return IsLocalResource(args.OriginalUri)
            ? ResourceLoadingAction.Default
            : ResourceLoadingAction.Skip;
    }

    private static bool IsLocalResource(string fileName)
    {
        DirectoryInfo dirInfo;
        try
        {
            var dirName = Path.GetDirectoryName(fileName);
            if (string.IsNullOrEmpty(dirName))
                return false;
            dirInfo = new DirectoryInfo(dirName);
        }
        catch
        {
            return false;
        }
    
        foreach (DriveInfo d in DriveInfo.GetDrives())
        {
            if (string.Compare(dirInfo.Root.FullName, d.Name, StringComparison.OrdinalIgnoreCase) == 0)
                return d.DriveType != DriveType.Network;
        }
    
        return false;
    }
}
...
var disableRemoteResourcesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableRemoteResourcesHandler()
};
var doc = new Document(documentFilename, disableRemoteResourcesOptions);

{{< /highlight >}}

{{% alert color="primary" %}}

Bài viết này dựa trên công ty tư vấn Independent Security Evaluators [báo cáo](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}
