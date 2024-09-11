---
title: Bir belgeyi bölün Java
second_title: Aspose.Words için Java
articleTitle: Bir Belgeyi Bölümle
linktitle: Bir Belgeyi Bölümle
description: "Aspose.Words for Java` başlık veya bölümler, sayfalar veya sayfa aralıkları kullanarak bir belgenin birden fazla belgeye bölünmesi için size verimli bir yol sunar."
type: docs
weight: 90
url: /tr/java/split-a-document/
---

*Splitting* veya *belgeyi bölmek* bir büyük belgeyi daha küçük dosyaların daha fazla sayısına bölme işlemidir. Bir dosyayı bölmenin çeşitli nedenleri vardır. Örneğin, belirli bir belgeden sadece bazı sayfalar ve değil, tüm belgeye ihtiyacın var. Ya da gizlilik nedeniyle, diğerlerinin sadece bir belge ile ilgili bazı kısımları paylaşmak istiyorsunuz. Bölme özelliği, gerekli belgenin yalnızca kısımlarını elde etmenizi ve bunlarla gerekli eylemleri yapmanızı sağlar, örneğin işaretlemek için, kaydetmek veya göndermek.

Aspose.Words başlık veya bölümler aracılığıyla bir belgeyi birden fazla belgeden ayırmak için verimli bir yol sağlar. Ayrıca, sayfa veya sayfa aralıklarına göre bir belgenin bölümlere ayrılmasını da sağlayabilirsiniz. Her iki bölme seçeneği de bu makalede açıklanacaktır.

Bir belgenin daha küçük dosyalar halinde bölünmesi için Aspose.Words kullanmak istiyorsanız, aşağıdaki adımları izlemeniz gerekir:

1. Herhangi bir desteklenen formatta belgeyi yükle.
1. Dokümanı böl.
1. Çıktı belgeleri kaydet.

Bir belgeyi ayırdıktan sonra, gerekli sayfa, metin vb. ile başlayacak tüm çıktı belgeleri açabileceksiniz.

{{% alert color="primary" %}}

**Çevrimiçi denemeye çalış**

Bu işlevselliği, bizim [Free online document splitter](https://products.aspose.app/words/splitter)'imiz ile deneyebilirsiniz.

{{% /alert %}}

## Farklı Kriterlere Göre Bir Belgeyi Bölün" {#split-a-document-using-different-criteria}

Aspose.Words size çeşitli kriterlere göre EPUB veya HTML belgelerini bölmenizi sağlar. İşlem sırasında, çıktı belgeler için kaynak belgenin tarzı ve düzeni korunur.

Eleştirileri [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) numaralandırma kullanarak belirtebilirsiniz. Bu sayede bir belgeyi aşağıdaki kriterlerden birine göre bölerek veya birden fazla kriteri birlikte kullanarak bölme yapabilirsiniz:

- başlık paragrafı,
-section break,
- sütun kesmesi,
- sayfa kesintisi.

Çıktıyı HTML olarak kaydetme durumunda, Aspose.Words her bir bölümü ayrı bir HTML dosyası olarak kaydedin. Sonuç olarak belge birden çok HTML dosyasına bölünür. Çıktıyı EPUB olarak kaydetme durumunda, Aspose.Words sonucu tek bir EPUB dosyasında kaydedin, kullandığınız `DocumentSplitCriteria` değerine bakılmaksızın. Bu nedenle, yalnızca EPUB belgeleri için DocumentSplitCriteria kullanmak, okuyucu uygulamalarındaki içeriğin görünümünü etkiler: içerik bölümlere bölünür ve belge artık kesintisiz görünmez.

{{% alert color="primary" %}}

MHTML formatına kaydetmek için [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) özelliğini kullanarak bir belgeyi bölemezsiniz.

{{% /alert %}}

Bu bölümde yalnızca olası bölünme ölçütlerinden bazılarını göz önünde bulunduruyoruz.

### Bir Belgeyi Başlıklara Göre Bölme {#split-a-document-by-headings}

Başlıklara göre bir belgeden bölümlere ayrılmasını yapmak için **HeadingParagraph** değerini **DocumentSplitCriteria** özelliğinin kullanır.

Bir belgeyi belirli bir başlık paragraf düzeyleri ile bölmek istiyorsanız (örneğin, Başlıklar 1, 2 ve 3), [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) özelliğini de kullanın. Çıktı belirtilen başlık düzeyi ile biçimlendirilmiş paragraflara göre bölünür.

Aşağıdaki kod örneği bir belgeyi başlıklara göre daha küçük parçalara bölmek için nasıl yapılacağını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Lütfen unutmayın ki bu ölçüt için, Aspose.Words sadece bölünürken HTML biçiminde kaydetmeyi destekler.

EPUB'e kaydetme yapıldığında belge birkaç dosya halinde bölünmez ve sadece bir çıkış dosyası olacaktır.

### Bir Belgeyi Bölümlere Böl " {#split-a-document-by-sections}

Aspose.Words ayrıca belgeleri bölmek ve bunları HTML olarak kaydetmek için bölüm kesmelerini kullanmanıza da olanak tanır. Bu amaçla, **SectionBreak**'ı **DocumentSplitCriteria** olarak kullanın:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Kaynak belgenin birden fazla çıktı belgesine bölünmesi için başka bir yol ve Aspose.Words'ın desteklediği herhangi bir çıktı formatını seçebilirsiniz.

Aşağıdaki kod örneği, bölme satırlarını kullanarak bir belgeyi küçük parçalara nasıl böleceğinizi gösterir ( `DocumentSplitCriteria` özelliğini kullanmadan ):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Sayfalar'a Göre Böl" {#splitting-by-pages}

Bir belgeyi sayfa sayfa, sayfa aralıkları veya belirtilen sayfalardan başlayarak bölebilir. Böyle bir durumda [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) yöntemi işi yapabilir.

Bu bölüm, [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) sınıfını ve **ExtractPages** yöntemini kullanarak belgeleri bölmenin birkaç kullanım örneğini açıklar.

{{% alert color="primary" %}}

Herhangi bir [output format supported by Aspose.Words](/words/java/supported-document-formats/) kullanabilirsiniz.

{{% /alert %}}

{{% alert color="primary" %}}

Sayfaların sayısını azaltırken ortaya çıkan birçok nüansa rağmen tam bir eşleşme Microsoft Word düzeni oldukça karmaşık bir görevdir. Bu nedenle, belge karmaşıklığına bağlı olarak, orijinal belgeye göre sonuçta elde edilen belge düzeninde küçük farklılıklar olabilir.

{{% /alert %}}

### Bir Belge Sayfasını Sayfaya Böl {#split-a-document-page-by-page}

Aspose.Words size bir çok sayfalı belgeyi sayfadan sayfa bölmenizi sağlar.

Aşağıdaki kod örneği, bir belgeyi nasıl böleceğini ve her sayfayı ayrı bir belge olarak nasıl kaydedeceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Bir Belgeyi Sayfa Aralıklarına Göre Bölme {#split-a-document-by-page-ranges}

Aspose.Words birden çok sayfalı bir belgeyi sayfa aralıkları ile bölmek için izin verir. Birden çok dosyayı çeşitli sayfa aralıkları ile bölebilir veya sadece bir aralığı seçebilir ve yalnızca bu parçanın kaynak belgesinin bir kısmını kaydedebilirsiniz. Notunuz, bir belgenin maksimum ve minimum sayfa numarasına göre bir sayfa aralığı seçebileceğinizi bilin.

Aşağıdaki kod örneği belirli başlangıç ve bitiş dizinleri ile sayfa aralığında bir belgeyi nasıl bölüneceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Bir belgenin kaydedilmesi için bir geri arama seçeneği {#callback-option-for-saving-a-document}

Bu belge HTML biçiminde dışarıya aktarıldığında, ' [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback)' özelliğini kullanarak ' Aspose.Words' belgenin parçalarının nasıl kaydedileceğini kontrol edebilirsiniz. Bu özellik, çıktı dosyalarını yeniden adlandırmanıza veya hatta bunları özel akışlara yönlendirmenize olanak tanır.

Lütfen bunun callback'in EPUB'e kaydetmede kullanılamadığını unutmayın çünkü tüm çıktı parçaları tek bir konteynere kaydedilmeli - .epub dosyası. Bu nedenle, akış yönlendirmesi desteklenmez ve yeniden adlandırma etkisi görünmez çünkü dosyalar konteynerin içinde yeniden adlandırılır.

## Bölünmüş Belgeyi Başka Bir Belgeyle Birleştir {#merge-the-split-document-with-another-file}

Aspose.Words sizi çıktı bölünmüş belgeyi başka bir belge ile birleştirmenize ve yeni bir belge oluşturmanıza olanak tanır. Bu, belge birleşimi olarak adlandırılabilir.

Aşağıdaki kod örneğinde bir bölünmüş belgeyi başka bir belgeyle nasıl birleştirileceğini gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
