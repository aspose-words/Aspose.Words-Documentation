---
title: Bảo mật ứng dụng web khi tải tài nguyên
second_title: Aspose.Words cho Java
articleTitle: Bảo mật ứng dụng web khi tải các nguồn tài nguyên bên ngoài
linktitle: Bảo mật ứng dụng web khi tải các nguồn tài nguyên bên ngoài
type: docs
description: "Tải tài nguyên từ xa, đó có thể là một lý do dẫn đến các rủi ro an ninh. Hãy xem qua những vấn đề an ninh phổ biến và giải pháp của chúng trong Java."
weight: 120
url: /vi/java/web-applications-security-when-loading-external-resources/
---

Theo mặc định, Aspose.Words cho Java có thể tải các tài nguyên từ xa như hình ảnh, các kiểu CSS hoặc các tài liệu HTML bên ngoài khi nhập tài liệu hoặc chèn hình ảnh sử dụng DocumentBuilder. Hành vi này cho phép bạn xử lý các tài liệu của bạn với chi tiết đầy đủ nhưng có thể là một lý do cho một số rủi ro bảo mật nếu thư viện là một phần của ứng dụng web.

Trong bài viết này, chúng ta sẽ xem xét những vấn đề an ninh phổ biến có thể xảy ra khi tải các tài nguyên bên ngoài và đưa ra khuyến nghị về cách tránh những vấn đề như vậy.

{{% alert color="primary" %}}

Aspose.Words không hoạt động như một phần mềm chống virus. Vì vậy, nó không cung cấp thông tin về sự hiện diện của các thành phần độc hại trong tài liệu. Để đảm bảo sự an toàn của dữ liệu, bạn hãy tự kiểm tra các tài liệu được lấy từ nguồn bên ngoài. Tương tự, Aspose.Words cung cấp các khuyến nghị về cách giải quyết vấn đề có thể xảy ra khi tải tài nguyên bên ngoài.

{{% /alert %}}

## Các vấn đề an ninh

Có một số vấn đề an ninh điển hình khi tải các tài nguyên bên ngoài.

### Khải phục chứng nhận thông qua hình ảnh liên kết

Trên máy chủ Windows dựa, các tài liệu chứa tham chiếu đến các nguồn sử dụng đường dẫn UNC như ’*‘ \\ example. com \ a \ b * ’sẽ được xử lý mặc định. Trong môi trường miền, điều này sẽ khiến máy chủ gửi chứng chỉ miền của nó ở định dạng đã được băm tới máy chủ được chỉ định.

Nếu kẻ tấn công có thể thuyết phục một người dùng hoặc máy chủ xử lý một tài liệu với liên kết nguồn như vậy trỏ đến một máy chủ mà chúng kiểm soát, kẻ tấn công sẽ nhận được thông tin xác thực tài khoản người dùng hoặc dịch vụ ở định dạng NTLM hash. Dữ liệu như vậy sau đó có thể được sử dụng lại trong một cuộc tấn công truyền tải mật khẩu cổ điển, cho phép kẻ tấn công truy cập bất kỳ tài nguyên nào với tư cách là người dùng hoặc tài khoản dịch vụ nạn nhân.

Nếu tài khoản đang đề cập sử dụng mật khẩu yếu hoặc đoán được, kẻ tấn công có thể thực hiện một cuộc tấn công phá vỡ mật khẩu để lấy lại mật khẩu tài khoản cho việc sử dụng độc hại tiếp theo.

### Khải lộ hình ảnh địa phương qua Hình ảnh Liên kết

Giống như trường hợp trước đó, việc xử lý tài liệu với một tham chiếu đến một tập tin hình ảnh cục bộ sẽ dẫn đến tập tin đó được đưa vào tài liệu cuối cùng. Điều này có thể dẫn đến tiết lộ thông tin nhạy cảm.

### Từ chối dịch vụ

Một kẻ tấn công có thể tải lên một tài liệu đề cập hoặc bao gồm những hình ảnh cực kỳ lớn – các "bom giải nén". Khi xử lý những hình ảnh này, thư viện sẽ tiêu thụ một lượng lớn bộ nhớ và thời gian CPU.

### Server-Lỗi Yêu Cầu Giả Mạo Qua Nội Dung Liên Kết

Một kẻ tấn công có thể tạo ra một loạt các tài liệu chứa liên kết nhúng đến các tổ hợp thông thường của địa chỉ IP nội bộ và cổng, sau đó gửi chúng đến dịch vụ web sử dụng thư viện Aspose.Words để xử lý các tài liệu.

Dựa vào độ dài thời gian dịch vụ sử dụng để xử lý tài liệu, kẻ tấn công có thể xác định một sự kết hợp IP/ cổng cụ thể được lọc bởi tường lửa hay không

- thời gian xử lý lâu hơn cho thấy gói SYN TCP được gửi bởi máy chủ đã bị bỏ qua bởi một tường lửa
- thời gian xử lý nhanh cho thấy một kết nối thành công đã được thực hiện

## Giải pháp về các vấn đề an ninh

Để giải quyết các vấn đề được mô tả ở trên và để cải thiện tính bảo mật của các ứng dụng web, bạn có thể kiểm soát hoặc vô hiệu hóa việc tải các nguồn tài nguyên bên ngoài sử dụng [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

Mã ví dụ sau cho thấy cách tắt tải hình ảnh bên ngoài:

**Java**
{{< highlight csharp >}}
public void loadDocument(String documentFilename) throws Exception
{
	LoadOptions disableExternalImagesOptions = new LoadOptions();
	disableExternalImagesOptions.setResourceLoadingCallback(new DisableExternalImagesHandler());

	Document doc = new Document(documentFilename, disableExternalImagesOptions);
}

public static class DisableExternalImagesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args)
	{
		// Skip external images loading.
		return (args.getResourceType() == ResourceType.IMAGE)
			? ResourceLoadingAction.SKIP
			: ResourceLoadingAction.DEFAULT;
	}
}
{{< /highlight >}}

Mẫu mã sau đây cho thấy cách tắt tài nguyên từ xa:

**Java**
{{< highlight csharp >}}
public void loadDocument2(String documentFilename) throws Exception
{
	LoadOptions disableRemoteResourcesOptions = new LoadOptions();
	disableRemoteResourcesOptions.setResourceLoadingCallback(new DisableRemoteResourcesHandler());
	
	Document doc = new Document(documentFilename, disableRemoteResourcesOptions);
}	

private static class DisableRemoteResourcesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args) throws Exception
	{
		return isLocalResource(args.getOriginalUri())
			? ResourceLoadingAction.DEFAULT
			: ResourceLoadingAction.SKIP;
	}

	// Simplified code.
	private static boolean isLocalResource(String fileName) throws Exception
	{
		String protocol = null;
	
		URI uri = new URI(fileName);
		if (uri.isAbsolute())
		{
			protocol = uri.getScheme();
		}
		else
		{
			URL url = new URL(fileName);
			protocol = url.getProtocol();
		}
	
		return "file".equalsIgnoreCase(protocol);
	}
}
{{< /highlight >}}

{{% alert color="primary" %}}

Bài viết này dựa trên công ty tư vấn độc lập Independent Security Evaluators [báo cáo](ise-aspose-report.pdf).

{{% /alert %}}

