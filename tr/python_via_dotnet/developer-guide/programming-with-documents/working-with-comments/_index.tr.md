---
title: Python'te Yorumlarla Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Yorumlarla Çalışmak
linktitle: Yorumlarla Çalışmak
description: "Python kullanarak bir belgeye yorum ekleme, kaldırma veya değiştirme."
type: docs
weight: 260
url: /tr/python-net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Çevrimiçi deneyin**

Bu işlevselliği [Ek açıklamaları ücretsiz çevrimiçi kaldırma](https://products.aspose.app/words/annotation)'imizle deneyebilirsiniz.

{{% /alert %}}

Aspose.Words, kullanıcıların yorumlarla çalışmasına olanak tanır; Aspose.Words'teki bir belgedeki yorumlar [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) sınıfı tarafından temsil edilir. Ayrıca, bir yorumla ilişkilendirilmesi gereken metin bölgesini belirtmek için [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) ve [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) sınıflarını da kullanın.

## Yorum ekle

Aspose.Words, çeşitli şekillerde yorum eklemenizi sağlar:

1. [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) sınıfını kullanma
2. [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) ve [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) sınıflarını kullanma

Aşağıdaki kod örneği, **Comment** sınıfını kullanarak bir paragrafa nasıl yorum ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

Aşağıdaki kod örneği, metnin bir bölgesini ve **CommentRangeStart** ve **CommentRangeEnd** sınıflarını kullanarak bir paragrafa nasıl yorum ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## Yorumları Çıkarın veya Kaldırın

Bir Word belgesinde Yorumları kullanmak (Değişiklikleri İzle'ye ek olarak), özellikle birden fazla inceleyen olduğunda belgeleri incelerken yaygın bir uygulamadır. Bir belgeden ihtiyacınız olan tek şeyin yorumlar olduğu durumlar olabilir. İnceleme bulgularının bir listesini oluşturmak istediğinizi veya belki de belgedeki tüm yararlı bilgileri topladığınızı ve yalnızca gereksiz yorumları kaldırmak istediğinizi varsayalım. Belirli bir inceleyenin yorumlarını görüntülemek veya kaldırmak isteyebilirsiniz.

Bu örnekte hem bir belgedeki yorumlardan bilgi toplamak hem de bir belgeden yorumları kaldırmak için bazı basit yöntemlere bakacağız. Özellikle aşağıdakilerin nasıl yapılacağını ele alacağız:

- Bir belgedeki tüm yorumları veya yalnızca belirli bir yazar tarafından yapılan yorumları çıkarın.
- Bir belgedeki veya yalnızca belirli bir yazara ait tüm yorumları kaldırın.

### Yorumlar Nasıl Çıkarılır veya Kaldırılır

Bu örnekteki kod aslında oldukça basittir ve tüm yöntemler aynı yaklaşımı temel almaktadır. Bir Word belgesindeki bir yorum, Aspose.Words belgesi nesne modelinde bir [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) nesnesi tarafından temsil edilir. Bir belgedeki tüm yorumları toplamak için, ilk parametresi [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment) olarak ayarlanmış [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) yöntemini kullanın. **get_child_nodes** yönteminin ikinci parametresinin true olarak ayarlandığından emin olun: bu, **get_child_nodes**'u yalnızca yakın alt düğümleri toplamak yerine yinelemeli olarak tüm alt düğümler arasından seçim yapmaya zorlar.

Bir belgeden yorumların nasıl çıkarılacağını ve kaldırılacağını göstermek için aşağıdaki adımları izleyeceğiz:

1. [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) sınıfını kullanarak bir Word belgesi açın
1. Belgedeki tüm yorumları bir koleksiyona alın
1. Yorumları çıkarmak için:
   1. foreach operatörünü kullanarak koleksiyona göz atın
   1. Tüm yorumların yazar adını, tarih ve saatini ve metnini çıkarın ve listeleyin
   1. Belirli bir yazar tarafından yazılan yazar adını, tarih ve saatini ve yorum metnini çıkarın ve listeleyin; bu durumda yazar 'ks'
1. Yorumları kaldırmak için:
   1. for operatörünü kullanarak koleksiyonda geriye doğru gidin
   1. Yorumları kaldırın
1. Değişiklikleri kaydedin

### Tüm Yorumlar Nasıl Çıkarılır

[get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) yöntemi çok kullanışlıdır ve herhangi bir türdeki belge düğümlerinin bir listesini almanız gerektiğinde bunu kullanabilirsiniz. Ortaya çıkan koleksiyon anında bir ek yük oluşturmaz çünkü düğümler bu koleksiyona yalnızca siz numaralandırdığınızda veya içindeki öğelere eriştiğinizde seçilir.

Aşağıdaki kod örneği, belgedeki tüm yorumların yazar adının, tarih&amp;saatinin ve metninin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### Belirli Bir Yazarın Yorumları Nasıl Çıkarılır

[Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) düğümlerini bir koleksiyona seçtikten sonra tek yapmanız gereken ihtiyacınız olan bilgiyi çıkarmaktır. Bu örnekte yazarın adının baş harfleri, tarih, saat ve yorumun düz metni tek bir dizede birleştirilmiştir; bunun yerine başka şekillerde saklamayı seçebilirsiniz.

Belirli bir yazardan Yorumları çıkaran aşırı yüklenmiş yöntem hemen hemen aynıdır; yalnızca bilgiyi diziye eklemeden önce yazarın adını kontrol eder.

Aşağıdaki kod örneği, belirtilen yazara göre yazar adının, tarih&amp;saatinin ve yorum metninin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### Yorumlar Nasıl Kaldırılır

Tüm yorumları kaldırıyorsanız, yorumları tek tek silerek koleksiyonda ilerlemenize gerek yoktur; yorum koleksiyonundan [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/)'i arayarak bunları kaldırabilirsiniz.

Aşağıdaki kod örneği, belgedeki tüm yorumların nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

Yorumları seçerek kaldırmanız gerektiğinde süreç, yorum çıkarmak için kullandığımız koda daha çok benzer hale gelir.

Aşağıdaki kod örneği, belirtilen yazarın yorumlarının nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

Burada vurgulanması gereken asıl nokta for operatörünün kullanılmasıdır. Basit çıkarma işleminin aksine, burada bir yorumu silmek istiyorsunuz. Uygun bir yöntem, koleksiyonu son [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)'ten ilkine doğru geriye doğru yinelemektir. Bunun nedeni, eğer sondan başlayıp geriye doğru giderseniz, önceki öğelerin dizini değişmeden kalır ve koleksiyondaki ilk öğeye geri dönebilirsiniz.

Aşağıdaki kod örneği, yorumların çıkarılması ve kaldırılmasına yönelik yöntemleri gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx)'ten indirebilirsiniz.

{{% /alert %}}

### CommentRangeStart ve CommentRangeEnd Arasındaki Yorum Nasıl Kaldırılır

Aspose.Words'i kullanarak **CommentRangeStart** ve **CommentRangeEnd** düğümleri arasındaki yorumları da kaldırabilirsiniz.

Aşağıdaki kod örneği, **CommentRangeStart** ile **CommentRangeEnd** arasındaki metnin nasıl kaldırılacağını gösterir:

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## Yorumun Yanıtını Ekle veya Kaldır

[add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) yöntemi bu yoruma bir yanıt ekler. Mevcut Microsoft Office sınırlamaları nedeniyle belgede yalnızca 1 düzeyde yanıta izin verildiğini lütfen unutmayın. Bu yöntem mevcut Yanıt yorumunda çağrılırsa **InvalidOperationException** türünde bir istisna ortaya çıkar.

Bu yoruma verilen yanıtı kaldırmak için [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) yöntemini kullanabilirsiniz.

Aşağıdaki kod örneği, yoruma yanıtın nasıl ekleneceğini ve yorumun yanıtının nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## Yorumun Yanıtını Oku

[replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) özelliği, belirtilen yorumun doğrudan alt öğeleri olan [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) nesnelerinin bir koleksiyonunu döndürür.

Aşağıdaki kod örneği, bir yorumun yanıtlarının nasıl yineleneceğini ve bunların nasıl çözüleceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}
