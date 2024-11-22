---
title: TrueType Yazı Konumunu Java'da Belirtin
second_title: Aspose.Words için Java
articleTitle: TrueType Yazı Tiplerini Belirt
linktitle: TrueType Yazı Tiplerini Belirt
description: "Çeşitli TrueType yazı tipi kaynaklarını belirtin: sistem klasörü, kullanıcı kaynakları, akıştan yazı tipleri yükleme, dosya sistemi veya bellekte Java kullanarak."
type: docs
weight: 30
url: /tr/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Bu konu, Aspose.Words'in TrueType yazı tiplerini ararken varsayılan davranışını açıklar, işletim sistemi spesifik farklılıkları içerir ve kullanıcı yazı tipi kaynaklarını nasıl belirteceğinizi gösterir.

The [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) sınıfı çeşitli yazı kaynaklarını belirtmek için kullanılır. Sınıfın birden fazla uygulaması var: **FontSourceBase**

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

Bazı sınıflar için uygulama detayları aşağıda açıklanmıştır.

## Sistemden Yazı Tiplerini Yükle {#loading-fonts-from-system}

Varsayılan olarak her zaman kullanılan özel bir [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) sınıfı var. Bu sistemde yüklü tüm TrueType yazı tiplerini temsil eder. Bu nedenle, **SystemFontSource** ve diğer gereken kaynaklarla bir kaynak listesi oluşturmak mümkündür:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

A single instance of the **SystemFontSource** class varsayılan olarak [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) 'de tanımlanır. Farklı işletim sistemlerinde yazı tipleri farklı yerlerde olabilir. Ancak her belge için bir **FontSettings** örneği kullanmak en ideal çözüm değildir. Çoğunlukla durumlarda [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) kullanmak yeterli olmalı.

Per-belge örnekleri yalnızca farklı belgeler için farklı yazı tipleri kullanmak istendiğinde gereklidir ki bu da nadiren bir durumdur. Birçok **FontSettings** örneği performansın azalmasına neden olur çünkü bunları önbellek paylaşmazlar.

### Where Aspose.Words Looks for TrueType Fonts on Windows

Çoğu durumda, Windows kullanıcıları eksik yazı tipleri veya hatalı düzenler ile önemli sorunlarla karşılaşmazlar. Tipik olarak Aspose.Words bir belgeyi tarar ve yazı tipine ait bağlantı ile karşılaştığında yazı tipi verilerini sistem klasöründen başarıyla alır.

On Windows, Aspose.Words tüm kullanılabilir yazı tiplerini %windir%\Fonts klasöründen ilk alır. Bu ayar sizin çoğu zaman için işe yarayacaktır. Sadece ihtiyacın olduğunda kendi yazı tipleri klasörlerini belirtirsin. Aspose.Words ayrıca, HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts kayıt anahtarında kayıtlı ekstra yazı tiplerini de arar. Ayrıca Windows 10 geçerli kullanıcı için yazı tiplerinin yüklenmesini sağlar. Fontlar %userprofile%\AppData\Local\Microsoft\Windows\Fonts klasörüne yerleştirilir ve ayrıca HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts kayıt defterinde belirtilir, burada Aspose.Words bu yazı tiplerini arar.

Bir belge gömülü yazı tipleri içeriyorsa, Aspose.Words ilgili yazı tipi verilerini belgeden okuyabilir ve bunları belgenin düzenini oluşturmak için kullanabilir. Belgelere ayrıca sistem klasörlerinde olmayan yazı tiplerine bağlantılar da içerebilir ve bu durumda aşağıdaki senaryolar geçerlidir:

- Kullanıcıların yazı tipleri için yeni kaynak kurmaları **FontSettings** sınıfı aracılığıyla mümkün olabilir
- Aspose.Words bir benzer yazı tipini eksik olanla değiştirmeye çalışabilir

### Non-Windows Sistemlerdeki Yazı Tipleri

Aspose.Words sistem yazı tipleri klasörlerinde yazı tiplerini arayacaktır. Bu klasörlerin bir listesi [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) yöntemi ile görülebilir. Desteklenen yazı tipleri bulunamazsa, Aspose.Words yerleşik varsayılan yazı tipi Fanwood.ttf'yi kullanacaktır.

Tasarım ölçümleri Windows ve non-Windows OS farklı olduğundan, Aspose.Words bir benzer yazı tipini bulmak ve orijinaline benzer bir düzen oluşturmak için mümkün olan her şeyi yapar. Ancak bu her zaman mümkün değildir. Bu durumlarda, **FontSettings** sınıfı özel yazı tiplerini veya değiştirme kurallarını eklemek için kullanılmalıdır.

#### Where Aspose.Words Looks for TrueType Fonts on Linux

Farklı Linux dağıtımlar yazı tiplerini farklı klasörlerde saklayabilir. Aspose.Words birkaç yerde yazı tipleri arar. Varsayılan olarak Aspose.Words, tüm aşağıdaki konumlarda yazı tiplerini arar: `/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts`Bu varsayılan davranış çoğu Linux dağıtımı için çalışacaktır, ancak bu durumda true tipi yazı tiplerinin konumunu açıkça belirtmeniz gerekir. Bunu yapmak için, Linux dağıtımda TrueType yazı tiplerinin nerede kurulduğunu bilmeniz gerekir.

#### Mac OS X'de Where Aspose.Words Looks for TrueType Fonts

Aspose.Words Mac OS X'te TrueType yazı tiplerinin standart konumu olan /Library/Fonts klasöründe yazı tipleri arar. Bu ayar sizin için çoğu zaman işe yarayacak olsa da, ihtiyacınız olduğunda kendi yazı tipiniz klasörlerinizi belirtmeniz gerekebilir.

#### TrueType Yazı Tipleri Android üzerinde

On Android tipografi iş akışı Typeface sınıfında kapsüllendi.
Tipografilerde beş çeşit vardır ve her tipografi türü benzer yazı ailelerinin bir grubunu temsil eder:

- DEFAULT
- DEFAULT_BOLD
-MONOSPACE
- SANS_SERIF
- SERİF

Örneğin, Android'in [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) yapılandırma dosyasına göre, "times" "serif" ailesine ait olduğundan NotoSerif-Regular.ttf, "times" istendiğinde kullanılacaktır:

**Fontlar.xml**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

Benzer yazı tiplerini aramak için daha önce tarif edilen stratejiler kullanılır

Onların yanı sıra, Aspose.Words platformu için Android'in kendi değiştirme listesi vardır.

Belgenin PMingLiU-ExtB yazı tipini içerdiğini söyleyelim. Öncelikle, Aspose.Words gerekli yazı tipini sistem kaynaklarında arıyor.

Varsayılan liste Android yazı tipleri klasörlerinin:

- /system/fonts
- /system/font
- /data/fonlar

The Aspose.Words kullanıcı tarafından tanımlanan kaynaklardan geçer ve aşağıdaki yöntem kullanılarak ayarlanır:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

Açık bir değiştirme belirtilmişse, Aspose.Words eksik yazı tipini kullanıcının önerisiyle değiştirir:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Eğer kurallardan hiçbirisi işe yaramadı," Aspose.Words" iç eki değiştirme tablosunu kontrol et. Tablo iyi bir uyum hakkında bilgi içeriyorsa yazı tipi değiştirilir. Bizim durumumuzda Aspose.Words `Typeface.SERIF`'i seçer Ama tablo istediği yazı tipini bilmiyorsa Aspose.Words özel bir MS Word kuralına veya Panose uzayındaki en yakın mesafeye dayalı bir yazı tipi seçer.

#### TrueType Yazılar .NET Core ve Xamarin üzerinde

.NET Core ve Xamarin için, Aspose.Words'ın Java sürümü için aynı kural geçerlidir. Varsayılan olarak, uygulamayı çalıştıran platformun tüm sistem yazı tipleri mevcuttur.
Aramanın gerçekleştirileceği klasörlerin listesi, metod çağrılmasıyla bulunabilir:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Klasörden yazı tiplerini yükle {#loading-fonts-from-folder}

İşlemdeki belge sistemde olmayan yazı tiplerine bağlantılar içeriyorsa veya bunları sistem klasörüne eklemek istemiyorsanız veya izinlere sahip değilseniz, en iyi çözüm kendi yazı tiplerinizi içeren bir klasör eklemek ve bunu `SetFontsSources` yöntemini kullanmak. Bu, sistem kaynağını bir kullanıcı kaynağıyla değiştirecek. Aspose.Words artık kayıt defterinde veya Windows\Font klasöründe yazı tiplerini aramayacak ve bunun yerine belirtilen klasörlerdeki (ler) yazı tiplerini taramayacaktır. `GetFontSources` yöntemi, karşılık gelen değerleri döndürecektir.

### Bir veya Birden Çok Yazı Klasörünü Belirtin

The [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) ve SetFontsFolders yöntemleri bir veya birkaç [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) örneklerini içeren **SetFontSources** yöntemi için kısayollar. Bu yöntemler, Aspose.Words'ün yazı tiplerini nerede araması gerektiğini göstermek için kullanılır. Bir klasör mevcut değilse veya erişilemiyorsa Aspose.Words bu klasörü sadece görmezden gelir. Kaynaklar dahil olmak üzere tüm klasörler yoksayılırsa, Aspose.Words varsayılan olarak Fanwood yazı tipini kullanacaktır.

Aşağıdaki örnek bir klasör veya kaynağın ayarlanmasını gösterir hangi Aspose.Words daha sonra yazı tiplerini görselleştirme veya gömme sırasında aramak için kullanılacaktır:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

Bu örnekten şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)'tan indirebilirsiniz.

{{% /alert %}}

Ek bir Boole parametresi, yazı tiplerinin tüm klasörlerde yinelemeli olarak taranıp taranmayacağını kontrol eder, bu nedenle belirtilen bir klasörün tüm alt klasörlerini tarar. Aşağıdaki örnek, render ederken veya yazı tiplerini gömerek birden fazla klasörde aramak için Aspose.Words'i nasıl ayarlayacağınızı göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)'tan indirebilirsiniz.

{{% alert color="primary" %}}

Öncelikleri not edin. Eğer farklı font kaynaklarında aynı aile adı ve stildeki fontlar varsa, o zaman Aspose.Words önceliği daha yüksek olan fonu kaynaklarından seçer. Öncelik" alanının açıklamasına aşağıya bak.

{{% /alert %}}

Sistem yazı tiplerini tamamen kullanmak istemiyorsanız, Aspose.Words onları görmezden gelmenizi ve sadece kendi yazı tiplerinizi kullanmanızı sağlar:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Öncelikli Mülk

[Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) özelliği farklı yazı kaynaklarında aynı aile adı ve stilde yazı tipleri olduğunda kullanılır. Bu durumda Aspose.Words öncelikli değere sahip kaynaklardan yazı tipini seçer. Örneğin sistem klasöründe yazı tipinin eski bir sürümü var ve müşteri aynı yazı tipinin yeni bir sürümünü özel bir klasöre ekledi.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Akıştan yazı tipleri yükle {#loading-fonts-from-stream}

Aspose.Words sağlar [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) sınıfı, akıştan yazı tiplerini yüklemeyi sağlayan. Akış yazı tipi kaynağını kullanmak için bir kullanıcı, **StreamFontSource** sınıfından türetilen bir sınıf oluşturmalı ve [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) yöntemine bir uygulama sağlamalıdır. The **OpenFontDataStream** yöntem birkaç kez çağrılabilir. İlk defa, Aspose.Words kullanılabilir yazı tiplerinin bir listesini elde etmek için sağlanan yazı tipi kaynaklarını tarar ve çağrılır. Daha sonra, dosya biçiminde kullanılıyorsa yazı tipinin verilerini ayrıştırmak ve bazı çıktı formatlarına gömmek için çağrılabilir. **StreamFontSource** faydalı olabilir çünkü yalnızca gerekli olduğunda yazı tipi verilerini yüklemesine izin verir ve bunu bellekte `FontSettings` yaşam süresi boyunca saklamaz.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)'ye bir alternatiftir çünkü her zaman bellekte bir akış yüklemek ve bunu **MemoryFontSource**'e geçirmek mümkündür. Fark şu ki, **MemoryFontSource** tüm zaman hafızada tutulur ve **StreamFontSource** talep üzerine yüklenir ve derhal ortadan kaldırılır. Ancak yukarıda açıklandığı gibi birkaç kez yüklenebilir. Bazı durumlarda **MemoryFontSource** tercih edilir ve diğerlerinde **StreamFontSource**'dir.

## Bir Yazı Arama Önbelleğini Kaydet ve Yükle

Bir yazı tipi ararken ilk kez, Aspose.Words kullanıcı tarafından belirtilen yazı tipi kaynaklarını yineleyecek ve bu kaynaklardan gelen verilere dayalı olarak bir yazı tipi arama önbelleği oluşturacaktır. Böylece, önbellek mevcut yazı tipleri hakkında bilgi biriktirir: yazı tipi ailesi, stil, tam yazı tipi adı ve diğerleri. Sonraki çağrılarda, Aspose.Words, arzu edilen yazı tipi adını kullanarak yazı tipinin önbelleğinde arama yapar, sonrasında belirtilen dosyaları ayrıştırarak yazı tipini kullanır.

Tüm mevcut yazı tiplerini ayrıştırmak için kullanılan prosedür oldukça zaman alıcıdır. Aspose.Words **FontSettings.SaveSearchCache** yöntemini kullanarak önbelleği kaydetmenize ve yüklemenize olanak tanır, böylece performans sorunu çözülür. Yani kullanıcı bir dosyadan önceden kaydedilmiş önbelleği yükleyebilir ve tüm mevcut yazı tiplerini ayrıştırma adımını atlayabilir.

{{% alert color="primary" %}}

Önbelleği güncellemek için aynı **SaveSearchCache** yöntemini kullanın.

{{% /alert %}}

{{% alert color="primary" %}}

Önbellek, yazı tiplerinin ağ üzerinden yüklenebildiği diğer senaryolar için de uygundur. Ya da yüklenmiş önbellek ile bir `FontSettings` örneği depolama konusunda bir yolu yoksa senaryolar için.

{{% /alert %}}


## Kullanılabilir Yazı Tipleri Listesi Al {#get-a-list-of-available-fonts}

Eğer mevcut yazı tiplerinin listesini almak istiyorsanız, örneğin bir PDF belgesi oluşturmak için kullanılabilecekleri yazı tipleri, aşağıdaki kod örneğinde gösterildiği gibi [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) yöntemini kullanabilirsiniz. The [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) sınıfı Aspose.Words yazı motoru için mevcut olan fiziksel yazı tipi hakkındaki bilgileri belirtir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
