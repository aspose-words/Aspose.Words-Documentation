---
title: Bölümlerle Çalışmak İçin Java ile Birlikte
second_title: Aspose.Words için Java
articleTitle: Bölümlerle Çalışma
linktitle: Bölümlerle Çalışma
description: "Belge bölüm kavramlarını ve manipülasyon uygulamalarını Java kullanarak anlayın`. `Bir belgeye bölüm ekleyin Java`. `Bölümleri kaldırın Java`. `Belgelar arasında bölümler kopyalayın."
type: docs
weight: 120
url: /tr/java/working-with-sections/
---

Bazen tüm sayfalarda aynı biçimlendirme olmayan bir belge istiyorsunuz. Örneğin, sayfa numaralarını değiştirmek, farklı sayfa boyutları ve yönlendirmeleri veya herhangi bir numaralandırma olmadan ilk belgeyi kapak sayfası olarak kullanmak gibi ihtiyaçlarınız olabilir. Bölümler aracılığıyla bunu başarabilirsiniz.

Bölümleri, başlıkları ve altbilgileri, yönlendirmeyi, sütunları, kenar boşluklarını, sayfa numaralandırma biçimlendirmesini ve diğerleri kontrol eden seviye düğümleri.

Aspose.Words size belgenin bölümlerini yönetme, bir belgeyi bölümlere ayırma ve yalnızca belirli bir bölüme uygulanacak biçimlendirme değişiklikleri yapma imkanı sağlar. Aspose.Words başlıklar ve alt yazı, sayfa düzeni ve sütun ayarları gibi bölüm biçimi hakkında bilgi depolar.

Bu makale bölümler ile bölüm aramalarıyla nasıl çalıştığını açıklar.

## Neyin Bölüm ve Bölüm Kesme

Belge bölümleri [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) ve [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) sınıfları tarafından temsil edilir. Bölüm nesneleri, [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) düğümüne bağlı doğrudan çocuklardır ve [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) özelliği aracılığıyla erişilebilir. Bu düğümleri [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) gibi bazı yöntemler kullanarak yönetebilirsiniz.

Bölüm araması, belgenin sayfalarını özelleştirilebilir düzenlerle bölümler halinde bölen bir seçenektir.

## Bir Bölüm Kesintisinin Türleri

Aspose.Words size [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) numaralandırma türündeki farklı bölüm kesintileriyle belgeleri bölme ve biçimlendirme imkanı sunar:

-SectionBreakContinuous
- SectionBreakNewColumn
-SectionBreakNewPage
- SectionBreakEvenPage
-SectionBreakOddPage

YeniSütun, YeniSayfa, EşittirSayfa ve ZıtSayfa gibi yalnızca ilk bölüm için geçerli olan bir kesme türü seçmek için [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) numaralandırmayı da kullanabilirsiniz.

## Bir Bölümü Yönet

Çünkü bölüm bir normal bileşik düğüm, tüm düğüm manipülasyonu API bölümlerin manipüle edilmesi için kullanılabilir: ekleme, kaldırma ve diğer bölümler üzerindeki işlemler. Düğümler hakkında daha fazla bilgi için makaleyi [Aspose.Words Document Object Model (DOM)](/words/java/aspose-words-document-object-model/) okuyabilirsiniz.

Öte yandan, bölümlere çalışmak için de `DocumentBuilder` API kullanabilirsiniz. Bu makaledeki odak nokta bu özel bölüm çalışma şekli olacaktır.

## Bir Bölüm Boşluğu Ekle veya Kaldır

1 [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int)'ı kullanarak metne bir bölüm kırma eklemenizi sağlayan Aspose.Words'i tanımlar.

Aşağıdaki kod örneği bir belgenin içine bir bölüm kesintisi eklemeyi gösterir:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Bir bölme kırıklığını silmek için [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) yöntemini kullanın. Belirli bir bölme kırıklığını kaldırmanız gerekmiyorsa ve bunun yerine bu bölümün içeriğini silmeniz gerekiyorsa [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) yöntemini kullanabilirsiniz.

Aşağıdaki kod örneği, nasıl bölüm kesintileri kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Bir bölüm kesme bir sonraki bölüme ilişkin bilgilere sahipken, onu izleyen bölümü değil. Bu nedenle bir bölüm kesmeyi kaldırırsanız, kaldırdığınız kesmeden önceki metin o izleyen bölüm kesmesinin özelliklerine sahip olacak. Bu da belgenin tümünü tablo görünümüne çevirebilir ya da başlıklar ve alt başlıklar değişebilir ya da tamamen kaybolabilir.

{{% /alert %}}

## Bir Bölümü Taşı

Bir belge içinde bir bölümden başka bir konuma taşımak istiyorsanız, o bölümün dizinini almanız gerekir. Aspose.Words size bir [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) içindeki bir bölüm pozisyonunu almanıza olanak tanır. Bir belgenizdeki tüm bölümleri almak için [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) özelliğini kullanabilirsiniz. Ancak sadece ilk bölümü almak istiyorsanız, [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) özelliğini kullanabilirsiniz.

Aşağıdaki kod örneği ilk bölüme erişmeyi ve bir bileşik düğümün çocuklarını yinelemeyi gösterir:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Bir Bölüm Düzeni Belirt

Bazen belgenizin farklı bölümlerini yaratıcı düzenler yaparak daha iyi görünmesini istiyorsunuz. Mevcut bölüm kılavuzunun türünü belirtmek istiyorsanız, [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) numaralandırmasından bir bölüm düzeni modu seçebilirsiniz:

- Varsayılan
- Kılavuz
- LineGrid
-SnapToChars

Aşağıdaki kod örneğinde her sayfanın sahip olabileceği satır sayısını nasıl sınırlayacağınız gösterilmektedir:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## [Bir bölümü düzenleme]

Bir belgeye yeni bir bölüm eklediğinizde, düzenleyebileceğiniz herhangi bir gövde veya paragraf olmayacak. Aspose.Words'i kullanarak, [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) yöntemiyle bölümün en az bir paragraf içeren bir gövdesi olduğundan emin olmanıza izin verir – bunu belgenin üzerine otomatik olarak bir Gövde (veya BaşlıkAltBilgi) düğümü ekler ve sonra buna bir Paragraf ekler.

Aşağıdaki kod örneği, **EnsureMinimum** kullanarak yeni bir bölüm düğümü hazırlamayı gösterir

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### İçeriği Ekle veya Ön ekle

Bir şekil çizmek veya bir bölümün başına / sonuna metin veya görüntü eklemek istiyorsanız, [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) ve [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) yöntemlerini [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) sınıfını kullanabilirsiniz.

Aşağıdaki kod örneğinde mevcut bir bölümün içeriğini nasıl ekleyeceğinizi gösterir:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Bir Bölümü Kopyala

Aspose.Words size, [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) yöntemi kullanılarak tam bir kopyasını oluşturarak bir bölümü çoğaltmanıza izin verir.

Aşağıdaki kod örneği belgenizdeki ilk bölümün nasıl klonlanacağını göstermektedir:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Belgeler Arasında Bölümleri Kopyala

Bazı durumlarda büyük belgeler ile birçok bölümünüz olabilir ve bir belgeden diğerine bir bölümün içeriğini kopyalamak isteyebilirsiniz.

Aspose.Words belgeleri arasında bölümler kopyalamak için kullanılan [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) yöntemi ile size izin verir.

Aşağıdaki kod örneği, belgelar arasında bölümler nasıl kopyalanacağını göstermektedir:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Bölüm Başlığı ve Altbilgisi ile Çalışın

Her bölüm için bir başlık veya altbilgi görüntülemek için temel kurallar oldukça basittir:

1. Eğer bölüm kendi başına belirli bir tür başlık / altbilgiye sahip değilse, o zaman önceki bölümden alınır.
2. Sayfanın başlık/altbilgisinin görünümü "Farklı İlk Sayfa" ve "Farklı Tek ve Çift Sayfalar" bölüm ayarları tarafından kontrol edilir – eğer bunlar devre dışı bırakılırsa, bölümün kendi başlıkları göz ardı edilir.

Aşağıdaki kod örneğinde farklı başlıklar ile iki bölüm oluşturmayı gösterir:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Başlık ve altbilgileri kaldırmak istiyorsanız ancak [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) nesnenizi belgenizden kaldırmayın, bunu yapmak için [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) yöntemini kullanabilirsiniz. Ayrıca, tüm şekilleri başlıklardan ve altbilgilerden kaldırmak için [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) yöntemini de kullanabilirsiniz.

Aşağıdaki kod örneği, bir bölümdeki tüm başlıkların ve altbilgilerin içeriğini temizlemek için nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

Aşağıdaki kod örneği bir bölümdeki tüm başlıklardan ve altbilgilerinden tüm şekillerin nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Bölgede Sayfa Özelliklerini Özelleştirin

Bir sayfayı ya da belgenin yazdırılmadan önce tek bir sayfanın ya da bütün belgenin boyutunu ve düzenini özelleştirmek ve değiştirmek isteyebilirsiniz. Sayfa Kurulumu ile, farklı ilk sayfalar veya tekil sayfalar için kenar boşlukları, yönlendirme ve boyut gibi belge sayfalarının ayarlarını değiştirebilirsiniz.

Aspose.Words size sayfa ve bölüm özelliklerini [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) sınıfı kullanarak özelleştirmenizi sağlar.

Aşağıdaki kod örneği, geçerli bölüme sayfa boyutu ve yönelim gibi özellikleri nasıl ayarlayacağını göstermektedir:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

Aşağıdaki kod örneğinde tüm bölümlerde sayfa özelliklerini nasıl değiştireceğinizi gösterir:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Ayrıca bakınız

- [Logical Levels of Nodes in a Document](/words/java/logical-levels-of-nodes-in-a-document/)
- [Insert and Append Documents](/words/java/insert-and-append-documents/)