---
title: C#'te TrueType Yazı Tiplerinin Konumunu Belirtme
second_title: .NET için Aspose.Words
articleTitle: TrueType Yazı Tiplerinin Konumunu Belirtin
linktitle: TrueType Yazı Tiplerinin Konumunu Belirtin
description: "Çeşitli TrueType yazı tipi kaynaklarını belirtin: sistem klasörü, kullanıcı kaynakları, yazı tiplerinin bir akıştan yüklenmesi, bir dosya sistemi veya C# kullanılarak bellek."
type: docs
weight: 30
url: /tr/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Bu konu, işletim sistemine özgü farklılıklar da dahil olmak üzere TrueType yazı tiplerini ararken Aspose.Words'in varsayılan davranışını açıklar ve kullanıcı yazı tipi kaynaklarının nasıl belirtileceğini gösterir.

[FontSourceBase](https://reference.aspose.com/words/tr/net/aspose.words.fonts/fontsourcebase/) sınıfı çeşitli yazı tipi kaynaklarını belirtmek için kullanılır. **FontSourceBase** sınıfının birkaç uygulaması vardır:

- [SystemFontSource](https://reference.aspose.com/words/tr/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/tr/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/tr/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/tr/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/tr/net/aspose.words.fonts/memoryfontsource)

Bazı sınıflara ilişkin uygulama detayları aşağıda açıklanmıştır.

## Yazı Tiplerini Sistem {#loading-fonts-from-system}'ten Yükleme

Her zaman varsayılan olarak kullanılan özel bir [SystemFontSource](https://reference.aspose.com/words/tr/net/aspose.words.fonts/systemfontsource/) sınıfı vardır. Sistemde yüklü olan tüm TrueType yazı tiplerini temsil eder. Bu nedenle **SystemFontSource** ve diğer gerekli kaynaklarla bir kaynak listesi oluşturmak mümkündür:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

**SystemFontSource** sınıfının tek bir örneği, [FontSettings](https://reference.aspose.com/words/tr/net/aspose.words.fonts/fontsettings/)'de varsayılan olarak tanımlanır. Farklı işletim sistemlerinde yazı tipleri farklı yerlerde bulunabilir. Ancak her belge için **FontSettings** örneği kullanmak en uygun çözüm değildir. Çoğu durumda [DefaultInstance](https://reference.aspose.com/words/tr/net/aspose.words.fonts/fontsettings/defaultinstance/) kullanmak yeterli olacaktır.

Belge başına örneklere yalnızca farklı belgeler için farklı yazı tipi kaynaklarının kullanılması gerekiyorsa ihtiyaç duyulur ki bu nadir görülen bir durumdur. Birkaç **FontSettings** örneğinin kullanılması, önbelleği paylaşmadıkları için performansı azaltır.

### Aspose.Words'in Windows'de TrueType Yazı Tiplerini Aradığı Yer

Çoğu durumda, Windows kullanıcıları eksik yazı tipleri veya yanlış düzenlerle ilgili önemli sorunlarla karşılaşmazlar. Tipik olarak Aspose.Words bir belgeyi inceler ve bir yazı tipinin bağlantısıyla karşılaştığında yazı tipi verilerini sistem klasöründen başarıyla alır.

Windows'te, Aspose.Words öncelikle mevcut tüm yazı tiplerini _%windir%\Fonts klasöründen alır. Bu ayar çoğu zaman işinize yarayacaktır. Gerekiyorsa yalnızca kendi yazı tipi klasörlerinizi belirlersiniz. .NET için Aspose.Words ayrıca HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts kayıt defteri anahtarında kayıtlı ek yazı tiplerini de arar. Ayrıca Windows 10, mevcut kullanıcı için yazı tiplerinin yüklenmesine olanak sağlar. Yazı tipleri %userprofile%\AppData\Local\Microsoft\Windows\Fonts klasörüne yerleştirilir ve ayrıca Aspose.Words'nin bu yazı tiplerini arayacağı HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts kayıt defterinde de belirtilir.

Bir belge gömülü yazı tipleri içeriyorsa Aspose.Words, ilgili yazı tipi verilerini belgeden okuyabilir ve bunu belgenin düzenini oluşturmak için kullanabilir. Belgeler ayrıca sistem klasörlerinde bulunmayan yazı tiplerine bağlantılar da içerebilir; bu durumda aşağıdaki senaryolar işe yarar:

- Kullanıcılar **FontSettings** sınıfı aracılığıyla yeni yazı tipi kaynakları ayarlayabilir
- Aspose.Words, kaçırılan yazı tipini benzer bir yazı tipiyle değiştirmeyi deneyebilir

{{% alert color="primary" %}}

Bir sunucuda Aspose.Words oluşturma, kayıt defterine erişimi yasakladığından ve dosya sistemine erişimi sınırladığından, Orta Güven düzeyi altında çalışacak şekilde yapılandırılmış bir ASP.NET uygulamasıyla genellikle çalışmaz.

{{% /alert %}}

### Windows Dışı Sistemlerdeki Yazı Tipleri

Aspose.Words, sistem yazı tipi klasörlerindeki yazı tiplerini arayacaktır. Bu klasörlerin bir listesi [GetSystemFontFolders](https://reference.aspose.com/words/tr/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/) yöntemiyle görülebilir. Desteklenen yazı tipi bulunamazsa Aspose.Words yerleşik varsayılan yazı tipi Fanwood.ttf'yi kullanır.

Windows ve Windows olmayan işletim sistemlerinin yazı tipi ölçümleri farklı olduğundan, Aspose.Words benzer bir yazı tipi bulmak ve orijinaline benzer bir düzen oluşturmak için mümkün olan her şeyi yapar. Ancak, bu her zaman mümkün olmuyor. Bu durumlarda, özel yazı tipleri veya değiştirme kuralları eklemek için **FontSettings** sınıfı kullanılmalıdır.

#### Aspose.Words'in Linux'de TrueType Yazı Tiplerini Aradığı Yer

Farklı Linux dağıtımları yazı tiplerini farklı klasörlerde saklayabilir. Aspose.Words çeşitli konumlardaki yazı tiplerini arar. Varsayılan olarak, Aspose.Words aşağıdaki konumların tümünde yazı tiplerini arar: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fontsBu varsayılan davranış çoğu Linux dağıtımında işe yarayacaktır., ancak her zaman çalışacağı garanti edilmez; bu durumda true türü yazı tiplerinin konumunu açıkça belirtmeniz gerekebilir. Bunu yapmak için TrueType yazı tiplerinin Linux dağıtımınızda nereye yüklendiğini bilmeniz gerekir.

#### Aspose.Words'in Mac OS X'te TrueType Yazı Tiplerini Aradığı Yer

Aspose.Words, Mac OS X'te TrueType yazı tipleri için standart konum olan /Library/Fonts klasöründe yazı tiplerini arar. Bu ayar çoğu zaman işinize yarayacak olsa da, aşağıdaki durumlarda kendi yazı tipi klasörlerinizi belirtmeniz gerekebilir: gerek.

## Yazı Tiplerini {#loading-fonts-from-folder} Klasöründen Yükle

İşlenmekte olan belge, sistemde olmayan yazı tiplerine bağlantılar içeriyorsa veya bunları sistem klasörüne eklemek istemiyorsanız veya izinleriniz yoksa, en iyi çözüm, kendi yazı tiplerinizi içeren bir klasörü kullanarak eklemek olacaktır. [SetFontsSources](https://reference.aspose.com/words/tr/net/aspose.words.fonts/fontsettings/setfontssources/) yöntemi. Bu, sistem kaynağının bir kullanıcı kaynağıyla değiştirilmesine olanak tanır. Aspose.Words artık yazı tiplerini kayıt defterinde veya Windows\Font klasöründe aramayacak ve bunun yerine yalnızca belirtilen klasör(ler) içindeki yazı tiplerini tarayacaktır. [GetFontSources](https://reference.aspose.com/words/tr/net/aspose.words.fonts/fontsettings/getfontssources/) yöntemi karşılık gelen değerleri döndürecektir.

### Bir veya Birden Çok Yazı Tipi Klasörünü Belirtin

[SetFontsFolder](https://reference.aspose.com/words/tr/net/aspose.words.fonts/fontsettings/setfontsfolder/) ve [SetFontsFolders](https://reference.aspose.com/words/tr/net/aspose.words.fonts/fontsettings/setfontsfolder/s) yöntemleri, bir veya daha fazla [FolderFontSource](https://reference.aspose.com/words/tr/net/aspose.words.fonts/folderfontsource/) örneği içeren **SetFontSources** yönteminin kısayollarıdır. Bu yöntemler Aspose.Words'un yazı tiplerini nerede araması gerektiğini belirtmek için kullanılır. Bir klasör mevcut değilse veya erişilemiyorsa Aspose.Words bu klasörü yok sayar. Yazı tipi değişimine yönelik kaynaklar da dahil olmak üzere tüm klasörler yoksayılırsa Aspose.Words, varsayılan olarak Fanwood yazı tipini kullanır.

Aşağıdaki örnek, Aspose.Words'in daha sonra yazı tiplerini oluşturma veya gömme sırasında TrueType yazı tiplerini aramak için kullanacağı klasörün veya kaynağın nasıl ayarlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

Fazladan bir Boolean parametresi, yazı tiplerinin tüm klasörler boyunca yinelemeli olarak taranıp taranmayacağını, dolayısıyla belirli bir klasörün tüm alt klasörlerinin taranıp taranmayacağını kontrol eder. Aşağıdaki örnek, yazı tiplerini oluştururken veya katıştırırken Aspose.Words'in TrueType yazı tiplerini birden fazla klasörde arayacak şekilde nasıl ayarlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

{{% /alert %}}

Önceliklere dikkat edin. Farklı yazı tipi kaynaklarında aynı aile adı ve stiline sahip yazı tipleri varsa Aspose.Words, kaynaktan daha yüksek önceliğe sahip yazı tipini seçecektir. Aşağıdaki "Öncelik" alanının açıklamasına bakın.

Sistem yazı tiplerini hiç kullanmak istemiyorsanız, Aspose.Words bunları göz ardı etmenize ve yalnızca kendi yazı tiplerinizi kullanmanıza olanak tanır:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### Öncelikli Mülk

[Priority](https://reference.aspose.com/words/tr/net/aspose.words.fonts/fontsourcebase/priority/) özelliği, farklı yazı tipi kaynaklarında aynı aile adı ve stiline sahip yazı tipleri bulunduğunda kullanılır. Bu durumda Aspose.Words, kaynaktan öncelik değeri daha yüksek olan yazı tipini seçer. Örneğin, sistem klasöründe yazı tipinin eski bir sürümü var ve müşteri aynı yazı tipinin yeni bir sürümünü özel bir klasöre ekledi.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Yazı Tiplerini Stream {#loading-fonts-from-stream}'ten Yükleme

Aspose.Words, yazı tiplerinin akıştan yüklenmesine izin veren [StreamFontSource](https://reference.aspose.com/words/tr/net/aspose.words.fonts/streamfontsource/) sınıfını sağlar. Akış yazı tipi kaynağını kullanmak için kullanıcının **StreamFontSource**'den türetilmiş bir sınıf oluşturması ve [OpenFontDataStream](https://reference.aspose.com/words/tr/net/aspose.words.fonts/streamfontsource/openfontdatastream/) yönteminin bir uygulamasını sağlaması gerekir. **OpenFontDataStream** yöntemi birkaç kez çağrılabilir. İlk defa, Aspose.Words mevcut yazı tiplerinin bir listesini almak için sağlanan yazı tipi kaynaklarını taradığında çağrılacaktır. Daha sonra yazı tipinin belgede yazı tipi verilerini ayrıştırmak ve yazı tipi verilerini bazı çıktı formatlarına gömmek için kullanılması durumunda çağrılabilir. **StreamFontSource**, yazı tipi verilerinin yalnızca gerektiğinde yüklenmesine izin verdiği ve [Yazı Tipi Ayarları](https://fontsettings/) ömrü boyunca bellekte saklanmadığı için yararlı olabilir.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource**, [MemoryFontSource](https://reference.aspose.com/words/tr/net/aspose.words.fonts/memoryfontsource/)'ye bir alternatiftir çünkü bir akışı belleğe yüklemek ve onu **MemoryFontSource**'e aktarmak her zaman mümkündür. Aradaki fark, **MemoryFontSource**'in her zaman bellekte saklanması ve **StreamFontSource**'in talep üzerine yüklenip hemen atılmasıdır. Ancak yukarıda açıklandığı gibi birkaç kez yüklenebilir. Bazı durumlarda **MemoryFontSource**, diğerlerinde ise **StreamFontSource** tercih edilir.

## Yazı Tipi Arama Önbelleğini Kaydetme ve Yükleme

Bir yazı tipini ilk kez ararken Aspose.Words, kullanıcı tarafından belirlenen yazı tipi kaynakları üzerinde yineleme yapar ve bu kaynaklardan gelen verilere dayalı olarak bir yazı tipi arama önbelleği oluşturur. Böylece önbellek mevcut yazı tipleri hakkında bilgi toplayacaktır: yazı tipi ailesi, stil, tam yazı tipi adı ve diğerleri. Sonraki çağrılarda Aspose.Words, istenen yazı tipi hakkında bilgiyi yazı tipi arama önbelleğindeki adına göre arar ve ardından yazı tipini kullanmak için belirtilen dosyaları ayrıştırır.

Önbelleği başlatmak için mevcut tüm yazı tipi dosyalarını ayrıştırma prosedürü oldukça zaman alıcıdır. Aspose.Words, performans sorununu çözmek için [SaveSearchCache](https://reference.aspose.com/words/tr/net/aspose.words.fonts/fontsettings/savesearchcache/) yöntemini kullanarak önbelleği kaydetmenize ve yüklemenize olanak tanır. Yani kullanıcı, önceden kaydedilmiş bir önbelleği bir dosyadan yükleyebilir ve mevcut tüm yazı tipi dosyalarını ayrıştırma adımını atlayabilir.

{{% alert color="primary" %}}

Önbelleği güncellemek için aynı **SaveSearchCache** yöntemini kullanın.

{{% /alert %}}

Aşağıdaki kod örneği, yazı tipi kaynaklarının nasıl hazırlanacağını ve önceden yazı tipi arama önbelleğinin nasıl oluşturulacağını gösterir:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

Aşağıdaki kod örneği, belgeleri işlemeden önce yazı tipi kaynaklarının nasıl ayarlanacağını ve arama önbelleğinin nasıl yükleneceğini gösterir:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

Yazı tipi arama önbelleği, bir dizi sınırlama nedeniyle AWS Lambda'de Aspose.Words entegrasyonu için mükemmeldir. Örneğin, ana kabın boyutunda ve bunun sonucunda yazı tipi sayısında.

Önbellek, yazı tiplerinin ağ üzerinden yüklendiği diğer senaryolar için de uygundur. Veya bir `FontSettings` örneğini yüklü önbellekle depolamanın mümkün olmadığı senaryolar için.

{{% /alert %}}

## Mevcut Yazı Tiplerinin Listesini Alın {#get-a-list-of-available-fonts}

Örneğin bir PDF belgesini oluşturmak için kullanılabilecek mevcut yazı tiplerinin listesini almak istiyorsanız aşağıdaki kod örneğinde gösterildiği gibi [GetAvailableFonts](https://reference.aspose.com/words/tr/net/aspose.words.fonts/fontsourcebase/getavailablefonts/) yöntemini kullanabilirsiniz. [PhysicalFontInfo](https://reference.aspose.com/words/tr/net/aspose.words.fonts/physicalfontinfo/) sınıfı, Aspose.Words yazı tipi motorunun kullanabileceği fiziksel yazı tipiyle ilgili bilgileri belirtir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
