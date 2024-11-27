---
title: Mail Merge Và Báo cáo trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Mail Merge Và Báo cáo
linktitle: Mail Merge Và Báo cáo
type: docs
description: "Mail Merge là một tính năng phổ biến để nhanh chóng tạo tài liệu bằng Python. Aspose.Words đối với Python via .NET có chức năng Mail Merge tiêu chuẩn và tiến lên phía trước nhiều bước, biến nó thành một giải pháp báo cáo chính thức cho phép bạn tạo các tài liệu phức tạp hơn như báo cáo, danh mục, hàng tồn kho và hóa đơn."
keywords: "how to use Mail Merge python"
weight: 30
url: /vi/python-net/mail-merge-and-reporting/
timestamp: 2024-01-27-14-07-04
---

Mail Merge là một tính năng phổ biến để tạo nhanh chóng và dễ dàng các tài liệu như chữ cái, nhãn và phong bì. Aspose.Words cho phép bạn tạo tài liệu từ các mẫu với các trường Mail Merge.

Trường Mail Merge là trường mà bạn có thể chèn vào mẫu mail merge để bao gồm các giá trị cụ thể từ bản ghi nguồn dữ liệu trong tài liệu đầu ra. Ví dụ: bạn có thể chèn trường hợp nhất trong mẫu email để lời chào sẽ có tên của người nhận thay vì "Xin Chào!". Aspose.Words đặt dữ liệu từ một nguồn bên ngoài, chẳng hạn như cơ sở dữ liệu hoặc tệp, vào các trường này và định dạng chúng. Tài liệu kết quả được lưu trong thư mục được chỉ định.

Aspose.Words lấy chức năng Mail Merge tiêu chuẩn và tiến lên phía trước nhiều bước, biến nó thành một giải pháp báo cáo chính thức cho phép bạn tạo các tài liệu phức tạp hơn như báo cáo, danh mục, hàng tồn kho và hóa đơn. Dưới đây là một số ưu điểm của giải pháp báo cáo Aspose.Words:

- Báo cáo thiết kế trong Microsoft Word sử dụng các trường Mail Merge tiêu chuẩn
- Xác định các vùng trong tài liệu đang phát triển, chẳng hạn như các hàng thứ tự chi tiết (hiện không được hỗ trợ trong phiên bản Python)
- Chèn hình ảnh trong một mail merge
- Thực thi bất kỳ logic tùy chỉnh, định dạng điều khiển hoặc chèn nội dung phức tạp bằng trình xử lý sự kiện Mail Merge (hiện không được hỗ trợ trong phiên bản Python)
- Điền vào tài liệu với dữ liệu từ bất kỳ loại nguồn dữ liệu nào (hiện không được hỗ trợ trong phiên bản Python, chỉ hỗ trợ nguồn dữ liệu mảng)

{{% alert color="primary" %}}

Mô-đun [aspose.words.mailmerging](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/) được sử dụng để hoạt động với việc hợp nhất thư.

{{% /alert %}}

## Cơ chế Và Các Thành phần chính của Hoạt động Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words cung cấp khả năng tải tài liệu trong [supported formats](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) khác nhau và sau đó cho phép người dùng thực hiện thao tác Mail Merge.

Thông thường, một tài liệu được tải cho phép bạn lưu trữ các trường hợp nhất, ví dụ, một tài liệu ở định dạng DOCX. Nhưng có những định dạng không lưu trữ các trường như vậy, ví dụ, TXT. Nếu Aspose.Words hỗ trợ tải các định dạng tệp như vậy, bạn có thể thêm các trường hợp nhất trực tiếp vào mô hình tài liệu, lưu tài liệu một cách thuận tiện [supported format](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) và thực hiện thao tác Mail Merge.

Thao tác Mail Merge sẽ hợp nhất *mail merge template* và *data source* của bạn để tạo riêng lẻ *merged documents*.

## MẫuMail Merge {#what-is-a-mail-merge-template} Là Gì

Mục tiêu của việc áp dụng thao tác mail merge bằng cách sử dụng mẫu hợp nhất là đơn giản hóa quá trình tạo tài liệu.

Có một số cách để tạo và thiết kế mẫu hợp nhất. Bạn có thể sử dụng Microsoft Word và mẫu hợp nhất không nhất thiết phải là mẫu Microsoft Word, đó là tài liệu ở định dạng DOT hoặc DOTX, nó có thể là tài liệu thông thường ở định dạng DOC hoặc DOCX. Bạn cần chèn một số trường đặc biệt được gọi là trường hợp nhất vào mẫu này ở những nơi bạn muốn dữ liệu từ nguồn dữ liệu của mình được chèn sau này. Hoặc bạn có thể lập trình tạo một mẫu hợp nhất bằng cách sử dụng lớp [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

Mẫu hợp nhất chứa văn bản chính, phải giống nhau trong tất cả các tài liệu đầu ra sau khi bạn thực hiện thao tác Mail Merge. Bạn có thể sử dụng bất kỳ định dạng nào cho mẫu của mình nếu có khả năng thêm các trường hợp nhất vào đó. Tất cả các trường hợp nhất trong mẫu của bạn sẽ được điền từ nguồn dữ liệu của bạn trong thao tác Mail Merge.

## Các Loại nguồn dữ liệu cho Hoạt động Mail Merge {#data-source-types-for-a-mail-merge-operation}

Hiện tại Aspose.Words cho Python via .NET Mail Merge chỉ chấp nhận một mảng các giá trị làm nguồn dữ liệu. Các loại khác sẽ được thêm vào int các phiên bản trong tương lai.

Ví dụ mã sau đây cho thấy cách tạo một mẫu đơn giản và điền dữ liệu bằng chức năng Mail Merge:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-SimpleMailMerge.py" >}}


## Tài liệu hợp nhất Của Hoạt động Mail Merge {#merged-documents-of-a-mail-merge-operation}

Tài liệu được hợp nhất là kết quả của thao tác Mail Merge khi bạn hợp nhất mẫu với nguồn dữ liệu. Tất cả các trường hợp nhất trong tài liệu đã hợp nhất được thay thế bằng dữ liệu thực tế từ nguồn dữ liệu của bạn.

Hình ảnh sau đây cho thấy một ví dụ về mẫu hợp nhất với các trường được hợp nhất trước khi thực hiện thao tác Mail Merge.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

Hình ảnh sau đây cho thấy một ví dụ về tài liệu được hợp nhất đầu ra là kết quả của việc thực hiện thao tác Mail Merge.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## Xem Thêm

- [Làm việc với Mail Merge mẫu trong Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
