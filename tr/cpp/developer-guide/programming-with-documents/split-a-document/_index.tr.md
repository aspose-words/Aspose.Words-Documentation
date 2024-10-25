---
title: Bir Belgeyi C++'a Bölme
second_title: Aspose.Words için C++
articleTitle: Bir Belgeyi Bölme
linktitle: Bir Belgeyi Bölme
description: "C++ kullanarak bir belgeyi birkaç dosyaya bölün. Bir belgeyi başlıklara veya bölümlere, sayfalara veya sayfa aralıklarına göre etkili bir şekilde bölmek için bölme özelliğini kullanın."
type: docs
weight: 90
url: /tr/cpp/split-a-document/
---

*Splitting* veya *split a document*, büyük bir belgeyi daha fazla sayıda küçük dosyaya ayırma işlemidir. Bir dosyayı bölmek için çeşitli nedenler vardır. Örneğin, tamamını değil, yalnızca belirli bir belgeden bazı sayfalara ihtiyacınız vardır. Veya gizlilik nedenleriyle, bir belgenin yalnızca bazı bölümlerini başkalarıyla paylaşmak istersiniz. Bölme özelliği ile belgenin yalnızca gerekli kısımlarını alabilir ve örneğin işaretlemek, kaydetmek veya göndermek için bunlarla gerekli işlemleri yapabilirsiniz.

Aspose.Words, bir belgeyi başlıklar veya bölümlere göre birden çok belgeye bölmenin etkili bir yolunu sunar. Bir belgeyi sayfalara veya sayfa aralıklarına göre de bölebilirsiniz. Her iki bölme seçeneği de bu makalede açıklanacaktır.

Aspose.Words kullanarak bir belgeyi daha küçük dosyalara bölmek için şu adımları izlemeniz gerekir:

1. Belgeyi desteklenen herhangi bir biçimde yükleyin.
1. Belgeyi bölün.
1. Çıktı belgelerini kaydedin.

Bir belgeyi böldükten sonra, gerekli sayfalar, metinler vb. İle başlayacak tüm çıktı belgelerini açabileceksiniz.

{{% alert color="primary" %}}

**Çevrimiçi deneyin**

Bu işlevselliği bizim ile deneyebilirsiniz [Ücretsiz çevrimiçi belge ayırıcı](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Belgeyi Farklı Ölçütler Kullanarak Bölme {#split-a-document-using-different-criteria}

Aspose.Words, EPUB veya HTML belgeleri çeşitli kriterlere göre bölümlere ayırmanıza olanak tanır. Bu süreçte, çıktı belgeleri için kaynak belgenin stili ve düzeni korunur.

[DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/) numaralandırmasını kullanarak ölçüt belirtebilirsiniz. Böylece, aşağıdaki ölçütlerden birini kullanarak bir belgeyi bölümlere ayırabilir veya birden fazla ölçütü bir araya getirebilirsiniz:

- başlık paragrafı,
- bölüm sonu,
- sütun sonu,
- sayfa sonu.

Çıktıyı HTML konumuna kaydederken, Aspose.Words her bir bölümü ayrı bir HTML dosyası olarak kaydedin. Sonuç olarak, belge birden çok HTML dosyaya bölünecektir. Çıktıyı EPUB değerine kaydederken, Aspose.Words kullandığınız `DocumentSplitCriteria` değerinden bağımsız olarak sonucu tek bir EPUB dosyasına kaydedin. Bu nedenle, EPUB belgeler için DocumentSplitCriteria kullanılması, içeriklerinin yalnızca okuyucu uygulamalarındaki görünümünü etkiler: içerik bölümlere ayrılacak ve belge artık sürekli görünmeyecektir.

{{% alert color="primary" %}}

MHTML biçimine kaydederken [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/) özelliğini kullanarak bir belgeyi bölemezsiniz.

{{% /alert %}}

Bu bölümde, olası bölünme kriterlerinden yalnızca bazılarını ele alıyoruz.

### Bir Belgeyi Bölümlere Ayırma {#split-a-document-by-sections}

Aspose.Words ayrıca belgeleri bölmek ve HTML 'e kaydetmek için bölüm sonlarını kullanmanızı sağlar. Bu amaçla **SectionBreak** 'i **DocumentSplitCriteria** olarak kullanın:

Aşağıdaki kod örneği, bir belgenin bölüm sonlarına göre daha küçük parçalara nasıl bölüneceğini gösterir (`DocumentSplitCriteria` özelliğini kullanmadan):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cpp" >}}

## Sayfalara Göre Böl {#splitting-by-pages}

Ayrıca bir belgeyi sayfa sayfa, sayfa aralıklarına göre veya belirtilen sayfa numaralarından başlayarak bölebilirsiniz. Bu durumda [ExtractPages](https://reference.aspose.com/words/cpp/aspose.words/document/extractpages/) yöntemi işi yapabilir.

Bu bölümde, [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) sınıfı ve **ExtractPages** yöntemi kullanılarak belgeleri sayfalara ayırmanın çeşitli kullanım durumları açıklanmaktadır.

{{% alert color="primary" %}}

Herhangi birini kullanabilirsiniz [Aspose.Words tarafından desteklenen çıktı biçimi](/words/cpp/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Sayfa sayısını azaltırken ortaya çıkan birçok nüans nedeniyle, Microsoft Word düzeniyle tam bir eşleşme oldukça karmaşık bir iştir. Bu nedenle, belge karmaşıklığına bağlı olarak, ortaya çıkan belge düzeninde orijinal belgeden küçük farklılıklar olabilir.

{{% /alert %}}

### Bir Belgeyi Sayfa Sayfa Böl {#split-a-document-page-by-page}

Aspose.Words çok sayfalı bir belgeyi sayfa sayfa bölmenizi sağlar.

Aşağıdaki kod örneği, bir belgenin nasıl bölüneceğini ve her sayfanın ayrı bir belge olarak nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.h" >}}

### Bir Belgeyi Sayfa Aralıklarına Göre Bölme {#split-a-document-by-page-ranges}

Aspose.Words çok sayfalı bir belgenin sayfa aralıklarına bölünmesine izin verir. Bir dosyayı çeşitli sayfa aralıklarına sahip birden çok dosyaya bölebilir veya yalnızca bir aralık seçip kaynak belgenin yalnızca bu bölümünü kaydedebilirsiniz. Sayfa aralığını bir belgenin maksimum ve minimum sayfa numarasına göre seçebileceğinizi unutmayın.

Aşağıdaki kod örneği, bir belgenin belirli başlangıç ve bitiş dizinleriyle sayfa aralığına göre daha küçük parçalara nasıl bölüneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.h" >}}

## Bölünmüş Belgeyi Başka Bir Belgeyle Birleştirme {#merge-the-split-document-with-another-file}

Aspose.Words yeni bir belge oluşturmak için çıktı bölmeli belgeyi başka bir belgeyle birleştirmenizi sağlar. Buna belge birleştirme denilebilir.

Aşağıdaki kod örneği, bölünmüş bir belgenin başka bir belgeyle nasıl birleştirileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cpp" >}}
