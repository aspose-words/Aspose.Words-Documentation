---
title: TrueType Yazı Tiplerinin Konumunu Belirtin
second_title: Python via .NET için Aspose.Words
articleTitle: TrueType Yazı Tiplerinin Konumunu Belirtin
linktitle: TrueType Yazı Tiplerinin Konumunu Belirtin
description: "Çeşitli TrueType yazı tipi kaynaklarını belirtin: sistem klasörü, kullanıcı kaynakları, yazı tiplerinin bir akıştan yüklenmesi, bir dosya sistemi veya Python kullanılarak bellek."
type: docs
weight: 30
url: /tr/python-net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Bu konu, işletim sistemine özgü farklılıklar da dahil olmak üzere TrueType yazı tiplerini ararken Aspose.Words'in varsayılan davranışını açıklar ve kullanıcı yazı tipi kaynaklarının nasıl belirtileceğini gösterir.

[FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) sınıfı çeşitli yazı tipi kaynaklarını belirtmek için kullanılır. [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) sınıfının birkaç uygulaması vardır:

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

Bazı sınıflara ilişkin uygulama detayları aşağıda açıklanmıştır.

## Fontların Sistemden Yüklenmesi

Her zaman varsayılan olarak kullanılan özel bir [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) sınıfı vardır. Sistemde yüklü olan tüm TrueType yazı tiplerini temsil eder. Bu nedenle [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) ve diğer gerekli kaynaklarla bir kaynak listesi oluşturmak mümkündür:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

[SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) sınıfının tek bir örneği, [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)'de varsayılan olarak tanımlanır. Farklı işletim sistemlerinde yazı tipleri farklı yerlerde bulunabilir. Ancak her belge için bir [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) örneğinin kullanılması ideal bir çözüm değildir. Çoğu durumda [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) kullanmak yeterli olacaktır.

Belge başına örneklere yalnızca farklı belgeler için farklı yazı tipi kaynaklarının kullanılması gerekiyorsa ihtiyaç duyulur ki bu nadir görülen bir durumdur. Birkaç [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) örneğinin kullanılması, önbelleği paylaşmadıkları için performansı azaltır.

### Aspose.Words'in Windows'de TrueType Yazı Tiplerini Aradığı Yer

Çoğu durumda, Windows kullanıcıları eksik yazı tipleri veya yanlış düzenlerle ilgili önemli sorunlarla karşılaşmazlar. Tipik olarak Aspose.Words bir belgeyi inceler ve bir yazı tipinin bağlantısıyla karşılaştığında yazı tipi verilerini sistem klasöründen başarıyla alır.

Windows'te, Aspose.Words öncelikle mevcut tüm yazı tiplerini _%windir%\Fonts klasöründen alır. Bu ayar çoğu zaman işinize yarayacaktır. Gerekiyorsa yalnızca kendi yazı tipi klasörlerinizi belirlersiniz. .NET için Aspose.Words ayrıca *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts* kayıt defteri anahtarında kayıtlı ek yazı tiplerini de arar. Ayrıca Windows 10, mevcut kullanıcı için yazı tiplerinin yüklenmesine olanak sağlar. Yazı tipleri *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* klasörüne yerleştirilir ve ayrıca Aspose.Words'nin bu yazı tiplerini arayacağı *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts* kayıt defterinde de belirtilir.

Bir belge gömülü yazı tipleri içeriyorsa Aspose.Words, ilgili yazı tipi verilerini belgeden okuyabilir ve bunu belgenin düzenini oluşturmak için kullanabilir. Belgeler ayrıca sistem klasörlerinde bulunmayan yazı tiplerine bağlantılar da içerebilir; bu durumda aşağıdaki senaryolar işe yarar:

- Kullanıcılar [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) sınıfı aracılığıyla yeni yazı tipi kaynakları ayarlayabilir
- Aspose.Words, kaçırılan yazı tipini benzer bir yazı tipiyle değiştirmeyi deneyebilir


### Windows Dışı Sistemlerdeki Yazı Tipleri

Aspose.Words, sistem yazı tipi klasörlerindeki yazı tiplerini arayacaktır. Bu klasörlerin bir listesi [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/) yöntemiyle görülebilir. Desteklenen yazı tipi bulunamazsa Aspose.Words yerleşik varsayılan yazı tipi Fanwood.ttf'yi kullanır.

Windows ve Windows olmayan işletim sistemlerinin yazı tipi ölçümleri farklı olduğundan, Aspose.Words benzer bir yazı tipi bulmak ve orijinaline benzer bir düzen oluşturmak için mümkün olan her şeyi yapar. Ancak, bu her zaman mümkün olmuyor. Bu durumlarda, özel yazı tipleri veya değiştirme kuralları eklemek için [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) sınıfı kullanılmalıdır.

#### Aspose.Words'in Linux'de TrueType Yazı Tiplerini Aradığı Yer

Farklı Linux dağıtımları yazı tiplerini farklı klasörlerde saklayabilir. Aspose.Words çeşitli konumlardaki yazı tiplerini arar. Varsayılan olarak, Aspose.Words aşağıdaki konumların tümünde yazı tiplerini arar: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*. Bu varsayılan davranış çoğu Linux dağıtımında işe yarayacaktır ancak her zaman çalışacağı garanti edilmez; bu durumda true türü yazı tiplerinin konumunu açıkça belirtmeniz gerekebilir. Bunu yapmak için TrueType yazı tiplerinin Linux dağıtımınızda nereye yüklendiğini bilmeniz gerekir.

#### Aspose.Words'in Mac OS X'te TrueType Yazı Tiplerini Aradığı Yer

Aspose.Words, Mac OS X'te TrueType yazı tipleri için standart konum olan */Library/Fonts* klasöründeki yazı tiplerini arar. Bu ayar çoğu zaman işinize yarayacak olsa da, kendi yazı tipi klasörlerinizi, Mac OS X'te belirtmeniz gerekebilir. ihtiyaç duyduğunuzda.

## Yazı Tiplerini Klasörden Yükleme

İşlenmekte olan belge, sistemde olmayan yazı tiplerine bağlantılar içeriyorsa veya bunları sistem klasörüne eklemek istemiyorsanız veya izinleriniz yoksa, en iyi çözüm, kendi yazı tiplerinizi içeren bir klasörü kullanarak eklemek olacaktır. [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) yöntemi. Bu, sistem kaynağının bir kullanıcı kaynağıyla değiştirilmesine olanak tanır. Aspose.Words artık yazı tiplerini kayıt defterinde veya Windows\Font klasöründe aramayacak ve bunun yerine yalnızca belirtilen klasör(ler) içindeki yazı tiplerini tarayacaktır. [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) yöntemi karşılık gelen değerleri döndürecektir.

### Bir veya Birden Çok Yazı Tipi Klasörünü Belirtme

[FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) ve [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) yöntemleri, bir veya daha fazla [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/) örneği içeren [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) yönteminin kısayollarıdır. Bu yöntemler Aspose.Words'un yazı tiplerini nerede araması gerektiğini belirtmek için kullanılır. Bir klasör mevcut değilse veya erişilemiyorsa Aspose.Words bu klasörü yok sayar. Yazı tipi değişimine yönelik kaynaklar da dahil olmak üzere tüm klasörler yoksayılırsa Aspose.Words, varsayılan olarak Fanwood yazı tipini kullanır.

Aşağıdaki örnek, Aspose.Words'in daha sonra yazı tiplerini oluşturma veya gömme sırasında TrueType yazı tiplerini aramak için kullanacağı klasörün veya kaynağın nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

Fazladan bir Boolean parametresi, yazı tiplerinin tüm klasörler boyunca yinelemeli olarak taranıp taranmayacağını, dolayısıyla belirli bir klasörün tüm alt klasörlerinin taranıp taranmayacağını kontrol eder. Aşağıdaki örnek, yazı tiplerini oluştururken veya katıştırırken Aspose.Words'in TrueType yazı tiplerini birden çok klasörde arayacak şekilde nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

{{% /alert %}}

Önceliklere dikkat edin. Farklı yazı tipi kaynaklarında aynı aile adı ve stiline sahip yazı tipleri varsa Aspose.Words, kaynaktan daha yüksek önceliğe sahip yazı tipini seçecektir. Aşağıdaki "öncelik" alanının açıklamasına bakın.

Sistem yazı tiplerini hiç kullanmak istemiyorsanız, Aspose.Words bunları göz ardı etmenize ve yalnızca kendi yazı tiplerinizi kullanmanıza olanak tanır:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Öncelikli Mülk

**öncelik** özelliği, farklı yazı tipi kaynaklarında aynı aile adı ve stiline sahip yazı tipleri bulunduğunda kullanılır. Bu durumda Aspose.Words, kaynaktan öncelik değeri daha yüksek olan yazı tipini seçer. Örneğin, sistem klasöründe yazı tipinin eski bir sürümü var ve müşteri aynı yazı tipinin yeni bir sürümünü özel bir klasöre ekledi.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Mevcut Yazı Tiplerinin Listesini Alma

Örneğin bir PDF belgesini oluşturmak için kullanılabilecek mevcut yazı tiplerinin listesini almak istiyorsanız aşağıdaki kod örneğinde gösterildiği gibi [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/) yöntemini kullanabilirsiniz. [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) sınıfı, Aspose.Words yazı tipi motorunun kullanabileceği fiziksel yazı tipiyle ilgili bilgileri belirtir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
