---
title: Android için İlk Uygulama Java üzerinden
second_title: Aspose.Words için Java
articleTitle: İlk Uygulamanız
linktitle: İlk Uygulamanız
description: "Aspose.Words için Android'a yüklüyoruz Java."
type: docs
weight: 30
url: /tr/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Bu makale sizi Aspose.Words ile başlamak için bir fikir verir Android aracılığıyla Java. Yeni bir Android projesi sıfırdan nasıl kurulacağını gösterecek, bir referans ekleyecek Aspose.Words JAR ve kaydedilecek bir yeni belge oluşturacak DOCX formatında. Bu örnek geliştirme için [Android Studio](https://developer.android.com/studio/index.html) kullanır ve uygulama Android benzetici üzerinde çalıştırılır. Başlamak için Aspose.Words ile Android üzerinden Java kullanarak, lütfen bu adım adım öğreticiyi takip ederek bir uygulama oluşturun ki Aspose.Words'i Android üzerinden Java kullanıyor:

1. İndir ve [Android Studio](https://developer.android.com/studio/index.html) ve bunu herhangi bir yere kur.
1. Run Android Stüdyosu.
1. Yeni bir Android Uygulama Projesi oluşturun.<br>
![install-aspose-words-for-android-via-java-3](install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](install-aspose-words-for-android-via-java-7.jpg)<br>
1. Projenizin kütüphanelerine / sürümlerinize kopyalayın.<br/>
![install-aspose-words-for-android-via-java-8](install-aspose-words-for-android-via-java-8.jpg)
1. Proje Bölümü Seçin (Dosya menüsünden ve bağımlılık sekmesine tıklayın).
   1. Artı (+) düğmesine tıklayın, dosya bağımlılık seçeneğini seçin.
   1. Libs klasöründen Aspose.Words kütüphaneyi seçin ve Tamam 'a tıklayın.<br>
      ![install-aspose-words-for-android-via-java-9](install-aspose-words-for-android-via-java-9.png)
1. Gerekirse projeyi Gradle dosyalarıyla senkronize et.<br>
![install-aspose-words-for-android-via-java-10](install-aspose-words-for-android-via-java-10.png)
1. SD kartı kullanabilmek için özel izinler eklenmelidir. AndroidManifest.xml dosyasını tıklayın ve XML görünümünü seçin. İzinleri aşağıdaki satırı dosyaya ekleyin <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](install-aspose-words-for-android-via-java-11.jpg)
1. Uygulamanın kod bölümüne geri dönün ve aşağıdaki içe aktarmaları ekleyin:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
Ve sonra aşağıdaki kodu onCreate yönteminin gövdesine ekleyin bir yeni belge sıfırdan oluşturmak için Aspose.Words kullanarak
Birkaç metin ekleyin ve bunu DOCX formatında SD kartta kaydedin.<br>
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
Tam kod şu şekilde görünmelidir:<br>
![install-aspose-words-for-android-via-java-12](install-aspose-words-for-android-via-java-12.png)
1. Şimdi uygulamayı tekrar çalıştır. Bu zaman kod Aspose.Words arka planda çalışacak ve SD kartta kaydedilecek bir belge üretecektir. <br>
![install-aspose-words-for-android-via-java-13](install-aspose-words-for-android-via-java-13.jpg)
1. Oluşturulan belgeyi görüntülemek için Araçlar menüsüne gidin sonra seçin Android ve seçin Android Cihaz İzleyici "<br />
![install-aspose-words-for-android-via-java-14](install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](install-aspose-words-for-android-via-java-15.jpg)
1. Varsayılan görüntüleyiciyi kullanarak belgeyi aç. Uygulama tarafından birkaç kod satırı ile oluşturulan çıktı şöyle bir şey görünür:<br>
![install-aspose-words-for-android-via-java-16](install-aspose-words-for-android-via-java-16.jpg)
