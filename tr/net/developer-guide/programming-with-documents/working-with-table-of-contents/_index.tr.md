---
title: C#'te İçindekiler Tablosu ile Çalışmak
second_title: .NET için Aspose.Words
articleTitle: İçindekiler Tablosu ile Çalışma
linktitle: İçindekiler Tablosu ile Çalışma
description: "Ayrıntılı olarak İçerik Tablosu alanı. C# kullanarak `TOC` alanı nasıl oluşturulur ve değiştirilir? `TOC` C#'yi ekleyin."
type: docs
weight: 170
url: /tr/net/working-with-table-of-contents/
---

Çoğunlukla içindekiler tablosu (TOC) içeren belgelerle çalışacaksınız. Aspose.Words'i kullanarak kendi içindekiler tablonuzu ekleyebilir veya yalnızca birkaç satır kod kullanarak belgedeki mevcut içindekiler tablosunu tamamen yeniden oluşturabilirsiniz. Bu makalede, içindekiler alanıyla nasıl çalışılacağı özetlenmekte ve aşağıdakiler gösterilmektedir:

- Yepyeni bir `TOC` nasıl eklenir
- Belgedeki yeni veya mevcut İçindekiler'i güncelleyin.
- TOC'nin biçimlendirmesini ve genel yapısını kontrol etmek için anahtarları belirtin.
- İçindekiler tablosunun stilleri ve görünümü nasıl değiştirilir?
- Belgedeki tüm girişlerle birlikte `TOC` alanının tamamı nasıl kaldırılır.

## İçindekiler Tablosunu Program Aracılığıyla Ekle

[InsertTableOfContents](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/inserttableofcontents/) yöntemini çağırarak belgeye geçerli konuma bir `TOC` (içindekiler tablosu) alanı ekleyebilirsiniz.

Bir Word belgesindeki içindekiler tablosu çeşitli şekillerde oluşturulabilir ve çeşitli seçenekler kullanılarak biçimlendirilebilir. Yönteme ilettiğiniz alan anahtarları, tablonun oluşturulma ve belgenizde görüntülenme biçimini denetler.

Microsoft Word'ye eklenen `TOC`'te kullanılan varsayılan anahtarlar **"\o "1-3 \h \z \u"**'dir. Bu anahtarların açıklamalarının yanı sıra desteklenen anahtarların bir listesini makalenin ilerleyen kısımlarında bulabilirsiniz. Doğru anahtarları almak için bu kılavuzu kullanabilir veya istediğiniz `TOC`'i içeren bir belgeniz varsa alan kodlarını (*ALT+F9*) gösterebilir ve anahtarları doğrudan alandan kopyalayabilirsiniz.

Aşağıdaki kod örneği, içindekiler tablosu alanının bir belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-DocumentBuilderInsertTOC.cs" >}}

Aşağıdaki kod örneği, başlık stillerini giriş olarak kullanarak bir belgeye İçindekiler Tablosunun (TOC) nasıl ekleneceğini gösterir.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTableOfContents.cs" >}}

{{% alert color="primary" %}}

Örnekte kullanılan yöntemler olmadan, çıktı belgesini açtığınızda `TOC` alanını bulursunuz, ancak görünür içerik yoktur. Bunun nedeni `TOC` alanının eklenmiş olması ancak belgede güncellenene kadar henüz doldurulmamış olmasıdır. Bununla ilgili daha fazla bilgi bir sonraki bölümde tartışılacaktır.

{{% /alert %}}

## İçindekiler Tablosunu Güncelle

Aspose.Words, bir `TOC`'yi yalnızca birkaç satır kodla tamamen güncellemenize olanak tanır. Bu, yeni eklenen bir `TOC`'yi doldurmak veya belgede değişiklikler yapıldıktan sonra mevcut bir `TOC`'yi güncellemek için yapılabilir. Belgedeki `TOC` alanlarını güncellemek için aşağıdaki iki yöntemin kullanılması gerekir:

1. [UpdateFields](https://reference.aspose.com/words/tr/net/aspose.words/document/updatefields/)
1. [UpdatePageLayout](https://reference.aspose.com/words/tr/net/aspose.words/document/updatepagelayout/)

Lütfen bu iki güncelleme yönteminin bu sırayla çağrılması gerektiğini unutmayın. Tersine çevrilirse içindekiler tablosu doldurulur ancak sayfa numaraları görüntülenmez. Herhangi bir sayıda farklı TOC güncellenebilir. Bu yöntemler belgede bulunan tüm İçindekiler'i otomatik olarak güncelleyecektir.

Aşağıdaki kod örneği, alan güncellemesini çağırarak belgedeki `TOC` alanlarının nasıl tamamen yeniden oluşturulacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-UpdateFields.cs" >}}

**UpdateFields**'e yapılan ilk çağrı `TOC`'yi oluşturacaktır, tüm metin girişleri doldurulur ve `TOC` neredeyse tamamlanmış gibi görünür. Şimdilik eksik olan tek şey "?" ile gösterilen sayfa numaralarıdır. **UpdatePageLayout**'e yapılan ikinci çağrı, belgenin düzenini bellekte oluşturacaktır. Girişlerin sayfa numaralarını toplamak için bunun yapılması gerekir. Bu çağrıdan hesaplanan doğru sayfa numaraları daha sonra İçindekiler Tablosuna eklenir.

## İçindekiler Tablosu Davranışını Denetlemek için Anahtarları Kullanma

Diğer tüm alanlarda olduğu gibi, `TOC` alanı da alan kodu içinde tanımlanan ve içindekiler tablosunun nasıl oluşturulduğunu kontrol eden anahtarları kabul edebilir. Bazı anahtarlar hangi girişlerin dahil edildiğini ve hangi düzeyde dahil edildiğini kontrol etmek için kullanılırken diğerleri TOC'nin görünümünü kontrol etmek için kullanılır. Karmaşık içindekiler tablosunun oluşturulmasına olanak sağlamak için anahtarlar bir araya getirilebilir.

![working-with-table-of-contents-aspose-words-net](/words/net/working-with-table-of-contents/working-with-table-of-contents-1.png)


Varsayılan olarak yukarıdaki bu anahtarlar, belgeye varsayılan bir `TOC` eklenirken dahil edilir. Anahtarı olmayan bir `TOC`, yerleşik başlık stillerinden içerik içerecektir (sanki \O anahtarı ayarlanmış gibi). Aspose.Words tarafından desteklenen mevcut `TOC` anahtarları aşağıda listelenmiş ve kullanımları ayrıntılı olarak anlatılmıştır. Türlerine göre ayrı bölümlere ayrılabilirler. İlk bölümdeki anahtarlar `TOC`'e hangi içeriğin ekleneceğini tanımlar ve ikinci bölümdeki anahtarlar TOC'nin görünümünü kontrol eder. Bir anahtar burada listelenmiyorsa şu anda desteklenmiyor demektir. Tüm anahtarlar gelecek sürümlerde desteklenecektir. Her sürümde daha fazla destek ekliyoruz.

### Giriş İşaretleme Anahtarları

|  Anahtar | Tanım |
|  :-  |  :-  |
| **Heading Styles**<br>*(\O Anahtarı)* | <p>Bu anahtar, `TOC`'in yerleşik başlık stillerinden oluşturulması gerektiğini tanımlar. Microsoft Word'de bunlar Başlık 1 – Başlık 9 ile tanımlanır. Aspose.Words'de bu stiller karşılık gelen StyleIdentifier numaralandırmasıyla temsil edilir. Bu numaralandırma, bir stilin yerel ayardan bağımsız tanımlayıcısını temsil eder; örneğin `StyleIdentifier.Heading1`, Başlık 1 stilini temsil eder. Bunu kullanarak stilin formatı ve özellikleri belgenin Stil koleksiyonundan alınabilir. Karşılık gelen Style sınıfı, StyleIdentifier türünün indekslenmiş özelliği kullanılarak `Document.Styles` koleksiyonundan alınabilir.</p>

<p>![working-with-table-of-contents-styles](/words/net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p>

<p>Bu stillerle biçimlendirilmiş tüm içerikler içindekiler tablosuna dahil edilir. Başlığın düzeyi, TOC'deki girişin karşılık gelen hiyerarşik düzeyini tanımlayacaktır. Örneğin, Başlık 1 stiline sahip bir paragraf, `TOC`'te ilk düzey olarak ele alınırken Başlık 2'ye sahip bir paragraf, hiyerarşide bir sonraki düzey olarak ele alınır ve bu şekilde devam eder.</p> |
| **Outline Levels**<br>*(\U anahtarı)* | <p>Her paragraf, Paragraf seçenekleri altında bir anahat düzeyi tanımlayabilir.</p>

<p>![working-with-table-of-contents-paragraph](/words/net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p>

<p>Bu ayar, bu paragrafın belge hiyerarşisinde hangi düzeyde ele alınması gerektiğini belirler. Bu, bir belgenin düzenini kolayca yapılandırmak için kullanılan yaygın olarak kullanılan bir uygulamadır. Bu hiyerarşi, Microsoft Word'de Anahat Görünümü'ne geçilerek görüntülenebilir. Başlık stillerine benzer şekilde, "Gövde Metni" seviyesine ek olarak 1 – 9 arası taslak seviyesi olabilir. 1'den 9'a kadar olan anahat düzeyleri `TOC`'de hiyerarşinin karşılık gelen düzeyinde görünecektir<br>Anahat düzeyi paragraf stilinde veya doğrudan paragrafın kendisinde ayarlanmış olan her türlü içerik, İçindekiler'e dahil edilir. Aspose.Words'de anahat düzeyi Paragraf düğümünün `ParagraphFormat.OutlineLevel` özelliği tarafından temsil edilir. Bir paragraf stilinin anahat düzeyi aynı şekilde `Style.ParagraphFormat` özelliğiyle temsil edilir.</p>

<p>{{% alert color="primary" %}}</p>

<p>Başlık 1 gibi yerleşik başlık stillerinin, stil ayarlarında ana hat düzeyinde zorunlu bir ayara sahip olduğunu unutmayın.</p>

<p>{{% /alert %}}</p> |
| **Custom Styles**<br>*(\T anahtarı)* | <p>Bu anahtar, İçindekiler'de kullanılacak girişleri toplarken özel stillerin kullanılmasına olanak tanır. Bu, içindekiler tablosuna yerleşik başlık stillerinin yanı sıra özel stilleri de dahil etmek için genellikle \O anahtarıyla birlikte kullanılır.<br>Anahtarın parametreleri konuşma işaretlerinin içine alınmalıdır. Pek çok özel stil eklenebilir; her stil için ad belirtilmeli, ardından virgül ve ardından stilin `TOC`'te görünmesi gereken düzey belirtilmelidir. Diğer stiller de virgülle ayrılmıştır.<br>Örneğin</p>

<p>{{< highlight csharp >}}

<p>  { TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"} </p><p>{{< /highlight >}}</p>

<p>`TOC`'te CustomHeading1 ile stillendirilmiş içeriği 1. düzey içerik olarak ve CustomHeading2 ile stillendirilmiş içeriği 2. düzey olarak kullanacaktır.</p> |
| **Use TC Fields**<br>*(\F ve \L Anahtarları)* | <p>Microsoft Word'in eski sürümlerinde `TOC` oluşturmanın tek yolu TC alanlarının kullanılmasıydı. Bu alanlar, alan kodları gösterildiğinde bile belgeye gizli olarak eklenir. Girişte görüntülenmesi gereken metni içerirler ve `TOC` bunlardan oluşturulur. Bu işlevsellik artık çok sık kullanılmamaktadır ancak bazı durumlarda belgede görünür olacak şekilde girintili olmayan girişleri `TOC`'ye dahil etmek hâlâ yararlı olabilir.<br>Bu alanlar eklendiğinde, alan kodları görüntülense bile gizli görünür. Gizli içerik gösterilmeden görülemezler. Bu alanları görebilmek için Paragraf biçimlendirmesini göster seçeneğinin seçilmesi gerekmektedir.</p>

<p>![working-with-table-of-contents-paragraph-settings](/words/net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p> Bu alanlar, diğer alanlar gibi herhangi bir konuma bir belgeye eklenebilir ve `FieldType.FieldTOCEntry` numaralandırmasıyla temsil edilir.<br>`TOC`'deki \F anahtarı, TC alanlarının giriş olarak kullanılması gerektiğini belirtmek için kullanılır. Herhangi bir ekstra tanımlayıcı olmaksızın geçişin kendi başına yapılması, belgedeki herhangi bir TC alanının dahil edileceği anlamına gelir. Herhangi bir ekstra parametre, genellikle tek bir harf, yalnızca eşleşen \f anahtarına sahip TC alanlarının TOC'ye dahil edileceğini belirtir. Örneğin *</p>

<p>{{< highlight csharp >}}

<p>  { TOC \f t } </p><p>{{< /highlight >}}</p>

<p>yalnızca aşağıdaki gibi TC alanlarını içerecektir:</p>

<p>{{< highlight csharp >}}
p> {   TC \f t }</p><p>{{< /highlight >}}</p>

<p>`TOC` alanının da ilgili bir anahtarı vardır; "\L" anahtarı yalnızca belirtilen aralıktaki seviyelere sahip TC alanının dahil edildiğini belirtir.</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p>

<p>`TC` alanlarının kendisinde de {several, `multiple`, a few, `many`, numerous} anahtarları ayarlanabilir. Bunlar:</p>

<p>- *\F – Yukarıda açıklanmıştır.*</p>

<p>- *\L – Bu TC alanının `TOC`'de hangi seviyede görüneceğini tanımlar. Aynı anahtarı kullanan bir `TOC`, bu TC alanını yalnızca belirtilen aralık dahilindeyse içerecektir.*</p>

<p>- _\N – Bu `TOC` girişinin sayfa numaralandırması görüntülenmez. TC alanlarının nasıl ekleneceğine ilişkin örnek kod sonraki bölümde bulunabilir.</p> |

### Görünümle İlgili Anahtarlar

|  Anahtar | Tanım |
|  :-  |  :-  |
| **Omit Page Numbers**<br>*(\N Anahtar)* | <p>Bu anahtar, TOC'nin belirli düzeyleri için sayfa numaralarını gizlemek için kullanılır. Örneğin tanımlayabilirsiniz</p>

<p>{{< highlight csharp >}}
<p>  {TOC \o "1-4" \n "3-4" } </p><p>{{< /highlight >}}</p>

<p>3. ve 4. seviye girişlerindeki sayfa numaraları (varsa) lider noktalarla birlikte gizlenecektir. Yalnızca bir seviye belirtmek için yine de bir aralık kullanılmalıdır; örneğin "1-1" yalnızca ilk seviye için sayfa numaralarını hariç tutacaktır.<br>Düzey aralığının belirtilmemesi, içindekiler tablosundaki tüm düzeyler için sayfa numaralarının atlanmasına neden olur. Bir belgeyi HTML'ye veya benzer bir formata aktarırken bu ayarı yapmak kullanışlıdır. Bunun nedeni, HTML tabanlı formatların herhangi bir sayfa konseptine sahip olmaması ve dolayısıyla herhangi bir sayfa numaralandırmasına ihtiyaç duymamasıdır.</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p> |
| **Insert As Hyperlinks**<br>*(\H Anahtarı)* | <p>Bu anahtar, `TOC` girişlerinin köprü olarak eklendiğini belirtir. Microsoft Word'de bir belgeyi görüntülerken, bu girişler `TOC` içinde normal metin olarak görünmeye devam eder ancak hiper bağlantılıdır ve bu nedenle Microsoft Word'de *Ctrl + Sol Tıklama* kullanılarak belgedeki orijinal girişin konumuna gitmek için kullanılabilir. Bu anahtar dahil edildiğinde bu bağlantılar diğer formatlarda da korunur. Örneğin, EPUB dahil HTML tabanlı formatlarda ve PDF ve XPS gibi işlenmiş formatlarda bunlar, çalışan bağlantılar olarak dışa aktarılacaktır.<br>Bu anahtar ayarı olmadan tüm bu çıktılardaki `TOC` düz metin olarak dışa aktarılacak ve bu davranışı göstermeyecektir. Bir belge MS Word'de açılırsa, girişlerin metni de bu şekilde tıklanamaz ancak sayfa numaraları orijinal girişe gitmek için hâlâ kullanılabilir.</p>

<p>![working-with-table-of-contents-titles](/words/net/working-with-table-of-contents/working-with-table-of-contents-7.png)</p> |
| **Set Separator Character**<br>*(\P Anahtarı)* | <p>Bu anahtar, girişin başlığını ve sayfa numaralandırmasını ayıran içeriğin TOC'de kolayca değiştirilmesine olanak tanır. Bu anahtardan sonra kullanılacak ayırıcı belirtilmeli ve konuşma işaretleri içine alınmalıdır.<br>Office belgelerinde belgelenenin aksine, en fazla beş karakter yerine yalnızca bir karakter kullanılabilir. Bu hem MS Word hem de Aspose.Words için geçerlidir.<br>Bu anahtarın kullanılması, içindekiler tablosundaki girişleri ve sayfa numaralarını ayırmak için kullanılanlar üzerinde fazla kontrole izin vermediğinden önerilmez. Bunun yerine, `StyleIdentifier.TOC1` gibi uygun `TOC` stilini düzenlemeniz ve buradan belirli yazı tipi üyelerine vb. erişimle lider stilini düzenlemeniz önerilir. Bunun nasıl yapılacağına ilişkin daha fazla ayrıntıyı makalenin ilerleyen kısımlarında bulabilirsiniz.</p>

<p>![working-with-table-of-contents-toc](/words/net/working-with-table-of-contents/working-with-table-of-contents-8.png)</p> |
| **Preserve Tab Entries**<br>*(\W Anahtarı)* | <p>Bu anahtarın kullanılması, sekme karakterine sahip tüm girişlerin, örneğin satırın sonunda sekme bulunan bir başlığın, içindekiler tablosunu doldururken uygun bir sekme karakteri olarak tutulacağını belirtecektir. Bu, sekme karakterinin işlevinin `TOC`'te bulunacağı ve girişi biçimlendirmek için kullanılabileceği anlamına gelir. Örneğin, belirli girişler metinde eşit aralıklarla boşluk bırakmak için sekme duraklarını ve sekme karakterlerini kullanabilir. Karşılık gelen `TOC` düzeyi eşdeğer sekme duraklarını tanımladığı sürece oluşturulan `TOC` girişleri benzer aralıklarla görünecektir.<br><br>Aynı durumda, bu anahtar tanımlanmadıysa sekme karakterleri, çalışmayan sekmelere eşdeğer beyaz boşluğa dönüştürülür. Çıktı daha sonra beklendiği gibi görünmeyecektir.</p>

<p>![working-with-table-of-contents-aspose](/words/net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p> |
| **Preserve New Line Entries**<br>*(\X Anahtarı)* | <p>Yukarıdaki anahtara benzer şekilde, bu anahtar birden fazla satıra yayılan başlıkların (ayrı paragraflar yerine yeni satır karakterleri kullanılarak) oluşturulan TOC'de olduğu gibi korunacağını belirtir. Örneğin, birden çok satıra yayılacak bir başlık, içeriği farklı satırlara ayırmak için yeni satır karakterini (Ctrl + Enter veya `ControlChar.LineBreak`) kullanabilir. Bu anahtar belirtildiğinde, `TOC`'deki giriş bu yeni satır karakterlerini aşağıda gösterildiği gibi koruyacaktır.<br><br>Bu durumda, eğer anahtar tanımlı değilse yeni satır karakterleri tek bir beyaz boşluğa dönüştürülür.</p>

<p>![working-with-table-of-contents-aspose-words](/words/net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p> |

## TC Alanlarını Ekle

[InsertField](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertfield/) yöntemini çağırıp alan adını gerekli anahtarlarla birlikte "TC" olarak belirterek [DocumentBuilder](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/)'in geçerli konumuna yeni bir TC alanı ekleyebilirsiniz.

Aşağıdaki kod örneği, **DocumentBuilder** kullanarak belgeye `TC` alanının nasıl ekleneceğini gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCField-DocumentBuilderInsertTCField.cs" >}}

Genellikle `TOC` için belirli bir metin satırı atanır ve bir `TC` alanıyla işaretlenir. Microsoft Word'de bunu yapmanın kolay yolu metni vurgulamak ve *ALT+SHIFT+O* tuşlarına basmaktır. Bu, seçilen metni kullanarak otomatik olarak bir `TC` alanı oluşturur. Aynı teknik kod aracılığıyla da gerçekleştirilebilir. Aşağıdaki kod, girişle eşleşen metni bulacak ve metinle aynı konuma bir `TC` alanı ekleyecektir. Kod, makalede kullanılan tekniğin aynısına dayanmaktadır.

Aşağıdaki kod örneği, bir belgedeki metinde `TC` alanının nasıl bulunacağını ve ekleneceğini gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cs" >}}

## İçindekiler Tablosunu Değiştir

`TOC`'teki girişlerin formatı, işaretli girişlerin orijinal stillerini kullanmaz; bunun yerine her düzey, eşdeğer bir `TOC` stili kullanılarak formatlanır. Örneğin, `TOC`'teki ilk düzey **TOC1** stiliyle, ikinci düzey **TOC2** stiliyle vb. biçimlendirilmiştir. Bu, `TOC`'in görünümünü değiştirmek için bu stillerin değiştirilmesi gerektiği anlamına gelir. Aspose.Words'de bu stiller yerel ayardan bağımsız `StyleIdentifier.TOC1` ile `StyleIdentifier.TOC9`'ye kadar temsil edilir ve bu tanımlayıcılar kullanılarak [Styles](https://reference.aspose.com/words/tr/net/aspose.words/documentbase/styles/) koleksiyonundan alınabilir.

Belgenin uygun stili alındıktan sonra bu stilin formatı değiştirilebilir. Bu stillerde yapılacak herhangi bir değişiklik otomatik olarak belgedeki İçindekiler'e yansıtılacaktır.

Aşağıdaki kod örneği, birinci düzey `TOC` stilinde kullanılan bir biçimlendirme özelliğini değiştirir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cs" >}}

Ayrıca, `TOC`'e dahil edilmek üzere işaretlenen bir paragrafın (paragrafın kendisinde tanımlanmış ve stilde değil) herhangi bir doğrudan formatının, TOC'deki girişe kopyalanacağını belirtmekte fayda vardır. Örneğin, `TOC` içeriğini işaretlemek için Başlık 1 stili kullanılıyorsa ve bu stil Kalın biçimlendirmeye sahipken paragrafa doğrudan italik biçimlendirme de uygulanmışsa. Ortaya çıkan `TOC` girişi, stil formatlamanın bir parçası olduğu için kalın olmayacak ancak doğrudan paragrafta formatlandığı için italik olacaktır.

Ayrıca her giriş ve sayfa numarası arasında kullanılan ayırıcıların biçimlendirmesini de kontrol edebilirsiniz. Varsayılan olarak bu, bir sekme karakteri ve sağ kenar boşluğuna yakın dizilmiş bir sağ sekme durağı kullanılarak sayfa numaralandırmasına yayılan noktalı bir çizgidir.

Değiştirmek istediğiniz belirli `TOC` düzeyi için alınan [Style](https://reference.aspose.com/words/tr/net/aspose.words/style/) sınıfını kullanarak bunların belgede nasıl görüneceğini de değiştirebilirsiniz. Bunun nasıl göründüğünü değiştirmek için öncelikle stilin paragraf formatını almak üzere [ParagraphFormat](https://reference.aspose.com/words/tr/net/aspose.words/style/paragraphformat/)'in çağrılması gerekir. Bundan sekme durakları, [TabStops](https://reference.aspose.com/words/tr/net/aspose.words/paragraphformat/tabstops/) çağrılarak ve uygun sekme durağı değiştirilerek alınabilir. Aynı tekniği kullanarak sekmenin kendisi de hep birlikte taşınabilir veya kaldırılabilir.

Aşağıdaki kod örneği, `TOC` ile ilgili paragraflarda sağ sekme durağının konumunun nasıl değiştirileceğini gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cs" >}}

## Belgeden İçindekiler Tablosunu Kaldır

`TOC` alanının `FieldStart` ve FieldEnd düğümü arasında bulunan tüm düğümler kaldırılarak içindekiler tablosu belgeden kaldırılabilir. Aşağıdaki kod bunu göstermektedir. İç içe geçmiş alanları takip etmediğimiz için `TOC` alanının kaldırılması normal bir alandan daha basittir. Bunun yerine [FieldEnd](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldend/) düğümünün [FieldType.FieldTOC](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldtype/) türünde olup olmadığını kontrol ederiz; bu, mevcut TOC'nin sonuyla karşılaştığımız anlamına gelir. Bu teknik, bu durumda herhangi bir iç içe geçmiş alan hakkında endişelenmeden kullanılabilir; çünkü düzgün biçimde oluşturulmuş herhangi bir belgenin, başka bir `TOC` alanı içinde tam olarak yuvalanmış bir `TOC` alanına sahip olmayacağını varsayabiliriz.

Öncelikle her `TOC`'nin [FieldStart](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldstart/) düğümleri toplanır ve saklanır. Belirtilen `TOC` daha sonra numaralandırılır, böylece alandaki tüm düğümler ziyaret edilir ve saklanır. Düğümler daha sonra belgeden kaldırılır.

Aşağıdaki kod örneği, belirtilen bir `TOC`'in bir belgeden nasıl kaldırılacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cs" >}}

## İçindekiler Tablosunu Çıkart

Herhangi bir Word belgesinden içindekiler tablosunu çıkarmak istiyorsanız aşağıdaki kod örneğini kullanabilirsiniz:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ExtractTableOfContents-ExtractTableOfContents.cs" >}}
