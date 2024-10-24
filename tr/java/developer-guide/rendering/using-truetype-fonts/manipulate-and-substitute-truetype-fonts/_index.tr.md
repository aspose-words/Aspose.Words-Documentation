---
title: TrueType Yazı Tiplerini Manipüle Et ve Değiştir
second_title: Aspose.Words için Java
articleTitle: TrueType Yazı Tiplerini Manipüle Et ve Değiştir
linktitle: TrueType Yazı Tiplerini Manipüle Et ve Değiştir
description: "Aspose.Words için Java doğru TrueType yazı tiplerini sonuçlara gömebilir ve bunun doğru görüntülenmesini sağlayabilir, uygun bir yazı tipi değişikliği arayabilir veya yazı tipi yedekleme mekanizmasını kullanabilir."
type: docs
weight: 10
url: /tr/java/manipulate-and-substitute-truetype-fonts/
---

Aspose.Words çeşitli görevler için TrueType yazı tiplerine ihtiyaç duyar, örneğin belgelerin sabit sayfa formatlarına dönüştürülmesi, örneğin PDF veya XPS. Bir belgeyi işlerken, Aspose.Words'in TrueType yazı tiplerini sonuç belgesine gömme ve alt kümelere ayırma işlemleri gerçekleştirmesi gerekir ki bu da popüler PDF veya XPS formatları dahil olmak üzere bir belge üretimi sırasında normal bir uygulamadır. Bu, belgenin herhangi bir görüntüleyiciye aynı görüneceğinden emin olur. Ayrıca, XPS spesifikasyonu, yazı tiplerinin belgenin her zaman gömülü olmasını gerektirir.

Doğruluğunu sağlamak için Aspose.Words karakterleri doğru bir şekilde ölçmeli ve ilgili yazı tiplerini başarıyla yerleştirmelidir, bu nedenle aşağıdaki koşullar karşılanmalıdır:

1. Aspose.Words sistemdeki TrueType yazı tiplerini bulup erişebilmeli.
1. Yeterli TrueType yazı tiplerinin Aspose.Words için mevcut olması gerekir, tercihen belgenin kullandığı aynı yazı tipi aile adları ile.

Not edin ki, belge içindeki yazı tipi bir varlık (soyadı, stil, büyüklük, renk gibi) temsil eder ve `TrueType` yazı tipi varlığından (Fiziksel yazı tipi varlığı) farklıdır. Aspose.Words işleme aşamasında belgedeki yazı tipini fiziksel bir yazı tipine çözer. Bu, en yaygın olarak düzen oluşturma sırasında metin boyutunu hesaplama ve sabit sayfa biçimlerine gömme/alt küme ayarlama görevinin yapılmasını sağlayan bazı görevler sağlar. Birkaç başka daha az popüler görev, örneğin yazı tiplerini yüklerken çözümleme ve değiştirme veya bazı akış biçimlerine gömme/alt küme ile ilgili olanlar da etkinleştirilmiştir.

## Font Manipülasyonu ve Performans Sorunları

Tüm mevcut yazı tipi manipülasyon mekanizmaları [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) sınıfında bulunur. Bu sınıf, tanımlanan yazı tipleri kaynaklarından yazı tiplerini almak için ve aşağıda açıklandığı gibi Yazı Tipi Değiştirme işlemi için sorumludur.

Fontlar birkaç adımda ayrıştırılır:

1. Yazı tipi için bilgi alma, tüm mevcut yazı tiplerinden çözüm bulma.
1. Çözümlenen yazı tiplerini mevcut glyph'ları ve ölçümleri (yatay ve dikey) elde etmek için ayrıştırın.
1. Birleştirme ve alt küme için çözümlenen yazı tiplerini ayrıştırma.

Aspose.Words bir belge için bir yazı tipine ilk kez rastladığında, temel yazı tipi bilgilerini (yazı tipi tam adı, aile adı, sürüm, stil vb.) her yazı tipi kaynağında bulunan yazı tipi dosyalarından almayı dener. Bütün yazı tipleri alındıktan sonra Aspose.Words bu detayları gerekli yazı tipi verilerini bulmak ya da istenen yazı tipi için uygun bir değişikliği bulmak için kullanır.

Yukarıda tarif edilen prosedür zaman alıcı olduğundan, ilk çalıştırmada uygulama performansını olumsuz etkileyebilir. Ancak her bir **FontSettings** örneği kendi önbelleği vardır ki bu da sonraki belgelerin işlem süresini azaltabilir. Örneğin, farklı belgelerden bir **FontSettings** sınıfının örneğini paylaşabilirsiniz, bu da belgelerin yüklenmesini hızlandırmanızı sağlar. Aşağıdaki örnek bunu göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

**FontSettings** açıkça tanımlanmadığında, Aspose.Words varsayılan bir **FontSettings** örneği kullanır. Bu örnek ayrıca belgeler arasında otomatik olarak paylaşılır ve şu şekilde çıkarılabilir:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Eğer tüm işleme belgeleri aynı yazı tipi ayarlarını gerektireceğinden emin iseniz, önerilen varsayılan **FontSettings** örneği kurmak ve kullanmaktır. Hadi tüm belgelerin için aynı yazı tipleri kaynaklarını kullanman gerektiğini varsayalım. Bu durumda, varsayılan örneği aşağıdaki gibi sadece değiştirebilirsiniz:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

Özel **FontSettings** varsayılan örneğe kıyasla daha yüksek önceliğe sahiptir.

{{% /alert %}}

## Font Kullanılabilirliği ve Değiştirme

Bir belge içindeki bir metin çeşitli yazı tipleriyle biçimlendirilebilir, örneğin Arial, Times New Roman, Verdana ve diğerleri. Aspose.Words bir belgenin çıktısını aldığında, belge içinde belirtilen yazı tiplerini seçmeye çalışır.

Ancak, tam bir yazı tipinin bulunamadığı durumlar vardır ve Aspose.Words bunun yerine benzer bir yazı tipi seçmek zorundadır. Aspose.Words aşağıdaki süreçte olduğu gibi bir yazı tipi seçer:

1. Aspose.Words mevcut yazı kaynakları arasında tam bir yazı adı ile bir yazı bulmaya çalışır.
1. Aspose.Words orijinal belgedeki gömülü yazı tiplerini kullanarak gerekli yazı tipini aramaya çalışır. DOCX gibi bazı belge formatları içe yerleştirilmiş yazı tiplerini içerebilir.
1. Eğer Aspose.Words, gerekli yazı tipini tam eşleşme ile bulamıyorsa ve bu yazı tipi için tanımlanan [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) özelliği varsa, Aspose.Words **AltName** özelliğine tanımlanan yazı tipini [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) sınıfından bulur.
1. Eğer Aspose.Words tanımlanan yazı tipini bulamıyorsa ve **AltName** de tanımlanmamışsa, o zaman font değiştirme kuralları tek tek uygulanır, aşağıda belirtildiği gibi (yüzde uygun bir yerine değiştirme bulunduğunda, Font Değiştirme Süreci durdurulur ve sonraki adım yürütülmez):
   1. Aspose.Words OS yazı tipi ayarlarını uygulamaya çalışacak, eğer varsa, `FontConfig` yardımcı programı kullanarak. Bu Windows olmayan özellik bir FontConfig uyumlu OS ile kullanılmalıdır. Neredeyse her Unix tabanlı işletim sistemine zaten sistem genelinde yazı tipi yapılandırması, özelleştirme ve uygulamalara erişim sağlayan bir `FontConfig` kitaplığı vardır. Aksi takdirde, bu kütüphane kullanıcı tarafından kolayca yüklenebilir.<br>
      Aspose.Words kendi amaçları için sorgu verileri ve FontConfig sonuçlarını nasıl yorumlayacağını bilir. Varsayılan olarak `FontConfig` utilitesi devre dışı bırakılmıştır. Onu aşağıdaki şekilde etkinleştirebilirsin:</br>
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. Sonraki adım basit ama inanılmaz derecede güçlü bir mekanizma olan [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/) adlı şeydir. Varsayılan olarak bu özellik her işletim sistemi için aktif ve mevcuttur. Aspose.Words farklı işletim sistemleri için temel yer değiştirme kurallarını tanımlayan XML tablolarını kullanır. Tablo yer değiştirme kuralına göre, kullanılacak yardımcı yazı tipi adlarının listesi.<br>
      **XML**<br>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - değiştirilecek yazı tipi, SubstituteFonts - türev varyantların listesi, virgülle ayrılır. Kullanılabilir ilk yazı tipi yedekleme için kullanılır.<br />
      Bu kuralın ana özelliği kendi yer değiştirme tablolarını yükleme yeteneğidir, aşağıdaki örnekte gösterilmiştir:<br>
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Aşağıdaki şekilde programatik olarak kaydederek var olan tabloyu temele alabilirsiniz:<br>
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Bu mekanizmanın esnekliğine rağmen, aşağıda gösterildiği gibi onu devre dışı bırakmak bazı durumlarda daha iyi olur:<br>
      **Java** < br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. **FontInfo** yerine geçme kuralı, tablo değiştirme kuralının yazı tipini bulamaması durumunda uygulanacaktır. Bu mekanizma varsayılan olarak etkinleştirilmiştir. Aspose.Words bir belge içindeki yazı tipi bilgileri dikkate alınarak en uygun yazı tipini bulur. Bu bilgi **FontInfo** sınıfı kullanılarak aşağıdaki gösterildiği gibi elde edilebilir:<br>
      **Java** <br>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Kullanıcılar bu özelliğin iş akışını, istenmeyen sonuçlar durumunda devre dışı bırakmayı seçmedikleri sürece etkilemeye çalışamazlar:<br>
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Eğer eksik yazı tipi için **FontInfo** kullanılabilir değilse, süreç durur.
   1. **DefaultFont** ikame kuralı, `FontInfo` ikamelerin başarısız olduğu durumlarda uygulanacaktır. Bu kural da varsayılan olarak etkinleştirilmiştir. Bu kurala göre, "Aspose.Words" varsayılan yazı tipini belirtilen "[DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName)" özelliğinde kullanmaya çalışacaktır. Kullanıcı kendi varsayılan yazı tipini seçmemişse," "Times New Roman" varsayılan yazı tipi olarak kullanılacak. Bu kural aşağıda gösterildiği gibi devre dışı bırakılabilir:"<br>
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Geçerli varsayılan yazı tipini kontrol etmek için <br>kullanın:
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Kendi değişim seçeneğini kurmak için uygulayın:<br>
      **Java**<br>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Eğer Aspose.Words, yazı tipisi değiştirme işlemini gerçekleştiremiyorsa o zaman mevcut yazı tipleri kaynağından ilk eldeki yazı tipisini almak için çalışır.
1. Son olarak, eğer Aspose.Words mevcut yazı kaynakları arasında hiç bir yazı tipini bulamazsa, o zaman belgeyi, Aspose.Words'ın derlemesinde gömülü olan ücretsiz Fanwood yazı tipi kullanılarak işler.

{{% alert color="primary" %}}

Eğer **FontInfo** mevcutsa, *FontInfo kuralları* her zaman yazı tipini çözecek ve varsayılan yazı tipi kuralını geçersiz kılacaktır. Varsayılan yazı tipi kuralını kullanmak istiyorsanız, *FontInfo değiştirme kuralı* 'ni devre dışı bırakmalısınız. Notun, *FontConfig yer değiştirme kuralı* çoğu durumda yazı tipini çözüme kavuşturacak ve böylece tüm diğer kuralları geçersiz kılacaktır.

{{% /alert %}}

## Yazımın Değiştirildiğini Tanıma Şekli

Bazen, belgenin düzeninin neden değiştiğini veya bazı yazı tiplerinin beklenen gibi görünmediğini anlamak zor olabilir. Bu tür durumlarda, yazı tipi yer değiştirme uyarıları [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) arayüz tarafından uygulanan mesajlarla kurtarılır. Onlar [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) uyarı türü ve standart açıklama metni biçimi vardır, "Font '<OriginalFont>' bulunamadı. '<SubstitutionFont>' yazı tipini kullanarak. Neden: <Neden>," ile aşağıdaki nedenlerle:

- "belgeden alternatif isim" – [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)'in yerine gelmek için
- fontconfig alt değiştirimi" – "font yapılandırma kuralı ile değiştirme için
- "tablo altaması" – tablo kuralı ile değiştirme için
- "font bilgi yer değiştirme" – font bilgi kurallarıyla değiştirme için
- "varsayılan yazı tipi yer değiştirme" – varsayılan yazı tipi kuralı için yer değiştirme
- "ilk mevcut yazı tipi" – ilk mevcut yazı tipine

## XML'den FontFallBack Ayarları

Aspose.Words içinde kullanılan iki farklı mekanizma vardır - yazı tipi değiştirme ve yazı tipi geri çağırma. Tip ikame, belgedeki belirtilen yazı tipinin, yukarıdaki bölümlerde açıklandığı gibi yazı tipi kaynaklarında bulunamadığı zaman kullanılır. Font yedekleme mekanizması yazı tipi çözümlendiğinde kullanılır, ancak belirli bir karakteri içermez. Bu durumda Aspose.Words karakteri için bir yedek yazı tipini kullanmaya çalışıyor.

Kullanılabilir yazı tiplerini tarayarak otomatik olarak yedek ayarları oluşturan bir [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) yöntemi var. Bu yöntem bir alternatif ayar üretirken en verimli olmayan düşünebilir, sen [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) sınıfını kullanarak yazı tipi davranışını kontrol edebilirsin. Bu sınıf yazı tipi yedekleme mekanizmasının ayarlarını belirtir. Aşağıdaki şekilde **FontFallbackSettings** sınıfının bir örneğini elde edebilirsiniz:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

Benzer şekilde *Tablo değiştirme kuralı*" bu mekanizma yapılandırmak için XML tablolar kullanır. Bu XML tabloları aşağıdaki yöntemlerle yüklenebilir ve kaydedilebilir:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

Aspose.Words sürümünü iki tablo içerir: *MsOfficeFallbackSetting.xml* ve *NotoFallbackSetting.xml*.

The *MsOfficeFallbackSetting* tablo belirli bir karakter aralığı için bir değiştirme stratejisi tanımlar, bu da Microsoft Word'in kullandığı stratejiye benzer. Böylece strateji, Microsoft Office yazı tiplerinin yüklenmesini gerektirir. *MsOfficeFallbackSetting*, aşağıdaki yöntem kullanılarak etkinleştirilebilir:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

Aşağıdaki *NotoFallbackSetting* tablosu özellikle Google Noto yazı tipleriyle kullanılmak üzere oluşturulmuştur (bir sonraki bölümde Google Noto yazı tipi ayarlarıyla ilgili daha fazla bilgi edinin) ve aşağıdaki gibi etkinleştirilebilir:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

Aşağıdaki kod örneği bir XML dosyasından yazı tipi yedeleme ayarlarını nasıl yükleneceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

Yukarıdaki kod örneğinde kullanılan aşağıdaki XML dosyası:

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

## Önceden Belirlenmiş Yazı Tipi Yedekleme Ayarları için Google Noto Yazı Tipleri

Aspose.Words Google Noto yazı tipleri için önceden belirlenmiş yazı tipi yedekleme ayarlarını sağlar. Bunlar, SIL Açık Yazı Lisansı altında lisanslı ücretsiz yazı tipleridir ve Google Noto Yazı Tipleri'nden indirilebilir. The **FontFallbackSettings** sınıfı bir [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) yöntemini sağlar. Önceden belirlenmiş yedekleme ayarlarını yükler, bunlar kod örneğinde gösterildiği gibi Google Noto yazı tipini kullanır:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Yalnızca Sans yazı tiplerinde normal ağırlığı olan Noto yazı tipleri önceden belirlenmiş ayarlarda kullanılır.

{{% /alert %}}

## Nerede Aspose.Words Yazı Tiplerini Arar?

Aspose.Words dosya sisteminde otomatik olarak TrueType yazı tiplerini bulmaya çalışır. Genellikle, Aspose.Words varsayılan davranışını kullanarak `TrueType` yazı tiplerini bulabilirsiniz, fakat bazen kendi TrueType yazı tiplerinin bulunduğu klasörlerinizi belirtmeniz gerekir. Konu [Specify TrueType Fonts Location](/words/java/specify-truetype-fonts-location/) Aspose.Words yazı tiplerini nasıl ve nerede aradığını ve kendi yazı tiplerinin konumunu belirtmeyi anlatır.

## Font Biçimleme İşlemlerinde Aspose.Words ve Microsoft Word'te Olan Farklar

Aşağıdaki tabloda gösterildiği gibi, yazı tipleri formatlarının işlenmesi Aspose.Words ve Microsoft Word arasında bazı farklılıklar vardır:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType yazı tipleri ve TrueType çizgileri olan OpenType yazı tipleri | Desteklendi. | Destekli. |
| Postscript çizgileri olan OpenType yazı tipleri | Çoğu senaryo için desteklenir. Sabit sayfa formatlarına gömme ve örneğin PDF ve XPS'a destek verilmiyor. Metin bitmap görüntüleriyle değiştirilir. | Çoğu senaryo için desteklenir, sabit sayfa formatlarına gömme dahil. |
| Açık Tip Yazı Variasyonları | Sadece adlandırılmış örnekler desteklenmektedir. Sürekli varyasyonlar desteklenmiyor. | Varsayılan tek örnek için desteklenir. Adlandırılmış örnekler ve sürekli varyasyonlar desteklenmemektedir. |
| Tip1 yazı tipleri | 2013'ten önceki Windows sürümlerinde ve macOS sürümlerinde desteklenir. Destek 2013'ten başlayarak Windows sürümlerinde bırakılır. | Desteklenmiyor. |

## Ayrıca bakınız:

- [Google Noto Fonts](https://fonts.google.com/noto)'ı ücretsiz yazı tiplerini indirmek için kullanın


