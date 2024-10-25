---
title: TrueType Yazı Tipi Konumunu C++ içinde belirtin
second_title: Aspose.Words için C++
articleTitle: TrueType Yazı Tipi Konumunu Belirtin
linktitle: TrueType Yazı Tipi Konumunu Belirtin
description: "Çeşitli TrueType font kaynaklarını belirtin: sistem klasörü, kullanıcı kaynakları, bir akıştan font yükleme, dosya sistemi veya bellek."
type: docs
weight: 30
url: /tr/cpp/specify-truetype-fonts-location/
---

Bu konu, işletim sistemine özgü farklılıklar da dahil olmak üzere TrueType yazı tiplerini ararken Aspose.Words'in varsayılan davranışını açıklar ve kullanıcı yazı tipi kaynaklarının nasıl belirtileceğini gösterir.

[FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase) sınıfı, çeşitli yazı tipi kaynaklarını belirtmek için kullanılır. **FontSourceBase** sınıfının birkaç uygulaması vardır:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

Bazı sınıflar için uygulama detayları aşağıda açıklanmıştır.

## Yazı Tiplerini Sistemden Yükle {#loading-fonts-from-system}

Her zaman varsayılan olarak kullanılan özel bir [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/) sınıfı vardır. Sistemde yüklü olan tüm TrueType yazı tiplerini temsil eder. Bu nedenle, **SystemFontSource** ve diğer gerekli kaynaklarla bir kaynak listesi oluşturmak mümkündür:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

**SystemFontSource** sınıfının tek bir örneği varsayılan olarak [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/) içinde tanımlanır. Farklı işletim sistemlerinde, yazı tipleri farklı yerlerde bulunabilir. Ancak, her belge için bir **FontSettings** örneği kullanmak en uygun çözüm değildir. Çoğu durumda, [DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/) kullanmak yeterli olmalıdır.

Belge başına örneklere yalnızca farklı belgeler için farklı yazı tipi kaynaklarının kullanılması gerekiyorsa ihtiyaç duyulur, bu nadir bir durumdur. Birkaç **FontSettings** örneği kullanmak, önbelleği paylaşmadıkları için performansı düşürür.

### Aspose.Words Windows üzerinde TrueType Yazı Tiplerini Arar

Çoğu durumda, Windows kullanıcılar kaçırılan yazı tipleri veya yanlış düzenlerle ilgili önemli sorunlarla karşılaşmazlar. Genellikle, Aspose.Words bir belgeden geçer ve bir yazı tipinin bağlantısıyla karşılaştığında, yazı tipi verilerini sistem klasöründen başarıyla getirir.

Windows 'de, Aspose.Words önce _%windir%\Fonts klasöründen mevcut tüm yazı tiplerini alır. Bu ayar çoğu zaman sizin için çalışacaktır. Gerekirse yalnızca kendi yazı tipi klasörlerinizi belirtirsiniz. Aspose.Words ayrıca HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts kayıt defteri anahtarında kayıtlı ek yazı tiplerini de arar. Ayrıca Windows 10, geçerli kullanıcı için yazı tiplerinin yüklenmesini sağlar. Yazı tipleri %userprofile%\AppData\Local\Microsoft\Windows\Fonts klasörüne yerleştirilir ve HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts kayıt defterinde de belirtilir, burada Aspose.Words bu yazı tiplerini arar.

Bir belge gömülü yazı tipleri içeriyorsa, Aspose.Words belgedeki ilgili yazı tipi verilerini okuyabilir ve belgenin düzenini oluşturmak için kullanabilir. Belgeler ayrıca sistem klasörlerinde bulunmayan yazı tiplerine bağlantılar içerebilir, bu durumda aşağıdaki senaryolar işe yarar:

- Kullanıcılar **FontSettings** sınıfı aracılığıyla yeni font kaynakları ayarlayabilir
- Aspose.Words kaçırılan yazı tipini benzer bir yazı tipiyle değiştirmeyi deneyebilir

{{% alert color="primary" %}}

Bir sunucuda Aspose.Words oluşturma, kayıt defterine erişimi yasakladığı ve dosya sistemine erişimi sınırladığı için genellikle Orta Güven düzeyinde çalışacak şekilde yapılandırılmış bir ASP .NET uygulamasıyla çalışmaz.

{{% /alert %}}

### Windows Olmayan Sistemlerde Yazı Tipleri

Aspose.Words yazı tiplerini sistem yazı tipi klasörlerinde arayacaktır. Bu klasörlerin bir listesi [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/) yöntemiyle görülebilir. Desteklenen yazı tipleri bulunamazsa, Aspose.Words yerleşik varsayılan yazı tipi Fanwood'u kullanır.ttf.

Windows ve Windows OS olmayan yazı tipi metrikleri farklı olduğundan, Aspose.Words benzer bir yazı tipi bulmak ve orijinaline benzer bir düzen oluşturmak için mümkün olan her şeyi yapar. Ancak, bu her zaman mümkün değildir. Bu durumlarda, özel yazı tipleri veya değiştirme kuralları eklemek için **FontSettings** sınıfı kullanılmalıdır.

#### Aspose.Words Linux üzerinde TrueType Yazı Tiplerini Arar

Farklı Linux dağıtımlar yazı tiplerini farklı klasörlerde saklayabilir. Aspose.Words çeşitli konumlardaki yazı tiplerini arar. Varsayılan olarak, Aspose.Words yazı tiplerini aşağıdaki konumların hepsinde arar: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. Bu varsayılan davranış çoğu Linux dağıtım için çalışır, ancak her zaman çalışması garanti edilmez, bu durumda true type yazı tiplerinin konumunu açıkça belirtmeniz gerekebilir. Bunu yapmak için Linux dağıtımınızda TrueType yazı tiplerinin nerede yüklü olduğunu bilmeniz gerekir.

#### Aspose.Words Mac'te TrueType Yazı Tiplerini Arar OS X

Aspose.Words, Mac OS X'teki TrueType yazı tipleri için standart konum olan `/Library/Fonts` klasöründeki yazı tiplerini arar. Bu ayar çoğu zaman sizin için işe yarayacak olsa da, gerektiğinde kendi yazı tipi klasörlerinizi belirtmeniz gerekebilir.

#### TrueType Android üzerindeki yazı tipleri

Android üzerinde fontlar iş akışı, Yazı tipi sınıfında kapsüllenir.
Beş tür yazı tipi vardır, her yazı tipi benzer yazı tipi ailelerinden oluşan bir grubu temsil eder:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Örneğin, Android'ün [yazı tipleri.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) yapılandırma dosyası, "times" "serif" ailesine aittir, bu nedenle NotoSerif-Düzenli.ttf, "times" istendiğinde kullanılacaktır:

**Yazı tipleri.xml**

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

Benzer yazı tiplerini aramak için daha önce açıklanan stratejiler kullanılır.

Bunlara ek olarak, Aspose.Words 'ın Android platformu için kendi değiştirme listesi vardır.

Diyelim ki belge PMingLi U-ExtB yazı tipini içeriyor, her şeyden önce Aspose.Words sistem kaynakları içinde gerekli yazı tipini arıyor.

Android yazı tipinin klasörlerinin varsayılan listesi şöyledir:

- / sistem / yazı tipleri
- / sistem / yazı tipi
- / veri / yazı tipleri

Aspose.Words, yöntemle ayarlanan kullanıcı tanımlı kaynaklara bakar:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

Açık bir değiştirme belirtilmişse, Aspose.Words eksik yazı tipini kullanıcının önerisiyle değiştirir:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

Kurallardan hiçbiri işe yaramadıysa, Aspose.Words dahili değiştirme tablosunu kontrol edin. Tablo iyi bir uyum hakkında bilgi içeriyorsa, yazı tipi değiştirilir. Bizim durumumuzda Aspose.Words `Typeface.SERIF` 'ı seçecektir. Ancak tablo istenen yazı tipi hakkında hiçbir şey bilmiyorsa, Aspose.Words özel MS Kelime kurallarına veya Panose alanındaki en yakın mesafeye dayalı bir yazı tipi alır.

#### TrueType .NET Core ve Xamarin üzerindeki yazı tipleri

.NET Core ve Xamarin için de aynı kural geçerlidir Aspose.Words için Java sürüm. Varsayılan olarak, uygulamanın çalıştığı platformun tüm sistem yazı tipleri kullanılabilir durumdadır.
Aramanın gerçekleştirileceği klasörlerin listesi, yöntemi çağırarak bulunabilir:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## {#loading-fonts-from-folder} Klasöründen Yazı Tiplerini Yükle

İşlenmekte olan belge sistemde olmayan yazı tiplerine bağlantılar içeriyorsa veya bunları sistem klasörüne eklemek istemiyorsanız veya izinleriniz yoksa, en iyi çözüm [SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/) yöntemini kullanarak kendi yazı tiplerinize sahip bir klasör eklemek olacaktır. Bu, sistem kaynağının bir kullanıcı kaynağıyla değiştirilmesine izin verecektir. Aspose.Words artık kayıt defterindeki veya Windows \Font klasöründeki yazı tiplerini aramayacak ve bunun yerine yalnızca belirtilen klasör (ler) içindeki yazı tiplerini tarayacaktır. [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/) yöntemi karşılık gelen değerleri döndürür.

### Bir veya Birden Çok Yazı Tipi Klasörü Belirtin

[SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/) ve [SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/) yöntemleri, bir veya birkaç [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/) örneği olan **SetFontSources** yönteminin kısayollarıdır. Bu yöntemler, Aspose.Words'ün yazı tiplerini nerede araması gerektiğini belirtmek için kullanılır. Bir klasör yoksa veya erişilemiyorsa, Aspose.Words bu klasörü yok sayar. Yazı tipi değiştirme kaynakları da dahil olmak üzere tüm klasörler göz ardı edildiyse, Aspose.Words varsayılan olarak Fanwood yazı tipini kullanır.

Aşağıdaki örnek, Aspose.Words'in daha sonra yazı tiplerini oluşturma veya gömme sırasında TrueType yazı tiplerini aramak için kullanacağı klasörün veya kaynağın nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

Bu örneğin şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Fazladan bir Boole parametresi, yazı tiplerinin tüm klasörler arasında özyinelemeli olarak taranıp taranmadığını kontrol eder, dolayısıyla belirli bir klasörün tüm alt klasörlerini tarar. Aşağıdaki örnek, yazı tiplerini oluştururken veya katıştırırken Aspose.Words'in TrueType yazı tipleri için birden çok klasöre bakmasını nasıl ayarlayacağınızı gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Öncelikleri not edin. Farklı yazı tipi kaynaklarında aynı soyadı ve stili olan yazı tipleri varsa, Aspose.Words yazı tipini kaynaktan daha yüksek önceliğe sahip olarak seçecektir. Aşağıdaki "Öncelik" alanının açıklamasına bakın.

Sistem yazı tiplerini hiç kullanmak istemiyorsanız, Aspose.Words bunları yok saymanıza ve yalnızca kendi yazı tiplerinizi kullanmanıza izin verir:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### Öncelikli Mülkiyet

[Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/) özelliği, farklı yazı tipi kaynaklarında aynı soyadı ve stili olan yazı tipleri olduğunda kullanılır. Bu durumda Aspose.Words, kaynaktan daha yüksek öncelik değerine sahip yazı tipini seçer. Örneğin, sistem klasöründe yazı tipinin eski bir sürümü var ve müşteri aynı yazı tipinin yeni bir sürümünü özel bir klasöre ekledi.

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## {#loading-fonts-from-stream} Akışından Yazı Tiplerini Yükle

Aspose.Words, akıştan yazı tiplerinin yüklenmesine izin veren [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource) sınıfını sağlar. Akış yazı tipi kaynağını kullanmak için kullanıcının **StreamFontSource** 'ten türetilmiş bir sınıf oluşturması ve [OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/) yönteminin uygulanmasını sağlaması gerekir. **OpenFontDataStream** yöntemi birkaç kez çağrılabilir. İlk kez, Aspose.Words mevcut yazı tiplerinin bir listesini almak için sağlanan yazı tipi kaynaklarını taradığında çağrılacaktır. Daha sonra, yazı tipi belgede yazı tipi verilerini ayrıştırmak ve yazı tipi verilerini bazı çıktı biçimlerine gömmek için kullanılıyorsa çağrılabilir. **StreamFontSource**, yazı tipi verilerinin yalnızca gerektiğinde yüklenmesine izin verdiği ve [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/) kullanım ömrü boyunca bellekte depolanmasına izin vermediği için yararlı olabilir.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## Yazı Tipi Arama Önbelleğini Kaydedin ve Yükleyin

Bir yazı tipini ilk kez ararken Aspose.Words, kullanıcı tarafından belirtilen yazı tipi kaynakları üzerinde yineleme yapar ve bu kaynaklardan gelen verilere dayalı bir yazı tipi arama önbelleği oluşturur. Böylece önbellek, mevcut yazı tipleri hakkında bilgi toplar: yazı tipi ailesi, stil, tam yazı tipi adı ve diğerleri. Sonraki çağrılarda Aspose.Words, yazı tipi arama önbelleğinde istenen yazı tipi hakkındaki bilgileri adına göre arar ve ardından yazı tipini kullanmak için belirtilen dosyaları ayrıştırır.

Önbelleği başlatmak için mevcut tüm yazı tipi dosyalarını ayrıştırma prosedürü oldukça zaman alıcıdır. Aspose.Words, performans sorununu çözmek için [SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/) yöntemini kullanarak önbelleği kaydetmenize ve yüklemenize olanak tanır. Diğer bir deyişle, kullanıcı önceden kaydedilmiş bir önbelleği bir dosyadan yükleyebilir ve mevcut tüm yazı tipi dosyalarını ayrıştırma adımını atlayabilir.

{{% alert color="primary" %}}

Önbelleği güncellemek için aynı **SaveSearchCache** yöntemini kullanın.

{{% /alert %}}

{{% alert color="primary" %}}

Önbellek, yazı tipleri ağ üzerinden yüklendiğinde diğer senaryolar için de uygundur. Veya `FontSettings` örneğini yüklü bir önbellekle saklamanın bir yolu olmadığı senaryolar için.

{{% /alert %}}

## Kullanılabilir Fontların Bir Listesini Alın {#get-a-list-of-available-fonts}

Örneğin bir PDF belgesi oluşturmak için kullanılabilen kullanılabilir yazı tiplerinin listesini almak istiyorsanız, aşağıdaki kod örneğinde gösterildiği gibi [GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/) yöntemini kullanabilirsiniz. [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo) sınıfı, Aspose.Words font motorunun kullanabileceği fiziksel font hakkındaki bilgileri belirtir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
