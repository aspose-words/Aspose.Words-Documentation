---
title: MFont Kullanılabilirlik ve İkame C++
second_title: Aspose.Words için C++
articleTitle: Yazı Tipi Kullanılabilirliği ve Değiştirilmesi
linktitle: Yazı Tipi Kullanılabilirliği ve Değiştirilmesi
description: "Tam ikame yazı tipi bulunamadığında, Aspose.Words bunun yerine benzer bir yazı tipinin yerini almalıdır. Bu makalede, en uygun yazı tipini bulma işlemi açıklanmaktadır."
type: docs
weight: 12
url: /tr/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

Belgedeki bir metin, Arial, Times New Roman, Verdana ve diğerleri gibi çeşitli yazı tipleriyle biçimlendirilebilir. Aspose.Words bir belgeyi oluşturduğunda, belgede belirtilen yazı tiplerini seçmeye çalışır.

Ancak, tam yazı tipinin bulunamadığı durumlar vardır ve Aspose.Words bunun yerine benzer bir yazı tipinin yerini almalıdır. Aspose.Words aşağıdaki işleme göre yazı tipini seçer:

1. Aspose.Words kullanılabilir font kaynakları arasında tam font adına sahip bir font bulmaya çalışır.
1. Aspose.Words orijinal belgeye gömülü fontlar arasında gerekli fontu bulmaya çalışır. DOCX gibi bazı belge biçimleri gömülü yazı tipleri içerebilir.
1. Aspose.Words, tam ad eşleşmesine sahip gerekli yazı tipini ve bu yazı tipi için tanımlanan [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) özelliğini bulamazsa, Aspose.Words, yazı tipi bilgilerini belirten [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info) sınıfından **AltName** ile tanımlanan yazı tipini bulacaktır.
1. Aspose.Words tanımlanan yazı tipini bulamıyorsa ve **AltName** da tanımlanmamışsa, aşağıda açıklandığı gibi yazı tipi değiştirme kuralları tek tek uygulanır (uygun değiştirme bulunduğunda Yazı Tipi Değiştirme İşlemi durur ve bir sonraki adım yürütülmez):
   1. Aspose.Words, varsa `FontConfig` yardımcı programını kullanarak OS yazı tipi ayarlarını uygulamaya çalışacaktır. BuWindows olmayan özellik, FontConfig uyumlu OS ile kullanılmalıdır. Hemen hemen her Unıx tabanlı OS, sistem genelinde yazı tipi yapılandırması, özelleştirme ve uygulamalara erişim sağlamak için tasarlanmış bir `FontConfig` kitaplığına sahiptir. Aksi takdirde, bu kütüphane kullanıcı tarafından kolayca kurulabilir.<br>
      Aspose.Words verilerin nasıl sorgulanacağını ve FontConfig sonuçların kendi amaçları için nasıl yorumlanacağını bilir. Varsayılan olarak, `FontConfig` yardımcı programı devre dışıdır. Bunu aşağıdaki gibi etkinleştirebilirsiniz:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. Bir sonraki adım, [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule) adı verilen basit ama inanılmaz derecede güçlü bir mekanizmadır. Varsayılan olarak, bu özellik etkindir ve herhangi bir OS için kullanılabilir. Aspose.Words, farklı OS için temel ikame kurallarını tanımlayan XML tabloları kullanır. Tablo değiştirme kuralına göre, yedek yazı tipi adlarının listesi kullanılacaktır.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - değiştirilecek bir yazı tipi, SubstituteFonts - virgülle ayrılmış ikame varyantlarının listesi. Mevcut ilk yazı tipi değiştirme için kullanılır.<br>
      Bu kuralın temel özelliği, aşağıdaki örnekte gösterildiği gibi kendi ikame tablolarınızı yükleme yeteneğidir:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      Varolan tabloyu kavanozdan temel alabilir veya programlı olarak aşağıdaki şekilde kaydedebilirsiniz:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      Bu mekanizmanın esnekliğine rağmen, aşağıda gösterildiği gibi devre dışı bırakmanın daha iyi olduğu bazı durumlar vardır:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. Tablo değiştirme kuralı yazı tipini bulamazsa **FontInfo** değiştirme kuralı uygulanır. Bu mekanizma varsayılan olarak etkindir. Aspose.Words belirli bir belgede yer alan yazı tipi bilgilerine göre en uygun yazı tipini bulur. Bu bilgi aşağıda gösterildiği gibi **FontInfo** sınıfından elde edilebilir:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Kullanıcılar, tatmin edici olmayan sonuçlar olması durumunda devre dışı bırakmaya karar vermedikçe bu özelliğin iş akışına müdahale edemezler:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Eksik yazı tipi için **FontInfo** mevcut değilse, işlem durur.
   1. `FontInfo` ikamesinin de başarısız olması durumunda **DefaultFont** ikame kuralı uygulanacaktır. Bu kural varsayılan olarak da etkindir. Bu kurala göre Aspose.Words, [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/) özelliğinde belirtilen varsayılan yazı tipini kullanmaya çalışacaktır. Kullanıcı kendi varsayılan yazı tipini seçmediyse, varsayılan yazı tipi olarak "Times New Roman" kullanılacaktır. Bu kural aşağıda gösterildiği gibi devre dışı bırakılabilir:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Geçerli varsayılan yazı tipini kontrol etmek için:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      Kendi değiştirme seçeneğinizi ayarlamak için başvurun:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. Aspose.Words yazı tipi değiştirmeyi gerçekleştiremiyorsa, kullanılabilir ilk yazı tipini kullanılabilir yazı tipi kaynaklarından almaya çalışır.
1. Son olarak, Aspose.Words kullanılabilir yazı tipi kaynakları arasında herhangi bir yazı tipi bulamazsa, belgeyi Aspose.Words derlemesine katıştırılmış serbest Fanwood yazı tipini kullanarak oluşturur.

{{% alert color="primary" %}}

**FontInfo** kullanılabilirse, *FontInfo substitution rule* her zaman yazı tipini çözer ve varsayılan yazı tipi kuralını geçersiz kılar. Varsayılan yazı tipi kuralını kullanmak istiyorsanız, *FontInfo substitution rule* 'i devre dışı bırakmalısınız. *FontConfig substitution rule* 'ın çoğu durumda yazı tipini çözeceğini ve bu nedenle diğer tüm kuralları geçersiz kılacağını unutmayın.

{{% /alert %}}


