---
title: Belge Düğümleri Arasında İçerik Nasıl Çıkarılır
second_title: .NET için Aspose.Words
articleTitle: Belgedeki Düğümler Arasındaki İçeriği Çıkarma
linktitle: Düğümler Arasındaki İçeriği Çıkart
description: "C# kullanarak belge içeriğini farklı şekillerde çıkarma."
type: docs
weight: 140
url: /tr/net/how-to-extract-selected-content-between-nodes-in-a-document/
---

Belgelerle çalışırken, belge içindeki belirli bir aralıktan içeriği kolayca çıkarabilmek önemlidir. Ancak içerik paragraf, tablo, resim vb. gibi karmaşık unsurlardan oluşabilir.

Hangi içeriğin çıkarılması gerektiğine bakılmaksızın, bu içeriği çıkarma yöntemi her zaman, aralarında içerik çıkarmak için hangi düğümlerin seçildiğine göre belirlenecektir. Bunlar tüm metin gövdeleri veya basit metin çalıştırmaları olabilir.

İçerik çıkarırken dikkate alınması gereken birçok olası durum ve dolayısıyla birçok farklı düğüm türü vardır. Örneğin, aşağıdakiler arasında içerik çıkarmak isteyebilirsiniz:

- İki özel paragraf
- Belirli metin dizileri
- Birleştirme alanları gibi çeşitli türlerdeki alanlar
- Bir yer işaretinin veya yorumun başlangıç ve bitiş aralıkları
- Ayrı bölümlerde bulunan çeşitli metin gövdeleri

Bazı durumlarda, bir paragraf ile alan arasında veya bir çalıştırma ile yer imi arasında içerik çıkarmak gibi farklı düğüm türlerini birleştirmeniz bile gerekebilir.

Bu makalede, farklı düğümler arasında metin çıkarmaya yönelik kod uygulamasının yanı sıra yaygın senaryo örnekleri de sağlanmaktadır.

{{% alert color="primary" %}}

Bu örnekler birçok olasılığın sadece birkaç gösterimidir. Gelecekte metin çıkarma işlevinin genel API'in bir parçası olmasını planlıyoruz ve ekstra kod gerekmeyecek. Bu arada, bu işlevselliğe ilişkin taleplerinizi [Aspose.Words forumu](https://forum.aspose.com/c/words/8)'ye göndermekten çekinmeyin.

{{% /alert %}}

## Neden İçeriği Çıkartın?

Çoğu zaman içeriği çıkarmanın amacı onu çoğaltmak veya yeni bir belgeye ayrı olarak kaydetmektir. Örneğin, içerik çıkarabilir ve şunları yapabilirsiniz:

- Ayrı bir belgeye kopyalayın
- Belgenin belirli bir bölümünü PDF'ye veya resme dönüştürün
- Belgedeki içeriği birçok kez çoğaltın
- Belgenin geri kalanından ayrı olarak çıkarılan içerikle çalışın

Bu, Aspose.Words ve aşağıdaki kod uygulaması kullanılarak kolayca başarılabilir.

## İçerik Algoritmasını Çıkarma

Bu bölümdeki kod, yukarıda açıklanan tüm olası durumları genelleştirilmiş ve yeniden kullanılabilir bir yöntemle ele almaktadır. Bu tekniğin genel taslağı şunları içerir:

1. Belgenizden çıkarılacak içerik alanını belirleyen düğümleri toplamak. Bu düğümlerin alınması, çıkarmak istedikleri şeye bağlı olarak kullanıcı tarafından kendi kodunda gerçekleştirilir.
1. Bu düğümleri aşağıda verilen **ExtractContent** yöntemine geçirmek. Ayrıca, işaretçi görevi gören bu düğümlerin çıkarma işlemine dahil edilip edilmeyeceğini belirten bir boolean parametresi de iletmelisiniz.
1. Çıkarılması belirtilen klonlanmış içeriğin (kopyalanan düğümler) listesinin alınması. Bu düğüm listesini uygun herhangi bir şekilde kullanabilirsiniz; örneğin yalnızca seçilen içeriği içeren yeni bir belge oluşturmak gibi.

## İçerik Nasıl Çıkarılır

İçeriği belgenizden çıkarmak için aşağıdaki **ExtractContent** yöntemini çağırmanız ve uygun parametreleri iletmeniz gerekir. Bu yöntemin temelindeki temel, blok düzeyindeki düğümlerin (paragraflar ve tablolar) bulunmasını ve bunların aynı kopyaları oluşturacak şekilde klonlanmasını içerir. Geçilen işaretleyici düğümler blok düzeyindeyse, yöntem yalnızca bu düzeydeki içeriği kopyalayabilir ve diziye ekleyebilir.

Bununla birlikte, işaretleyici düğümler satır içiyse (paragrafın çocuğu) durum daha karmaşık hale gelir, çünkü paragrafı satır içi düğümde bölmek gerekir; bir çalıştırma, yer imi alanları vb. olsun. Klonlanmış ana düğümlerdeki içerik, İşaretleyiciler arasında mevcut olanlar kaldırılır. Bu işlem, satır içi düğümlerin hala ana paragrafın biçimlendirmesini koruyacağından emin olmak için kullanılır. Yöntem aynı zamanda parametre olarak iletilen düğümler üzerinde de denetimler çalıştıracak ve düğümlerden herhangi birinin geçersiz olması durumunda bir istisna oluşturacaktır. Bu yönteme iletilecek parametreler şunlardır:

1. **StartNode** ve **EndNode**. İlk iki parametre, içeriğin çıkarılmasının sırasıyla nerede başlayacağını ve biteceğini tanımlayan düğümlerdir. Bu düğümler hem blok düzeyinde ([Paragraph](https://reference.aspose.com/words/tr/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/tr/net/aspose.words.tables/table/)) hem de satır içi düzeyde (örn. [Run](https://reference.aspose.com/words/tr/net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/tr/net/aspose.words/bookmark/bookmarkstart/) vb.) olabilir:
   1. Bir alanı iletmek için ilgili **FieldStart** nesnesini iletmelisiniz
   1. Yer imlerini iletmek için **BookmarkStart** ve [BookmarkEnd](https://reference.aspose.com/words/tr/net/aspose.words/bookmark/bookmarkend/) düğümlerinin iletilmesi gerekir
   1. Yorumları iletmek için [CommentRangeStart](https://reference.aspose.com/words/tr/net/aspose.words/commentrangestart/) ve [CommentRangeEnd](https://reference.aspose.com/words/tr/net/aspose.words/commentrangeend/) düğümleri kullanılmalıdır
1.**IsInclusive**. İşaretleyicilerin ekstraksiyona dahil edilip edilmeyeceğini tanımlar. Bu seçenek false olarak ayarlanırsa ve aynı düğüm veya ardışık düğümler aktarılırsa boş bir liste döndürülür:
   1. Bir **FieldStart** düğümü aktarılırsa bu seçenek tüm alanın dahil edileceğini veya hariç tutulacağını tanımlar
   1. Bir **BookmarkStart** veya **BookmarkEnd** düğümü aktarılırsa bu seçenek, yer iminin mi yoksa yalnızca yer imi aralığı arasındaki içeriğin mi dahil edileceğini tanımlar.
   1. Bir **CommentRangeStart** veya **CommentRangeEnd** düğümü aktarılırsa bu seçenek, yorumun kendisinin mi yoksa yalnızca yorum aralığındaki içeriğin mi dahil edileceğini tanımlar.

**ExtractContent** yönteminin uygulanmasını [Aspose.Words GitHub'de](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.cs)'de bulabilirsiniz. Bu makaledeki senaryolarda bu yönteme değinilecektir.

Çıkarılan düğümlerden kolayca belge oluşturmak için özel bir yöntem de tanımlayacağız. Bu yöntem aşağıdaki senaryoların çoğunda kullanılır ve yalnızca yeni bir belge oluşturur ve çıkarılan içeriği bu belgeye aktarır.

Aşağıdaki kod örneği, düğüm listesinin nasıl alınacağını ve bunların yeni bir belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "generate-document.cs" >}}

## Paragraflar Arasındaki İçeriği Çıkartın

Bu, belirli paragraflar arasındaki içeriği çıkarmak için yukarıdaki yöntemin nasıl kullanılacağını gösterir. Bu durumda belgenin ilk yarısında bulunan mektubun gövdesini çıkarmak istiyoruz. Bunun 7. ve 11. paragraflar arasında olduğunu söyleyebiliriz.

Aşağıdaki kod bu görevi yerine getirir. Uygun paragraflar belge üzerinde [GetChild](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/) yöntemi kullanılarak ve belirtilen indekslerden geçirilerek çıkarılır. Daha sonra bu düğümleri **ExtractContent** yöntemine aktarıyoruz ve bunların da ekstraksiyona dahil edilmesi gerektiğini belirtiyoruz. Bu yöntem, daha sonra yeni bir belgeye eklenen bu düğümler arasında kopyalanan içeriği döndürür.

Aşağıdaki kod örneği, yukarıdaki `ExtractContent` yöntemini kullanarak belirli paragraflar arasındaki içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraphs.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Farklı Düğüm Türleri Arasında İçerik Çıkarma

Blok düzeyi veya satır içi düğümlerin herhangi bir kombinasyonu arasından içerik çıkarabiliriz. Aşağıdaki bu senaryoda, ilk paragraf ile ikinci bölümdeki tablo arasındaki içeriği kapsamlı bir şekilde çıkaracağız. Uygun **Paragraph** ve **Table** düğümlerini almak için belgenin ikinci bölümünde [FirstParagraph](https://reference.aspose.com/words/tr/net/aspose.words/story/firstparagraph/) ve [GetChild](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/getchild/) yöntemlerini çağırarak işaretçi düğümlerini alıyoruz. Küçük bir değişiklik için bunun yerine içeriği kopyalayıp orijinalin altına ekleyelim.

Aşağıdaki kod örneği, **ExtractContent** yöntemini kullanarak bir paragraf ile tablo arasındaki içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-block-level-nodes.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Stile Göre Paragraflar Arasındaki İçeriği Çıkarın

Başlık stilleriyle işaretlenmiş paragraflar arasında olduğu gibi, aynı veya farklı stildeki paragraflar arasındaki içeriği çıkarmanız gerekebilir. Aşağıdaki kod bunun nasıl başarılacağını gösterir. "Başlık 1" ve "Başlık 3" stillerinin ilk örneği arasındaki içeriği, başlıkları da çıkarmadan çıkaracak basit bir örnektir. Bunu yapmak için son parametreyi, işaretleyici düğümlerin dahil edilmemesi gerektiğini belirten false olarak ayarladık.

Uygun bir uygulamada, bu stillerin tüm paragrafları arasındaki içeriği belgeden çıkarmak için bu bir döngü içinde çalıştırılmalıdır. Çıkarılan içerik yeni bir belgeye kopyalanır.

Aşağıdaki kod örneği, **ExtractContent** yöntemini kullanarak belirli stillere sahip paragraflar arasındaki içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraph-styles.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "paragraphs-by-style-name.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Belirli Çalıştırmalar Arasında İçerik Çıkarma

[Run](https://reference.aspose.com/words/tr/net/aspose.words/run/) gibi satır içi düğümler arasında da içerik çıkarabilirsiniz. Farklı paragraflardaki **Runs** işaretçiler olarak aktarılabilir. Aşağıdaki kod, aynı **Paragraph** düğümü arasında belirli bir metnin nasıl çıkarılacağını gösterir.

Aşağıdaki kod örneği, **ExtractContent** yöntemini kullanarak aynı paragrafın belirli çalıştırmaları arasındaki içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-runs.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Bir Alanı Kullanarak İçeriği Çıkarma

Bir alanı işaretleyici olarak kullanmak için `FieldStart` düğümünün iletilmesi gerekir. `ExtractContent` yönteminin son parametresi tüm alanın dahil edilip edilmeyeceğini tanımlayacaktır. Belgedeki "FullName" birleştirme alanı ile bir paragraf arasındaki içeriği çıkaralım. [DocumentBuilder](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/) sınıfının [MoveToMergeField](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/movetomergefield/) yöntemini kullanıyoruz. Bu, kendisine iletilen birleştirme alanının adından **FieldStart** düğümünü döndürecektir.

Bizim durumumuzda alanı çıkarma işleminin dışında bırakmak için **ExtractContent** yöntemine iletilen son parametreyi false olarak ayarlayalım. Çıkarılan içeriği PDF'ye dönüştüreceğiz.

Aşağıdaki kod örneği, **ExtractContent** yöntemini kullanarak belgedeki belirli bir alan ile paragraf arasındaki içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-field.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Bir Yer İşaretinden İçerik Çıkarma

Bir belgede, bir yer imi içinde tanımlanan içerik, `BookmarkStart` ve BookmarkEnd düğümleri tarafından kapsüllenir. Bu iki düğüm arasında bulunan içerik yer imini oluşturur. Başlangıç işaretçisi belgedeki bitiş işaretçisinden önce göründüğü sürece, bu düğümlerden herhangi birini, farklı yer imlerinden olanlar da dahil olmak üzere herhangi bir işaretçi olarak geçirebilirsiniz. Aşağıdaki kodu kullanarak bu içeriği yeni bir belgeye çıkaracağız. **IsInclusive** parametre seçeneği, yer iminin nasıl tutulacağını veya atılacağını gösterir.

Aşağıdaki kod örneği, **ExtractContent** yöntemini kullanarak bir yer işaretine başvurulan içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-bookmark.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Bir Yorumdan İçerik Çıkarma

Bir yorum CommentRangeStart, CommentRangeEnd ve Comment düğümlerinden oluşur. Bu düğümlerin tümü satır içidir. İlk iki düğüm, aşağıdaki ekran görüntüsünde görüldüğü gibi, yorumun referans verdiği belgedeki içeriği kapsar.

**Comment** düğümünün kendisi paragraflar ve çalıştırmalar içerebilen bir [InlineStory](https://reference.aspose.com/words/tr/net/aspose.words/inlinestory/)'dir. İnceleme bölmesinde bir yorum balonu olarak görülen yorumun mesajını temsil eder. Bu düğüm satır içi olduğundan ve bir gövdenin soyundan geldiğinden, içeriği bu mesajın içinden de çıkarabilirsiniz.

Yorum, başlığı, ilk paragrafı ve ikinci bölümdeki tabloyu kapsar. Bu yorumu yeni bir belgeye çıkaralım. **IsInclusive** seçeneği, yorumun kendisinin tutulacağını veya atılacağını belirler.

Aşağıdaki kod örneği bunun nasıl yapılacağını gösterir:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-comment-range.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx)'ten indirebilirsiniz.

{{% /alert %}}

## DocumentVisitor Kullanarak İçerik Nasıl Çıkarılır

Bu kullanım senaryosunu uygulamak için [DocumentVisitor](https://reference.aspose.com/words/tr/net/aspose.words/documentvisitor/) sınıfını kullanın. Bu sınıf, iyi bilinen Ziyaretçi tasarım modeline karşılık gelir. **DocumentVisitor** **,** ile belge ağacı üzerinde numaralandırma gerektiren özel işlemleri tanımlayabilir ve yürütebilirsiniz.

**DocumentVisitor**, belirli bir belge öğesiyle (düğüm) karşılaşıldığında çağrılan bir dizi **VisitXXX** yöntemi sağlar. Örneğin, bir metin paragrafının başlangıcı bulunduğunda [VisitParagraphStart](https://reference.aspose.com/words/tr/net/aspose.words/documentvisitor/visitparagraphstart/) çağrılır ve bir metin paragrafının sonu bulunduğunda [VisitParagraphEnd](https://reference.aspose.com/words/tr/net/aspose.words/documentvisitor/visitparagraphend/) çağrılır. Her **DocumentVisitor.VisitXXX** yöntemi karşılaştığı ilgili nesneyi kabul eder, böylece onu gerektiği gibi kullanabilirsiniz (örneğin, biçimlendirmeyi geri alın), örneğin hem **DocumentVisitor.VisitParagraphStart** hem de **DocumentVisitor.VisitParagraphEnd** bir [Paragraph](https://reference.aspose.com/words/tr/net/aspose.words/paragraph/) nesnesini kabul eder.

Her **DocumentVisitor.VisitXXX** yöntemi, düğümlerin numaralandırılmasını kontrol eden bir [VisitorAction](https://reference.aspose.com/words/tr/net/aspose.words/visitoraction/) değeri döndürür. Numaralandırmaya devam etmeyi, geçerli düğümü atlamayı (ancak numaralandırmaya devam etmeyi) veya düğümlerin numaralandırmasını durdurmayı talep edebilirsiniz.

Bir belgenin çeşitli bölümlerini programlı olarak belirlemek ve çıkarmak için izlemeniz gereken adımlar şunlardır:

- **DocumentVisitor**'ten türetilmiş bir sınıf oluşturun
- Bazı özel işlemleri gerçekleştirmek için **DocumentVisitor.VisitXXX** yöntemlerinin bir kısmı veya tamamı için uygulamaları geçersiz kılın ve sağlayın
- Numaralandırmayı başlatmak istediğiniz düğümde [Node.Accept](https://reference.aspose.com/words/tr/net/aspose.words/node/accept/)'i arayın; örneğin, belgenin tamamını numaralandırmak istiyorsanız [Document.Accept](https://reference.aspose.com/words/tr/net/aspose.words/document/accept/)'yi kullanın

**DocumentVisitor**, tüm **DocumentVisitor.VisitXXX** yöntemleri için varsayılan uygulamaları sağlar. Bu, yalnızca belirli bir ziyaretçi için gereken yöntemlerin geçersiz kılınması gerektiğinden, yeni belge ziyaretçileri oluşturmayı kolaylaştırır. Tüm ziyaretçi yöntemlerinin geçersiz kılınması gerekli değildir.

Aşağıdaki örnek, Aspose.Words nesne modeline yeni işlemler eklemek için Ziyaretçi modelinin nasıl kullanılacağını gösterir. Bu durumda, metin formatına basit bir belge dönüştürücü oluşturuyoruz:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-document-visitor.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "convert-doc-to-txt.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Yalnızca Metin Nasıl Çıkarılır

Belgeden metin almanın yolları şunlardır:

- Bir dosyaya veya akışa düz metin olarak kaydetmek için [Document.Save](https://reference.aspose.com/words/tr/net/aspose.words/document/save/)'i [SaveFormat.Text](https://reference.aspose.com/words/tr/net/aspose.words/saveformat/) ile kullanın
- [Node.ToString](https://reference.aspose.com/words/tr/net/aspose.words/node/tostring/) kullanın ve **SaveFormat.Text** parametresini iletin. Dahili olarak bu, bir bellek akışına metin olarak kaydetmeyi çağırır ve elde edilen dizeyi döndürür
- Alan kodları dahil tüm Microsoft Word kontrol karakterlerini içeren metni almak için [Node.GetText](https://reference.aspose.com/words/tr/net/aspose.words/node/gettext/)'i kullanın
- Özelleştirilmiş çıkarma gerçekleştirmek için özel bir [DocumentVisitor](https://reference.aspose.com/words/tr/net/aspose.words/documentvisitor/) uygulayın

### `Node.GetText` ve `Node.ToString`'yi kullanma

Bir Word belgesi, alan, hücre sonu, bölüm sonu vb. gibi özel öğeleri belirten kontrol karakterlerini içerebilir. Olası Word kontrol karakterlerinin tam listesi **ControlChar** sınıfında tanımlanır. **Node.GetText** yöntemi, düğümde bulunan tüm kontrol karakter karakterlerini içeren metni döndürür.

**ToString**'in çağrılması, belgenin yalnızca kontrol karakterleri olmadan düz metin gösterimini döndürür. Düz metin olarak dışa aktarma hakkında daha fazla bilgi için aşağıdaki **"SaveFormat.Text Kullanılıyor"** bölümüne bakın.

Aşağıdaki kod örneği, bir düğümde **GetText** ve **ToString** yöntemlerini çağırmak arasındaki farkı gösterir:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "simple-extract-text.cs" >}}

### `SaveFormat.Text`'i kullanma

Bu örnek belgeyi şu şekilde kaydeder:

- Alan karakterlerini ve alan kodlarını, şekli, dipnotu, son notu ve yorum referanslarını filtreler
- Paragraf sonu **ControlChar.Cr** karakterlerini **ControlChar.CrLf** kombinasyonlarıyla değiştirir
- UTF8 kodlamasını kullanır

Aşağıdaki kod örneği, bir belgenin TXT biçiminde nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "docx-to-txt.cs" >}}

## Şekillerden Görüntü Çıkarma

Bazı görevleri gerçekleştirmek için belge resimlerini çıkarmanız gerekebilir. Aspose.Words bunu da yapmanıza olanak sağlar.

Aşağıdaki kod örneği, bir belgeden görüntülerin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-images.cs" >}}