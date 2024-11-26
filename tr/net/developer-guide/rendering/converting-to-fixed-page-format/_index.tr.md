---
title: C#'te Sabit Sayfa Formatına Dönüştürme
second_title: .NET için Aspose.Words
articleTitle: Sabit Sayfa Formatına Dönüştürme
linktitle: Sabit Sayfa Formatına Dönüştürme
description: "C# kullanarak belgeleri PDF, XPS, HTML, XAML, PostScript ve PCL formatlarında kaydedin."
type: docs
weight: 10
url: /tr/net/converting-to-fixed-page-format/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words kendi sayfa düzeni motorunu uygular. Spesifikasyonlarına girmeden önce, belgeyi yüksek düzeyde tartışmak faydalı olacaktır. Kullanıcılar bir belge hakkında düşünürken genellikle kelimeler, resimler, tablolar ve grafikler içeren bir dizi kağıt hayal ederler. Belgeler metin, elektronik tablolar, slaytlar, CAD çizimleri, akış şemaları gibi çeşitli türlerde olabilir ve bu nedenle esasen farklı düzenlere sahip olabilir. Çoğu uygulama belgelerin yazıcıya gönderilmesine izin verir; bu, kullanıcının belgenin amaçlanan son görünümünü gerçekten görüntüleyebildiği zamandır.

## Bir Belgeyi Çeşitli Uygulamalarda Görüntüleme

Çeşitli belge görüntüleme veya yayınlama uygulamaları, kullanıcıların belirli formatlardaki belgeleri açmasına (Adobe Acrobat, XPS Görüntüleyici) ve bazen de düzenlemesine (Adobe InDesign) olanak tanır. Bu uygulamalar genellikle "sabit sayfalı" formatta belgeler üretir. Böyle bir belge formatı, bir belgenin içeriğinin her sayfada tam olarak nereye yerleştirildiğini tanımlar. Dahili olarak, PDF veya XPS formatı her sayfanın bir açıklamasını ve ayrıca sayfadaki içeriğin düzenini belirten çizim talimatlarını içerir. Bu, içeriğin raster veya vektör biçiminde nerede gösterileceğini açıklayan görüntü formatlarına benzer.

Bunun tersine, bazı metin düzenleme uygulamaları belgenin sayfalarının görüntülenmesini desteklemez. Örneğin, Microsoft Not Defteri, metni basitçe görüntülemek, düzenlemek ve yazdırmak dışında çok az işlevi destekler. Buradaki önemli gözlem, bu tür uygulamaların belgenin sayfalarını gösterememesi veya kullanıcıya bu sayfalardan kaç tanesinin yazdırılacağını söyleyememesi, yalnızca belge içeriğinin görüntülenmesine izin vermesidir. Belge düz metin formatında kaydedilebilir ve diğer birçok uygulama tarafından açılabilir. Rastgele bir dosyanın ikili içeriğini görüntülemeye izin veren bir uygulamayı kullanarak, belge dosyasında neyin saklandığını görebilirsiniz - bu yalnızca düz metindir, içinde başka hiçbir şey yoktur.

Microsoft WordPad gibi biraz daha karmaşık metin düzenleme uygulamaları, belgeyi, görüntülerin eklenmesi, karakter biçimlendirmesi, paragraf kenar boşlukları ve boşluk bırakma gibi daha fazla biçimlendirme işlevini destekleyen Zengin Metin Biçiminde (RTF) kaydeder. Ancak RTF formatı aynı zamanda sayfalar hakkında hiçbir bilgi içermeyen yalnızca belgenin içeriğini de içerir.

Microsoft Word, günümüzde Windows'deki en gelişmiş metin düzenleme uygulamasıdır. Dosyaları, belgenin içeriğini esnek ve kapsamlı bir şekilde açıklayan DOCX biçiminde biçimlendirir; kullanıcıların sayfa boyutunu, belge bölümünün yönünü belirlemesine olanak tanır ve bir WYSIWYG uygulaması olduğundan belge sayfalarını ekranda bile gösterir. Ancak belge içeriğinin belge dosyasında bulunan sayfalarda nasıl görüntülendiğine ilişkin henüz bir bilgi bulunmuyor. Belge dosyası, bazı geometrik kısıtlamalarla birlikte yalnızca içeriğin kendisini ve belge nesnelerinin birbirleriyle olan ilişkisini açıklar. Sonuç olarak Microsoft Word, bir belgeyi görüntülemeden önce bu bilgiyi kendisi hesaplar. Sayfa düzeninin devreye girdiği yer burasıdır.

## Sayfa Düzeni Nedir?

Belge sayfa düzeni, belirli bir nesnenin tüm belge nesnelerinin sayfalarında nerede bulunduğunu açıklayan bir veri yapısıdır. Ayrıca nesnelerin yazı tipi boyutu, gölgeleme veya çizim efektleri gibi görünümlerini etkileyen özellikleri olduğundan, nesnenin yalnızca nerede olduğunu değil, aynı zamanda sayfanın hangi alanlarını kapladığını ve çalışıp çalışmayacağını da bilmeniz gerekir. diğer nesnelerin aynı alan(lar)la çakışmaması için birden fazla sayfaya uygulayın.

Aspose.Words, PDF, XPS ve çeşitli görüntü formatları gibi tüm sabit sayfa formatlarını üretmesine olanak tanıyan sayfa düzeni işlevini dahili olarak uygular. Sayfa düzeni olmadan, sabit sayfalı belge dosyasında saklanan bilgiler kullanılamaz ve tüm bu formatlar desteklenmez.

Bir belge ile sayfa düzeni arasındaki ilişki oldukça basittir. Bir belge içeriği açıklarken, karşılık gelen sayfa düzeni o içeriğin geometrisini açıklar. Geometriyi hesaplamak için içerik olmayacağından, belge olmadan sayfa düzeninin var olamayacağını, ancak sayfa düzeni olmadan bir belgenin var olabileceğini unutmayın. Örneğin, bir DOCX belgesi bir RTF belgesine dönüştürüldüğünde, her iki format da onu saklamadığından geometriyi bilmek genellikle gereksizdir.

## Sayfa Düzeni Oluşturma

Sayfa düzeni oluşturmak hem hız hem de bellek açısından maliyetli bir işlem olabilir. Bunun birkaç nedeni vardır:

- Belgede binlerce sayfada görüntülenmesi gerekebilecek çok miktarda içerik bulunabilir. Her sayfadaki her nesnenin geometrisinin tanımlanması gerekecek ve bu da bellek kaynaklarını tüketecektir.
- Belgenin geometriye kısıtlamalar getiren birçok kuralı olabilir. Her kısıtlamanın karşılanmasını sağlamak için önemli miktarda hesaplama süresi harcanabilir
- `NUMPAGES` alanı gibi bazı belge özellikleri, gelecekteki özellik değerleri için hesaplama sırasında mevcut olmayan yinelenen bağımlılıklar oluşturur. Bu, tekrarlanan hesaplamalara yol açar ve hesaplama süresinin artmasına neden olur.

Yukarıda belirtilen nedenlerden dolayı Aspose.Words yalnızca gerekli olduğunda sayfa düzeni oluşturacaktır. Bunun tipik bir nedeni, belge sayfalarını işleme isteği veya sayfa düzeninde mevcut bilgilere bağlı bir alan değeri elde etme isteği olabilir. Daha az belirgin bir neden, bir belgeyi HTML'ye aktarmak olabilir. HTML sabit sayfalı bir format olmamasına ve içerik nesnelerinin geometrisini tanımlamamasına rağmen yine de görüntüleri destekler. Bu tür görseller, Microsoft Word'de oluşturulmuş, içinde metin bulunan şekiller biçiminde olabilir. Örneğin, eksen etiketleri içeren bir grafik HTML'ye görüntü olarak aktarılabilir, ancak bunun yapılabilmesi için önce Aspose.Words'in bu görüntüyü oluşturması ve dolayısıyla etiketi nerede görüntüleyeceğini bilmesi gerekir. Aşağıdaki grafik örneğine bakın:

<img src="/words/net/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="sabit sayfa formatına dönüştürülüyor_1" style="width:800px"/>

### Geometrik Olmayan Özellikler

Sayfa düzeni, geometrik bilgilerin yanı sıra renklerin ve kenarlık stillerinin hesaplanmasından da sorumludur. Microsoft Word'te metin rengi otomatik olarak belirtilebilir; bu, renk seçiminin hücrenin veya paragrafın gölgeleme rengine veya metnin göründüğü sayfanın rengine göre yapılması gerektiği anlamına gelir.

Sayfa düzeni, metnin nerede görüneceğini ve arkasında hangi içeriğin görüntüleneceğini hesaplayarak renk hesaplamasına olanak tanır. Sayfa düzeninin gerçekleştirdiği başka özel hesaplamalar da vardır. Örneğin, bir tablodaki yatay kenarlık, tablo satırının bir metin sütununda sonda olup olmadığına ve sütunlara bölünüp bölünmediğine bağlıdır. Bir sütunda bir satır en son oluşturulursa yatay yerine alt kenarlık kullanılır.

![converting-to-fixed-page-format_2](/words/net/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

Aspose.Words'te kullanıcı, yeni bir sayfa düzeni mi oluşturulacağını yoksa mevcut bir sayfa düzeninin mi güncelleneceğini talep edebilir. Bunların her ikisi de [Document](https://reference.aspose.com/words/tr/net/aspose.words/document/) sınıfının sağladığı [UpdatePageLayout](https://reference.aspose.com/words/tr/net/aspose.words/document/updatepagelayout/) yöntemiyle gerçekleştirilebilir. Sayfa düzeni yoksa ancak buna ihtiyaç varsa (örneğin, belge sabit sayfa formatına aktarıldığında), Aspose.Words bu yöntemi otomatik olarak çağıracaktır. Bununla birlikte, bir sayfa düzeni zaten mevcutsa Aspose.Words, onu güncellemek için gerekli kaynakların tüketilmesini önlemek amacıyla mevcut düzeni kullanacaktır. Bu durumda sayfa düzeninin belge modeliyle güncel olduğundan emin olmak için kullanıcının `UpdatePageLayout` yöntemini çağırması gerekir.

### Dinamik Yapı

Sayfa düzeni oluşturma süreci aşağıdaki adımlardan oluşur:

- *Conversion* – belge modelinin içeriğini numaralandırma ve ilgili düzen nesnelerini hazırlama.
- *Build* – sayfalardaki belgenin içeriğini temsil edecek şekilde düzen nesnelerini düzenleme.
- *Reflow* – geometri kısıtlamalarını karşılamak için nesne düzenlemesinin güncellenmesi.
- *Yerleşim nesnelerinin sabit sayfa sunumuna yansıtılması ve renk bilgilerinin sonlandırılması*.
- *Şekil içeriğinin oluşturulması ve yeniden akıtılması* – belgede iç içe geçmiş metin içeriğine sahip şekiller varsa gerekli bir adımdır.

Sayfa düzeninin kısmen yeniden oluşturulabilen dinamik bir yapı olduğunu unutmayın. Bu, özellikle belge düzeni yapısını yeniden oluşturmadan alan değerlerini hesaplamanın mümkün olmadığı durumlarda gereklidir. Alan, bir nesnenin sayfadaki konumuna referans verebilir ve aynı zamanda alan değerinin kendisi de sayfada işlenerek başvurulan nesnenin konumunu etkiler. Sayfa düzeni tek seferde oluşturulamaz çünkü alan değerleri sayfaya yerleştirildiğinde henüz mevcut olmayabilir.

Belgenin ilk sayfasının alt bilgisinde `NUMPAGES` alanının göründüğü tipik senaryoyu düşünün. Bu alanın değeri toplam sayfa sayısıdır. Alanın sayfa üzerinde konumlandırılabilmesi için değerinin bilinmesi gerekmektedir. Şu anda yalnızca ilk sayfa oluşturuluyorsa toplam sayfa sayısı henüz bilinmiyor. Bu durumda sayfa düzeninin varsayılan değeri kullanması ve daha sonra bu alana geri dönüp değerini gerçek hesaplamalara göre değiştirmesi gerekir. Ancak alan değerini değiştirmek, sayfadaki diğer belge içeriğini etkileyebilir ve sonuçta yeni bir sayfanın eklenmesine veya mevcut bir sayfanın kaldırılmasına neden olarak hesaplanan değerin güncelliğini yitirmesine neden olabilir. Bu sorun mevcut sayfa düzeninin güncellenmesine olanak sağlanarak çözülebilir.

Bir düzen oluştururken, belgenin sayfalardaki çıktısını etkileyen [LayoutOptions](https://reference.aspose.com/words/tr/net/aspose.words.layout/layoutoptions/) özelliklerini ayarlamak da mümkündür.

## Sabit Sayfa Formatına Kaydetme

Sayfa düzeni oluşturulduktan ve nesnelerin geometrisi ve sayfadaki konumları hesaplandıktan sonra belge, Aspose.Words tarafından desteklenen sabit sayfa formatında kaydedilebilir. Belgeleri sabit sayfa formatlarında kaydederken, bu formatların hepsinde ortak olan işleme seçenekleri kullanılabilir. Aşağıdakileri kontrol etmeye izin verirler:

- Çıktı belgesinde ([PageCount](https://reference.aspose.com/words/tr/net/aspose.words/document/pagecount/)) yer alan sayfaların sayısı ve aralığı.
- Sayfa sayfa belge kaydetmenin ilerlemesi ([PageSavingCallback](https://reference.aspose.com/words/tr/net/aspose.words.saving/fixedpagesaveoptions/pagesavingcallback/)).
- Sayıların oluşturulmasında ([NumeralFormat](https://reference.aspose.com/words/tr/net/aspose.words.saving/fixedpagesaveoptions/numeralformat/)) kullanılan bir dizi karakter.
- Bir meta dosyası oynatıcısı ([MetafileRenderingOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/fixedpagesaveoptions/metafilerenderingoptions/)). Daha fazla ayrıntı için [Windows Meta Dosyalarını Kullanma](/words/tr/net/handling-windows-metafiles/) makalesine bakın.
- Seçilen kaydetme biçimine ([JpegQuality](https://reference.aspose.com/words/tr/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/)) bağlı olarak değeri biraz farklılık gösterebilen, JPEG görüntülerinin yeniden sıkıştırılmasına yönelik bir kalite oranı.
- Aspose.Words çıktısında ([OptimizeOutput](https://reference.aspose.com/words/tr/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/)) vektör grafiklerinin optimizasyonu.
- Tiff, Png, Bmp, Jpeg, Emf formatlarına ([UseAntiAliasing](https://reference.aspose.com/words/tr/net/aspose.words.saving/saveoptions/useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/tr/net/aspose.words.saving/saveoptions/usehighqualityrendering/)) kaydederken grafik seçenekleri.
- Belgeyi gri tonlamalı ([ColorMode](https://reference.aspose.com/words/tr/net/aspose.words.saving/fixedpagesaveoptions/colormode/)) kaydetme.
- DrawingML şekillerinin ve geri dönüş şekillerinin ([DmlRenderingMode](https://reference.aspose.com/words/tr/net/aspose.words.saving/saveoptions/dmlrenderingmode/)) oluşturulması arasında geçiş yapma.
- DML efektleri oluşturma modları ([DmlEffectsRenderingMode](https://reference.aspose.com/words/tr/net/aspose.words.saving/saveoptions/dmleffectsrenderingmode/)) arasında geçiş yapma.

Aşağıdaki örnek, `Save` yöntemini ve oluşturma seçeneklerini kullanarak bir belgenin JPEG formatında nasıl kaydedileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cs" >}}
