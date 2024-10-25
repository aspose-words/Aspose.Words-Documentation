---
title: Belge Düğümleri Arasında İçerik Nasıl Çıkarılır
second_title: Aspose.Words için C++
articleTitle: Belgedeki Düğümler Arasındaki İçeriği Ayıkla
linktitle: Düğümler Arasındaki İçeriği Ayıkla
type: docs
description: "C++ kullanarak farklı belge içeriği ayıklanıyor."
weight: 140
url: /tr/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
---

Belgelerle çalışırken, bir belge içindeki belirli bir aralıktan içeriği kolayca çıkarabilmek önemlidir. Ancak içerik paragraflar, tablolar, resimler vb. Gibi karmaşık öğelerden oluşabilir.

Hangi içeriğin çıkarılması gerektiğine bakılmaksızın, bu içeriği çıkarma yöntemi her zaman aralarında içerik çıkarmak için hangi düğümlerin seçileceğine göre belirlenir. Bunlar tüm metin gövdeleri veya basit metin çalıştırmaları olabilir.

İçerik ayıklarken göz önünde bulundurulması gereken birçok olası durum ve bu nedenle birçok farklı düğüm türü vardır. Örneğin, aralarında içerik ayıklamak isteyebilirsiniz:

- İki özel paragraf
- Belirli metin çalıştırmaları
- Birleştirme alanları gibi çeşitli türlerdeki alanlar
- Bir yer iminin veya yorumun başlangıç ve bitiş aralıkları
- Ayrı bölümlerde yer alan çeşitli metin gövdeleri

Bazı durumlarda, paragraf ile alan arasında veya çalışma ile yer imi arasında içerik ayıklamak gibi farklı düğüm türlerini birleştirmeniz bile gerekebilir.

Bu makalede, farklı düğümler arasında metin ayıklamak için kod uygulamasının yanı sıra yaygın senaryo örnekleri de verilmektedir.

{{% alert color="primary" %}}

Bu örnekler, birçok olasılığın sadece birkaç gösterisidir. Metin çıkarma işlevinin gelecekte public API'nin bir parçası olmasını planlıyoruz ve fazladan kod gerekmeyecek. Bu arada, bu işlevle ilgili isteklerinizi web sitesinde yayınlamaktan çekinmeyin. [Aspose.Words forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Neden içeriği Ayıkla

Genellikle içeriği çıkarmanın amacı, içeriği yeni bir belgede ayrı ayrı çoğaltmak veya kaydetmektir. Örneğin, içeriği ayıklayabilir ve:

- Ayrı bir belgeye kopyalayın
- Belgenin belirli bir bölümünü PDF veya görüntüye dönüştürme
- Belgedeki içeriği birçok kez çoğaltın
- Belgenin geri kalanından ayrı olarak çıkarılan içerikle çalışın

Bu, Aspose.Words ve aşağıdaki kod uygulaması kullanılarak kolayca gerçekleştirilebilir.

## İçerik Çıkarma Algoritması

Bu bölümdeki kod, yukarıda açıklanan tüm olası durumları tek bir genelleştirilmiş ve yeniden kullanılabilir yöntemle ele almaktadır. Bu tekniğin genel taslağı şunları içerir:

1. Belgenizden çıkarılacak içerik alanını belirleyen düğümleri toplamak. Bu düğümlerin alınması, kullanıcı tarafından ayıklanmak istediklerine göre kodlarında işlenir.
1. Bu düğümleri aşağıda verilen **ExtractContent** yöntemine geçirmek. Ayrıca, belirteç görevi gören bu düğümlerin ekstraksiyona dahil edilip edilmeyeceğini belirten bir boole parametresi de iletmelisiniz.
1. Ayıklanması belirtilen klonlanmış içeriğin (kopyalanan düğümlerin) bir listesini alma. Bu düğüm listesini, örneğin yalnızca seçilen içeriği içeren yeni bir belge oluşturmak gibi uygulanabilir herhangi bir şekilde kullanabilirsiniz.

## İçerik Nasıl Çıkarılır

İçeriği belgenizden çıkarmak için aşağıdaki `ExtractContent` yöntemini çağırmanız ve uygun parametreleri iletmeniz gerekir. Bu yöntemin altında yatan temel, blok düzeyinde düğümler (paragraflar ve tablolar) bulmayı ve bunları aynı kopyaları oluşturmak için klonlamayı içerir. Geçirilen işaretleyici düğümler blok düzeyindeyse, yöntem içeriği o düzeydeki kopyalayıp diziye ekleyebilir.

Bununla birlikte, işaretleyici düğümler satır içi ise (bir paragrafın alt öğesi), paragrafı satır içi düğümde bölmek gerektiğinden, çalışma, yer imi alanları vb. Gibi durum daha karmaşık hale gelir. İşaretleyiciler arasında bulunmayan klonlanmış üst düğümlerdeki içerik kaldırılır. Bu işlem, satır içi düğümlerin üst paragrafın biçimlendirmesini korumaya devam etmesini sağlamak için kullanılır. Yöntem ayrıca parametre olarak geçirilen düğümler üzerinde kontroller çalıştıracak ve her iki düğüm de geçersizse bir istisna oluşturacaktır. Bu yönteme geçirilecek parametreler şunlardır:

1. **StartNode** ve **EndNode**. İlk iki parametre, içeriğin çıkarılmasının sırasıyla nerede başlayacağını ve nerede biteceğini tanımlayan düğümlerdir. Bu düğümler hem blok düzeyinde (Paragraf, Tablo) hem de satır içi düzeyde (örneğin Run, FieldStart, BookmarkStart vb.) Olabilir.):
   1. Bir alanı geçmek için karşılık gelen **FieldStart** nesnesini geçmelisiniz.
   1. Yer imlerini geçmek için **BookmarkStart** ve BookmarkEnd düğümleri geçirilmelidir.
   1. Açıklamaları iletmek için CommentRangeStart ve CommentRangeEnd düğümleri kullanılmalıdır.
1. **IsInclusive**. İşaretleyicilerin ekstraksiyona dahil edilip edilmediğini tanımlar. Bu seçenek false olarak ayarlanırsa ve aynı düğüm veya ardışık düğümler iletilirse, boş bir liste döndürülür:

      1. Bir **FieldStart** düğümü geçirilirse, bu seçenek tüm alanın dahil edilip edilmeyeceğini veya hariç tutulacağını tanımlar.
      1. Bir **BookmarkStart** veya **BookmarkEnd** düğümü iletilirse, bu seçenek yer iminin dahil edilip edilmediğini veya yalnızca yer imi aralığı arasındaki içeriği tanımlar.
      1. Bir **CommentRangeStart** veya **CommentRangeEnd** düğümü iletilirse, bu seçenek yorumun kendisinin mi yoksa yalnızca yorum aralığındaki içeriğin mi ekleneceğini tanımlar.

**ExtractContent** yönteminin uygulanmasını bulabilirsiniz [burada](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). Bu yöntem, bu makaledeki senaryolarda belirtilecektir.

Ayrıca, çıkarılan düğümlerden kolayca bir belge oluşturmak için özel bir yöntem tanımlayacağız. Bu yöntem, aşağıdaki senaryoların çoğunda kullanılır ve yalnızca yeni bir belge oluşturur ve çıkarılan içeriği ona içe aktarır.

Aşağıdaki kod örneği, düğümlerin listesini nasıl alacağınızı ve bunları yeni bir belgeye nasıl ekleyeceğinizi gösterir.

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## Paragraflar Arasında İçerik Çıkarma

Bu, belirli paragraflar arasında içerik ayıklamak için yukarıdaki yöntemin nasıl kullanılacağını gösterir. Bu durumda, belgenin ilk yarısında bulunan mektubun gövdesini çıkarmak istiyoruz. Bunun 7 ile 11. paragraflar arasında olduğunu söyleyebiliriz.

Aşağıdaki kod bu görevi yerine getirir. Uygun paragraflar, belgedeki [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) yöntemi kullanılarak ve belirtilen endeksler geçirilerek çıkarılır. Daha sonra bu düğümleri **ExtractContent** yöntemine geçiririz ve bunların ekstraksiyona dahil edileceğini belirtiriz. Bu yöntem, kopyalanan içeriği bu düğümler arasında döndürür ve ardından yeni bir belgeye eklenir.

Aşağıdaki kod örneği, yukarıdaki `ExtractContent` yöntemini kullanarak belirli paragraflar arasındaki içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## Farklı Düğüm Türleri Arasındaki İçeriği Ayıklayın

Blok düzeyinde veya satır içi düğümlerin herhangi bir kombinasyonu arasında içerik çıkarabiliriz. Aşağıdaki bu senaryoda, birinci paragraf ile ikinci bölümdeki tablo arasındaki içeriği kapsamlı bir şekilde çıkaracağız. Uygun Paragraf ve Tablo düğümlerini almak için belgenin ikinci bölümündeki `Body.FirstParagraph` ve [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) yöntemini çağırarak işaretçi düğümlerini alırız. Küçük bir değişiklik için bunun yerine içeriği çoğaltalım ve orijinalin altına ekleyelim.

Aşağıdaki kod örneği, `ExtractContent` yöntemini kullanarak paragraf ve tablo arasındaki içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## Paragraflar Arasındaki İçeriği Stile Göre Ayıklayın

İçeriği, başlık stilleriyle işaretlenmiş paragraflar gibi aynı veya farklı stillerdeki paragraflar arasında ayıklamanız gerekebilir. Aşağıdaki kod bunun nasıl başarılacağını göstermektedir. Başlıkları ayıklamadan "Heading 1" ve "Header 3" stillerinin ilk örneği arasındaki içeriği ayıklayacak basit bir örnektir. Bunu yapmak için son parametreyi false olarak ayarladık, bu da işaretleyici düğümlerin dahil edilmemesi gerektiğini belirtir.

Düzgün bir uygulamada, bu, bu stillerin tüm paragrafları arasındaki içeriği belgeden çıkarmak için bir döngü içinde çalıştırılmalıdır. Çıkarılan içerik yeni bir belgeye kopyalanır.

Aşağıdaki kod örneği, `ExtractContent` yöntemini kullanarak belirli stillere sahip paragraflar arasında içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## Belirli Çalıştırmalar Arasında İçerik Ayıkla

[Run](https://reference.aspose.com/words/cpp/aspose.words/run/) gibi satır içi düğümler arasında da içerik ayıklayabilirsiniz. **Runs** farklı paragraflardan işaretçi olarak geçirilebilir. Aşağıdaki kod, aynı **Paragraph** düğümü arasında belirli metnin nasıl çıkarılacağını gösterir.

Aşağıdaki kod örneği, **ExtractContent** yöntemini kullanarak aynı paragrafın belirli çalıştırmaları arasında içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## Bir Alan kullanarak içeriği Ayıklayın

Bir alanı işaretleyici olarak kullanmak için `FieldStart` düğümü geçirilmelidir. `ExtractContent` yönteminin son parametresi, tüm alanın dahil edilip edilmeyeceğini tanımlayacaktır. "FullName" birleştirme alanı ile belgedeki bir paragraf arasındaki içeriği ayıklayalım. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) sınıfının [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) yöntemini kullanıyoruz. Bu, **FieldStart** düğümünü kendisine iletilen birleştirme alanının adından döndürür.

Bizim durumumuzda, **ExtractContent** yöntemine iletilen son parametreyi, alanı ayıklamadan çıkarmak için false olarak ayarlayalım. Çıkarılan içeriği PDF olarak oluşturacağız.

Aşağıdaki kod örneği, **ExtractContent** yöntemini kullanarak belgedeki belirli bir alan ile paragraf arasındaki içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## Bir yer iminden İçerik Çıkarma

Bir belgede, yer işareti içinde tanımlanan içerik `BookmarkStart` ve BookmarkEnd düğümleri tarafından kapsüllenir. Bu iki düğüm arasında bulunan içerik yer imini oluşturur. Başlangıç işaretçisi belgedeki bitiş işaretçisinden önce göründüğü sürece, bu düğümlerden herhangi birini, hatta farklı yer imlerinden olanları bile herhangi bir işaretçi olarak geçirebilirsiniz. Bu içeriği aşağıdaki kodu kullanarak yeni bir belgeye çıkaracağız. **IsInclusive** parametre seçeneği, yer iminin nasıl saklanacağını veya silineceğini gösterir.

Aşağıdaki kod örneği, **ExtractContent** yöntemini kullanarak bir yer işaretine başvurulan içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## Bir Yorumdan İçerik Çıkarma

Bir açıklama CommentRangeStart, CommentRangeEnd ve Yorum düğümlerinden oluşur. Bu düğümlerin tümü satır içi. İlk iki düğüm, aşağıdaki ekran görüntüsünde görüldüğü gibi, yorum tarafından başvurulan belgedeki içeriği kapsüller.

**Comment** düğümünün kendisi paragraflar içerebilen ve çalışabilen bir InlineStory düğümüdür. Önizleme bölmesinde yorum balonu olarak görülen yorumun mesajını temsil eder. Bu düğüm satır içi ve bir gövdenin soyundan geldiğinden, içeriği bu mesajın içinden de çıkarabilirsiniz.

Açıklama, başlığı, ilk paragrafı ve ikinci bölümdeki tabloyu kapsüller. Bu yorumu yeni bir belgeye çıkaralım. **IsInclusive** seçeneği, yorumun kendisinin tutulup tutulmadığını veya atılıp atılmadığını belirler.

Aşağıdaki kod örneği, bunun nasıl yapılacağını gösterir:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## DocumentVisitor kullanarak içerik Nasıl Çıkarılır

Bu kullanım senaryosunu uygulamak için [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) sınıfını kullanın. Bu sınıf, tanınmış Ziyaretçi tasarım modeline karşılık gelir. **DocumentVisitor,** ile belge ağacı üzerinde numaralandırma gerektiren özel işlemleri tanımlayabilir ve yürütebilirsiniz.

**DocumentVisitor**

Her **DocumentVisitor.VisitXXX** yöntemi, düğümlerin numaralandırılmasını denetleyen bir [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) değeri döndürür. Numaralandırmaya devam etmek, geçerli düğümü atlamak (ancak numaralandırmaya devam etmek) veya düğümlerin numaralandırılmasını durdurmak isteyebilirsiniz.

Bunlar, bir belgenin çeşitli bölümlerini programlı olarak belirlemek ve ayıklamak için izlemeniz gereken adımlardır:

- **DocumentVisitor** 'dan türetilmiş bir sınıf oluşturun
- Bazı özel işlemleri gerçekleştirmek için **DocumentVisitor.VisitXXX** yöntemlerinin bir kısmının veya tamamının uygulamalarını geçersiz kılın ve sağlayın
- Numaralandırmayı başlatmak istediğiniz düğümden `Node.Accept` öğesini çağırın. Örneğin, belgenin tamamını numaralandırmak istiyorsanız `Document.Accept` kullanın

**DocumentVisitor**

Bu örnek, Aspose.Words nesne modeline yeni işlemler eklemek için Ziyaretçi modelinin nasıl kullanılacağını gösterir. Bu durumda, metin biçiminde basit bir belge dönüştürücü oluştururuz:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Yalnızca Metin Nasıl Çıkarılır

Belgeden metin almanın yolları şunlardır:

- Bir dosyaya veya akışa düz metin olarak kaydetmek için [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) ile [SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) kullanın
- [Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/) kullanın ve **SaveFormat.Text** parametresini iletin. Dahili olarak bu, metin olarak kaydet'i bir bellek akışına çağırır ve elde edilen dizeyi döndürür
- Alan kodları da dahil olmak üzere tüm Microsoft Word kontrol karakterlerini içeren metni almak için [Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/) kullanın
- Özelleştirilmiş çıkarma gerçekleştirmek için özel bir [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) uygulayın

### `Node.GetText` ve `Node.ToString` kullanarak

Bir Word belgesi, alan, hücre sonu, bölüm sonu vb. Gibi özel öğeleri belirten kontrol karakterleri içerebilir. Olası Sözcük denetimi karakterlerinin tam listesi [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) sınıfında tanımlanır. **Node.GetText** yöntemi, düğümde bulunan tüm denetim karakteri karakterlerinin bulunduğu metni döndürür.

**ToString** çağrısı, belgenin düz metin gösterimini yalnızca denetim karakterleri olmadan döndürür.

Aşağıdaki kod örneği, bir düğümde **GetText** ve **ToString** yöntemlerini çağırmak arasındaki farkı gösterir:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### `SaveFormat.Text` kullanarak

Bu örnek, belgeyi aşağıdaki gibi kaydeder:

- Alan karakterlerini ve alan kodlarını, şekli, dipnotu, sonnotu ve yorum referanslarını filtreler
- Paragraf sonu **ControlChar.Cr** karakterlerini **ControlChar.CrLf** birleşimleriyle değiştirir
- UTF8 kodlamasını kullanır

Aşağıdaki kod örneği, bir belgenin TXT biçiminde nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## Şekillerden Görüntüleri Ayıklayın

Bazı görevleri gerçekleştirmek için belge görüntülerini çıkarmanız gerekebilir. Aspose.Words bunu da yapmanızı sağlar.

Aşağıdaki kod örneği, bir belgeden görüntülerin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}