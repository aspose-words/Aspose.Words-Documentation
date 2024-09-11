---
title: sabit sayfa biçimine dönüştürme Java
second_title: Aspose.Words için Java
articleTitle: sabit sayfa biçimine dönüştürme
linktitle: sabit sayfa biçimine dönüştürme
description: "Aspose.Words için Java kendi sayfa düzen motoru uygulamasını mümkün kılar, bu da PDF ve XPS gibi sabit sayfa formatlarının hepsini üretebilir ve çeşitli görüntü formatlarını oluşturur."
type: docs
weight: 10
url: /tr/java/converting-to-fixed-page-format/
---

Aspose.Words kendi sayfa düzen motorunu uygular. Onun spesifikasyonlarına dalmadan önce, daha yüksek bir düzeyde belgeyi tartışmak faydalı olacaktır. Bir belgeyi düşünürken kullanıcılar tipik olarak kelimeler, resimler, tablolar ve grafikler içeren bir dizi kağıt sayfasını hayal ederler. Belgeleri metin, elektronik tablolar, slaytlar, CAD çizimleri, akış şemaları gibi çeşitli türlerde olabilir ve bu nedenle esasen farklı düzenlere sahip olabilirler. Çoğu uygulama belgeleri bir yazıcıya göndermeyi sağlar; bu, bir kullanıcının gerçekte bir belgenin son amaçlanan görünümünü görebileceği zamandır.

## Farklı Uygulamalarda Bir Doküman Gösterme

Farklı belge görüntüleme veya yayınlama uygulamaları kullanıcıların belirli biçimlerdeki belgeleri açmasına ( Adobe Acrobat, XPS Görüntüleyici ) ve bazen düzenlemeye izin verir ( Adobe InDesign ). Bu uygulamalar tipik olarak "fiksli sayfa" biçiminde belgeler üretir. Böyle bir belge formatı tam olarak bir belgesinin içeriğinin her sayfada nerede yerleştirildiğini tanımlar. PDF veya XPS biçimi sayfadaki içeriğin düzeniyle ilgili talimatlar içeren, her sayfanın bir açıklamasını da içerir. Bu, içeriğin raster veya vektör biçiminde nerede gösterileceğini açıklayan resim biçimleriyle benzer.

Bunun aksine bazı metin düzenleme uygulamaları bir belgenin sayfalarını görüntülemeyi desteklemez. Örneğin, "Microsoft Notepad metin görüntülemek, düzenlemek ve yazdırmak dışında çok az işlevi destekler". Burada önemli gözlem şu ki, bu uygulamalar belgenin sayfalarını gösteremez ya da kullanıcının basılacak sayfa sayısını söyleyemez ve sadece belge içeriğini görüntülemek için izin verir. Belge düz metin biçiminde kaydedilebilir ve birçok başka uygulamalar tarafından açılabilir. Bir dosyanın ikili içeriğini görüntülemeyi sağlayan bir uygulama kullanarak biri belge dosyasında ne olduğunu görebilir - sadece düz metin var, içinde başka bir şey yok.

Daha sofistike metin düzenleme uygulamaları, örneğin Microsoft WordPad, daha çok biçimlendirme işlevleri destekleyen zengin metin formatında (RTF) belgeyi kaydeder, örneğin resim ekleme, karakter biçimlendirmesi, paragraf kenar boşlukları ve aralığı. Ancak, RTF formatı da sadece belgenin içeriğini içerir ve sayfalarla ilgili hiçbir bilgi içermez.

Bu Microsoft Word bugün Windows'deki en gelişmiş metin düzenleme uygulamasıdır. DOCX formatında dosyaları biçimlendirir. Doküman içeriğini esnek ve ayrıntılı olarak tanımlayan DOCX formatı, kullanıcıların bir belge bölümünün kağıt boyutunu ve yönünü belirtmesine, bir WYSIWYG uygulaması bile sayfa ekranında görüntülemesine izin verir. Bununla birlikte, belgenin içeriğinin belge dosyasında bulunan sayfalarda nasıl göründüğüne ilişkin bilgi yoktur. Belge dosyası yalnızca içeriği ve belge nesnelerinin birbirleriyle olan ilişkisini ve bazı geometrik kısıtlamaları açıklar. Sonuç olarak bir belgeyi görüntülemeden önce Microsoft Word o bilgiyi kendisi hesaplar. Bu sayfada bir sayfa düzeninin devreye girdiği yerdir.

## Sayfa Düzeni Nedir?

Bir belge sayfa düzeni bir veri yapısıdır, tüm belge nesneleri için bir nesnenin bir sayfadaki nerede olduğunu açıklar. Ayrıca nesnelerin boyutu, gölgelendirme veya çizim efektleri gibi görünümlerini etkileyen özellikleri olduğu için, yalnızca bir nesnenin nerede olduğunu bilmek yeterli değil, aynı zamanda sayfadaki o bölgeyi (bölgeleri) ve birden fazla sayfaya yayılıp yayılmayacağını da bilmeniz gerekir ki başka nesnelerin aynı bölgeyi (bölgeleri) örtmemesi için diğer nesneler bu bölgenin üzerine gelmesin.

Aspose.Words tüm sabit sayfa biçimlerini üretebilmesi için sayfa düzeni işlevselliğini içe aktarır, örneğin PDF, XPS, ve çeşitli görüntü biçimleri. Sayfa düzeni olmadan, sabit sayfa belgesi dosyasında saklı olan bilgiler mevcut olmayacak ve tüm bu formatlar desteklenmeyecekti.

Bir belge ile bir sayfa düzeni arasındaki ilişki oldukça basittir. Bir belge içeriği açıklarken, karşılık gelen sayfa düzeni o içeriğin geometrisini açıklar. Sayın, sayfa düzeni bir belge olmadan var olamaz çünkü geometrinin hesaplanması için içerik yoktu, ancak bir belge sayfa düzeni olmadan var olabilir. Örneğin, bir DOCX belgesi bir RTF belgesine dönüştürüldüğünde, genellikle geometrinin bilinmesi gereksizdir, çünkü hiçbir biçimde onu depolamazlar.

## Bir Sayfa Düzeni Oluşturmak

Bir sayfa düzeni oluşturmanın maliyeti hem hız ve bellek açısından maliyetli olabilir. Birkaç nedenden dolayı:

- Belge binlerce sayfada görüntülenmesi gereken büyük bir içerik miktarına sahip olabilir. Her sayfanın her nesnesinin geometrisini tanımlamak hafıza kaynaklarını tüketecekti.
- Belge birçok kural olabilir ve geometriye kısıtlamalar getirir. Her kısıtlama tatmin edildiğinden emin olmak için önemli miktarda hesaplama zamanı harcanabilir
- Bazı belge özellikleri, örneğin `NUMPAGES` alanı, gelecekteki özellik değerleri için tekrarlayan bağımlılıklar yaratır ve bunlar hesaplama sırasında mevcut değildir. Bu tekrarlayan hesaplamalara yol açar ve hesaplama süresine katılır.

Yukarıda belirtilen nedenlerden dolayı Aspose.Words gerekli olduğunda bir sayfa düzeni oluşturur. Bu tür bir isteğin tipik nedeni, belge sayfalarını işlemek veya sayfa düzeninde mevcut olan bilgilere bağlı bir alan değerini almak olacaktır. Daha az belirgin bir neden, bir belgenin HTML'ye dışa aktarılmasıdır. HTML sabit bir sayfa biçimi değildir ve içerik nesnelerinin geometrisini tanımlamaz fakat yine de resimleri destekler. Böyle resimler içinde bir metin içeren Microsoft Word tarafından oluşturulan şekillerin formunda olabilir. Örneğin eksen etiketleri olan bir grafik HTML'ye bir resim olarak dışa aktarılabilir, ancak bunun yapılabilmesi için Aspose.Words bu resmi işleyebilmeli ve bu nedenle etiketin nerede gösterileceğini bilmesi gerekir. Aşağıdaki tablo örneğini gör:

<img src="converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Jeometrik Özellikler Olmayan

Coğrafi bilgileri ele almanın yanı sıra bir sayfa düzeni renkleri ve kenarlık stillerini hesaplamakla da sorumludur. In Microsoft Word, metin rengi otomatik olarak belirtilebilir, ki bu da metnin görünmesi gereken rengin hücrenin veya paragrafın gölgelendirme rengine dayalı olması ya da sayfanın rengine dayalı olması anlamına gelir.

Sayfa düzeni metnin nerede görüneceğini ve onun arkasında ne tür içerik görüneceğini hesaplar, böylece renk hesaplamasını mümkün kılar. Sayfa düzeni tarafından gerçekleştirilen diğer özel hesaplamalar var. Örneğin bir tablo içinde yatay bir sınır bir tablo satırının bir metin sütununda son olup olmadığına ve bunun birden fazla sütuna yayılıp yayılmadığına bağlıdır. Sütun içinde bir satır son olarak işlenirse, alt sınır yatay yerine kullanılır.

![non_geometric_properties_aspose-words-java](converting-to-fixed-page-format-2.png)

Aspose.Words içinde bir kullanıcı yeni bir sayfa düzeni oluşturma veya mevcut olanı güncelleme isteyebilir. Bu iki işlem [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)) yöntemiyle yapılabilir, bu yöntem [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) sınıfında sağlanmıştır. Bir sayfa düzeni yoksa ancak bir ihtiyacı var (örneğin, belge sabit bir sayfaya biçimlendirildiğinde), Aspose.Words otomatik olarak bu yöntemi arayacaktır. Ancak, eğer bir sayfa düzeni zaten varsa, Aspose.Words mevcut olanı kullanacak, onu güncellemek için gerekli kaynakları tüketmemek için. Bu durumda kullanıcı, sayfa düzeninin belgedeki model ile güncel olduğundan emin olmak için `UpdatePageLayout` yöntemini çağırmalıdır.

### Dinamik Yapı

Sayfa düzeni oluşturma süreci aşağıdaki adımlardan oluşur:

- *Conversion* – belge modelinin içeriğini listeleme ve buna karşılık gelen düzen nesnelerini hazırlama
- *Build* – sayfadaki belgenin içeriğini temsil etmek için düzen nesnelerini yerleştirme.
- *Reflow* – geometrik kısıtlamaları karşılamak için nesne düzenini güncelliyor.
- *Sayfa düzeni nesnelerini sabit sayfa sunumuna dönüştürme ve renk bilgilerini sonlandırma*.
- *Şekil içeriğinin oluşturulması ve yeniden akması* - Bir sonraki adım, belge şekillerini içeren metin içeriğine sahipse gereklidir.

Not, ki sayfa düzeni dinamik bir yapıya sahiptir ve kısmen yeniden inşa edilebilir. Bu, özellikle belge düzeni yapısını yeniden oluşturmadan alan değerlerini hesaplamak imkansız olduğunda gerekli. Alan bir nesnenin sayfa üzerindeki konumuna referans verebilir ve aynı zamanda alan değeri de sayfa üzerinde işlenir ve referans verilen nesnenin konumunu etkiler. Bir sayfa düzeni tek seferde yapılamaz, çünkü bir sayfada konumlandırılırken alan değerleri henüz mevcut olmayabilir.

Tipik bir senaryo düşünün, belgenin ilk sayfasının altbilgisinde `NUMPAGES` alanı görünür. Bu alanın değeri, toplam sayfa sayısıdır. Sayfada bir alanı konumlandırmak için onun değeri bilinmelidir. Eğer şu anda sadece ilk sayfa oluşturuluyorsa, toplam sayfa sayısı henüz bilinmiyor. Bu durumda sayfa düzeni varsayılan değeri kullanmak zorundadır ve daha sonra gerçek hesaplamalara göre değerini değiştirmek için bu alana geri dönmelidir. Ancak, alan değerini değiştirirken bir sayfadaki başka belge içeriği etkilenebilir ve nihayetinde yeni bir sayfa eklenebilir veya mevcut bir sayfa çıkarılabilir, böylece hesaplanan değer güncel olmaz. Bu, mevcut sayfa düzenini güncellemek için mümkün hale getirilerek çözülebilir.

Bir düzen oluştururken, sayfalarda belgenin çıktısını etkileyen [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) özelliğini ayarlamak da mümkündür.

## Sabit Sayfalı Biçimde Kaydetme

Sayfa düzeni oluşturulduktan ve nesnelerin geometrisi ve sayfa üzerindeki konumları hesaplandıktan sonra, belge sabit bir sayfa biçiminde Aspose.Words tarafından desteklenen bir biçimde kaydedilebilir. Sayfalı biçimlerde belgeleri kaydetme halinde, tüm bu biçimler arasında ortak olan çıktı seçenekleri kullanılabilir. Onlar kontrol etmenizi sağlar:

- Çıktı belgesi içinde olan sayfa sayısı ve aralığı ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)).
- Sayfa başına sayfa belgesi kaydedilmesi ilerlemesi ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)).
- Bir dizi karakter, sayılar için kullanılan işleme [NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Bir metafile oynatıcısı ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Daha detaylı bilgi için [Handling Windows Metafiles](/words/java/handling-windows-metafiles/) makaleye bakın.
- JPEG resimleri yeniden sıkıştırmak için kalite oranı, seçilen kaydetme formatına bağlı olarak [JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/)'dan biraz farklı olabilir.
Vektör grafiklerin optimizasyonu [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) çıkışında Aspose.Words.
- Grafik seçenekleri, Tif, Png, Bmp, Jpeg, Emf formatlarında kaydedilirken ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)).
- Grayscale olarak belgeyi kaydetme ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)).
- ÇizimML şekiller ve yedekleme şekilleri arasında geçiş yapma ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- DML etkilerinden geçiş yapma modları ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

Örnek aşağıda, `Save` yöntemi ve işleme seçeneklerini kullanarak bir belgenin JPEG formatında nasıl kaydedileceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
