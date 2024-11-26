---
title: Lisanslama ve Abonelik
second_title: Aspose.Words için C++
articleTitle: Lisanslama ve Abonelik
linktitle: Lisanslama ve Abonelik
description: "Aspose.Words С ++ için farklı satın alma planları sunar veya Lisanslama ve Abonelik politikalarını kullanarak değerlendirme için Ücretsiz Deneme ve 30 günlük Geçici Lisans sunar."
type: docs
weight: 60
url: /tr/cpp/licensing/
timestamp: 2024-10-24-11-44-28
---

Bazen sistemi daha iyi incelemek için koda mümkün olduğunca çabuk dalmak istersiniz. Bunu kolaylaştırmak için Aspose.Words farklı satın alma planları sunar veya Ücretsiz Deneme Sürümü ve değerlendirme için 30 günlük Geçici Lisans sunar.

{{% alert color="primary" %}}

Ürünlerimizi nasıl değerlendireceğiniz, uygun şekilde lisanslayacağınız ve satın alacağınız konusunda size rehberlik eden bir dizi genel politika ve uygulama olduğunu unutmayın. Onları şurada bulabilirsiniz: [Satın Alma Politikaları ve FAQ](https://purchase.aspose.com/policies/) bölüm.

{{% /alert %}}

## Ücretsiz Deneme veya Geçici Lisans

Aspose.Words, geliştiricilerin satın almadan önce deneyebilecekleri inanılmaz bir yazılımdır.

### Ücretsiz Deneme

Değerlendirme sürümü satın alınanla aynıdır – [Deneme sürümü](https://releases.aspose.com/words/) lisansı uygulamak için birkaç satır kod eklediğinizde basitçe lisanslanır.

Belirtilen lisansa sahip olmayan Aspose.Words deneme sürümü, tam ürün işlevselliği sağlar, ancak yüklenip kaydedildiğinde belgenin en üstüne bir değerlendirme filigranı ekler ve maksimum belge boyutunu birkaç yüz paragrafla sınırlar.

### Geçici Lisans

Deneme sürümünün sınırlamaları olmadan Aspose.Words 'yi test etmek isterseniz, 30 günlük Geçici bir Lisans da isteyebilirsiniz. Daha fazla ayrıntı için bkz. [Geçici Bir Lisans Alın](https://purchase.aspose.com/temporary-license/) sayfa.

## Satın Alınan Lisans

Satın aldıktan sonra, lisans dosyasını uygulamanız veya lisans dosyasını katıştırılmış bir kaynak olarak eklemeniz gerekir. Bu bölümde bunun nasıl yapılabileceğine dair seçenekler açıklanır ve ayrıca bazı yaygın sorular hakkında yorumlar yapılır.

{{% alert color="primary" %}}

Lisansı ayarlamanız gerekir:

* uygulama alanı başına yalnızca bir kez
* başka Aspose.Words sınıfları kullanmadan önce

{{% /alert %}}

{{% alert color="primary" %}}

Fiyatlandırma bilgilerini şu adreste bulabilirsiniz: [Fiyat Bilgisi](https://purchase.aspose.com/pricing/words/family/) sayfa.

{{% /alert %}}

### Satın Aldığınız Lisansın Korunması

Bir lisans satın aldıktan sonra, sayfadaki bilgileri dikkatlice okumanız gerekir [Satın Aldığınız Lisansın Korunması](https://purchase.aspose.com/orders/protecting-your-license-file) lisans dosyanızı korumak için. Lütfen bu sayfanın yalnızca ücretli bir lisansınız varsa görüntülenebileceğini unutmayın.

### Lisans Başvuru Seçenekleri

Lisanslar çeşitli konumlardan uygulanabilir:

* Açık yol
* `Aspose.Words_\*.dll` dosyasını içeren klasör
* `Aspose.Words_\*.dll` olarak adlandırılan derlemeyi içeren klasör
* Giriş derlemesini içeren klasör (`.exe` dosyanız)
* Derlemede katıştırılmış bir kaynağa `Aspose.Words_\*.dll` adı verilir

Genellikle bir lisans ayarlamanın en kolay yolu, lisans dosyasını `Aspose.Words_\*.dll` ile aynı klasöre yerleştirmek ve yol olmadan yalnızca dosya adını belirtmektir.

{{% alert color="primary" %}}

Bir bileşeni lisanslamak için [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) yöntemini kullanın.

**SetLicense** 'ı birden çok kez aramak zararlı değildir, yalnızca işlemci zamanını boşa harcar.

{{% /alert %}}

#### Bir Dosya veya Akış Nesnesi Kullanarak Lisans Uygulayın

Uygulamanızı geliştirirken, Aspose.Words sınıflarını kullanmadan önce başlangıç kodunuzda **SetLicense** öğesini çağırın.

##### Bir Dosyadan Lisans Yükleme

[SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) yöntemini kullanarak, daha fazla kullanım için lisans dosyasını katıştırılmış kaynaklarda veya derleme klasörlerinde bulmayı deneyebilirsiniz.

Aşağıdaki kod örneği, bir klasörden lisansın nasıl başlatılacağını gösterir:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-file.h" >}}

##### Bir Akış Nesnesinden Lisans Yükleme

Aşağıdaki kod örneği, başka bir [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) yöntemi kullanarak bir akıştan lisansın nasıl başlatılacağını gösterir:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-stream.h" >}}

#### Lisans Dosyasını Katıştırılmış Bir Kaynak Olarak Ekleyin

Uygulamanızla birlikte bir lisansı paketlemenin ve kaybolmayacağından emin olmanın düzgün bir yolu, lisansı gömülü bir kaynak olarak eklemektir. Kaynakların nasıl yerleştirileceği ve kullanılacağı, hedef platformunuza bağlıdır.

##### Windows

Lisansı aşağıda gösterildiği gibi bir kaynak olarak eklediğinizi varsayalım.

```
resource.h
#define IDR_ASPOSE_WORDS_LIC            101
```

```
resource.rc
IDR_ASPOSE_WORDS_LIC RCDATA "Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

Kaynak dosyalarıyla nasıl çalışılacağı hakkında şu adresten bilgi edinebilirsiniz: [Kaynak Dosyalarıyla Çalışma](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) sayfa.

{{% /alert %}}

Aşağıdaki kod örneği, [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) yöntemini kullanarak katıştırılmış bir kaynaktan bir lisansın nasıl başlatılacağını gösterir:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-windows.h" >}}

##### Linux

Linux üzerindeki kaynakları bir yürütülebilir dosyaya katıştırmanın benzer bir yolu vardır.

{{% alert color="primary" %}}

Daha fazla bilgi için bkz. [GCC kullanarak kaynakları yürütülebilir dosyaya gömme](https://stackoverflow.com/questions/4158900/embedding-resources-in-executable-using-gcc/4158997#4158997).

{{% /alert %}}

Aşağıdaki kod örneği, [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) yöntemini kullanarak katıştırılmış bir kaynaktan lisansın nasıl başlatılacağını gösterir:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-linux.h" >}}

### Lisans Dosyası Adını Değiştirme

Lisans dosya adının "Aspose.Words.LIC" olması gerekmez. Beğeninize göre yeniden adlandırabilir ve uygulamanızda bir lisans ayarlarken bu adı kullanabilirsiniz.

### "Lisans dosya adı bulunamıyor" İstisnası

Bir lisans satın alıp karşıdan yüklediğinizde, Aspose web sitesi lisans dosyasını *"Aspose.Words.LIC"* adlandırır. Lisans dosyasını tarayıcınızı kullanarak karşıdan yüklersiniz. Bu durumda, bazı tarayıcılar lisans dosyasını XML olarak tanır ve ekler.xml uzantısıdır, böylece bilgisayarınızdaki tam dosya adı *"Aspose.Words.lic.XML"* olur.

Microsoft Windows bilinen dosya türleri için uzantıları gizleyecek şekilde yapılandırıldığında (maalesef çoğu Windows kurulumda bu varsayılandır), lisans dosyası Windows Explorer içinde *"Aspose.Words. LIC"* olarak görünecektir. Muhtemelen bunun gerçek dosya adı olduğunu düşünecek ve **SetLicense** 'ü *"Aspose.Words.LIC"* geçirerek arayacaksınız, ancak böyle bir dosya yok, dolayısıyla istisna.

Sorunu çözmek için, görünmeyeni kaldırmak üzere dosyayı yeniden adlandırın.xml uzantısı. Microsoft Windows içindeki "uzantıları gizle" seçeneğini de devre dışı bırakmanızı öneririz.

## Birden Fazla Aspose Ürünü Kullanma

Uygulamanızda Aspose.Words ve `Aspose.Cells` gibi birden fazla Aspose ürünü kullanıyorsanız, işte birkaç yararlı ipucu:

* Her Aspose ürününün Lisansını ayrı ayrı ayarlayın. Tüm bileşenler için tek bir lisans dosyanız olsa bile, örneğin "Aspose.Total.lic", uygulamanızda kullandığınız her Aspose ürünü için **SetLicense**'i ayrı ayrı aramanız gerekir.
* Tam Nitelikli Lisans Sınıfı Adını kullanın. Her Aspose ürününün kendi ad alanında bir **License** sınıfı vardır. Örneğin, Aspose.Words [Aspose.Words.License](https://reference.aspose.com/words/cpp/aspose.words/license/) değerine ve `Aspose.Cells` `Aspose.Cells` değerine sahiptir.Lisans sınıfı. Tam nitelikli sınıf adını kullanmak, hangi lisansın hangi ürün için geçerli olduğu konusunda kafa karışıklığını önlemenizi sağlar.
