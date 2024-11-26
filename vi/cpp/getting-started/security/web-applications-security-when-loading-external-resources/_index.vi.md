---
title: Bảo Mật Ứng Dụng Web Khi Tải Tài Nguyên
second_title: Aspose.Words cho C++
articleTitle: Bảo Mật Ứng Dụng Web Khi Tải Tài Nguyên Bên Ngoài
linktitle: Bảo Mật Ứng Dụng Web Khi Tải Tài Nguyên Bên Ngoài
type: docs
description: "Tải tài nguyên từ xa, đó có thể là một lý do của rủi ro bảo mật. Hãy xem các vấn đề bảo mật phổ biến và các giải pháp của chúng trong C++."
weight: 50
url: /vi/cpp/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-30-16-22-34
---

Theo mặc định, Aspose.Words cho C++ có thể tải các tài nguyên từ xa như hình ảnh, kiểu CSS hoặc tài liệu HTML bên ngoài khi nhập tài liệu hoặc chèn hình ảnh bằng DocumentBuilder. Hành vi này cho phép bạn xử lý tài liệu của mình một cách chi tiết nhưng có thể là lý do của một số rủi ro bảo mật nếu thư viện là một phần của ứng dụng web.

Trong bài viết này, chúng tôi xem xét các vấn đề bảo mật phổ biến có thể phát sinh khi tải tài nguyên bên ngoài và cung cấp các khuyến nghị về cách tránh các vấn đề như vậy.

{{% alert color="primary" %}}

Aspose.Words không hoạt động như phần mềm chống vi-rút. Do đó, nó không cung cấp thông tin về sự hiện diện của các thành phần độc hại trong tài liệu. Để đảm bảo bảo mật dữ liệu của bạn, hãy tự kiểm tra các tài liệu thu được từ nguồn bên ngoài. Đổi lại, Aspose.Words cung cấp các khuyến nghị về cách đối phó với các vấn đề có thể phát sinh khi tải tài nguyên bên ngoài.

{{% /alert %}}

## Vấn Đề Bảo Mật

Có một số vấn đề bảo mật điển hình khi tải tài nguyên bên ngoài.

### Tiết Lộ Thông Tin Xác Thực Thông Qua Hình Ảnh Được Liên Kết

Trên các máy chủ dựa trên Windows, các tài liệu chứa tham chiếu đến các tài nguyên sử dụng các đường dẫn UNC như *'\\example.com\a\b*’ sẽ được xử lý theo mặc định. Trong môi trường miền, điều này sẽ khiến máy chủ gửi thông tin đăng nhập miền của nó ở định dạng băm đến máy chủ được chỉ định.

Nếu kẻ tấn công có thể thuyết phục người dùng hoặc máy chủ xử lý tài liệu có liên kết tài nguyên như vậy trỏ đến máy chủ mà họ kiểm soát, kẻ tấn công sẽ nhận được thông tin đăng nhập tài khoản người dùng hoặc dịch vụ ở định dạng băm NTLM. Dữ liệu như vậy sau đó có thể được sử dụng lại trong một cuộc tấn công pass-the-hash cổ điển, cho phép kẻ tấn công có quyền truy cập vào bất kỳ tài nguyên nào với tư cách là người dùng nạn nhân hoặc tài khoản dịch vụ.

Nếu tài khoản được đề cập sử dụng mật khẩu yếu hoặc có thể đoán được, kẻ tấn công có thể thực hiện thêm một cuộc tấn công bẻ khóa mật khẩu để khôi phục mật khẩu tài khoản để sử dụng độc hại hơn nữa.

### Tiết Lộ Hình Ảnh Cục Bộ Thông Qua Hình Ảnh Được Liên Kết

Tương tự như trường hợp trước, xử lý tài liệu có tham chiếu đến tệp hình ảnh cục bộ sẽ dẫn đến việc tệp đó được đưa vào tài liệu cuối cùng. Điều này có thể dẫn đến việc tiết lộ thông tin nhạy cảm.

### Từ Chối Dịch vụ

Kẻ tấn công có thể tải lên một tài liệu được tham chiếu hoặc bao gồm các hình ảnh cực lớn – cái gọi là "bom giải nén". Khi xử lý những hình ảnh này, thư viện sẽ tiêu tốn một lượng lớn bộ nhớ và CPU thời gian.

### Giả Mạo Yêu Cầu Phía Máy Chủ Thông Qua Nội Dung Được Liên Kết

Kẻ tấn công có thể tạo một loạt tài liệu chứa các liên kết nhúng đến các kết hợp chung của địa chỉ và cổng IP nội bộ, sau đó gửi chúng đến dịch vụ web bằng thư viện Aspose.Words để xử lý tài liệu.

Dựa trên khoảng thời gian dịch vụ sử dụng để xử lý tài liệu, kẻ tấn công có thể xác định xem kết hợp IP/Cổng đã cho có được lọc bởi tường lửa hay không:

- thời gian xử lý dài hơn cho biết gói TCP SYN được gửi bởi máy chủ đã bị bỏ bởi tường lửa
- thời gian xử lý nhanh cho biết một kết nối thành công đã được thực hiện

## Giải pháp Của Các Vấn Đề Bảo mật

Để giải quyết các vấn đề được mô tả ở trên và để cải thiện tính bảo mật của các ứng dụng web, bạn có thể kiểm soát hoặc vô hiệu hóa việc tải tài nguyên bên ngoài bằng [IResourceLoadingCallback](https://reference.aspose.com/words/cpp/aspose.words.loading/iresourceloadingcallback/).

Ví dụ mã sau đây cho thấy cách tắt tải hình ảnh bên ngoài:

**C++**
{{< highlight cpp >}}
class DisableExternalImagesHandler : public IResourceLoadingCallback
{
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		// Skip external images loading.
		return args->get_ResourceType() == ResourceType::Image
			? ResourceLoadingAction::Skip
			: ResourceLoadingAction::Default;
		}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableExternalImagesHandler = System::MakeObject<LoadOptions>();

disableExternalImagesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableExternalImagesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableExternalImagesHandler);
}
{{< /highlight >}}

Ví dụ mã sau đây cho thấy cách tắt tài nguyên từ xa:

**C++**
{{< highlight cpp >}}
class DisableRemoteResourcesHandler : public IResourceLoadingCallback
{
	static bool IsLocalResource(const System::String& originalUri)
	{
		// CodePorting.CsToCpp.Native.API can handle only absolute uri
		auto uri = System::MakeObject<System::Uri>(originalUri);
		if (uri->get_IsAbsoluteUri())
		{
			return uri->get_Scheme().Equals(u"file", System::StringComparison::OrdinalIgnoreCase);
		}

		return false;
	}
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		return IsLocalResource(args->get_OriginalUri())
			? ResourceLoadingAction::Default
			: ResourceLoadingAction::Skip;
	}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableRemoteResourcesHandler = System::MakeObject<LoadOptions>();

disableRemoteResourcesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableRemoteResourcesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableRemoteResourcesHandler);
}
{{< /highlight >}}

{{% alert color="primary" %}}

Bài viết này dựa trên công ty Tư vấn Người Đánh Giá Bảo Mật Độc Lập [báo cáo](ise-aspose-report.pdf).

{{% /alert %}}
