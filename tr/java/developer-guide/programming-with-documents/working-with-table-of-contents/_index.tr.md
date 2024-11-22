---
title: İçindekiler ile çalışmak Java içinde
second_title: Aspose.Words için Java
articleTitle: İçindekiler ile Çalışma
linktitle: İçindekiler ile Çalışma
description: "Ayrıntılar arasındaki `İçindekiler tablosu` alanı. `TOC` alanını oluşturmak ve değiştirmek için nasıl Java kullanıyorsunuz?"
type: docs
weight: 170
url: /tr/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Sıklıkla bir tablo içeriği (TOC) içeren belgelerle çalışacaksınız. Aspose.Words kullanarak kendi tablo içeriğinizi ekleyebilir ya da mevcut tablo içeriğini belgeninizde sadece birkaç kod satırı kullanarak tamamen yeniden oluşturabilirsiniz.

Bu makale, "İçindekiler" alanıyla nasıl çalışılacağını tanımlar ve şu anda:

- Bir yeni TOC nasıl girilir?
- Belge içindeki yeni veya mevcut TOC'leri güncelle.
TOC'nin biçimlendirilmesini ve genel yapısını kontrol etmek için anahtarları belirtin.
- İçindekiler tablosunun stilini ve görünümünü nasıl değiştireceğiniz.
- Bir `TOC` alanını tüm girdileriyle birlikte belgeden nasıl kaldırılır?

## İçindekiler Tablosunu Programlı Olarak Ekle

Bu metinde şu anki konumda bir `TOC` (içindekiler tablosu) alanı belgenize yerleştirmek için [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) yöntemini çağırın.

Bir Word belgesindeki bir içerik tablosu birkaç şekilde oluşturulabilir ve çeşitli seçenekler kullanılarak biçimlendirilebilir. Alan anahtarları, yönteme geçirsiniz, tabloyu oluşturma ve belgenizde görüntüleme şeklini kontrol eder.

Bir `TOC` içinde kullanılan varsayılan anahtarlar Microsoft Word'de **\o "1-3 "\ h "\ z "\ u** şeklindedir. Bu anahtarların açıklamaları ayrıca desteklenen anahtarların bir listesini daha sonra bu makale içinde bulunabilir. Doğru anahtarları elde etmek için kılavuzu kullanabilir ya da zaten benzer `TOC` içeren bir belgeye sahipseniz, alan kodlarını (*ALT+F9*) gösterebilir ve anahtarları doğrudan alandan kopyalayabilirsiniz.

Aşağıdaki kod örneği bir belgeye İçindekiler alanı eklemek için nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

Aşağıdaki kod örneği, başlık stillerini girişler olarak kullanarak bir belgedeki İçindekiler (TOC) eklemeyi nasıl yapacağınızı göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

Kod yeni bir tablo içeriğini boş bir belgeye eklendiğini göstermektedir. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) sınıfı daha sonra uygun başlık stilleri kullanılarak oluşturulan örnek içerik biçimlendirmesini eklemek için kullanılır ve içeriğin yer alacağı yerin işaretlenmesi için kullanılır. Sonraki satırlar o zaman `TOC` 'ü doldurur, belgenin alanlarını ve sayfa düzenini güncellerken.

![insert-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Örnekte kullanılan yöntemler olmadan, çıktı belgesini açtığınızda `TOC` alanını bulursunuz ancak görünür içeriği yoktur. Bu şu yüzden çünkü `TOC` alanı eklendi ancak henüz belgeden güncellenmediğine göre doldurulmadı. Bunun hakkında daha fazla bilgi bir sonraki bölümde tartışılıyor.

{{% /alert %}}

## İçindekiler Tablosunu Güncelle

Aspose.Words size bir `TOC`'ı sadece birkaç kod satırı kullanarak tamamen güncellemenize olanak tanır. Bu, yeni bir `TOC` eklemek ya da belge değişikliği yapıldıktan sonra mevcut bir `TOC`'ı güncellemek için yapılabilir.

Aşağıdaki iki yöntem, belgedeki `TOC` alanlarını güncellemek için kullanılmalıdır:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Lütfen bu iki güncelleme yönteminin o sırayla çağrılmak zorunda olduğunu unutmayın. Eğer tersine çevrilirse, içerik tablosu doldurulacak fakat hiçbir sayfa numarası gösterilmeyecek. Çok sayıda farklı TOC'lar güncellenebilir. Bu yöntemler belgedeki bulunan tüm tablolar otomatik olarak güncellenecektir.

Aşağıdaki kod örneği, alan güncellemelerini çağırarak belgenin içindeki `TOC` alanını tamamen nasıl yeniden oluşturacağınızı göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

İlk çağrı [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) oluşturmak için `TOC` inşa edecek, tüm metin girdileri dolu ve `TOC` neredeyse tamamen görünür. Kayıp tek şey sayfalardır ve şu anda "?" ile görüntülenirler.

[Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout)'a yapılan ikinci çağrı, belgenin bellekte düzenini oluşturacaktır. Bu, girişlerin sayfa numaralarını toplamak için yapılmalıdır. Bu çağrıdan hesaplanan doğru sayfa numaraları daha sonra İçindekiler tablosuna eklenir.

## İçerik Tablosu Davranışını Kontrol Etmek için Anahtarlamaları Kullanın

Herhangi bir alan gibi, `TOC` alanı, nasıl tablo içeriği oluşturulduğuna bağlı olarak kontrol eden alan kodunda tanımlanan anahtar kelimeleri kabul edebilir. Bazı anahtarlar girişleri ne zaman dahil edileceğini ve hangi düzeyde olacağını kontrol etmek için kullanılırken diğerleri görünümünü kontrol etmek için kullanılır. Farklar bir araya getirilebilir böylece karmaşık bir içerik tablosu üretilebilir.

![ccontrol-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-2.png)


Varsayılan olarak, bu anahtarlar belgenin varsayılan `TOC` eklenirken dahil edilir. A `TOC` anahtarları olmadan, yerleşik başlık stillerinden gelen içeriği içerecektir (anahtar \O ayarlanmış gibi).

Kullanılabilir `TOC` anahtarları Aspose.Words tarafından desteklenmektedir ve bunların kullanımları aşağıda ayrıntılı olarak açıklanmaktadır. Onlar, türlerine göre ayrı bölümlere ayrılabilirler. İlk bölümdeki anahtarlar, ne `TOC`'i içereceğini tanımlar ve ikinci bölümdeki anahtarlar TOC'nun görünümünü kontrol eder.

Diyek bir anahtar burada listelenmediyse, o şu anda desteklenmiyor demektir. Tüm anahtarlar gelecek sürümlerde desteklenecektir. Biz her sürümle birlikte daha fazla destek ekliyoruz.

### Giriş İşaretleme Anahtarları

| Switch | Açıklama |
| :- | :- |
| **Heading Styles** <br>*(\O Switch)* <br> | <p>Bu anahtar, `TOC`'lerin yerleşik başlık stilleri kullanılarak oluşturulmasını tanımlar. Bunlar, Başlık 1 - Başlık 9 ile tanımlanan Microsoft Word içinde. Bu tarzlar Aspose.Words karşılık gelen StyleIdentifier numaralandırması ile temsil edilir. Bu numaralandırma bir başlık stilinin yerel bağımsız tanımlayıcısıdır, örneğin, `StyleIdentifier.Heading1` Başlık 1 stilini temsil eder. Bu, stilin biçimlendirme ve özelliklerini belgenin Stil koleksiyonundan alabilir. The corresponding Style class can be retrieved from the `Document.Styles` collection by using the indexed property of type StyleIdentifier. </p> ![style-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p>" <p><br><br>Bu stillerle biçimlendirilmiş herhangi bir içerik, tabloda yer alır.</p> Başlığın seviyesi, TOC içindeki girişin karşılık gelen hiyerarşik seviyesini tanımlayacaktır. Örneğin bir paragrafla başlık 1 stili ele alınır hiyerarşinin birinci seviyesi olarak `TOC` iken bir paragrafla Başlık 2 hiyerarşide bir sonraki seviye olarak ele alınır ve bu şekilde devam eder.</p> |
| **Outline Levels** <br>*(\U switch)* <br> | <p>Her paragraf, Paragraf Seçenekleri altında bir başlık seviyesi tanımlayabilir. <p>![modify-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p> <p><br><br>Bu ayar bu paragrafın belgedeki hiyerarşide nasıl ele alınacağını belirler.</p> Bu, bir belgenin düzenini kolayca yapılandırmak için kullanılan yaygın bir uygulamadır. Bu hiyerarşi, Microsoft Word'de Outline Görünümü'ne geçilerek görülebilir. Başlık stillerine benzer şekilde, "Vücut Metni" seviyesine ek olarak 1 - 9 adet başlık düzeyi olabilir. Açıklama seviyeleri 1 - 9, hiyerarşideki ilgili seviye olan `TOC` içinde görünür <br>Paragraf stilinde veya doğrudan paragrafta ayarlanan açıklama seviyesine sahip herhangi bir içerik, TOC'a dahildir. Aspose.Words 'da, başlık düzeyi Paragraf düğümüne ait ' `ParagraphFormat.OutlineLevel` ' özelliği tarafından temsil edilir. Bir paragraf stilinin taslak düzeyi, aynı şekilde `Style.ParagraphFormat` özelliğinde gösterilir.</p> <p>{{% alert color="primary" %}}</p> <p>Not: Yerleşik başlık stilleri gibi Başlık 1'in taslak düzeyi zorla stil ayarlarında belirlenmiştir.</p> <p>{{% /alert %}}</p> |
| **Custom Styles** <br>*(\T switch)* <br> | <p>Bu anahtar, TOC 'da kullanılacak girişlerin toplanmasında özel stillerin kullanılmasına izin verecek. Bu genellikle başlık stilleriyle birlikte özel stiller dahil etmek için kullanılan \O anahtarını kullanarak TOC'ya eklenir. <br>Anahtarlamayı tanımlayan parametrelerin tırnak işareti içine alınması gerekir. Birçok özel stil dahil edilebilir, her stilin adı belirtilmeli, virgül ile ve stil seviyesi hangi `TOC` içinde görünmeli ile takip edilmelidir. Daha fazla stil bir virgül ile de ayrılır. <br>Örneğin, " <p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p> <p>will content'i özel başlık 1 olarak biçimlendirilmiş düzeyi 1 içeriği ve CustomHeading2 olarak düzey 2 olarak kullanacaktır. `TOC`</p></p> |
| TC Alanlarını Kullan <br>*(\F ve \L anahtarları)* <br> | <p>Eski sürümlerde Microsoft Word'da, bir `TOC` oluşturmak için tek yol TC alanları kullanmaktı. Bu alanlar, alan kodları gösterilse bile belgeye gizli olarak eklenir. Onlar girişte gösterilmesi gereken metni içerir ve `TOC` bunlardan oluşturulur. Bu işlev artık çok sık kullanılmıyor ama yine de bazı durumlarda, belgenin görünür olmasını sağlamak için bir `TOC`'e girintili girişleri dahil etmek için hala yararlı olabilir. <br>Bu alanlar girildiğinde, alan kodları görüntülenirken bile gizlidir. Onlar gizli içeriği göstermeden görünemez. Bu alanları görmek için paragraf biçimi seçilmeli. <p>![setup-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p><p>Bu alanlar başka bir alan gibi herhangi bir pozisyonda bir belgeye eklenebilir ve `FieldType.FieldTOCEntry` enumeration tarafından temsil edilir.<br/>\F bir `TOC`'de geçiş, TC alanların giriş olarak kullanılması gerektiğini belirtmek için kullanılır.</p> Açıklama olmadan anahtar kelime kullanmak, belge içindeki herhangi bir TC alanının dahil edileceği anlamına gelir. Herhangi bir ek parametre tek bir harf, genellikle bu yalnızca TC alanları, eşleşen bir \ f anahtarının dahil olacağını belirtir. Örneğin *<p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p><p>Sadece TC alanları içerecektir </p><p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p><p>`TOC` alanı da ilgili bir geçişe sahiptir, “\L” geçiş, belirtilen aralıklardaki seviyeleri olan tek TC alanının dahil olduğunu belirtir. </p><p>![table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p><p><br/><br/>`TC` alanları kendileri de `{several, multiple, a few, many, numerous}` anahtarlar ayarlanabilir.</p> Bunlar:<p>- \F - Yukarıda açıklayın. * * *</p><p>- \L - `TOC` Bu TC alanı ortaya çıkacak.</p> A `TOC` bu anahtar kullanıyorsa, bu TC alanını belirtilen aralık içinde yalnızca dahil eder.</p> <p>- _\N - Bu `TOC` girişi için sayfa numaralandırması görüntülenmez. TC alanları nasıl ekleneceği örneği bir sonraki bölümde bulunabilir.</p> |

### Görünüşle İlgili Anahtarlar

| Devre değiştir | Açıklama |
| :- | :- |
| **Omit Page Numbers** <br>*(\N Switch)* | <p>Bu anahtar, TOÇ'un belirli seviyelerinin sayfa numaralarını gizlemek için kullanılır. Örneğin, tanımlayabilirsiniz <p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p><p>Ve 3 ve dört seviyenin girişleri üzerindeki sayfa numaraları, lider noktalarla birlikte saklı olacaktır (eğer varsa).</p> Sadece bir düzey belirtmek için hala bir aralık kullanılmalıdır, örneğin "1-1", yalnızca ilk düzey sayfa numaralarını hariç tutacaktır. <br>Tedarik edilecek bir seviye aralığı, tüm seviyeler için sayfa numaralarını çıkaracaktır. Bu, bir belgeyi HTML ya da buna benzer bir biçimde dışa aktarırken ayarlamak için yararlıdır. Bu, çünkü HTML tabanlı formatlar herhangi bir sayfa kavramına sahip olmadıkları ve dolayısıyla herhangi bir sayfa numaralandırma ihtiyacı olmadığı için. </p> <p>![table-of-contents-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p> |
| Bağlantı Olarak Ekle <br>*(\HSwitch)* | <p>Bu anahtar, `TOC` girişlerinin hiper bağlantılar olarak eklendiğini belirtir. Bir belgeyi Microsoft Word içinde görüntülediğinizde bu girişler hala normal metin olarak görünür `TOC` ancak hiper bağlantılıdır ve bu nedenle Microsoft Word'de *Ctrl + Sol Tıklama* kullanarak orijinal girdinin belgesinde konumuna navigasyona geçmek için kullanılabilirler. Bu anahtar dahil edildiğinde bu bağlantılar da diğer formatlarda korunur. Örneğin, HTML tabanlı formatlar içinde EPUB ve işlenmiş formatlar gibi PDF ve XPS bunlar çalışarak dışa aktarılacaktır. <br>Bu anahtar ayarı olmadan, tüm bu çıktıların `TOC` düz metin olarak dışarı aktarılacak ve bu davranışı göstermeyecek. Bir belge MS Word'de açıldığında girişlerin metni bu şekilde tıklanabilir olmayacak ancak sayfa numaraları hala orijinal girişlere gitmek için kullanılabilir. </p> <p>![tree-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p> |
| **Set Separator Character** <br>*(\P Switch)* <br> | <p>Bu anahtar, giriş başlığı ve sayfa numaralandırması arasındaki içeriği kolayca değiştirerek TOC'de değiştirmenizi sağlar. Kullanılacak ayırıcı bu anahtar kelime sonrası belirtilmeli ve tırnak içine alınmalıdır. <br>Ofis belgelendirmesinde belirtildiği gibi sadece bir karakter yerine en fazla beş tane kullanılabilir. Bu, hem MS Word hem de Aspose.Words için geçerlidir. <br>Bu anahtarın kullanımı önerilmez çünkü girişlerin ve sayfa numaralarının ayrılması için az kontrol sağlar. Bunun yerine uygun `TOC` stilini düzenlemek önerilir örneğin `StyleIdentifier.TOC1` ve buradan erişilebilen özel yazı tipi üyeleri vb. ile şablon stilini düzenleyin. Bunu nasıl yapacağınla ilgili daha fazla ayrıntı yazının sonraki bölümünde bulunabilir. -</p> <p>![list-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p> |
| **Preserve Tab Entries** <br>*(\W Switch)* | <p>Bu anahtar, örneğin bir satırın sonunda bir sekme karakteri olan bir başlık gibi, herhangi bir girişi belirtir ki bu girişler, içeriği doldururken düzgün bir sekme karakteri olarak korunur. Bunun anlamı, sekme karakterinin işlevi `TOC` içinde mevcut olacak ve giriş biçimlendirmek için kullanılabilir. Örneğin, bazı girişler metni eşit aralıklarla yaymak için sekme duraklarını ve sekme karakterlerini kullanabilir. Karşısındaki `TOC` seviyesi eşdeğer sekme duraklarını tanımlar ise oluşturulan `TOC` girişleri benzer bir boşlukla görünür. <br><br>Aynı durumda bu anahtar kelime tanımlanmamışsa sekme karakterleri işlevsiz sekme karakterlerine eşdeğer beyaz boşluğa dönüştürülecekti. Çıktı o zaman beklenen şekilde görünmeyecekti. <p>![tab-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p></p> |
| **Preserve New Line Entries** <br>*(\X Switch)* <br> | <p>Yukarıdaki anahtar kelimeye benzer şekilde, bu anahtar kelime başlıkların birden fazla satıra yayılmasını (yeni satır karakterleri kullanarak, ayrı paragraflarla değil) belirtir ve üretilen İçindekiler tablosunda olduğu gibi korunur. Örneğin, birden fazla satıra yayılması gereken bir başlık, içeriği farklı satırlara ayırmak için yeni satır karakteri (Ctrl + Enter veya `ControlChar.LineBreak` ) kullanabilir. Bu anahtar ile belirtilmiş giriş, `TOC` 'deki girişi aşağıda gösterilmiştir olduğu gibi bu yeni satır karakterleri olarak koruyacaktır. <br><br>Bu durumda, anahtar kelime tanımlanmamışsa yeni satır karakterleri tek bir beyaz boşluğa dönüştürülür. <p>![tab-space-table-of-contents-field-aspose-words-java](how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p></p> |

## TC Alanlarını Girin

`DocumentBuilder` konumundaki mevcut bir TC alanına `DocumentBuilder.InsertField` yöntemini çağırarak yeni bir TC alanı ekleyebilirsiniz ve gerekli tüm anahtarlar ile birlikte alan adını "TC" olarak belirtin.

Aşağıdaki kod örneği, `TC` alanını bir belgeye [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)'ü kullanarak nasıl ekleyeceğini göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

Sıklıkla `TOC` için özel bir satır belirtilir ve bir `TC` alanı ile işaretlenir. MS Word'te bunu yapmak kolay bir yol, metni vurgulamak ve ardından *ALT+SHIFT+O'yu* basmaktır. Bu, seçilen metin kullanılarak otomatik olarak bir `TC` alanı oluşturur. Aynı tekniği kod aracılığıyla gerçekleştirilebilir. Aşağıdaki kod, girişle eşleşen metni bulacak ve metinle aynı konumda bir `TC` alanı ekleyecektir. Kod, makalede kullanılan aynı teknik üzerine kurulmuştur. Aşağıdaki kod örneği bir belgedeki metinde bir `TC` alanı bulup eklemeyi nasıl yapacağınızı göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Bir İçindekiler Tablosunu Değiştir

### Biçimlendirme Stillerini Değiştir

`TOC` içindeki girdilerin biçimlendirilmesi, işaretlenmiş girdilerin orijinal stillerini kullanmaz. Bunun yerine her düzey bir eşdeğer `TOC` stili kullanılarak biçimlendirilir. Örneğin, `TOC` düzeyinde ilk seviye **TOC1** tarzında biçimlendirilir, ikinci seviye **TOC2** tarzında biçimlendirilir ve öyle devam eder. Bu, görünümünü değiştirmek için `TOC` bu stillerin değiştirilmesi gerektiği anlamına gelir. Bu Aspose.Words stilleri, yerelleştirilmiş olmayan `StyleIdentifier.TOC1` ve `StyleIdentifier.TOC9` kullanılarak temsil edilir ve bu kimlikler kullanılarak `Document.Styles` koleksiyonundan alınabilir.

Doğru belgenin tarzını aldıktan sonra bu tarz için biçimlendirme değiştirilebilir. Bu stillerin herhangi bir değişikliği otomatik olarak belgedeki tabloların içeriği yansıtacaktır.

Aşağıdaki kod örneği birinci seviye `TOC` stilinde kullanılan bir biçimlendirme özelliğini değiştirir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

Bu ayrıca herhangi bir doğrudan paragraf biçimlendirmesi (paragraf üzerinde tanımlanmış ve stil içinde değilse) `TOC`'da yer alacak şekilde işaretlendiğinde, girişin TOC'unda kopyalanacağını da not etmek yararlıdır. Örneğin, başlık 1 stili içeriği `TOC` işaretlemek için kullanılır ve bu stil kalın biçimlendirme alırken paragraf da doğrudan ona italik biçimlendirme uygulanır. Sonuçlanan `TOC` girişi kalın olmayacak çünkü bu stil formatlamasının bir parçası, ancak doğrudan paragraf üzerinde biçimlendirildiği için italik olacak.

Girintiler arasında her bir giriş ve sayfa numarası için kullanılan biçimlendirmenin kontrolünü de sağlayabilirsiniz. Varsayılan olarak, bu, sayfa numaralandırma için bir sekme karakteri ve bir sağ sekme duraklama çizgisi kullanılarak yayılan bir kırpılmış çizgi.

Kullanın `Style` sınıfını belirli bir `TOC` düzeyini değiştirmek istediğiniz için aldı, bu belgenin içinde nasıl göründüklerini de değiştirebilirsiniz.

Bunun görünümünü değiştirmek için önce `Style.ParagraphFormat` çağrılmalıdır, stil için paragraf biçimi almak üzere. Bundan bu, sekme durakları `ParagraphFormat.TabStops` çağırarak alınabilir ve uygun sekme durakının değiştirilmesi. Bu tekniği kullanarak sekmeler hareket ettirilebilir ya da tamamen çıkarılabilir.

Aşağıdaki kod örneği, `TOC` ile ilgili paragraftaki sağ sekme duraklarının konumunu nasıl değiştireceğinizi göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Bir İçindekiler Tablosunu Belgeye Kaldırın

İçindekiler tablosu, `FieldStart` ve `TOC` alanındaki FieldEnd düğümü arasındaki tüm düğümlerin kaldırılmasıyla belgeden çıkarılabilir.

Aşağıdaki kod bunu göstermektedir. Kaldırma `TOC` alanı normal bir alan kadar basittir çünkü iç içe geçmiş alanları takip etmiyoruz. Bunun yerine, `FieldEnd`'nin türünün `FieldType.FieldTOC` olduğunu kontrol ediyoruz ki bu bize geçerli tablo içeriğinin sonuna ulaştığımızı gösteriyor demek. Bu teknik bu durumda herhangi bir iç içe geçmiş alanı umursamadan kullanılabilir çünkü herhangi düzgün oluşturulmuş bir belgenin herhangi bir tam iç içe `TOC` alanı başka bir `TOC` alanının içinde olmayacağını varsayabiliriz.

Önce her `TOC` nodun `FieldStart`'u toplanır ve saklanır. Belirtilen `TOC` sonra numaralandırılır böylece alandaki tüm düğümler ziyaret edilir ve depolanır. Ardından düğümler belgeden çıkarılır. Aşağıdaki kod örneği, bir belgeden belirli bir `TOC` 'u nasıl kaldırılacağını göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## İçindekiler tablosunu ayıkla

Bir Word belgesinden bir tablo oluşturmak istiyorsanız, aşağıdaki kod örneği kullanılabilir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
