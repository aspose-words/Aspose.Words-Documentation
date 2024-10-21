---
title: TrueType Yazı Tiplerini Değiştir
second_title: Python via .NET için Aspose.Words
articleTitle: TrueType Yazı Tiplerini Değiştirme ve Değiştirme
linktitle: TrueType Yazı Tiplerini Değiştirme ve Değiştirme
description: "Python via .NET için Aspose.Words, doğru görüntülendiğinden emin olmak için ortaya çıkan belgeye doğru TrueType yazı tiplerini gömebilir. Bir yazı tipi veya belirli bir karakter mevcut değilse, Aspose.Words uygun bir yazı tipi değişimi arar veya Yazı Tipi geri dönüş mekanizmasını kullanır."
type: docs
weight: 10
url: /tr/python-net/manipulating-and-substitution-truetype-fonts/
---

Aspose.Words, belgeleri PDF veya XPS gibi sabit sayfa formatlarına dönüştürmek de dahil olmak üzere çeşitli görevler için TrueType yazı tiplerini gerektirir. Aspose.Words bir belgeyi oluşturduğunda, ortaya çıkan belgeye TrueType yazı tiplerinin gömme ve alt küme gömme işlemini gerçekleştirmesi gerekir; bu, popüler PDF veya XPS formatları da dahil olmak üzere belge oluşturma sırasında normal bir uygulamadır. Bu, belgenin her izleyiciye aynı görünmesini sağlar. Ayrıca, XPS spesifikasyonu yazı tiplerinin her zaman belgeye gömülmesini gerektirir.

Aspose.Words'in karakterleri doğru bir şekilde ölçtüğünden ve ilgili yazı tiplerini başarıyla yerleştirdiğinden emin olmak için aşağıdaki koşulların karşılanması gerekir:

1. Aspose.Words, sistemdeki TrueType yazı tipi dosyalarını bulabilmeli ve bunlara erişebilmelidir.
1. Aspose.Words'te, tercihen belgede kullanılanlarla aynı yazı tipi ailesi adlarına sahip, yeterli sayıda TrueType yazı tipi bulunmalıdır.

Belgedeki yazı tipinin, `TrueType` yazı tipi (fiziksel yazı tipi) varlığından farklı olan aile adı, stil, boyut, renk gibi bir varlığı temsil ettiğini unutmayın. Aspose.Words, belgedeki yazı tipini işlemenin bir aşamasında fiziksel bir yazı tipine dönüştürür. Bu, çoğunlukla düzen oluşturma sırasında metin boyutunu hesaplama ve sabit sayfa formatlarına yerleştirme/alt kümeleme gibi belirli görevleri mümkün kılar. HTML yüklerken yazı tipi çözümleme ve değiştirme veya bazı akış formatlarına yerleştirme/alt kümeleme gibi daha az popüler olan bazı görevler de aynı şekilde etkinleştirilir.

## Yazı Tipi Düzenleme ve Performans Sorunları

Mevcut tüm yazı tipi düzenleme mekanizmaları [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) sınıfında bulunur. Bu sınıf, aşağıda açıklandığı gibi, tanımlanmış yazı tipi kaynakları içindeki yazı tiplerini getirmenin yanı sıra Yazı Tipi Değiştirme işleminden de sorumludur.

Yazı tipleri birkaç adımda ayrıştırılır:

1. Yazı tipi için bilgi edinme, mevcut tüm yazı tiplerinden çözümleme.
1. Kullanılabilir glyph'leri ve metrikleri (yatay ve dikey) elde etmek için çözümlenen yazı tiplerini ayrıştırma.
1. Gömme ve alt kümeleme için çözümlenen yazı tiplerinin ayrıştırılması.

Aspose.Words, belgede bir yazı tipiyle ilk kez karşılaştığında, her yazı tipi kaynağında bulunan yazı tipi dosyalarından yazı tipinin tam adı, soyadı, sürümü, stili gibi temel yazı tipi bilgilerini almaya çalışır. Tüm yazı tipleri alındıktan sonra Aspose.Words, gerekli yazı tipi verilerini veya istenen yazı tipine uygun bir alternatifi bulmak için bu ayrıntıları kullanır.

Yukarıda açıklanan prosedür zaman alıcı olduğundan, ilk çalıştırmada uygulama performansını olumsuz etkileyebilir. Ancak her [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) örneğinin kendi önbelleği vardır ve bu da sonraki belgelerin işlem süresini azaltabilir. Örneğin, [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) sınıfının bir örneğini farklı belgeler arasında paylaşabilirsiniz, bu da belgelerin yüklenmesini hızlandırmanıza olanak tanır. Aşağıdaki örnek bunu göstermektedir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsWithLoadOption.py" >}}

[FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)'in açıkça tanımlanmadığı durumda Aspose.Words, varsayılan [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) örneğini kullanır. Bu örnek ayrıca belgeler arasında otomatik olarak paylaşılır ve aşağıdaki şekilde çıkarılabilir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsDefaultInstance.py" >}}

İşleme tabi tutulan tüm belgelerin aynı yazı tipi ayarlarını gerektirdiğinden eminseniz, varsayılan [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) örneğini kurup kullanmanız önerilir. Tüm belgeleriniz için aynı yazı tipi kaynaklarını kullanmanız gerektiğini varsayalım. Bu durumda, varsayılan örneği aşağıdaki şekilde değiştirebilirsiniz:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsFontSource.py" >}}

{{% alert color="primary" %}}

Özel [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/), varsayılan örnekten daha yüksek önceliğe sahiptir.

{{% /alert %}}

## Yazı Tipi Kullanılabilirliği ve Değiştirme

Bir belgedeki metin, Arial, Times New Roman, Verdana ve diğerleri gibi çeşitli yazı tipleriyle biçimlendirilebilir. Aspose.Words bir belgeyi oluşturduğunda belgede belirtilen yazı tiplerini seçmeye çalışır.

Ancak tam yazı tipinin bulunamadığı ve Aspose.Words'in onu benzer bir yazı tipiyle değiştirmesi gerektiği durumlar vardır. Aspose.Words yazı tipini aşağıdaki işleme göre seçer:
1. Aspose.Words, mevcut yazı tipi kaynakları arasından tam yazı tipi adına sahip bir yazı tipi bulmaya çalışır.
1. Aspose.Words, orijinal belgeye gömülü yazı tipleri arasından gerekli yazı tipini bulmaya çalışır. DOCX gibi bazı belge formatları gömülü yazı tipleri içerebilir.
1. Aspose.Words, gerekli yazı tipini tam ad eşleşmesiyle ve bu yazı tipi için tanımlanmış [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) özelliğiyle bulamazsa, Aspose.Words, yazı tipi bilgilerini belirten [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) sınıfından [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) ile tanımlanan yazı tipini bulacaktır.
1. Aspose.Words tanımlı yazı tipini bulamıyorsa ve [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) de tanımlı değilse yazı tipi değiştirme kuralları aşağıda açıklandığı gibi tek tek uygulanır (uygun değiştirme bulunduğunda Yazı Tipi Değiştirme İşlemi durdurulur ve sonraki adım yürütülmez):
   1. Aspose.Words ilk olarak yazı tipi adını işlemeye çalışarak yerine koymayı dener, özellikle "-" ve "," ayırıcıları olan son ekleri kaldırmaya çalışır.<br>
      Bu değiştirme kuralı gerçekleşirse, "'&lt;OriginalFont&gt;' Yazı Tipi bulunamadı. Bunun yerine '&lt;SubstitutionFont&gt;' yazı tipi kullanılıyor. Neden: yazı tipi adı değişikliği." uyarısı görünür.<br>
   1. Daha sonra Aspose.Words, eğer mevcutsa, **FontConfig** yardımcı programını kullanarak işletim sistemi yazı tipi ayarlarını uygulamaya çalışır. Bu Windows olmayan özellik, FontConfig uyumlu bir işletim sistemiyle kullanılmalıdır. Hemen hemen tüm Unix tabanlı işletim sistemlerinde, sistem genelinde yazı tipi yapılandırması, özelleştirme ve uygulamalara erişim sağlamak üzere tasarlanmış bir `FontConfig` kitaplığı zaten bulunur. Aksi takdirde bu kütüphane kullanıcı tarafından kolaylıkla kurulabilir.
      Aspose.Words, verileri nasıl sorgulayacağını ve FontConfig sonuçlarını kendi amaçları doğrultusunda nasıl yorumlayacağını bilir. Varsayılan olarak `FontConfig` yardımcı programı devre dışıdır. Bunu aşağıdaki şekilde etkinleştirebilirsiniz:<br>
{{< highlight python >}}
fontSettings.substitution_settings.font_config_substitution.enabled = True
{{< /highlight >}}
   1. Bir sonraki adımda **Table** değiştirme kuralı adı verilen basit ama güçlü bir mekanizma kullanılır. Varsayılan olarak bu özellik etkindir ve ilgili işletim sistemi için kullanılabilir. Aspose.Words, `FontConfig` değiştirme kuralıyla değiştirilmediği takdirde yazı tipini bu kuralla değiştirecektir.<br>
      Aspose.Words, farklı işletim sistemleri için temel değiştirme kurallarını tanımlayan XML tablolarını kullanır. Tablo ikame kuralına göre yedek yazı tipi adları listesi kullanılacaktır.<br>
      **XML**<br>
{{< highlight html >}}
<TableSubstitutionSettings xmlns="Aspose.Words"> 
<SubstitutesTable> 
<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
… 
</SubstitutesTable> 
</TableSubstitutionSettings>
{{< /highlight >}}
      Bu kuralın ana özelliği, aşağıdaki örnekte gösterildiği gibi, kendi değişiklik tablolarınızı yükleyebilmenizdir:<br>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.load("Table.xml")
{{< /highlight >}}
      Bu mekanizmanın esnekliğine rağmen, aşağıda gösterildiği gibi onu devre dışı bırakmanın daha iyi olduğu bazı durumlar vardır:<br>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.enabled = False
{{< /highlight >}}
   1. Tablo değiştirme kuralı yazı tipini bulamazsa [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) değiştirme kuralı uygulanacaktır. Bu mekanizma varsayılan olarak etkindir. Aspose.Words, belirli bir belgenin içerdiği yazı tipi bilgisine göre en uygun yazı tipini bulur. Bu bilgiler aşağıda gösterildiği gibi [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) sınıfından elde edilebilir:<br>
{{< highlight python >}}
fontInfos = doc.font_infos
{{< /highlight >}}
      Tatmin edici olmayan sonuçlar durumunda devre dışı bırakmaya karar vermedikçe kullanıcılar bu özelliğin iş akışına müdahale edemez:<br>
{{< highlight python >}}
fontSettings.substitution_settings.font_info_substitution.enabled = False
{{< /highlight >}}
      Eksik yazı tipi için [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) mevcut değilse işlem durur.<br>
   1. `FontInfo` değişikliğinin de başarısız olması durumunda [DefaultFont](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/) değiştirme kuralı uygulanacaktır. Bu kural aynı zamanda varsayılan olarak etkindir. Bu kurala göre Aspose.Words, [default_font_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/default_font_name/) özelliğinde belirtilen varsayılan yazı tipini kullanmaya çalışacaktır. Kullanıcı kendi varsayılan yazı tipini seçmemişse, varsayılan yazı tipi olarak "Times New Roman" kullanılacaktır. Bu kural aşağıda gösterildiği gibi devre dışı bırakılabilir:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.enabled = False
{{< /highlight >}}
      Geçerli varsayılan yazı tipini kontrol etmek için şunu kullanın:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name
{{< /highlight >}}
      Kendi değiştirme seçeneğinizi ayarlamak için şunları uygulayın:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name = "Arial"
{{< /highlight >}}
1. Aspose.Words yazı tipi değişimini gerçekleştiremezse mevcut yazı tipi kaynaklarından ilk kullanılabilir yazı tipini almaya çalışır.
1. Son olarak, Aspose.Words mevcut yazı tipi kaynakları arasında herhangi bir yazı tipi bulamazsa, belgeyi Aspose.Words paketine katıştırılmış ücretsiz Fanwood yazı tipini kullanarak işler.<br>

[FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) mevcutsa *FontInfo değiştirme kuralı* her zaman yazı tipini çözer ve varsayılan yazı tipi kuralını geçersiz kılar. Varsayılan yazı tipi kuralını kullanmak istiyorsanız *FontInfo değiştirme kuralını* devre dışı bırakmalısınız. *FontConfig değiştirme kuralının* çoğu durumda yazı tipini çözeceğini ve dolayısıyla diğer tüm kuralları geçersiz kılacağını unutmayın.

## XML'den Yazı Tipi FallBack Ayarları

Aspose.Words'te kullanılan iki farklı mekanizma vardır: Yazı tipi değiştirme ve Yazı tipi geri dönüşü. Yazı tipi değişikliği, belgede belirtilen yazı tipinin yukarıdaki bölümlerde anlatıldığı gibi yazı kaynakları arasında bulunamadığı durumlarda kullanılır. Yazı tipi geri dönüş mekanizması, yazı tipi çözümlendiğinde kullanılır ancak belirli bir karakter içermez. Bu durumda Aspose.Words, karakter için geri dönüş yazı tiplerinden birini kullanmaya çalışır.

Mevcut yazı tiplerini tarayarak geri dönüş ayarlarını otomatik olarak oluşturan bir [build_automatic](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/build_automatic/) yöntemi vardır. Bu yöntem ideal olmayan bir geri dönüş ayarı oluşturabileceğinden, [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) sınıfının özelliklerini kullanarak yazı tipi geri dönüş davranışını denetleyebilirsiniz. Bu sınıf, yazı tipi geri dönüş mekanizmasının ayarlarını belirtir. [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) sınıfının bir örneğini aşağıdaki gibi alabilirsiniz:

{{< highlight python >}}
settings = fontSettings.fallback_settings
{{< /highlight >}}

*Tablo değiştirme kuralına* benzer şekilde, bu mekanizma yapılandırma için XML tablolarını kullanır. Bu XML tabloları aşağıdaki yöntemlerle yüklenebilir ve kaydedilebilir:

{{< highlight python >}}
fontSettings.fallback_settings.load("MyNewFallbackTable.xml")
fontSettings.fallback_settings.save("Current_FallbackTable.xml")
{{< /highlight >}}

Aspose.Words sürümü iki tablo içerir: *MsOfficeFallbackSetting.xml* ve *NotoFallbackSetting.xml*.

*MsOfficeFallbackSetting* tablosu, bir dizi karakter için Microsoft Word tarafından kullanılan stratejiye benzer bir değiştirme stratejisi tanımlar. Bu nedenle strateji, Microsoft Office yazı tiplerinin yüklenmesini gerektirir. *MsOfficeFallbackSetting* aşağıdaki yöntem kullanılarak etkinleştirilebilir:

{{< highlight python >}}
fontSettings.fallback_settings.load_ms_office_fallback_settings()
{{< /highlight >}}

*NotoFallbackSetting* tablosu, özellikle Google Noto yazı tipleriyle kullanılmak üzere oluşturulmuştur (sonraki bölümde Google Noto yazı tipi ayarları hakkında daha fazla bilgi edinin) ve aşağıdaki şekilde etkinleştirilebilir:

{{< highlight python >}}
fontSettings.fallback_settings.load_noto_fallback_settings()
{{< /highlight >}}

Aşağıdaki kod örneği, bir XML dosyasından yazı tipi geri dönüş ayarlarının nasıl yükleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontFallbackSettings.py" >}}

Yukarıdaki kod örneğinde aşağıdaki XML dosyası kullanılmıştır:

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

## Google Noto Yazı Tipleri için Önceden Tanımlanmış Yazı Tipi Geri Dönüş Ayarları

Aspose.Words, Google Noto yazı tipleri için önceden tanımlanmış yazı tipi geri dönüş ayarları sağlar. Bunlar, Google Noto Yazı Tiplerinden indirilebilen, SIL Açık Yazı Tipi Lisansı kapsamında lisanslanan ücretsiz yazı tipleridir. [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) sınıfı bir [load_noto_fallback_settings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/load_noto_fallback_settings/) yöntemi sağlar. Aşağıdaki kod örneğinde gösterildiği gibi Google Noto yazı tiplerini kullanan önceden tanımlanmış geri dönüş ayarlarını yükler:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetPredefinedFontFallbackSettings.py" >}}

{{% alert color="primary" %}}

Önceden tanımlanmış ayarlarda yalnızca normal ağırlığa sahip Sans stili Noto yazı tipleri kullanılır.

{{% /alert %}}

## Aspose.Words'in Yazı Tiplerini Aradığı Yer

Aspose.Words, dosya sisteminde TrueType yazı tiplerini otomatik olarak bulmaya çalışır. Genellikle, `TrueType` yazı tiplerini bulmak için Aspose.Words'in varsayılan davranışına güvenebilirsiniz, ancak bazen TrueType yazı tiplerini içeren kendi klasörlerinizi belirtmeniz gerekir. [TrueType Yazı Tiplerinin Konumunu Belirtin](/words/tr/python-net/specifying-truetype-fonts-location/) konusu, Aspose.Words'in yazı tiplerini nasıl ve nerede aradığını ve ayrıca kendi yazı tipi konumlarınızı nasıl belirleyeceğinizi açıklar.

## Aspose.Words ve Microsoft Word'de Yazı Tipi Formatlarının İşlenmesindeki Farklılıklar

Aşağıdaki tabloda gösterildiği gibi Aspose.Words ve Microsoft Word'de yazı tipi formatlarının işlenmesinde bazı farklılıklar vardır:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| TrueType yazı tipleri ve TrueType ana hatlarıyla OpenType yazı tipleri | Desteklendi. | Desteklendi. |
| PostScript ana hatlarına sahip OpenType yazı tipleri | Çoğu senaryo için desteklenir. PDF ve XPS gibi sabit sayfa formatlarına gömme desteklenmez. Metin bitmap görselleriyle değiştirilir. | Sabit sayfa formatlarına gömme de dahil olmak üzere çoğu senaryo için desteklenir. |
| OpenType Yazı Tipi Çeşitleri | Yalnızca adlandırılmış örnekler desteklenir. Sürekli varyasyonlar desteklenmiyor. | Yalnızca varsayılan örnek için desteklenir. Adlandırılmış örnekler ve sürekli varyasyonlar desteklenmez. |
| Type1 yazı tipleri | 2013'ten önceki Windows sürümlerinde ve MacOS sürümlerinde desteklenir. 2013'ten itibaren Windows sürümlerinde destek kaldırılmıştır. | Desteklenmiyor. |

## Ayrıca bakınız

- Ücretsiz yazı tiplerini indirmek için [Google Noto Yazı Tipleri](https://fonts.google.com/noto)
