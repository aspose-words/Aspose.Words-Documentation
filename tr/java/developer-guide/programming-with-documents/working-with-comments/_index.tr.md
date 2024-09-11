---
title: Yorumlarla Çalışma Java ile
second_title: Aspose.Words için Java
articleTitle: Yorumlarla Çalışmak
linktitle: Yorumlarla Çalışmak
description: "Yorumlarla çalışma Java ile."
type: docs
weight: 260
url: /tr/java/working-with-comments/
---

{{% alert color="primary" %}}

**Çevrimiçi dene**

Bu işlevselliği bizim [Free online remove annotations](https://products.aspose.app/words/annotation) ile deneyebilirsiniz.

{{% /alert %}}

Aspose.Words kullanıcıların yorumlarla çalışmasına izin verir - Aspose.Words'deki bir belge içindeki yorumlar [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) sınıfıyla temsil edilir. Ayrıca, bir yorumla ilişkilendirilmesi gereken metnin bölgesini belirtmek için [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) ve [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) sınıflarını da kullanın.

## Yorum ekle

Aspose.Words size birkaç şekilde yorum eklemenizi sağlar:

1. [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) sınıfını kullanarak
2. [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) ve [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) sınıflarını kullanarak

Aşağıdaki kod örneği bir paragrafı **Comment** sınıfı kullanarak nasıl bir yorum ekleyeceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

Aşağıdaki kod örneği bir paragrafta bir yorum eklemek için bir metin bölgesi ve **CommentRangeStart** ve **CommentRangeEnd** sınıflarının nasıl kullanılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Yorumları Ayıkla veya Kaldır

Bir Word belgesinde Yorumlar Kullanmak (Değişiklik İzleme'ye ek olarak) belgeleri incelemekte yaygın bir uygulamadır, özellikle birden fazla gözden geçiren varsa. Belgenin yorumlarına sadece ihtiyacınız olduğunda durumlar olabilir. Bir listede inceleme bulgularını oluşturmak istediğinizi veya belgeden tüm yararlı bilgileri topladığınızı ve gereksiz yorumları kaldırmak istediğinizi varsayalım. Belgenin belirli bir gözden geçiren kişinin yorumlarını görüntülemek veya kaldırmak isteyebilirsiniz.

Bu örnekte, bir belgedeki yorumlardan bilgi toplamak ve bir belgeyi silmek için bazı basit yöntemlere bakacağız. Belirli olarak, şunları kapsayacağız:

Bir belgeden tüm yorumları ayıkla veya yalnızca belirli bir yazar tarafından yapılanları.
- Bir belgeden tüm yorumları kaldırın ya da sadece belirli bir yazarın.

### Yorumları Nasıl Çıkartılır veya Kaldırılır?

Bu örnekteki kod oldukça basittir ve tüm yöntemler aynı yaklaşıma dayanır. Bir Word belgesindeki bir yorum `Comment` nesnesiyle temsil edilir, bu da Aspose.Words belge nesne modelinde yer alır. Bir belgedeki tüm yorumları toplamak için [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) yöntemini ilk parametreyi `NodeType.Comment`'e ayarlayarak kullanın. **getChildNodes** yönteminin ikinci parametresinin true olarak ayarlandığından emin olun: Bu, **getChildNodes**'ın tüm alt düğümleri özyinelemeli olarak seçmek yerine yalnızca anında çocuk düğümleri toplamak yerine yapmasını sağlar.

Bir belgeden nasıl yorumları ayıklayıp çıkaracağınızı göstermek için aşağıdaki adımları izleyeceğiz:

1. [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) sınıfını kullanarak bir Word belgesini açın
1. Belgeden tüm yorumları bir koleksiyona al
1. Yorumları ayıklamak için:
   1. Koleksiyona "for" operatörünü kullanarak göz atın
   1. Tüm yorumlardan yazar adı, tarih ve saati ayıklayın ve listeleyin
   1. 'ks' yazarının yazdığı yorumların yazar, tarih ve saatleri ile metnini çıkarın ve listeleyin
1. Yorumları kaldırmak için:
   1. Koleksiyona for operatörü kullanarak geri gidin
   1. Yorumları kaldırın
1. Değişiklikleri kaydet.

Bu egzersiz için aşağıdaki Word belgesini kullanacağız:

![extract-remove-comments-aspose-words-java-1](extract-remove-comments-aspose-words-java-1.png)

Gördüğünüz gibi, içinde iki yazarın "pm" ve "ks" harflerinden oluşan baş harfleri olan birkaç Yorum içerir.

### Tüm Yorumları Nasıl Çekerim?

The [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) yöntemi çok faydalıdır ve bir türdeki belge düğümlerinin bir listesini her ihtiyacınız olduğunda kullanabilirsiniz. Sonuç veren koleksiyon acil bir yük oluşturmaz çünkü düğümler bu koleksiyona yalnızca sayma veya erişerek numaralandırıldıklarında alınır.

Aşağıdaki kod örneği, belgedeki tüm yorumların yazar adını, tarih&saati ve metnini nasıl çıkaracağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Belirli Bir Yazarın Yorumlarını Nasıl Çıkartılır

Yorum düğümlerini bir koleksiyona yerleştirdikten sonra ihtiyacınız olan bilgileri ayıklamak tüm yapmanız gereken şeydir. Bu örnekte yazarın baş harfleri, tarih, saat ve yorumun düz metni tek bir dizeye birleştirilir; farklı yollarla saklamak için seçebilirsiniz.

Yüklenen yöntem yorumları belirli bir yazarından ayıklar ve sadece yazarın adını kontrol eder ve bilgiyi diziye eklemeden önce neredeyse aynıdır.

Aşağıdaki kod örneği, belirtilen yazar tarafından yazılan yorumlardan yazar adı, tarih ve saati nasıl ayıklanabileceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Yorumları Nasıl Kaldırılır

Tüm yorumları kaldırıyorsanız, bir seferde bir tane her şekilde ele almak için koleksiyonu dolaşmaya gerek yoktur; bunları [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear)'a çağırarak yorumlar koleksiyonundan kaldırabilirsiniz.

Aşağıdaki kod örneği, belgedeki tüm yorumları nasıl kaldıracağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Yorumları seçmeli olarak kaldırmanız gerektiğinde, bu süreç yorum çıkarma için kullandığımız kodla daha benzer hale gelir.

Aşağıdaki kod örneği belirtilen yazar tarafından yapılan yorumları nasıl kaldıracağınızı göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Burada öne çıkarılacak nokta 'for' operatörünün kullanımının önemi. Basit ayıklamanın aksine burada bir yorum silmek istiyorsunuz. Koleksiyondaki son Yorum'dan başlayarak ilkine doğru geri dolaşmak için uygun bir hile kullanmak, bu yüzden bu nedenlerden biri eğer başlangıç noktanız son ve geriye doğru hareket ederseniz, önündeki öğelerin dizini değişmeden kalır ve böylece koleksiyondaki ilk öğeye geri dönebilirsiniz.

Aşağıdaki kod örneği yorumları ayıklama ve kaldırma yöntemlerini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Örnek dosyanın bu örneğe ilişkin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc)'tan indirebilirsiniz.

{{% /alert %}}

Başlatıldığında örnek aşağıdaki sonuçları gösterir. İlk olarak, tüm yorumları yazarların hepsinin listelir, sonra seçilen yazarın yorumlarını sadece listeler ve son olarak kodu tüm yorumları kaldırır.

![extract-remove-comments-aspose-words-java-2](extract-remove-comments-aspose-words-java-2.png)

Çıktı Word belgesi şimdi yorumları kaldırıldı:

![extract-remove-comments-aspose-words-java-3](extract-remove-comments-aspose-words-java-3.png)

### CommentRangeStart ve CommentRangeEnd arasındaki metni nasıl kaldırılır?

Aspose.Words kullanarak, ayrıca YorumRangeStart ve YorumRangeEnd düğümleri arasında yorumları kaldırabilirsiniz.

Aşağıdaki kod örneği, CommentRangeStart ve CommentRangeEnd arasındaki metni nasıl kaldıracağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Yorum Yanıtını Ekle veya Kaldır

Bu yorum için bir yanıt ekleyen [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) yöntemini kullanın. Mevcut MS Office kısıtlamaları nedeniyle belge içinde yalnızca bir (1) düzey yanıtı desteklendiğini unutmayın. Yöntem mevcut Yanıt yorumuna çağrıldığında InvalidOperationException özel durumu oluşturulur.

Bu yorum için belirtilen cevabı kaldırmak için [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) yöntemini kullanabilirsiniz.

Aşağıdaki kod örneği, bir yorumun nasıl ekleneceğini ve bir yorumun cevabının nasıl kaldırılacağını göstermektedir":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Yorumu Oku

2) Aspose.Words yorum yanıtını okumak için destek sağlar. [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) özelliği belirtilen yorumun doğrudan çocukları olan [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) nesne koleksiyonunu döndürür.

Aşağıdaki kod örneği, bir yorumun geri bildirimlerini nasıl yineleyeceğini ve çözeceğinizi göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}