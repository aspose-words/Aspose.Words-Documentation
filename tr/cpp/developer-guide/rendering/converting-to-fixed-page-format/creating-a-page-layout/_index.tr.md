---
title: C++ içinde Sayfa Düzeni Oluşturma
second_title: Aspose.Words için C++
articleTitle: Sayfa Düzeni Oluşturma
linktitle: Sayfa Düzeni Oluşturma
description: "Sayfa düzeni oluşturmak maliyetli bir prosedür olabilir. Aspose.Words yalnızca gerektiğinde bir sayfa düzeni oluşturacaktır: belge sayfalarını oluşturmak, bir alan değeri elde etmek, bir belgeyi HTML 'e dışa aktarmak vb."
type: docs
weight: 10
url: /tr/cpp/creating-a-page-layout/
timestamp: 2024-09-24-14-35-44
---

Sayfa düzeni oluşturmak hem hız hem de bellek açısından maliyetli bir prosedür olabilir. Bunun birkaç nedeni vardır:

- Belge, binlerce sayfada görüntülenmesi gerekebilecek büyük miktarda içeriğe sahip olabilir. Her sayfadaki her nesnenin geometrisinin, bellek kaynaklarını tüketerek tanımlanması gerekir.
- Belgenin geometriye kısıtlamalar getiren birçok kuralı olabilir. Her kısıtlamanın karşılandığından emin olmak için önemli hesaplama süresi harcanabilir.
- Bazı belge özellikleri, örneğin `NUMPAGES` alanı, hesaplama sırasında kullanılamayan gelecekteki özellik değerleri için özyinelemeli bağımlılıklar oluşturur. Bu, tekrarlayan hesaplamalara yol açar ve hesaplama süresine eklenir.

Yukarıda belirtilen nedenlerden dolayı, Aspose.Words yalnızca gerektiğinde bir sayfa düzeni oluşturacaktır. Bunun tipik bir nedeni, belge sayfalarını oluşturma veya sayfa düzeninde bulunan bilgilere bağlı bir alan değeri elde etme isteği olabilir. Daha az belirgin bir neden, bir belgeyi HTML 'ye dışa aktarmak olabilir. HTML sabit sayfa biçimi olmasa ve içerik nesnelerinin geometrisini tanımlamasa da yine de görüntüleri destekler. Bu tür görüntüler, içinde bir metin bulunan Microsoft Word biçiminde oluşturulmuş şekiller biçiminde olabilir. Örneğin, eksen etiketli bir grafik görüntü olarak HTML'ye dışa aktarılabilir, ancak bu yapılmadan önce Aspose.Words'in o görüntüyü oluşturması ve dolayısıyla etiketin nerede görüntüleneceğini bilmesi gerekir. Aşağıdaki grafik örneğine bakın:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## Geometrik Olmayan Özellikler

Geometrik bilgilerin işlenmesine ek olarak, renklerin ve kenarlık stillerinin hesaplanmasından bir sayfa düzeni de sorumludur. Microsoft Word 'da metin rengi otomatik olarak belirtilebilir; bu, renk seçiminin hücrenin veya paragrafın gölgelendirme rengine veya metnin göründüğü sayfanın rengine dayanması gerektiği anlamına gelir.

Sayfa düzeni, metnin nerede görüneceğini ve arkasında hangi içeriğin oluşturulacağını hesaplayarak renk hesaplamasını etkinleştirir. Sayfa düzeni tarafından gerçekleştirilen başka özel hesaplamalar da vardır. Örneğin, bir tablodaki yatay kenarlık, bir tablo satırının bir metin sütununda en son olup olmadığına ve sütunlar arasında bölünüp bölünmediğine bağlıdır. Bir sütunda bir satır en son işlenirse, yatay yerine alt kenarlık kullanılır.

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

Aspose.Words 'te, bir kullanıcı yeni bir sayfa düzeni oluşturup oluşturmayacağını veya mevcut bir sayfa düzenini güncelleyip güncellemeyeceğini isteyebilir. Bunların her ikisi de [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) sınıfı tarafından sağlanan [UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/) yöntemiyle gerçekleştirilebilir. Bir sayfa düzeni yoksa, ancak buna ihtiyaç varsa (örneğin, belge sabit sayfa biçimine dışa aktarıldığında), Aspose.Words bu yöntemi otomatik olarak çağırır. Ancak, bir sayfa düzeni zaten mevcutsa, güncellemek için gerekli kaynakları tüketmekten kaçınmak için Aspose.Words mevcut olanı kullanacaktır. Bu durumda, sayfa düzeninin belge modeliyle güncel olduğundan emin olmak için kullanıcının `UpdatePageLayout` yöntemini çağırması gerekir.

## Dinamik Yapı

Sayfa düzeni oluşturma işlemi aşağıdaki adımlardan oluşur:

- *Conversion* - belge modelinin içeriğini numaralandırmak ve karşılık gelen düzen nesnelerini hazırlamak.
- *Build* - belgenin içeriğini sayfalarda temsil edecek düzen nesnelerinin düzenlenmesi.
- *Reflow* - geometri kısıtlamalarını karşılamak için nesne düzenlemesinin güncellenmesi.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - belge iç içe metin içeriğine sahip şekiller içeriyorsa gerekli bir adım.

Sayfa düzeninin kısmen yeniden oluşturulabilen dinamik bir yapı olduğunu unutmayın. Bu, özellikle belge düzeni yapısını yeniden oluşturmadan alan değerlerini hesaplamanın imkansız olduğu durumlarda gereklidir. Alan, bir sayfadaki bir nesnenin konumuna başvurabilir ve aynı zamanda, alan değerinin kendisi de sayfada oluşturulur ve başvurulan nesnenin konumunu etkiler. Sayfa düzeni tek seferde oluşturulamaz, çünkü bir sayfada konumlandırma sırasında alan değerleri henüz kullanılamayabilir.

Belgedeki ilk sayfanın altbilgisinde `NUMPAGES` alanı göründüğünde tipik senaryoyu göz önünde bulundurun. Bu alanın değeri toplam sayfa sayısıdır. Alanı bir sayfaya konumlandırmak için değeri bilinmelidir. Şu anda yalnızca ilk sayfa oluşturuluyorsa, toplam sayfa sayısı henüz bilinmemektedir. Bu durumda, sayfa düzeninin varsayılan değeri kullanması ve daha sonra o alana geri dönmesi ve değerini gerçek hesaplamalara göre değiştirmesi gerekir. Ancak, alan değerini değiştirmek bir sayfadaki diğer belge içeriğini etkileyebilir ve sonuçta yeni bir sayfanın eklenmesine veya mevcut bir sayfanın kaldırılmasına neden olarak hesaplanan değerin güncelliğini yitirmesine neden olabilir. Bu sorun, mevcut sayfa düzenini güncellemeyi mümkün kılarak çözülebilir.

Bir düzen oluştururken, belgenin sayfalardaki çıktısını etkileyen [LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/) özelliklerini ayarlamak da mümkündür.
