---
title: Yêu cầu hệ thống
second_title: Aspose.Words cho Java
articleTitle: Yêu cầu hệ thống
linktitle: Yêu cầu hệ thống
description: "Trước khi bắt đầu làm việc với Aspose.Words trên Java, hãy đảm bảo rằng bạn đáp ứng các yêu cầu của hệ điều hành, nền tảng, khung và môi trường để các hoạt động trên thiết bị của bạn được tính toán đúng cách."
type: docs
weight: 80
url: /vi/java/system-requirements/
---

Aspose.Words cho Java không yêu cầu các sản phẩm của bên thứ ba như Microsoft Word phải được cài đặt. Aspose.Words tự nó là một động cơ để tạo ra, sửa đổi, chuyển đổi và hiển thị tài liệu ở nhiều định dạng, bao gồm cả Microsoft Word định dạng tài liệu.

## Các hệ điều hành được hỗ trợ

Bất kỳ hệ điều hành nào mà có thể chạy môi trường thời gian (JRE) Java cũng có thể chạy Aspose.Words cho Java. Biểu dưới đây liệt kê hầu hết nhưng không phải tất cả các hệ điều hành được hỗ trợ.

<table>
	<tr>
			<td style="font-weight: bold; width: 400px">Hệ điều hành</td>
			<td style="font-weight:bold;width:400px">Phiên bản</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>và những thứ khác</li></ul></td>
		< / tr >
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS phiên bản 10.9 (Mavericks) và sau đó</li></ul></td>
		< / tr >
  <tr>
			<td>Di động</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
<table>

## Các Nền tảng được Hỗ trợ trên Bầu trời

Aspose.Words cho Java hỗ trợ bất kỳ nền tảng đám mây nào có thể chạy ứng dụng Java

## Hỗ trợ Java Phiên bản

Aspose.Words cho Java hỗ trợ Java 7 và mới hơn. Nếu bạn bị buộc phải sử dụng Java 6, chúng tôi vẫn phát hành một bản riêng biệt JAR cho Java 6.


## Phụ thuộc tùy chọn

Như đã đề cập ở trên, Aspose.Words cho Java yêu cầu *chỉ* Môi trường Thời gian Chạy Java, và bạn không cần phải cài đặt bất kỳ thư viện bổ sung nào.

Tuy nhiên, đôi khi có những tình huống mà bạn cần thêm các thư viện từ bên thứ ba:

- Thư viện JogAmp JOGL cho chế độ xử lý OpenGL được gia tốc phần cứng. Thư viện được bao gồm trong tệp aspose-words POM dưới dạng phụ thuộc bên ngoài. Bạn có thể chỉnh sửa tệp POM để bảo tồn các jar JOGL cần thiết cho nền tảng của bạn. Hoặc bạn có thể loại bỏ sự phụ thuộc nếu không cần kết xuất OpenGL được tăng tốc bởi phần cứng.
- HarfBuzz bộ máy phông chữ. Đã được bao gồm trong JRE 9 và mới hơn. Nếu bạn đang sử dụng JRE 8 hoặc mới hơn, bạn có thể sử dụng phụ thuộc "shaping-harfbuzz-plugin" trong tệp POM của chúng tôi. Không thế thì bạn có thể xóa bỏ sự phụ thuộc đó.
- {1} Advanced Imaging (JAI) để hỗ trợ hình ảnh TIFF. Hình ảnh TIFF không được hỗ trợ bởi {1} 8 và cũ hơn. Cho việc hỗ trợ TIFF trong các môi trường cũ {1}, {0} cho {1} phụ thuộc vào gói {[{1} Advanced Imaging (JAI)](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html)} từ {2}. Chúng tôi sẽ mô tả cách cài đặt JAI bên dưới.

### Cách cài đặt JAI trên Windows

Làm theo các bước này để cài đặt bản địa JAI và ImageIO trên Windows:

1. Tải về **JAI 1.1.3**.
   Khi viết bài này, chỉ có phiên bản 32 bit của trình cài đặt mới có sẵn, vì vậy nếu bạn sử dụng JDK, bạn cần tải xuống [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) và nếu bạn sử dụng JRE, bạn cần tải xuống [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Chạy chương trình cài đặt và chỉ vào thư mục nơi JDK/JRE đã được cài đặt.
1. Tải về **JAI Image I/O 1.1**.
   Tại thời điểm viết, chỉ có phiên bản 32-bit của trình cài đặt là sẵn sàng, vì vậy nếu bạn sử dụng JDK bạn cần tải xuống [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) và nếu bạn sử dụng JRE bạn cần tải xuống [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Chạy trình cài đặt và chỉ cho nó đến thư mục mà JDK/JRE được cài đặt.

### Cách cài đặt JAI trên Linux

Làm theo các bước để cài đặt bản địa JAI và ImageIO trên Linux:

1. Tải về **JAI 1.1.3** bằng cách chọn kiến trúc phù hợp
   1. [i586] (https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) cho hệ thống 32 bit
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) cho những bản 64 bit (dù sử dụng bộ xử lý Intel)
1. Giải nén tập tin vào một thư mục tạm thời.
1. Di chuyển JAR tệp vào thư mục JDK/JRE **lib/ext**.
1. Di chuyển các tập tin SO vào thư mục JDK/JRE **lib/amd64**<br />

   Ví dụ trên hệ thống 64 bit Ubuntu, bước từ 1 đến 4 sẽ giống như thế này <br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Tải " **JAI Image I/O 1.1** ", chọn kiến trúc phù hợp:
   1. [i586] (https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) cho hệ thống 32 bit
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) dành cho những phần cứng 64 bit (dù sử dụng bộ vi xử lý Intel)
1. Chiết xuất tệp vào thư mục tạm thời.
1. Di chuyển JAR tập tin vào thư mục JDK/JRE **lib/ext**.
1. Di chuyển các tập tin .SO vào thư mục JDK/JRE **lib/amd64**.<br />

   Ví dụ, trên hệ thống 64 bit Ubuntu, các bước 5-8 sẽ có dạng như sau: <br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Thư mục cho các tập tin tạm thời

Aspose.Words cho Java sử dụng thư mục tạm trên máy tính của bạn, được chỉ định thông qua thuộc tính hệ thống 'java.io.tmpdir'. " Aspose.Words cho Java ghi các tệp tạm thời và sau đó xóa các tệp này ngay khi hoàn thành việc hiển thị.

java.io.tmpdir là một thuộc tính hệ thống tiêu chuẩn Java cũng được sử dụng bởi các chính sách lưu trữ dựa trên đĩa. Nó xác định nơi JVM ghi các tập tin tạm thời.
