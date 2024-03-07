---
title: Python'te bir Belgeyi Bölme
second_title: Python via .NET için Aspose.Words
articleTitle: Belgeyi Böl
linktitle: Belgeyi Böl
description: "Python kullanarak bir belgeyi birkaç dosyaya bölün. Bir belgeyi başlıklara veya bölümlere, ayrıca sayfalara veya sayfa aralıklarına göre etkili bir şekilde bölmek için bölme özelliğini kullanın."
type: docs
weight: 90
url: /tr/python-net/split-a-document/
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

[DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) numaralandırmasını kullanarak kriterleri belirtebilirsiniz. Böylece, aşağıdaki kriterlerden birini kullanarak bir belgeyi bölümlere ayırabilir veya birden fazla kriteri bir araya getirebilirsiniz:

- paragraf başlığı,
- Bölüm sonu,
- sütun sonu,
- sayfa sonu.

Çıktıyı HTML'ye kaydederken, Aspose.Words her bir bölümü ayrı bir HTML dosyası olarak kaydeder. Sonuç olarak, belge birden çok HTML dosyasına bölünecektir. Çıktıyı EPUB'a kaydederken Aspose.Words, kullandığınız [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) değerinden bağımsız olarak sonucu tek bir EPUB dosyasına kaydeder. Bu nedenle, EPUB belgeleri için [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/)'nin kullanılması yalnızca içeriklerinin okuyucu uygulamalarındaki görünümünü etkiler: içerik bölümlere bölünecek ve belge artık sürekli görünmeyecektir.

{{% alert color="primary" %}}

MHTML formatında kaydederken bir belgeyi [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) özelliğini kullanarak bölemezsiniz.

{{% /alert %}}

Bu bölümde olası bölünme kriterlerinden yalnızca bazılarını ele alacağız.

### Bir Belgeyi Başlıklara Göre Bölme {#split-a-document-by-headings}

Bir belgeyi başlıklara göre bölümlere ayırmak için [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) özelliğinin [HEADING_PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#HEADING_PARAGRAPH) değerini kullanın.

Bir belgeyi başlık paragraflarının belirli bir düzeyine (örneğin başlık 1, 2 ve 3) bölmeniz gerekiyorsa [document_split_heading_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_heading_level/) özelliğini de kullanın. Çıktı, belirtilen başlık düzeyiyle biçimlendirilmiş paragraflara bölünecektir.

Aşağıdaki kod örneği, bir belgenin başlığa göre daha küçük parçalara nasıl bölüneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByHeadingsHtml.py" >}}

Lütfen bu kriter için Aspose.Words'in bölme sırasında yalnızca HTML biçiminde kaydetmeyi desteklediğini unutmayın.

EPUB'a kaydederken belge birkaç dosyaya bölünmez ve yalnızca tek bir çıktı dosyası olur.

### Bir Belgeyi Bölümlere Göre Bölme {#split-a-document-by-sections}

Aspose.Words ayrıca belgeleri bölmek ve bunları HTML'ye kaydetmek için bölüm sonlarını kullanmanıza da olanak tanır. Bu amaçla [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) olarak [SECTION_BREAK](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#section_break)'yi kullanın:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySectionsHtml.py" >}}

Kaynak belgeyi birden çok çıktı belgesine bölmenin başka bir yolu vardır ve Aspose.Words tarafından desteklenen herhangi bir çıktı biçimini seçebilirsiniz.

Aşağıdaki kod örneği, bir belgenin bölüm sonlarına göre ([document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) özelliğini kullanmadan) daha küçük parçalara nasıl bölüneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySections.py" >}}

## Sayfalara Göre Bölme {#splitting-by-pages}

Ayrıca bir belgeyi sayfa sayfa, sayfa aralıklarına göre veya belirtilen sayfa numaralarından başlayarak bölebilirsiniz. Böyle bir durumda [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) yöntemi işi yapabilir.

Bu bölümde, [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) sınıfını ve [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) yöntemini kullanarak belgeleri sayfalara göre bölmenin çeşitli kullanım durumları açıklanmaktadır.

{{% alert color="primary" %}}

Herhangi bir [Desteklenen Belge Formatları](/words/tr/python-net/supported-document-formats/)'i kullanabilirsiniz.

{{% /alert %}}

{{% alert color="primary" %}}

Sayfa sayısını azaltırken ortaya çıkan birçok nüans nedeniyle Microsoft Word düzeniyle tam eşleşme oldukça karmaşık bir iştir. Bu nedenle, belgenin karmaşıklığına bağlı olarak, ortaya çıkan belge düzeninde orijinal belgeden küçük farklılıklar olabilir.

{{% /alert %}}

### Belgeyi Sayfa Sayfaya Bölme {#split-a-document-page-by-page}

Aspose.Words, çok sayfalı bir belgeyi sayfa sayfa bölmenizi sağlar.

Aşağıdaki kod örneği, bir belgenin nasıl bölüneceğini ve her sayfanın ayrı bir belge olarak nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentPageByPage.py" >}}

### Belgeyi Sayfa Aralıklarına Göre Bölme {#split-a-document-by-page-ranges}

Aspose.Words, çok sayfalı bir belgenin sayfa aralıklarına göre bölünmesine olanak tanır. Bir dosyayı çeşitli sayfa aralıklarına sahip birden fazla dosyaya bölebilir veya yalnızca bir aralık seçip kaynak belgenin yalnızca bu bölümünü kaydedebilirsiniz. Bir belgenin maksimum ve minimum sayfa sayısına göre sayfa aralığını seçebileceğinizi unutmayın.

Aşağıdaki kod örneği, bir belgenin belirli başlangıç ve bitiş dizinleriyle sayfa aralığına göre daha küçük parçalara nasıl bölüneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByPageRange.py" >}}

## Bölünmüş Belgeyi Başka Bir Dosya {#merge-the-split-document-with-another-file} ile Birleştir

Aspose.Words, yeni bir belge oluşturmak için çıktı bölünmüş belgeyi başka bir belgeyle birleştirmenize olanak tanır. Buna belge birleştirme denilebilir.

Aşağıdaki kod örneği, bölünmüş bir belgenin başka bir belgeyle nasıl birleştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-MergeSplitDocuments.py" >}}
