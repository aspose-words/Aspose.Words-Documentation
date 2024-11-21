---
title: C#'te bir Belgeyi Bölme
second_title: .NET için Aspose.Words
articleTitle: Belgeyi Böl
linktitle: Belgeyi Böl
description: "C# kullanarak bir belgeyi birkaç dosyaya bölün. Bir belgeyi başlıklara veya bölümlere, ayrıca sayfalara veya sayfa aralıklarına göre etkili bir şekilde bölmek için bölme özelliğini kullanın."
type: docs
weight: 90
url: /tr/net/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* veya *belgeyi bölme*, büyük bir belgeyi daha fazla sayıda küçük dosyaya bölme işlemidir. Bir dosyayı bölmenin çeşitli nedenleri vardır. Örneğin, belirli bir belgenin tamamına değil, yalnızca bazı sayfalarına ihtiyacınız vardır. Veya gizlilik nedeniyle bir belgenin yalnızca bazı bölümlerini başkalarıyla paylaşmak istiyorsunuz. Bölme özelliği sayesinde belgenin yalnızca gerekli kısımlarını alabilir ve bunlarla örneğin işaretleme, kaydetme veya gönderme gibi gerekli işlemleri yapabilirsiniz.

Aspose.Words, bir belgeyi başlıklara veya bölümlere göre birden çok belgeye bölmenin etkili bir yolunu sunar. Belgeyi sayfalara veya sayfa aralıklarına göre de bölebilirsiniz. Bu makalede her iki bölme seçeneği de açıklanacaktır.

Bir belgeyi Aspose.Words kullanarak daha küçük dosyalara bölmek için şu adımları izlemeniz gerekir:

1. Belgeyi desteklenen herhangi bir biçimde yükleyin.
1. Belgeyi bölün.
1. Çıktı belgelerini kaydedin.

Bir belgeyi böldükten sonra gerekli sayfalar, metinler vb. ile başlayacak tüm çıktı belgelerini açabileceksiniz.

{{% alert color="primary" %}}

**Çevrimiçi deneyin**

Bu işlevselliği [Ücretsiz çevrimiçi belge ayırıcı](https://products.aspose.app/words/splitter)'imizle deneyebilirsiniz.

{{% /alert %}}

## Farklı Kriterler Kullanarak Bir Belgeyi Bölme {#split-a-document-using-different-criteria}

Aspose.Words, EPUB veya HTML belgelerini çeşitli kriterlere göre bölümlere ayırmanıza olanak tanır. Bu süreçte, çıktı belgeleri için kaynak belgenin stili ve düzeni korunur.

[DocumentSplitCriteria](https://reference.aspose.com/words/tr/net/aspose.words.saving/documentsplitcriteria/) numaralandırmasını kullanarak kriterleri belirtebilirsiniz. Böylece, aşağıdaki kriterlerden birini kullanarak bir belgeyi bölümlere ayırabilir veya birden fazla kriteri bir araya getirebilirsiniz:

- paragraf başlığı,
- Bölüm sonu,
- sütun sonu,
- sayfa sonu.

Çıktıyı HTML'ye kaydederken, Aspose.Words her bir bölümü ayrı bir HTML dosyası olarak kaydeder. Sonuç olarak, belge birden çok HTML dosyasına bölünecektir. Çıktıyı EPUB'a kaydederken Aspose.Words, kullandığınız `DocumentSplitCriteria` değerinden bağımsız olarak sonucu tek bir EPUB dosyasına kaydeder. Bu nedenle, EPUB belgeleri için DocumentSplitCriteria'nın kullanılması yalnızca içeriklerinin okuyucu uygulamalarındaki görünümünü etkiler: içerik bölümlere bölünecek ve belge artık sürekli görünmeyecektir.

{{% alert color="primary" %}}

MHTML biçiminde kaydederken bir belgeyi [DocumentSplitCriteria](https://reference.aspose.com/words/tr/net/aspose.words.saving/htmlsaveoptions/documentsplitcriteria/) özelliğini kullanarak bölemezsiniz.

{{% /alert %}}

Bu bölümde olası bölünme kriterlerinden yalnızca bazılarını ele alacağız.

### Bir Belgeyi Başlıklara Göre Bölme {#split-a-document-by-headings}

Bir belgeyi başlıklara göre bölümlere ayırmak için **DocumentSplitCriteria** özelliğinin **HeadingParagraph** değerini kullanın.

Bir belgeyi başlık paragraflarının belirli bir düzeyine (örneğin başlık 1, 2 ve 3) bölmeniz gerekiyorsa [DocumentSplitHeadingLevel](https://reference.aspose.com/words/tr/net/aspose.words.saving/htmlsaveoptions/documentsplitheadinglevel/) özelliğini de kullanın. Çıktı, belirtilen başlık düzeyiyle biçimlendirilmiş paragraflara bölünecektir.

Aşağıdaki kod örneği, bir belgenin başlığa göre daha küçük parçalara nasıl bölüneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentByHeadingsHtml.cs" >}}

Lütfen bu kriter için Aspose.Words'in bölme sırasında yalnızca HTML biçiminde kaydetmeyi desteklediğini unutmayın.

EPUB'a kaydederken belge birkaç dosyaya bölünmez ve yalnızca tek bir çıktı dosyası olur.

### Bir Belgeyi Bölümlere Göre Bölme {#split-a-document-by-sections}

Aspose.Words ayrıca belgeleri bölmek ve bunları HTML'ye kaydetmek için bölüm sonlarını kullanmanıza da olanak tanır. Bu amaçla **DocumentSplitCriteria** olarak **SectionBreak**'yi kullanın:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentBySectionsHtml.cs" >}}

Kaynak belgeyi birden çok çıktı belgesine bölmenin başka bir yolu vardır ve Aspose.Words tarafından desteklenen herhangi bir çıktı biçimini seçebilirsiniz.

Aşağıdaki kod örneği, bir belgenin bölüm sonlarına göre (`DocumentSplitCriteria` özelliğini kullanmadan) daha küçük parçalara nasıl bölüneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cs" >}}

## Sayfalara Göre Böl {#splitting-by-pages}

Ayrıca bir belgeyi sayfa sayfa, sayfa aralıklarına göre veya belirtilen sayfa numaralarından başlayarak bölebilirsiniz. Böyle bir durumda [ExtractPages](https://reference.aspose.com/words/tr/net/aspose.words/document/extractpages/) yöntemi işi yapabilir.

Bu bölümde, [Document](https://reference.aspose.com/words/tr/net/aspose.words/document/) sınıfını ve **ExtractPages** yöntemini kullanarak belgeleri sayfalara göre bölmenin çeşitli kullanım durumları açıklanmaktadır.

{{% alert color="primary" %}}

Herhangi bir [Desteklenen Belge Formatları](/words/tr/net/supported-document-formats/)'i kullanabilirsiniz.

{{% /alert %}}

{{% alert color="primary" %}}

Sayfa sayısını azaltırken ortaya çıkan birçok nüans nedeniyle Microsoft Word düzeniyle tam eşleşme oldukça karmaşık bir iştir. Bu nedenle, belgenin karmaşıklığına bağlı olarak, ortaya çıkan belge düzeninde orijinal belgeden küçük farklılıklar olabilir.

{{% /alert %}}

### Belgeyi Sayfa Sayfaya Bölme {#split-a-document-page-by-page}

Aspose.Words, çok sayfalı bir belgeyi sayfa sayfa bölmenizi sağlar.

Aşağıdaki kod örneği, bir belgenin nasıl bölüneceğini ve her sayfanın ayrı bir belge olarak nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.cs" >}}

### Belgeyi Sayfa Aralıklarına Göre Bölme {#split-a-document-by-page-ranges}

Aspose.Words, çok sayfalı bir belgenin sayfa aralıklarına göre bölünmesine olanak tanır. Bir dosyayı çeşitli sayfa aralıklarına sahip birden fazla dosyaya bölebilir veya yalnızca bir aralık seçip kaynak belgenin yalnızca bu bölümünü kaydedebilirsiniz. Bir belgenin maksimum ve minimum sayfa sayısına göre sayfa aralığını seçebileceğinizi unutmayın.

Aşağıdaki kod örneği, bir belgenin belirli başlangıç ve bitiş dizinleriyle sayfa aralığına göre daha küçük parçalara nasıl bölüneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.cs" >}}

## Belge {#callback-option-for-saving-a-document}'i Kaydetmek için Geri Arama Seçeneği

Bu belge HTML formatına aktarıldığında Aspose.Words'nin belge bölümlerini nasıl kaydettiğini kontrol etmek için [DocumentPartSavingCallback](https://reference.aspose.com/words/tr/net/aspose.words.saving/htmlsaveoptions/documentpartsavingcallback/) özelliğini kullanabilirsiniz. Bu özellik, çıktı dosyalarını yeniden adlandırmanıza ve hatta bunları özel akışlara yönlendirmenize olanak tanır.

Tüm çıktı parçalarının tek bir kapsayıcıya (.epub dosyası) kaydedilmesi gerektiğinden, EPUB'a kaydederken bu geri aramanın kullanışlı olmadığını lütfen unutmayın. Dolayısıyla akış yeniden yönlendirmesi desteklenmez ve dosyalar kapsayıcının içinde yeniden adlandırıldığından yeniden adlandırmanın etkisi görünmez.

## Bölünmüş Belgeyi Başka Bir Belgeyle Birleştirme {#merge-the-split-document-with-another-file}

Aspose.Words, yeni bir belge oluşturmak için çıktı bölünmüş belgeyi başka bir belgeyle birleştirmenize olanak tanır. Buna belge birleştirme denilebilir.

Aşağıdaki kod örneği, bölünmüş bir belgenin başka bir belgeyle nasıl birleştirileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cs" >}}
