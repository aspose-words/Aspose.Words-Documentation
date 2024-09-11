---
title: Lisanslama ve Abonelik
second_title: Aspose.Words için Java
articleTitle: Lisanslama ve Abonelik
linktitle: Lisanslama ve Abonelik
description: "Aspose.Words for Java farklı satın alma planları sunar veya bir değerlendirme yapmak için lisanslama ve abonelik politikalarını kullanarak bir Test Sürümü ve 30 günlük Geçici Lisans sunar."
type: docs
weight: 60
url: /tr/java/licensing/
---

Bazen sistemin daha iyi çalışmasını sağlamak için kodun içine dalmak istersiniz ve bunu mümkün olduğunca çabuk yapmak istersiniz. Bunu kolaylaştırmak için, Aspose.Words farklı satın alma planları sunar veya bir Deneme Sürümü ve değerlendirme için 30 günlük Geçici Lisans sunar.

{{% alert color="primary" %}}

Dikkat edin ki bir dizi genel politika ve uygulama sizi nasıl değerlendirmeniz, ürünlerimizi doğru lisanslamanız ve satın almanız konusunda yönlendirir. Onları [Purchase Policies and FAQ](https://purchase.aspose.com/policies/) bölümünde bulabilirsin.

{{% /alert %}}

## Ücretsiz Deneme veya Geçici Lisans

Aspose.Words geliştiricilerin satın almadan önce denemeye başlayabileceği inanılmaz bir yazılımdır. Aspose.Words için Java ve Aspose.Words için Android 'ye kolayca yükleyebilir/yükleyebilirsiniz Java'e [from Maven](https://releases.aspose.com/words/java/) değerlendirme için.

### Ücretsiz Deneme Sürümü

Değerlendirme sürümü satın alınan sürümle aynıdır - Deneme sürümü sadece lisansı etkinleştirmek için birkaç satır kod eklediğinizde lisanslı hale gelir.

Deneme sürümü Aspose.Words için Java ve Aspose.Words için Android Java üzerinden belirtilen lisans olmadan sağlanır. Bu, tam bir ürün işlevselliği sağlar, ancak yükleme ve kaydetme sırasında belgenin üst kısmına değerlendirme damgası ekler ve maksimum belge boyutunu birkaç yüz paragrafla sınırlar.

### Geçici Lisans

Eğer Test Sürümü sınırlamaları olmadan Aspose.Words'i Java için ve Aspose.Words'i Android için test etmek istiyorsanız Java via ile 30 günlük geçici bir lisans da talep edebilirsiniz. Daha detaylı bilgi için [Get a Temporary License](https://purchase.aspose.com/temporary-license/) sayfasını inceleyin.

## Satın Alma Lisansı

Satın aldıktan sonra lisans dosyasını uygulamak veya lisans dosyasını gömülü bir kaynak olarak dahil etmek gerekir. Bu bölüm şu şekilde yapılabileceğini tanımlayan seçenekleri açıklar ve bazı yaygın sorular hakkında yorum yapar.

{{% alert color="primary" %}}

Bir lisans, ürün adı, lisanslı geliştiricilerin sayısı, aboneliğin sona erme tarihi vb. gibi ayrıntıları içeren düz metin bir XML dosyasıdır.

Dosya dijital olarak imzalanmıştır bu nedenle dosyanın değiştirilmesini yapmayın. Dosyaya bir fazladan satır başı eklemek bile onu geçersiz kılacaktır.

{{% /alert %}}

{{% alert color="primary" %}}

Lisansı ayarlamanız gerekir:

* tek bir uygulama alanı başına bir kez
* herhangi bir başka Aspose.Words sınıfını kullanmadan önce

{{% /alert %}}

{{% alert color="primary" %}}

Fiyatlandırma bilgilerini [Pricing Information](https://purchase.aspose.com/pricing/words/family/) sayfasında bulabilirsiniz.

{{% /alert %}}

### Satın Aldığınız Lisansınızı Koruyun

Bir lisans satın aldıktan sonra, lisans dosyanızı korumak için sayfa [Protecting Your Purchased License](https://purchase.aspose.com/orders/protecting-your-license-file)'daki bilgileri dikkatlice okumalısınız. Lütfen unutmayın ki bu sayfa yalnızca ücretli lisansınız varsa görüntülenebiliyor.

### Lisans Uygulama Seçenekleri

Lisanslar çeşitli konumlardan uygulanabilir":

* Açık yol
* Dosyayı içeren klasör* Aspose.Words JAR*
* Bir gömülü kaynak JAR adlıdır *Aspose.Words JAR *
* Ölçümlü Lisans – yeni bir lisanslama mekanizması

Lisansı ayarlamanın en kolay yolu genellikle lisans dosyasını *Aspose.Words JAR* ile aynı klasöre yerleştirmek ve sadece dosya adını yol belirtmeden belirtmektir.

{{% alert color="primary" %}}

Bir bileşeni lisanslamak için [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream)'ı kullanın.

**SetLicense** 'ı birden fazla kez çağırmak zararlı değildir sadece işlemci zamanını boşa harcar.

Çağırma [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) birden fazla kez zararlı da değil ama işlemci zamanını boşa harcar ve tüketimi yanlışlıkla biriktirebilir.

{{% /alert %}}

#### Bir Dosya veya Akış Nesnesi Kullanarak Lisans Uygula

{{% alert color="primary" %}}

Başlangıç kodunda **SetLicense**'ı Aspose.Words sınıflarını kullanmadan önce çağırın.

{{% /alert %}}

Sınıf kitaplığı geliştirirken, Aspose.Words kullanan sınıfınızdaki statik oluşturucudan **SetLicense**'i çağırabilirsiniz. The static constructor will be executed prior to instantiating your class to ensure that the Aspose.Words license is installed correctly.

##### Dosyadan Lisans Yükle

[SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String) yöntemini kullanarak, uygulamanın JAR dosyalarının bulunduğu yer olan gömülü kaynaklarda veya klasörlerde lisans dosyasını bulmaya çalışabilirsiniz.

Aşağıdaki kod örneğinde bir klasörden lisans başlatmak nasıl yapılır gösterilmektedir:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### Lisansı bir `Stream` Nesnesinden Yükle

Aşağıdaki kod örneğinde, bir akışdan başka bir [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) yöntem kullanarak bir lisansın nasıl başlatılacağını gösterir:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### Lisans Dosyasını Yerleşik Bir Kaynak Olarak Dahil Et

Lisansınızı uygulamanızla birlikte paketlemeniz ve kaybolacağını garanti etmenizin temiz bir yolu, bunu gömülü bir kaynak olarak dahil etmektir. LIC dosyasını projenizin kaynak klasörüne kolayca kopyalayabilirsiniz.

Projenin yeniden inşası, uygulama .jar dosyasına .lic dosyasını eklemelidir. Bunun ardından aşağıdaki kodu kullanarak bir lisans için başvurabilirsiniz:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### Metreli Lisans Uygula

Aspose.Words geliştiricilerin bir ölçülmüş anahtar uygulamasına izin verir. Bu yeni bir lisanslama mekanizmasıdır.

Yeni lisanslama mekanizması mevcut lisanslama yöntemiyle birlikte kullanılacak. Bu müşteriler API özelliklerinden bazılarını kullanmak için faturalandırılmak isteyenler, "Ölçümli Lisanslama"sını kullanabilirler.

Bu tür bir lisans almak için gereken tüm adımları tamamladıktan sonra anahtarları alacaksınız, lisans dosyasını değil. Bu ölçülü anahtarı bu özel amaç için özellikle tanıtılan [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) sınıfı kullanılarak uygulayabilirsiniz.

Bu lisanslama yönteminin tüketimi doğru bir şekilde biriktirmek ve bize bildirmek için o **SetMeteredKey** yöntemini sık sık çağırmayın. Sadece Aspose.Words kütüphanesini başlatın, bir kez **SetMeteredKey**'i çağırın sonra kütüphaneyi başlatılmış bırakıp tekrar kullanın.

Aşağıdaki kod örneği, genel ve özel anahtarları nasıl ayarlayacağınızı gösterir:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

Lütfen doğru kullanım için bir Metered lisansı için sabit bir İnternet bağlantısına sahip olmanız gerektiğini unutmayın, çünkü Metered mekanizması doğru hesaplamalar için sürekli olarak hizmetlerimizle etkileşime gerektirir

Daha fazla ayrıntı için [Metered Licensing FAQ](https://purchase.aspose.com/faqs/licensing/metered/) bölümüne bakın.

{{% /alert %}}

### Lisans Dosya Adını Değiştirme

Lisans dosyası adı "Aspose.Words .LİS" olmak zorunda değildir. Onu hoşunuza göre yeniden adlandırabilir ve uygulamanızda bir lisans ayarlarken bu ismi kullanabilirsiniz.

### Lisans dosya adını bulamıyor" özel durumu

Bir lisans satın aldığınızda ve indirdiğinizde, Aspose web sitesi lisans dosyasını * "Aspose.Words .LİC "* olarak adlandırıyor. Lisans dosyasını tarayıcını kullanarak indirir. Bu durumda, bazı tarayıcılar lisans dosyasını XML olarak tanır ve buna .xml uzantısını ekler, böylece bilgisayarınızda bulunan tam dosya adı * "Aspose.Words.lic.XML"* olur.

Microsoft Windows bilinen dosya türlerinin uzantılarını gizlemek için yapılandırıldığında (üzgünce bu çoğu Windows yüklemesinde varsayılan olarak), lisans dosyası * "Aspose.Words " olarak görünecektir. LIC"* Windows "Exploreri. Bunun gerçek dosya adı olduğunu ve onu **SetLicense** geçirmek için * "Aspose.Words ".LIC "* çağırabileceğinizi düşünebilirsiniz, ancak böyle bir dosya yok, bu yüzden istisna.

Sorunu çözmek için, görünmez .xml uzantısını kaldırmak için dosya adını yeniden adlandırın. Genişletme gizle" seçeneğini de devre dışı bırakmanızı öneririz Microsoft Windows.

## Birden Fazla Aspose Ürünü Kullanımı

Uygulamada birden fazla Aspose ürünü kullanıyorsanız, örneğin Aspose.Words ve `Aspose.Cells`, birkaç yararlı ipucu burada

* Her bir Aspose ürün için Lisansı ayrı ayrı ayarlayın. Tüm bileşenleri kapsayan tek bir lisans dosyanız olsa bile, örneğin 'Aspose.Total.lic', uygulamanızda kullandığınız her Aspose ürünü için ayrı ayrı **SetLicense**'ı çağırmanız gerekir.
* Tamamen Kalifikeli Lisans Sınıf Adını Kullanın Her Aspose ürünü kendi ad alanlarında bir `License` sınıfına sahiptir. Örneğin, Aspose.Words **com.aspose.words.License** ve `Aspose.Cells`'nin com.aspose.cells.License sınıfı vardır. Tamamen nitelikli sınıf adı kullanmak, hangi lisansın hangi ürüne uygulandığını kafa karışıklığına neden olmaktan kaçınmanıza olanak tanır.
