---
title: Cài Aspose.Words cho Android qua Java
second_title: Aspose.Words đối với Java
articleTitle: Cài Aspose.Words cho Android qua Java
linktitle: Cài Aspose.Words cho Android qua Java
description: "Cài đặt Aspose.Words cho Android qua Java."
type: docs
weight: 20
url: /vi/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Từ năm 2017, phiên bản Aspose.Words cho Android thông qua Java tuân thủ Aspose.Words cho Java

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Cài đặt

Trước đây, Aspose.Words cho Android qua Java được phân phối dưới dạng một tập tin ZIP duy nhất chứa tập tin JAR, các đoạn demo và tài liệu của Aspose.Words cho Android qua Java.

1. Nếu bạn muốn sử dụng bất kỳ phiên bản nào trước Aspose.Words cho Android qua Java 1.11, bạn chỉ cần giải nén bất kỳ phiên bản của Aspose.Words.Android.zip nào vào một thư mục tùy ý.
1. Bao gồm tập tin jar đã được trích xuất trong ứng dụng của bạn bằng cấu hình đường dẫn xây dựng cho ứng dụng đó.

Các phiên bản 1.11 và 1.12 đã được chia thủ công thành hai phần: JAR và APK nhằm hạn chế số lượng phương thức trong tệp DEX. Trong các phiên bản này, chúng tôi cung cấp trình tải APK của riêng mình để khởi động tải đúng các lớp .dex. Bắt đầu từ phiên bản 17.2.0 chúng tôi hỗ trợ luồng làm việc chính thức được mô tả [here](https://developer.android.com/studio/build/multidex.html).

### Làm thế nào để sử dụng Aspose.Words cho Android qua Java từ 1.11 trở lên

Trước đây, một tập lệnh duy nhất JAR của Aspose.Words cho Android qua Java chứa 47+ ngàn phương thức mà các phiên bản cũ là một chút không thực tế để sử dụng trong những ứng dụng Android lớn. Bây giờ bắt đầu từ bản phát hành này, chúng tôi đã bắt đầu giảm kích thước của Aspose.Words cho Android thông qua thư viện Java. Điều lo lắng chính của chúng tôi hiện nay là giảm số phương pháp mà không bị mất chức năng. Chúng tôi đang liên tục làm việc để cải thiện chất lượng và tính hữu dụng của Aspose.Words cho Android thông qua Java.

### Aspose.Words cho Android qua Java Thư viện chia làm hai phần

Chúng tôi đã chia thư viện thành hai tập tin lưu trữ như sau:

- aspose-words-1.11-android-jdk15.jar: Cái đầu tiên bao gồm công khai API và các phương pháp trợ giúp. Hiện tại nó có 32395 phương pháp.
- aspose-words-1.11-libs-android-jdk15.apk: Cái thứ hai có gồm 3rd party jars, các lớp cơ bản, và các tài nguyên. Hiện tại nó có 18296 phương pháp.

### Sử dụng Aspose Words cho Android qua Java từ 1.11

Để bao gồm Aspose.Words cho Android qua Java vào dự án bạn có thể sử dụng bất kỳ một trong các phương pháp sau đây:

- Đặt "aspose-words-1.11-android-jdk15.jar" vào thư mục "libs" trong dự án của bạn, và tập tin "aspose-words-1.11-libs-android-jdk15.apk" vào thư mục "assets". Chỉ ra rằng bạn sẽ sử dụng AsposeWordsApplication làm cơ bản nhất.

**AndroidManifest.xml**

{{< highlight csharp >}}
...
...
<application        
    android:allowBackup="true"
    android:icon="@drawable/ic_launcher"
    android:name="com.aspose.words.AsposeWordsApplication"
    android:label="@string/app_name"
    android:theme="@style/AppTheme" >
    <activity
...
...
{{< /highlight >}}

Để khởi động tải một tập tin .apk trong phương thức onCreate() và nếu bạn không muốn sử dụng android:name="com.aspose.words.AsposeWordsApplication" trong AndroidManifest.xml

**Tập luyện Java tệp tin**

{{< highlight csharp >}}
@Override
protected void onCreate(Bundle savedInstanceState) 
{
    super.onCreate(savedInstanceState);

    // load AW manually
    AsposeWordsApplication awapp = new AsposeWordsApplication();
    
    // this context AW uses to find assets/ folder which contains the second part of the library.
    awapp.loadLibs(getApplicationContext()); 
    if (!checkIfAWSetUpCorrectly())
            throw new IllegalStateException();	
    ...
}
public static boolean checkIfAWSetUpCorrectly()
{
    try
    {
        Class.forName("com.aspose.words.Document");
        return true;
    }
    catch (ClassNotFoundException e)
    {
        e.printStackTrace();
        return false;
    }
}
{{< /highlight >}}

### Sử dụng Aspose.Words cho Android qua Java trong Android Ứng dụng Thử nghiệm

Để sử dụng Aspose.Words cho Android qua Java trong các dự án thử nghiệm, cùng một cách tiếp cận có thể được áp dụng:

"- Chỉ rõ Indicate AsposeWordsTestRunner trong AndroidManifest.xml của dự án thử nghiệm."

**AndroidManifest.xml**

{{< highlight csharp >}}
...
...
<instrumentation
    android:name="com.aspose.words.AsposeWordsTestRunner"    
    android:targetPackage="com.aspose.releaseapp" />
...
...
{{< /highlight >}}

Trong IDE có thể cần phải chỉ định AsposeWordsTestRunner trong cửa sổ cấu hình như sau:

![install-aspose-words-for-android-via-java-1](install-aspose-words-for-android-via-java-1.png)

- Hoặc để bắt đầu tải .apk sử dụng phương pháp getTargetContext().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Cách sử dụng Aspose.Words cho Android qua Java từ 17.2.0 trở lên

1. Tải xuống phiên bản mới nhất của [Aspose.Words for Android via Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Sao chép aspose-words-18.3-android.via.java.jar vào thư mục *libs/* trong dự án của bạn
![install-aspose-words-for-android-via-java-2](install-aspose-words-for-android-via-java-2.jpg)

### Cài đặt Aspose.Words cho Android thông qua Java từ Kho lưu trữ Maven

1. Thêm maven kho lưu trữ vào build.gradle của bạn
1. Thêm 'Aspose.Words cho Android qua Java' JAR như là một sự phụ thuộc
{{< highlight csharp >}}

// 1. Add maven repository into your build.gradle 
repositories {
    mavenCentral()
    maven { url "https://repository.aspose.com/words/" }
}

// 2. Add 'Aspose.Words for Android via Java' JAR as a dependency
dependencies {
    ...
    ...
    compile (group: 'com.aspose', name: 'aspose-words', version: '20.2', classifier: 'android.via.java')
}
{{< /highlight >}}
