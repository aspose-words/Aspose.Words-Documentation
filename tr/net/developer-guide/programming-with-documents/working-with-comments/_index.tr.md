---
title: C#'te Yorumlarla Çalışmak
second_title: .NET için Aspose.Words
articleTitle: Yorumlarla Çalışmak
linktitle: Yorumlarla Çalışmak
description: "C# kullanarak yorumlarla çalışma."
type: docs
weight: 260
url: /tr/net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Çevrimiçi deneyin**

Bu işlevselliği [Ek açıklamaları ücretsiz çevrimiçi kaldırma](https://products.aspose.app/words/annotation)'imizle deneyebilirsiniz.

{{% /alert %}}

Aspose.Words, kullanıcıların yorumlarla çalışmasına olanak tanır; Aspose.Words'teki bir belgedeki yorumlar [Comment](https://reference.aspose.com/words/tr/net/aspose.words/comment/) sınıfı tarafından temsil edilir. Ayrıca, bir yorumla ilişkilendirilmesi gereken metin bölgesini belirtmek için [CommentRangeStart](https://reference.aspose.com/words/tr/net/aspose.words/commentrangestart/) ve [CommentRangeEnd](https://reference.aspose.com/words/tr/net/aspose.words/commentrangeend/) sınıflarını da kullanın.

## Yorum ekle

Aspose.Words, çeşitli şekillerde yorum eklemenizi sağlar:

1. [Comment](https://reference.aspose.com/words/tr/net/aspose.words/comment/) sınıfını kullanma
2. [CommentRangeStart](https://reference.aspose.com/words/tr/net/aspose.words/commentrangestart/) ve [CommentRangeEnd](https://reference.aspose.com/words/tr/net/aspose.words/commentrangeend/) sınıflarını kullanma

Aşağıdaki kod örneği, **Comment** sınıfını kullanarak bir paragrafa nasıl yorum ekleneceğini gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

Aşağıdaki kod örneği, metnin bir bölgesini ve **CommentRangeStart** ve **CommentRangeEnd** sınıflarını kullanarak bir paragrafa nasıl yorum ekleneceğini gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## Yorumları Çıkarın veya Kaldırın

Bir Word belgesinde Yorumları kullanmak (Değişiklikleri İzle'ye ek olarak), özellikle birden fazla inceleyen olduğunda belgeleri incelerken yaygın bir uygulamadır. Bir belgeden ihtiyacınız olan tek şeyin yorumlar olduğu durumlar olabilir. İnceleme bulgularının bir listesini oluşturmak istediğinizi veya belki de belgedeki tüm yararlı bilgileri topladığınızı ve yalnızca gereksiz yorumları kaldırmak istediğinizi varsayalım. Belirli bir inceleyenin yorumlarını görüntülemek veya kaldırmak isteyebilirsiniz.

Bu örnekte hem bir belgedeki yorumlardan bilgi toplamak hem de bir belgeden yorumları kaldırmak için bazı basit yöntemlere bakacağız. Özellikle aşağıdakilerin nasıl yapılacağını ele alacağız:

- Bir belgedeki tüm yorumları veya yalnızca belirli bir yazar tarafından yapılan yorumları çıkarın
- Bir belgedeki veya yalnızca belirli bir yazara ait tüm yorumları kaldırın

### Yorumlar Nasıl Çıkarılır veya Kaldırılır

Bu örnekteki kod aslında oldukça basittir ve tüm yöntemler aynı yaklaşımı temel almaktadır. Bir Word belgesindeki bir yorum, Aspose.Words belgesi nesne modelinde bir [Comment](https://reference.aspose.com/words/tr/net/aspose.words/comment/) nesnesi tarafından temsil edilir. Bir belgedeki tüm yorumları toplamak için, ilk parametresi [NodeType.Comment](https://reference.aspose.com/words/tr/net/aspose.words/nodetype/) olarak ayarlanmış [GetChildNodes](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/getchildnodes/) yöntemini kullanın. **GetChildNodes** yönteminin ikinci parametresinin true olarak ayarlandığından emin olun: bu, **GetChildNodes**'u yalnızca yakın alt düğümleri toplamak yerine yinelemeli olarak tüm alt düğümler arasından seçim yapmaya zorlar.

Bir belgeden yorumların nasıl çıkarılacağını ve kaldırılacağını göstermek için aşağıdaki adımları izleyeceğiz:

1. [Document](https://reference.aspose.com/words/tr/net/aspose.words/document/) sınıfını kullanarak bir Word belgesi açın
2. Belgedeki tüm yorumları bir koleksiyona alın
3. Yorumları çıkarmak için:
   1. foreach operatörünü kullanarak koleksiyona göz atın
   2. Tüm yorumların yazar adını, tarih ve saatini ve metnini çıkarın ve listeleyin
   3. Yazar adını, tarih ve saatini ve belirli bir yazar tarafından yazılan yorumların metnini çıkarın ve listeleyin, bu durumda yazar 'ks'
4. Yorumları kaldırmak için:
   1. for operatörünü kullanarak koleksiyonda geriye doğru gidin
   2. Yorumları kaldırın
5. Değişiklikleri kaydedin

### Tüm Yorumlar Nasıl Çıkarılır

**GetChildNodes** yöntemi çok kullanışlıdır ve herhangi bir türdeki belge düğümlerinin bir listesini almanız gerektiğinde bunu kullanabilirsiniz. Ortaya çıkan koleksiyon anında bir ek yük oluşturmaz çünkü düğümler bu koleksiyona yalnızca siz numaralandırdığınızda veya içindeki öğelere eriştiğinizde seçilir.

Aşağıdaki kod örneği, belgedeki tüm yorumların yazar adının, tarih&amp;saatinin ve metninin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### Belirli Bir Yazarın Yorumları Nasıl Çıkarılır

**Comment** düğümlerini bir koleksiyona seçtikten sonra tek yapmanız gereken ihtiyacınız olan bilgiyi çıkarmaktır. Bu örnekte yazarın adının baş harfleri, tarih, saat ve yorumun düz metni tek bir dizede birleştirilmiştir; bunun yerine başka şekillerde saklamayı seçebilirsiniz.

Belirli bir yazardan Yorumları çıkaran aşırı yüklenmiş yöntem hemen hemen aynıdır; yalnızca bilgiyi diziye eklemeden önce yazarın adını kontrol eder.

Aşağıdaki kod örneği, belirtilen yazara göre yazar adının, tarih&amp;saatinin ve yorum metninin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### Yorumlar Nasıl Kaldırılır

Tüm yorumları kaldırıyorsanız, yorumları tek tek silerek koleksiyonda ilerlemenize gerek yoktur. Yorumlar koleksiyonundaki [Clear](https://reference.aspose.com/words/tr/net/aspose.words/nodecollection/clear/) yöntemini çağırarak bunları kaldırabilirsiniz.

Aşağıdaki kod örneği, belgedeki tüm yorumların nasıl kaldırılacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

Yorumları seçerek kaldırmanız gerektiğinde süreç, yorum çıkarmak için kullandığımız koda daha çok benzer hale gelir.

Aşağıdaki kod örneği, belirtilen yazarın yorumlarının nasıl kaldırılacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

Burada vurgulanması gereken asıl nokta for operatörünün kullanılmasıdır. Basit çıkarmanın aksine, burada bir yorumu silmek istiyorsunuz. Uygun bir yöntem, koleksiyonu son Yorumdan ilkine kadar geriye doğru yinelemektir. Bunun nedeni, eğer sondan başlayıp geriye doğru giderseniz, önceki öğelerin dizini değişmeden kalır ve koleksiyondaki ilk öğeye geri dönebilirsiniz.

Aşağıdaki kod örneği, yorumların çıkarılması ve kaldırılmasına yönelik yöntemleri gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx)'ten indirebilirsiniz.

{{% /alert %}}

### CommentRangeStart ve CommentRangeEnd Arasındaki Yorum Nasıl Kaldırılır

Aspose.Words'i kullanarak **CommentRangeStart** ve **CommentRangeEnd** düğümleri arasındaki yorumları da kaldırabilirsiniz.

Aşağıdaki kod örneği, **CommentRangeStart** ile **CommentRangeEnd** arasındaki metnin nasıl kaldırılacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## Yorumun Yanıtını Ekle veya Kaldır

[AddReply](https://reference.aspose.com/words/tr/net/aspose.words/comment/addreply/) yöntemi bu yoruma bir yanıt ekler. Mevcut Microsoft Office sınırlamaları nedeniyle belgede yalnızca 1 düzeyde yanıta izin verildiğini lütfen unutmayın. Bu yöntem mevcut Yanıt yorumunda çağrılırsa *InvalidOperationException* türünde bir istisna ortaya çıkar.

Bu yoruma verilen yanıtı kaldırmak için [RemoveReply](https://reference.aspose.com/words/tr/net/aspose.words/comment/removereply/) yöntemini kullanabilirsiniz.

Aşağıdaki kod örneği, yoruma yanıtın nasıl ekleneceğini ve yorumun yanıtının nasıl kaldırılacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## Yorumun Yanıtını Oku

[Replies](https://reference.aspose.com/words/tr/net/aspose.words/comment/replies/) özelliği, belirtilen yorumun doğrudan alt öğeleri olan [Comment](https://reference.aspose.com/words/tr/net/aspose.words/comment/) nesnelerinin bir koleksiyonunu döndürür.

Aşağıdaki kod örneği, bir yorumun yanıtlarının nasıl yineleneceğini ve bunların nasıl çözüleceğini gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
