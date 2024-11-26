---
title: Lisanslama
second_title: Aspose.Words için Java
articleTitle: Lisanslama
linktitle: Lisanslama
description: "Lisanslama Aspose.Words için Android ile Java'e."
type: docs
weight: 60
url: /tr/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

Bazen sistem hakkında daha iyi bir şekilde çalışmak istiyorsunuz, bu nedenle kodun içine dalmak için mümkün olduğunca hızlı olmak istersiniz. Daha kolay yapmak için, Aspose.Words satın alma için farklı planlar sunar veya bir deneme sürümü ve değerlendirme için 30 günlük geçici lisans sunar.

{{% alert color="primary" %}}

Şunu not edin ki bir dizi genel politikalar ve uygulamalar size nasıl değerlendirileceğini, uygun lisansları alınacağını ve ürünlerimizi satın alacağınızı gösterir. Onları [Purchase Policies and FAQ](https://purchase.aspose.com/policies/) bölümünde bulabilirsiniz.

{{% /alert %}}

## Ücretsiz Deneme Süresi veya Geçici Lisans

Aspose.Words geliştiricilerin satın almadan önce deneyebileceği inanılmaz bir yazılımdır. Sizin Aspose.Words için Java ve Aspose.Words için Android değerlendirme için kolayca yükleyebilir/yükleyebilirsiniz. Java [from the download page](https://releases.aspose.com/words/androidjava/).

Değerlendirme sürümü satın alınan sürümle aynıdır - deneme sürümü, lisansı uygulamak için bir kaç satır kod eklediğinizde sadece lisanslı hale gelir.

{{% alert color="primary" %}}

Free Trial veya Geçici Lisans için Aspose.Words'e ilişkin daha fazla ayrıntı hakkında Android üzerinden Java'te [the Licensing and Subscription page](/words/java/licensing/) 'de bilgi edinin.

{{% /alert %}}

## Satın Alınan Lisans

Satın alma sonrası lisans dosyasını uygulamak veya lisans dosyasını gömülü kaynak olarak dahil etmek zorundasınız. Bu bölüm bunu nasıl yapılacağını anlatan seçenekleri ve bazı yaygın sorulara da yorum yapıyor.

{{% alert color="primary" %}}

Bir lisans düz metin XML dosyası ürün adı, lisanslı geliştirici sayısı, abonelik bitiş tarihi vb. gibi ayrıntıları içerir.

Dosya dijital olarak imzalanmıştır, bu yüzden dosyayı değiştirmeyin. Dosyaya gereğinden fazla bir satır başı eklenmesi bile onu geçersiz kılacaktır.

{{% /alert %}}

{{% alert color="primary" %}}

Lisansı ayarlamanız gerekiyor:

-* yalnızca uygulama alanı başına bir kez
* kullanmadan önce diğer tüm Aspose.Words sınıfları

{{% /alert %}}

{{% alert color="primary" %}}

Fiyatlandırma bilgilerini [Pricing Information](https://purchase.aspose.com/pricing/words/family/) sayfasında bulabilirsiniz.

{{% /alert %}}

### Satın Aldığınız Lisansı Korumak

Lisans satın aldıktan sonra lisans dosyanızı korumak için sayfa [Protecting Your Purchased License](https://purchase.aspose.com/orders/protecting-your-license-file)'daki bilgilere dikkatlice bakmanız gerekir. Lütfen not edin ki bu sayfa sadece ücretli lisansınız varsa görüntülenebilir.

### Lisanslama Uygulama Seçenekleri

Lisanslar çeşitli noktalardan uygulanabilir:

* Açık yol
* Bir gömülü kaynak
* As a Metered License – yeni bir lisanslama mekanizması

#### Lisans dosyasını yüklüyor.

In Aspose.Words for Android via Java, lisans [embedded as a resource](/words/java/licensing/) olarak olabilir veya bir akıştan yüklenebilir:

1. Lisans dosyasını **/mnt/sdcard/** içindeki herhangi bir konuma koyun.
1. Dosyayı referans alan bir akış oluşturun.
1. Lisans dosyasını içeren akışa `SetLicense` yöntemine geçin.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

Bir Yerleşik Kaynak'tan Lisans Uygulamak. Adından bir kaynak olarak lisansa erişmek için bir Android paket dosyasından:

1. Lisans dosyasını uygulamanın **res/raw** klasörüne bir kaynak olarak ekleyin.
   Lisans dosyası, **res/raw** klasöründe görünür olmalıdır.
1. Erişim/yükleme lisansı, aşağıdaki kod örneğindeki kaynaktan.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Metered Lisans Uygula

Aspose.Words geliştiricilerin metrik anahtarları uygulamasına izin verir. Bu yeni bir lisanslama mekanizmasıdır. Yeni lisanslama mekanizması mevcut lisanslama yöntemiyle birlikte kullanılacaktır. Özelliklerin kullanımına göre faturalandırılmak isteyen müşteriler, API için ölçüm lisanslamasını kullanabilirler.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### Lisans Dosya Adını Değiştirme

Lisans dosyası adı Aspose.Words.Android.Java.lic olmak zorunda değildir. Onu istediğiniz gibi yeniden adlandırabilir ve çağrırken bu adı kullanabilirsiniz `License.SetLicense`.

### Exception - Lisans dosyasını bulamıyor

Bir lisans satın aldığınızda, lisans dosyası varsayılan olarak **Aspose.Words.Android.Java.lic** olarak adlandırılır. Lisans dosyası tarayıcınız aracılığıyla indirilir ve bazı tarayıcılar lisans dosyasını bir XML olarak tanır ve adına .xml uzantısı ekler. İndirilen dosya **Aspose.Words.Android.Java.lic.XML**'e dönüşür.

Microsoft Windows bilinen dosya türlerinin uzantılarını gizlemek üzere yapılandırıldığında (ne yazık ki bu çoğu Windows kurulumunda varsayılan olarak), lisans dosyası Windows Gezgini'nde **Aspose.Words.Android.Java.lic** olarak listelenir. Beklenen dosya adının gibi görünüyor. Eğer '`License.SetLicense`'u çağırırsanız ve 'Aspose.Words.Android.Java.lic'yi geçirirseniz, böyle bir dosya olmadığı için bir özel durum göreceksiniz

Sorunu çözmek için dosya adını kaldırmak için görünmez .xml uzantısını ortadan kaldırmak için yeniden adlandırın. Koyu uzantılar" seçeneğini devre dışı bırakmanızı öneririz Microsoft Windows.

## Birden Fazla Aspose Ürünü Kullanmak

Bir uygulamada birkaç Aspose ürünü kullanıyorsanız, örneğin Aspose.Words ve `Aspose.Cells`, burada birkaç yararlı ipucu verilmiştir.

- Her bir Aspose ürünü için lisansı ayrı olarak ayarlayın.
  Bütün bileşenlere ait tek bir lisans dosyası örneğin 'Aspose.Total.Android.Java.lic'e sahip olsanız bile, ayrı ayrı Aspose ürünleri için `License.SetLicense` yöntemini çağırmanız gerekmektedir.
- Lisans sınıfının tamamen nitelikli adını kullanın.
  Her Aspose ürünü onun ad alanı içinde bir `License` sınıfı vardır. Örneğin, Aspose.Words com.aspose.words.License sınıfına ve `Aspose.Cells` com.aspose.cells.License sınıfına sahiptir. Tam olarak nitelikli sınıf adı kullanmak, hangi lisansın hangi ürüne uygulandığını karıştırmaktan kaçınmanıza olanak tanır.
