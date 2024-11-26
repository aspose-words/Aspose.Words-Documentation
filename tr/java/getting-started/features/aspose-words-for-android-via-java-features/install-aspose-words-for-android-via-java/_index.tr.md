---
title: Aspose.Words 'ı yükle Android için Java üzerinden
second_title: Aspose.Words için Java
articleTitle: Aspose.Words 'ı yükle Android için Java üzerinden
linktitle: Aspose.Words 'ı yükle Android için Java üzerinden
description: "Aspose.Words yüklemek için Android üzerinden Java."
type: docs
weight: 20
url: /tr/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

2017'den beri Aspose.Words için Android'deki sürümleme, Java aracılığıyla Aspose.Words ile uyumludur Java için

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Kurulum

Daha önce, Aspose.Words için Android üzerinden Java dağıtıldı tek bir ZIP dosyasında, içeriyordu JAR dosya, demos ve Aspose.Words için Android üzerinden Java belgeleri.

1. Eğer Aspose.Words'in herhangi bir sürümünü Android için Java 1.11 ile kullanmak istiyorsanız sadece istediğiniz bir dizine herhangi bir sürümün Aspose.Words.Android.zip dosyasını ayıklamanız gerekir.
1. Uygulamanızda uygulamanız için yapılandırma yolunu kullanarak çıkarılan Jar dosyasını ekleyin.

Versiyonlar 1.11 ve 1.12 el ile iki parçaya bölündü: JAR ve APK, DEX dosyasında yöntem sayısını sınırlamak için. Bu sürümlerde, ek sınıfları .dex dosyasının doğru yüklenmesini başlatmak için kendi APK yükleyicimizi sağladık. Sürüm 17.2.0'ten itibaren resmi iş akışı açıklaması [here](https://developer.android.com/studio/build/multidex.html)'i destekliyoruz.

### Nasıl Aspose.Words Android üzerinden Java kullanmak için 1.11 ile İleri

Daha önce tek bir JAR Aspose.Words için Android ile 47+ bin yöntem içeren tek bir Java vardı, bu da eski versiyonların büyük Android uygulamalarında biraz kullanışsız olmasına neden oldu. Şimdi bu sürümden itibaren, biz Aspose.Words için Android üzerinden Java kitaplığı ile azaltmaya başladık. Şimdi büyük endişemiz, işlevselliği etkilemeden yöntem sayısını azaltmaktır. Biz sürekli olarak Aspose.Words için Android ile Java'de bulunanların kalitesini ve kullanılabilirliğini geliştirmeye çalışıyoruz.

### Aspose.Words için Android üzerinden Java Kütüphane İki Parçalara Bölünmüş

Kütüphaneyi aşağıdaki iki arşivde bölmüştük:

- aspose-words-1.11-android-jdk15.jar: İlk tane kamusal API ve yardımcı yöntemleri içerir. Şu anda, 32395 yöntemine sahiptir.
- aspose-words-1.11-libs-android-jdk15.apk: İkincisi ise 3rd part jars, temel sınıflar ve kaynaklara dahil eder. Şu anda,18296 yöntemine sahiptir.

### Aspose Sözleri kullanarak Android Java'den 1.11'den beri

Projenizde Aspose.Words için Android ile ilgili Java kullanmak istiyorsanız aşağıdaki yöntemlerden herhangi birini kullanabilirsiniz:

- Projenizin "lib" klasörüne "aspose-words-1.11-android-jdk15.jar" dosyasını ve arşiv "aspose-words-1.11-libs-android-jdk15.apk" 'ı "varlıklar" klasörüne yerleştirin. AsposeWordsApplication temel olarak kullanacağınızı belirtin.

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

Oluşturmak için bir yük .apk dosyası onCreate() yönteminde ve eğer kullanmak istemiyorsanız android:name = ""com.aspose.words.AsposeWordsApplication"" AndroidManifest.xml içinde

**Aktivite Java dosyası**

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

### Aspose.Words için Android aracılığıyla Java içinde Android Test Uygulamaları

Test projelerinde Aspose.Words için Android via Java'i kullanmak için aynı yaklaşım uygulanabilir:

- Test projesindeki AndroidManifest.xml'de AsposeWordsTestRunner'ı belirtin.

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

IDE'de, aşağıdakiler gibi yapılandırma penceresinde AsposeWordsTestRunner'ı göstermek gerekebilir:

![install-aspose-words-for-android-via-java-1](install-aspose-words-for-android-via-java-1.png)

- Ya da .apk yüklemek için getTargetContext() yöntemini kullanarak.

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## 17.2.0'dan İtibaren Aspose.Words Kullanmak için Android ile Java Kullanarak Nasıl Kullanılır?

1. En yeni sürümünü [Aspose.Words for Android via Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/) indir
1. Projenizin *libs/* klasörüne aspose-words-18.3-android.via.java.jar kopyalayın
![install-aspose-words-for-android-via-java-2](install-aspose-words-for-android-via-java-2.jpg)

### Aspose.Words için Android üzerinden Java Maven deposundan yükle

1. Bina.gradle'nize maven deposu ekleyin
1. Ekle 'Aspose.Words için Android yoluyla Java' JAR bir bağımlılık olarak
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
