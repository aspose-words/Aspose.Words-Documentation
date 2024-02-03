---
title: Kurulum
second_title: .NET için Aspose.Words
articleTitle: Kurulum
linktitle: Kurulum
description: "Manage NuGet Packages veya Package Manager Console gibi Visual Studio araçlarını ve MSI yükleyicisini kullanarak .NET için Aspose.Words'i yükleyin. C#'de ayarlanan Full Trust izinlerini kullanın."
type: docs
weight: 10
url: /tr/net/installation/
---

Başlamadan önce makinenizin [sistem gereksinimleri](/words/tr/net/system-requirements/)'i karşıladığından emin olun.

Bu makalede, bilgisayarınıza .NET için Aspose.Words'in nasıl kurulacağı açıklanmaktadır.

## Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget} kullanarak .NET için Aspose.Words'i Yükleme veya Güncelleme

NuGet, [.NET için Aspose.Words](https://www.nuget.org/packages/Aspose.Words/) API'lerini indirip kurmanın en kolay yoludur. Bunu yapmak için şu adımları izleyin:

1. Paket yöneticisini açmak için menüden *Microsoft Visual Studio* ve *Manage NuGet Packages*'i açın
2. İstediğiniz Aspose API'i bulmak için "aspose" veya "aspose.words" ifadesini arayın<br>
   <img src="/words/net/installation/aspose-words-nuget.png" alt="varsayım-kelimeler-nuget" style="width:800px"/>
3. İstediğiniz Aspose API'i seçin ve "Yükle"ye tıklayın

Seçilen API indirilecek ve projenize başvurulacaktır.

Ayrıca *Manage NuGet Packages* kullanarak .NET için Aspose.Words'i istediğiniz sürüme güncelleyebilirsiniz.

## Package Manager Console kullanarak Aspose.Words'i yükleyin veya güncelleyin

*Package Manager Console*'i kullanarak .NET API'leri için Aspose.Words'i de yükleyebilir veya güncelleyebilirsiniz. Bunu yapmak için şu adımları izleyin:

1. Paket yöneticisi konsolunu açmak için menüden *Microsoft Visual Studio* ve *Package Manager Console*'i açın<br>
   <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-güncelleme" style="width:600px"/>
2. En son tam sürümü uygulamanıza yüklemek için `Install-Package Aspose.Words` komutunu yazın ve Enter tuşuna basın<br>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br>
   {{% alert color="primary" %}}Ayrıca, düzeltmeler dahil en son sürümün de yüklenmesi gerektiğini belirtmek için komuta `-prerelease` son ekini ekleyebilirsiniz.{{% /alert %}}
3. İndirdikten sonra onay mesajlarını göreceksiniz<br>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/><br>
   {{% alert color="primary" %}}Eğer [EULA'yı öner](https://about.aspose.com/legal/eula/)'ye aşina değilseniz, URL.{{% /alert %}}'de atıfta bulunulan lisansı okumanız tavsiye edilir
4. Artık Aspose.Words'in sizin için başvurunuza başarıyla eklendiğini ve başvurulduğunu görebilirsiniz.<br>
   <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-words-nuget-referanslar" style="width:400px"/>

*Package Manager Console*'te, Aspose.Words paketindeki güncellemeleri kontrol etmek ve varsa bunları yüklemek için `Update-Package Aspose.Words` komutunu da kullanabilirsiniz. En son sürümü güncellemek için `-prerelease` son ekini de ekleyebilirsiniz.

## Yükleyiciyi kullanarak .NET için Aspose.Words'i yükleyin

.NET için Aspose.Words, MSI yükleyicisini [indirilenler bölümü](https://releases.aspose.com/words/)'den doğrudan indirerek kurulabilir.

{{% alert color="primary" %}}

Yükleyiciyi indirmek için oturum açmalısınız. Henüz kayıt olmadıysanız ücretsiz kayıt olabilirsiniz.

{{% /alert %}}

.NET için Aspose.Words'i yüklemek için şu adımları izleyin:

1. [indirilenler bölümü](https://releases.aspose.com/words/)'den `Aspose.Words_`{LatestVersion}.msi dosyasını indirin
2. İndirilen dosyaya çift tıklayın, böylece kurulum sihirbazını başlatın, kurulum sihirbazı talimatlarını izleyin<br>
   <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-words-kurulum-1" style="width:500px"/>
3. Kurulum sihirbazı kurulumu tamamladığında gerekli dosyalar, belirtilen klasör yolundaki klasörde mevcut olacaktır.<br>
   <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-words-kurulum-4" style="width:500px"/>
4. Çözümünüzü/projenizi Visual Studio'te açın
5. *Solution Explorer*'da projenize sağ tıklayın ve referansı kurulu derlemelere ekleyin
6. .NET yüklü derlemeler için Aspose.Words, Derlemeler bölümü altındaki uzantılarda görünecektir; yalnızca gerekli DLL bileşenini seçin<br>
   <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-words-kurulum-5" style="width:800px"/>
7. Son olarak Tamam'a tıklayın

## Paylaşılan Server Ortamında Çalıştırırken Dikkat Edilmesi Gerekenler

Tüm Aspose .NET bileşenlerinin *Full Trust* izin seti ile çalıştırılması önerilir. Bunun nedeni, Aspose .NET bileşeninin bazen yazı tiplerini okumak gibi sanal dizin dışındaki yerlerde bulunan kayıt defteri ayarlarına ve dosyalara erişim gerektirmesidir. Ayrıca, `Aspose.NET` bileşenleri temel .NET sistem sınıflarını temel alır ve bazılarının çalışması bazı durumlarda *Full Trust* iznini de gerektirir.

Farklı şirketlere ait birden fazla uygulamayı barındıran İnternet Servis Sağlayıcıları çoğunlukla *Orta Güven* güvenlik düzeyini uygular. .NET 2.0 durumunda böyle bir güvenlik düzeyi, Aspose.Words'nin düzgün performans gösterme yeteneğini etkileyebilecek aşağıdaki kısıtlamaları getirebilir:

-**RegistryPermission** mevcut değil. Bu, belgeleri işlerken yüklü yazı tiplerini numaralandırmak için gereken kayıt defterine erişemeyeceğiniz anlamına gelir.
- **FileIOPermission** sınırlıdır. Bu, yalnızca uygulamanızın sanal dizin hiyerarşisindeki dosyalara erişebileceğiniz anlamına gelir. Bu aynı zamanda dışa aktarma sırasında yazı tiplerinin okunamayacağı anlamına da gelebilir.

Yukarıda belirtilen bu nedenlerden dolayı Aspose.Words'in Full Trust izinleriyle çalıştırılması tavsiye edilir. Orta güven ile farklı görevleri gerçekleştirirken kitaplık özelliklerinden bazılarının çalıştığını, bazılarının ise örneğin görüntü oluşturmada çalışmadığını görebilirsiniz. Bu, GDI+ görüntü işleme çağrılarıyla ilgili olabilir.
