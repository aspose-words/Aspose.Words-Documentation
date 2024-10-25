---
title: C++ içindeki Yorumlarla Çalışma
second_title: Aspose.Words için C++
articleTitle: Yorumlarla Çalışma
linktitle: Yorumlarla Çalışma
description: "C++ kullanarak yorumlarla çalışma."
type: docs
weight: 260
url: /tr/cpp/working-with-comments/
---

{{% alert color="primary" %}}

**Çevrimiçi deneyin**

Bu işlevselliği bizim ile deneyebilirsiniz [Ücretsiz çevrimiçi ek açıklamaları kaldır](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words kullanıcıların yorumlarla çalışmasına izin verir - Aspose.Words içindeki bir belgedeki yorumlar [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) sınıfı tarafından temsil edilir. Ayrıca, bir yorumla ilişkilendirilmesi gereken metin bölgesini belirtmek için [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) ve [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/) sınıflarını kullanın.

## Yorum Ekle

Aspose.Words çeşitli şekillerde yorum eklemenize izin verir:

1. [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) sınıfını kullanma
2. [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) ve [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) sınıflarını kullanma

Aşağıdaki kod örneği, **Comment** sınıfını kullanarak paragrafa nasıl yorum ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AddComments-AddComments.cpp" >}}

Aşağıdaki kod örneği, bir metin bölgesini ve **CommentRangeStart** ve **CommentRangeEnd** sınıflarını kullanarak paragrafa nasıl yorum ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AnchorComment-AnchorComment.cpp" >}}

## Yorumları Ayıkla veya Kaldır

Bir Word belgesindeki Yorumları Kullanmak (Değişiklikleri İzlemenin yanı sıra), özellikle birden çok gözden geçiren olduğunda belgeleri incelerken yaygın bir uygulamadır. Bir belgeden ihtiyacınız olan tek şeyin yorumlar olduğu durumlar olabilir. İnceleme bulgularının bir listesini oluşturmak istediğinizi veya belki de belgedeki tüm yararlı bilgileri topladığınızı ve gereksiz yorumları kaldırmak istediğinizi varsayalım. Belirli bir gözden geçirenin yorumlarını görüntülemek veya kaldırmak isteyebilirsiniz.

Bu örnekte, hem bir belgedeki yorumlardan bilgi toplamak hem de bir belgedeki yorumları kaldırmak için bazı basit yöntemlere bakacağız. Özellikle, nasıl yapılacağını ele alacağız:

- Bir belgedeki tüm yorumları veya yalnızca belirli bir yazar tarafından yapılanları ayıklayın.
- Tüm yorumları bir belgeden veya yalnızca belirli bir yazardan kaldırın.

### Yorumlar Nasıl Çıkarılır veya Kaldırılır

Bu örnekteki kod aslında oldukça basittir ve tüm yöntemler aynı yaklaşıma dayanmaktadır. Bir Word belgesindeki açıklama, Aspose.Words belge nesnesi modelindeki [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) nesnesiyle temsil edilir. Bir belgedeki tüm yorumları toplamak için, ilk parametre [NodeType.Comment](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) olarak ayarlanmış [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) yöntemini kullanın. **GetChildNodes** yönteminin ikinci parametresinin true olarak ayarlandığından emin olun: bu, **GetChildNodes** 'ü yalnızca yakın çocukları toplamak yerine tüm alt düğümler arasından yinelemeli olarak seçim yapmaya zorlar.

Bir belgeden yorumların nasıl çıkarılacağını ve kaldırılacağını göstermek için aşağıdaki adımlardan geçeceğiz:

1. [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) sınıfını kullanarak bir Word belgesi açın
1. Belgedeki tüm yorumları bir koleksiyona alın
1. Yorumları ayıklamak için:
   1. Foreach operatörünü kullanarak koleksiyona göz atın
   1. Tüm yorumların yazar adını, tarihini ve saatini ve metnini ayıklayın ve listeleyin
   1. Belirli bir yazar tarafından yazılan yorumların yazar adını, tarihini ve saatini ve metnini ayıklayın ve listeleyin, bu durumda yazar 'ks’
1. Yorumları kaldırmak için:
   1. For operatörünü kullanarak koleksiyon boyunca geriye doğru gidin
   1. Yorumları kaldır
1. Değişiklikleri kaydet

### Tüm Yorumlar Nasıl Çıkarılır

**GetChildNodes** yöntemi çok kullanışlıdır ve her tür belge düğümünün bir listesini almanız gerektiğinde bunu kullanabilirsiniz. Sonuçta ortaya çıkan koleksiyon, yalnızca içindeki öğeleri numaralandırdığınızda veya bunlara eriştiğinizde düğümler bu koleksiyona seçildiğinden hemen bir ek yük oluşturmaz.

Aşağıdaki kod örneği, belgedeki tüm açıklamaların yazar adını, tarihini ve saatini ve metnini nasıl çıkaracağınızı gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractComments.cpp" >}}

### Belirli Bir Yazarın Yorumları Nasıl Çıkarılır

Yorum düğümlerini bir koleksiyona seçtikten sonra tek yapmanız gereken ihtiyacınız olan bilgileri ayıklamaktır. Bu örnekte, yazarın baş harfleri, tarihi, saati ve yorumun düz metni tek bir dizede birleştirilir; Bunun yerine başka şekillerde saklamayı seçebilirsiniz.

Belirli bir yazardan Yorumları ayıklayan aşırı yüklenmiş yöntem hemen hemen aynıdır, bilgileri diziye eklemeden önce yazarın adını kontrol eder.

Aşağıdaki kod örneği, yazar adı, tarih ve saati ve belirtilen yazar tarafından yapılan açıklamaların metninin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cpp" >}}

### Yorumlar Nasıl Kaldırılır

Tüm yorumları kaldırıyorsanız, yorumları tek tek silerek koleksiyonda dolaşmanıza gerek yoktur; Yorumlar koleksiyonunda `NodeCollection.Clear` öğesini arayarak bunları kaldırabilirsiniz.

Aşağıdaki kod örneği, belgedeki tüm açıklamaların nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveComments.cpp" >}}

Yorumları seçici olarak kaldırmanız gerektiğinde, işlem yorum çıkarma için kullandığımız koda daha çok benzer hale gelir.

Aşağıdaki kod örneği, belirtilen yazarın açıklamalarının nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cpp" >}}

Burada vurgulanması gereken en önemli nokta, for operatörünün kullanılmasıdır. Basit ayıklamanın aksine, burada bir yorumu silmek istiyorsunuz. Uygun bir numara, koleksiyonu son Yorumdan birinciye geriye doğru yinelemektir. Bunun nedeni, sondan başlayıp geriye doğru hareket ederseniz, önceki öğelerin dizini değişmeden kalır ve koleksiyondaki ilk öğeye geri dönebilirsiniz.

Aşağıdaki kod örneği, yorum çıkarma ve kaldırma yöntemlerini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ProcessComments.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### CommentRangeStart ve CommentRangeEnd arasındaki bir Yorum Nasıl Kaldırılır

Aspose.Words kullanarak **CommentRangeStart** ve **CommentRangeEnd** düğümleri arasındaki yorumları da kaldırabilirsiniz.

Aşağıdaki kod örneği, **CommentRangeStart** ile **CommentRangeEnd** arasındaki metnin nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cpp" >}}

## Yorumun Yanıtını Ekleme ve Kaldırma

[AddReply](https://reference.aspose.com/words/cpp/aspose.words/comment/addreply/) yöntemi bu yoruma bir yanıt ekler. Mevcut Microsoft Ofis sınırlamaları nedeniyle belgede yalnızca 1 yanıt düzeyine izin verildiğini lütfen unutmayın. Varolan Yanıt açıklamasında bu yöntem çağrılırsa *InvalidOperationException* türünde bir özel durum oluşturulur.

Bu yoruma belirtilen yanıtı kaldırmak için [RemoveReply](https://reference.aspose.com/words/cpp/aspose.words/comment/removereply/) yöntemini kullanabilirsiniz.

Aşağıdaki kod örneği, yoruma nasıl yanıt ekleneceğini ve yorumun yanıtının nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cpp" >}}

## Yorumun Yanıtını Okuyun

[Replies](https://reference.aspose.com/words/cpp/aspose.words/comment/get_replies/) özelliği, belirtilen açıklamanın hemen alt öğeleri olan **Comment** nesnelerinin bir koleksiyonunu döndürür.

Aşağıdaki kod örneği, bir yorumun yanıtlarını nasıl yineleyeceğinizi ve bunları nasıl çözeceğinizi gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cpp" >}}