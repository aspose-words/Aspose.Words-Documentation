---
title: Lisanslama ve Abonelik
second_title: .NET için Aspose.Words
articleTitle: Lisanslama ve Abonelik
linktitle: Lisanslama ve Abonelik
description: ".NET için Aspose.Words, farklı satın alma planları sağlar veya C#'deki Lisanslama ve Abonelik ilkelerini kullanarak değerlendirme için Ücretsiz Deneme ve 30 günlük Geçici Lisans sunar."
type: docs
weight: 55
url: /tr/net/licensing/
timestamp: 2024-10-24-11-44-28
---

Bazen sistemi daha iyi incelemek için kodun içine mümkün olduğunca hızlı dalmak istersiniz. Bunu kolaylaştırmak için Aspose.Words, farklı satın alma planları sunar veya değerlendirme için Ücretsiz Deneme ve 30 günlük Geçici Lisans sunar.

{{% alert color="primary" %}}

Ürünlerimizi nasıl değerlendireceğiniz, uygun şekilde lisanslayacağınız ve satın alacağınız konusunda size yol gösterecek bir dizi genel politika ve uygulamanın bulunduğunu unutmayın. Bunları [Satın Alma Politikaları ve SSS](https://purchase.aspose.com/policies/) bölümünde bulabilirsiniz.

{{% /alert %}}

## Ücretsiz Deneme veya Geçici Lisans

Aspose.Words, geliştiricilerin satın almadan önce deneyebileceği inanılmaz bir yazılımdır.

### Ücretsiz deneme

Değerlendirme sürümü satın alınan sürümle aynıdır; lisansı uygulamak için birkaç satır kod eklediğinizde [Deneme sürümü](https://releases.aspose.com/words/) basitçe lisanslanır.

Belirtilen lisansa sahip olmayan Aspose.Words Deneme sürümü, tam ürün işlevselliği sağlar, ancak yükleme ve kaydetme sonrasında belgenin üst kısmına değerlendirmeli bir filigran ekler ve maksimum belge boyutunu birkaç yüz paragrafla sınırlar.

### Geçici Lisans

Aspose.Words'i Deneme sürümünün sınırlamaları olmadan test etmek istiyorsanız 30 günlük Geçici Lisans da talep edebilirsiniz. Daha fazla ayrıntı için [Geçici Lisans Alın](https://purchase.aspose.com/temporary-license/) sayfasına bakın.

## Satın Alınan Lisans

Satın aldıktan sonra lisans dosyasını uygulamanız veya lisans dosyasını gömülü kaynak olarak eklemeniz gerekir. Bu bölümde bunun nasıl yapılabileceğine ilişkin seçenekler açıklanmakta ve ayrıca bazı genel sorulara ilişkin yorumlar da verilmektedir.

{{% alert color="primary" %}}

Lisansı ayarlamanız gerekir:

* uygulama alanı başına yalnızca bir kez

* başka herhangi bir Aspose.Words sınıfını kullanmadan önce

{{% /alert %}}

{{% alert color="primary" %}}

Fiyatlandırma bilgilerini [Fiyatlandırma bilgisi](https://purchase.aspose.com/pricing/words/family/) sayfasında bulabilirsiniz.

{{% /alert %}}

### Satın Alınan Lisansınızın Korunması

Lisans satın aldıktan sonra lisans dosyanızı korumak için [Satın Alınan Lisansınızın Korunması](https://purchase.aspose.com/orders/protecting-your-license-file) sayfasındaki bilgileri dikkatlice okumanız gerekmektedir. Lütfen bu sayfanın yalnızca ücretli bir lisansınız varsa görüntülenebileceğini unutmayın.

### Lisans Başvuru Seçenekleri

Lisanslar çeşitli konumlardan uygulanabilir:

* Açık yol
* *Aspose.Words.dll* dosyasını içeren klasör
* *Aspose.Words.dll* adlı derlemeyi içeren klasör
* Giriş derlemesini içeren klasör (*.exe*'iniz)
* Derlemedeki gömülü bir kaynağa *Aspose.Words.dll* adı verilir
* Ölçülü Lisans olarak – yeni bir lisanslama mekanizması

Uygulamada *Aspose.Words.dll*'e başvurduğunuzda, kitaplık çıktı dizininize kopyalanır (bu girişin özelliklerinde *Yerel Kopyala* false olarak ayarlanmadığı sürece). Genellikle lisans ayarlamanın en kolay yolu, lisans dosyasını *Aspose.Words.dll* ile aynı klasöre yerleştirmek ve yol olmadan yalnızca dosya adını belirtmektir.

{{% alert color="primary" %}}

Bir bileşeni lisanslamak için [SetLicense](https://reference.aspose.com/words/tr/net/aspose.words/license/setlicense/#setlicense) yöntemini kullanın.

**SetLicense**'i birden çok kez çağırmak zararlı değildir, yalnızca işlemci zamanını boşa harcar.

[SetMeteredKey](https://reference.aspose.com/words/tr/net/aspose.words/metered/setmeteredkey/)'i birden çok kez çağırmak da zararlı değildir; yalnızca işlemci zamanını boşa harcar ve tüketimin uygunsuz şekilde birikmesine neden olabilir.

{{% /alert %}}

#### Bir Dosya veya Akış Nesnesini Kullanarak Lisans Uygulayın

Uygulamanızı geliştirirken Aspose.Words sınıflarını kullanmadan önce başlangıç kodunuzda **SetLicense**'i çağırın.

##### Bir Dosyadan Lisans Yükleme

[SetLicense](https://reference.aspose.com/words/tr/net/aspose.words/license/setlicense/) yöntemini kullanarak, lisans dosyasını daha fazla kullanmak üzere gömülü kaynaklarda veya montaj klasörlerinde bulmayı deneyebilirsiniz.

Aşağıdaki kod örneği, bir lisansın bir klasörden nasıl başlatılacağını gösterir:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-file.cs" >}}

##### Akış Nesnesinden Lisans Yükleme

Aşağıdaki kod örneği, başka bir [SetLicense](https://reference.aspose.com/words/tr/net/aspose.words/license/setlicense/) yöntemi kullanılarak bir akıştan lisansın nasıl başlatılacağını gösterir:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-stream.cs" >}}

#### Lisans Dosyasını Katıştırılmış Kaynak Olarak Ekleme

Bir lisansı uygulamanızla birlikte paketlemenin ve kaybolmayacağından emin olmanın güzel bir yolu, onu Aspose.Words'i çağıran derlemelerden birine gömülü bir kaynak olarak eklemektir. Bir dosyayı katıştırılmış kaynak olarak eklemek için şu adımları izleyin:

1. Visual Studio'te "**Dosya | Mevcut Öğeyi Ekle…**" menüsünü kullanarak .lic dosyasını projeye ekleyin.
2. Solution Explorer'da dosyayı seçin ve Özellikler penceresinde "**Gömülü Kaynak için Eylem Oluşturun"**'i ayarlayın.
3. Kodunuzda, kaynak dosyasının yalnızca kısa adını ileten **SetLicense**'i çağırın.

#### Ölçülü Lisansı Uygula

Aspose.Words, geliştiricilerin ölçülü bir anahtar uygulamasına olanak tanır. Bu yeni bir lisanslama mekanizmasıdır.

Yeni lisanslama mekanizması mevcut lisanslama yöntemiyle birlikte kullanılacaktır. API özelliklerinin kullanımına göre faturalandırılmak isteyen müşteriler, Ölçülü Lisanslamayı kullanabilir.

Bu tür bir lisansı almak için gerekli tüm adımları tamamladıktan sonra lisans dosyasını değil, anahtarları alacaksınız. Bu ölçülü anahtar, bu amaç için özel olarak tanıtılan [Metered](https://reference.aspose.com/words/tr/net/aspose.words/metered/) sınıfı kullanılarak uygulanabilir.

Bu lisanslama yönteminin tüketimi düzgün bir şekilde biriktirip bize raporlaması için **SetMeteredKey** yöntemini sık sık çağırmayın. Sadece Aspose.Words kitaplığını başlatın, **SetMeteredKey**'i bir kez arayın, ardından kitaplığı örneklenmiş halde bırakın ve yeniden kullanın.

Aşağıdaki kod örneği, sınırlı genel ve özel anahtarların nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-metered-license.cs" >}}

Normalde, uygulama başlangıcında ölçülü lisansı bir kez uygulamak yeterlidir. Ancak ölçülü lisanslama mekanizmasının Aspose sunucularıyla 24 saat boyunca iletişim kuramaması durumunda Aspose.Words lisanslı moddan çıkıp değerlendirme moduna geçecektir. Bu tür bir durumu önlemek için lisans durumunu düzenli olarak kontrol etmelisiniz; Aspose.Words değerlendirme moduna geçerse lütfen ölçülü lisansı tekrar uygulayın.

{{% alert color="primary" %}}

Metered lisansının doğru kullanımı için istikrarlı bir İnternet bağlantınızın olması gerektiğini lütfen unutmayın; çünkü Metered mekanizması, doğru hesaplamalar için hizmetlerimizle sürekli etkileşimi gerektirir. Daha fazla ayrıntı için [Ölçülü Lisanslama SSS](https://purchase.aspose.com/faqs/licensing/metered/) bölümüne bakın.

{{% /alert %}}

### Lisans Dosyasının Adını Değiştirme

Lisans dosya adının "Aspose.Words.LIC" olması zorunlu değildir. İsteğinize göre yeniden adlandırabilir ve uygulamanızda lisans ayarlarken bu adı kullanabilirsiniz.

### "Lisans dosya adı bulunamıyor" İstisnası

Bir lisans satın alıp indirdiğinizde Aspose web sitesi lisans dosyasına *"Aspose.Words.LIC"* adını verir. Lisans dosyasını tarayıcınızı kullanarak indirirsiniz. Bu durumda, bazı tarayıcılar lisans dosyasını XML olarak tanır ve buna .xml uzantısını ekler; böylece bilgisayarınızdaki tam dosya adı *"Aspose.Words.lic.XML"* olur.

Microsoft Windows, bilinen dosya türleri için uzantıları gizleyecek şekilde yapılandırıldığında (maalesef bu, çoğu Windows kurulumunda varsayılandır), lisans dosyası Windows Explorer'da *"Aspose.Words.LIC"* olarak görünecektir. Muhtemelen bunun gerçek dosya adı olduğunu düşünecek ve onu *"Aspose.Words.LIC"* ileterek **SetLicense**'i çağıracaksınız, ancak böyle bir dosya yoktur, dolayısıyla istisnadır.

Sorunu çözmek için, görünmez .xml uzantısını kaldıracak şekilde dosyayı yeniden adlandırın. Ayrıca Microsoft Windows'deki "uzantıları gizle" seçeneğini devre dışı bırakmanızı da öneririz.

## Birden Fazla Aspose Ürününü Kullanmak

Uygulamanızda Aspose.Words ve `Aspose.Cells` gibi birden fazla Aspose ürünü kullanıyorsanız işte size birkaç yararlı ipucu:

* Her Aspose ürünü için Lisansı ayrı ayrı ayarlayın. Tüm bileşenler için tek bir lisans dosyanız olsa bile, örneğin "Aspose.Total.lic", yine de uygulamanızda kullandığınız her Aspose ürünü için **SetLicense**'i ayrı ayrı aramanız gerekir.
* Tam Nitelikli Lisans Sınıfı Adını kullanın. Her Aspose ürününün kendi ad alanında bir **License** sınıfı vardır. Örneğin Aspose.Words'nin [Aspose.Words.License](https://reference.aspose.com/words/tr/net/aspose.words/license/)'i, `Aspose.Cells`'in ise `Aspose.Cells`.License sınıfı vardır. Tam nitelikli sınıf adını kullanmak, hangi lisansın hangi ürün için geçerli olduğu konusundaki karışıklığı önlemenizi sağlar.
