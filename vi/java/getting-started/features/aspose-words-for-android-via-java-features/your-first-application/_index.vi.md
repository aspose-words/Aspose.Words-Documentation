---
title: Đầu tiên ứng dụng cho Android qua Java
second_title: Aspose.Words cho Java
articleTitle: Ứng dụng Đầu tiên của bạn
linktitle: Ứng dụng Đầu tiên của bạn
description: "Cài đặt Aspose.Words cho Android qua Java."
type: docs
weight: 30
url: /vi/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Bài báo này cho bạn một ý tưởng về khởi đầu với Aspose.Words cho Android thông qua Java. Nó sẽ chứng minh cách thiết lập một dự án mới Android từ không, thêm một tham chiếu đến Aspose.Words JAR và tạo ra một tài liệu mới được lưu trên đĩa trong định dạng DOCX. Ví dụ này sử dụng [Android Studio](https://developer.android.com/studio/index.html) cho phát triển và ứng dụng được chạy trên Android Emulator. Để bắt đầu với Aspose.Words cho Android qua Java, vui lòng làm theo hướng dẫn từng bước để tạo một ứng dụng sử dụng Aspose.Words cho Android qua Java:

1. Tải về và Android Studio (https://developer.android.com/studio/index.html), cài đặt ở bất cứ đâu.
1. Chạy Android Studio.
1. Tạo một Android dự án ứng dụng mới.<br />
![install-aspose-words-for-android-via-java-3](install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](install-aspose-words-for-android-via-java-7.jpg)<br>
1. Sao chép aspose-words-17.5-android.via.java.jar vào thư mục libs trong dự án của bạn <br />
![install-aspose-words-for-android-via-java-8](install-aspose-words-for-android-via-java-8.jpg)
1. Chọn "Project Section" (từ thực đơn File và nhấp vào thẻ "Dependencies.
   1. Nhấp vào nút " +", chọn tùy chọn phụ thuộc tập tin.
   1. Chọn thư viện Aspose.Words từ thư mục libs và nhấp vào OK.<br />
   [! [install-aspose-words-for-android-via-java-9] (install-aspose-words-for-android-via-java-9.png)]
1. Đồng bộ hóa dự án với các tệp Gradle nếu cần <br>
![install-aspose-words-for-android-via-java-10](install-aspose-words-for-android-via-java-10.png)
1. Để truy cập vào thẻ nhớ, cần thêm các quyền đặc biệt. Nhấp vào tập tin AndroidManifest.xml và chọn quan điểm XML. Thêm dòng sau vào tệp <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](install-aspose-words-for-android-via-java-11.jpg)
1. Đi vào phần mã của ứng dụng và thêm các dòng nhập sau:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
Và sau đó chèn mã sau vào cơ thể của phương thức onCreate để tạo ra một tài liệu mới từ đầu bằng cách sử dụng Aspose.Words
chèn một số văn bản và lưu nó vào thẻ SD ở định dạng DOCX.<br>
{{< highlight csharp >}}
try
{
   Document doc = new Document();
   DocumentBuilder builder = new DocumentBuilder(doc);
   builder.writeln("Hello World!");
   String sdCardPath = Environment.getExternalStorageDirectory().getPath() + File.separator;
   doc.save(sdCardPath + "Document Out.docx");
}
catch (Exception e)
{
   e.printStackTrace();
}
{{< /highlight >}}<br>
Mã đầy đủ nên trông như thế này:<br>
![install-aspose-words-for-android-via-java-12](install-aspose-words-for-android-via-java-12.png)
1. Bây giờ hãy chạy lại ứng dụng. Lần này mã Aspose.Words sẽ chạy ở chế độ nền và tạo ra một tài liệu được lưu vào thẻ SD.<br>
![install-aspose-words-for-android-via-java-13](install-aspose-words-for-android-via-java-13.jpg)
1. Để xem tài liệu được tạo, hãy điều hướng đến trình đơn công cụ và chọn Android và chọn Android Trình giám sát thiết bị < br >
![install-aspose-words-for-android-via-java-14](install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](install-aspose-words-for-android-via-java-15.jpg)
1. Sử dụng trình xem mặc định để mở tài liệu. Kết quả tạo ra bởi ứng dụng với chỉ vài dòng mã có dạng như thế này:<br>
![install-aspose-words-for-android-via-java-16](install-aspose-words-for-android-via-java-16.jpg)
