---
title: Lưu tài liệu trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Lưu tài liệu
linktitle: Lưu tài liệu
type: docs
description: "Lưu tài liệu ở bất kỳ định dạng được hỗ trợ nào bằng Python."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /vi/python-net/save-a-document/
---

Hầu hết các tác vụ bạn cần thực hiện với Aspose.Words đều liên quan đến việc lưu tài liệu. Để lưu tài liệu, Aspose.Words cung cấp phương thức [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) của lớp [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Có những tình trạng quá tải cho phép lưu tài liệu vào một tệp hoặc luồng. Tài liệu có thể được lưu ở bất kỳ định dạng lưu nào được Aspose.Words hỗ trợ. Để biết danh sách tất cả các định dạng lưu được hỗ trợ, hãy xem bảng liệt kê [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Lưu tài liệu vào tệp {#save-a-document-to-a-file}

Chỉ cần sử dụng phương pháp [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) với tên tệp. Aspose.Words sẽ xác định định dạng lưu từ phần mở rộng tệp mà bạn chỉ định.

Ví dụ mã sau đây cho biết cách tải và lưu tài liệu vào một tệp:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Lưu tài liệu vào luồng {#save-a-document-to-a-stream}

Truyền một đối tượng luồng vào phương thức [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Cần phải chỉ định rõ ràng định dạng lưu khi lưu vào luồng.

Ví dụ mã sau đây cho biết cách tải và lưu tài liệu vào luồng:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

## Lưu tài liệu vào PCL {#save-a-document-to-pcl}

Aspose.Words hỗ trợ lưu tài liệu vào PCL (Ngôn ngữ lệnh máy in). Aspose.Words có thể lưu tài liệu sang định dạng PCL 6 (PCL 6 nâng cao hoặc PCL XL). Lớp [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) có thể được sử dụng để chỉ định các tùy chọn bổ sung khi lưu tài liệu sang định dạng PCL.

Ví dụ mã sau đây cho thấy cách lưu tài liệu vào PCL bằng các tùy chọn lưu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

