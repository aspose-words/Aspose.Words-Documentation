---
title: Bir belgedeki Değişiklikleri İzleme Java
second_title: Aspose.Words için Java
articleTitle: Bir Belge'deki Değişiklikleri İzleme
linktitle: Bir Belge'deki Değişiklikleri İzleme
description: "İçerik ve biçimlendirme değişikliklerini sen veya başkaları tarafından yapılan izle. Bir belgedeki tek tek revizyonlara erişin ve onlara çeşitli özellikler uygulayın Java kullanarak."
type: docs
weight: 270
url: /tr/java/track-changes-in-a-document/
---

Track değişiklikleri işlevselliği veya gözden geçirme özelliği, size içerik ve biçimlendirme üzerinde yaptığınız ya da diğer kullanıcılar tarafından yapılan değişiklikleri takip etmenizi sağlar. Bu Aspose.Words ile desteklenen track değişiklikleri özelliği, Microsoft Word'de değişiklikleri takip etmenize olanak tanır. Bu işlevsellik sayesinde belgenizdeki bireysel revizyonlara erişebilir ve farklı özellikleri onlara uygulayabilirsiniz.

Takip değişiklikleri özelliğini etkinleştirirseniz, belgenin eklenen, silinen ve değiştirilen tüm öğelerinin kim tarafından ne zaman değiştirildiğine dair bilgi içeren görsel olarak vurgulanacağına tanık olacaksınız. Değiştirilen şey hakkındaki bilgileri taşıyan nesnelere "değişiklik takibi" denir. Örneğin, bir belgeyi gözden geçirmek ve önemli değişiklikler yapmak istediğinizi varsayalım – bu sizin revizyon yapmanız gerekebileceği anlamına gelebilir. Ayrıca, bazı değişiklikleri tartışmak için yorumlar eklemeniz gerekebilir. İşte belgelere takip değişikliklerini ekleme yeri.

Bu makale aynı belge üzerinde birçok inceleyici tarafından yapılan değişiklikleri yönetme ve takip etme konusunda nasıl yapılacağını açıklar, ayrıca değişiklikleri takip etmek için özellikler.

{{% alert color="primary" %}}

Not edin ki Aspose.Words ve Microsoft Word içindeki yorum özelliği değişiklikleri takip etmekle ilişkilendirilebilir. Bununla birlikte, hatırlayın ki yorumlar tamamen değişiklikleri takip etme işlevinden bağımsızdır.

{{% /alert %}}

## Bir Revizyon Nedir?

İncelemelere dalmadan önce incelemelerin anlamını açıklayalım. Bir [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) bir belgenin bir düğümünde meydana gelen bir değişikliği ifade ederken, revizyon grubu, [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) sınıfı tarafından temsil edilen, bir belgede birçok düğümda meydana gelen ardışık revizyonların bir grubudur. Revizyon, değişiklikleri izlemek için bir araçtır.

Takip değişiklikler özelliğinde ve karşılaştırma belgeleri özelliğinde revizyonlar kullanılır, revizyonlar karşılaştırma sonucunda ortaya çıkar. Dolayısıyla takip değişiklikler özelliğinde revizyonlar kim tarafından değiştirildiğini gösterir ve ne değiştirildiğini gösterir.

{{% alert color="primary" %}}

Şunu unutmayın ki Microsoft Word tekil revizyonları görüntülemeyi sağlamaz; sıralı revizyonları tek bir varlık olarak görmenizi sağlar sadece. Fakat Aspose.Words bu sınırlamayı **RevisionGroup** sınıfı ile çözümlüyor.

{{% /alert %}}

Aspose.Words farklı revizyon türlerini de destekler, Microsoft Word gibi, örneğin, Ekleme, Silme, BiçimDeğiştirme, StilTanımDeğiştirme ve Taşıma. Tüm revizyon türleri, [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) numaralandırmasıyla temsil edilir.

{{% alert color="primary" %}}

Not edin ki revizyonlar bir sonuç Microsoft Word benzerine sahiptir ama Aspose.Words değişiklikleri takip ederken formatlamayı tespit etmez.

{{% /alert %}}

## Takip Değişikliklerini Başlat ve Durdur

Bir belgeyi düzenleme genellikle bir revizyon olarak sayılamaz ta ki onu takip etmeye başlamazsınız. Aspose.Words, belgenizdeki tüm değişiklikleri kolay adımlar izleyerek otomatik olarak takip etmenizi sağlar. Değişiklik takibi sürecini başlatmak için [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) yöntemini kullanabilirsiniz. Değişiklik takibini durdurmak ve gelecekteki düzenlemelerin bir revizyon olarak sayılmasını engellemek istiyorsanız, bunun yerine [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) yöntemini kullanmanız gerekir.

{{% alert color="primary" %}}

Notu alın ki `StartTrackingRevisions` yöntemi [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) özelliğinin durumunu değiştirmez ve revizyon takibi amacına değerini kullanmaz. Buna ek olarak, izlenen belgede bir düğüme bir konumdan başka bir konuma taşındığında, hareketin revizyonları oluşturulur, hareketin kayma aralığı da dahil olmak üzere.

{{% /alert %}}

Bir belge üzerinde değişiklik izleme işleminin sonunda, belgenin orijinal haline dönmesi için tüm revizyonları kabul etme veya reddetme yeteneğiniz olacak. Bunu ya [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) ya da [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) yöntemiyle yapabilirsiniz. Buna ek olarak, [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) ya da [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) yöntemleriyle her bir revizyonu ayrı ayrı kabul edebilir veya reddedebilirsiniz.

Süreci başlattığın anla, durdurana kadar değişikliklerin izlenecek. Farklı yinelemeler arasındaki bağlantı aşağıdaki senaryoya göre temsil edilir: Takip sürecini tamamlarsın sonra bazı değişiklikler yaparsın ve değişiklikleri tekrar izlemeye başlarsın. Bu senaryoda kabul etmediğin veya reddetmediğin tüm değişiklikler tekrar görüntüler.

{{% alert color="primary" %}}

Şu dikkat edin ki, `AcceptAllRevisions` yöntemi Microsoft Word'deki "Tüm Değişiklikleri Kabul Etmek" yöntemine benzer.

{{% /alert %}}

Aşağıdaki kod örneği, değişiklikleri izleme ile nasıl çalıştığını gösterir:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

Aşağıdaki kod örneği, bir belge içinde izlenen bir düğüm hareket ettirildiğinde revizyonların nasıl oluşturulduğunu göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## Değişiklikleri Yönet ve Depolama Revizyonlar Olarak

Önceki izleme değişiklikleri özelliğine sahip olarak, belgenizde hangi değişikliklerin yapıldığını ve kim tarafından yapıldığını anlayabilirsiniz. Bununla birlikte, [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) özelliğine sahip olarak, belgelerinizdeki tüm değişiklikleri revizyonlar olarak kaydetmek için zorlayabilirsiniz.

Aspose.Words sizin bir belgenin bir revizyon olup olmadığını kontrol etmenizi sağlayan [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) özelliğini kullanmanızı sağlar. BaşlangıçTrackRevisions ve StopTrackRevisions yöntemlerini kullanarak belgenizdeki değişiklikleri otomatik olarak takip etmenize gerek yoksa, `TrackRevisions` özelliğini kullanarak düzenlerken bir belgeyi Microsoft Word'te değişikliklerin izlenip izlenmediğini kontrol edebilirsiniz ve revizyonlar olarak kaydedilebilir.

The `TrackRevisions` özelliği gerçek DOM değişiklikleri yerine revizyonlar yapar. Fakat revizyonlar ayrıdır kendileri. Örneğin, herhangi bir paragrafı silerseniz, onu silmek yerine Aspose.Words olarak işaretleyerek revizyona geçirir.

Ayrıca, Aspose.Words bir nesnenin eklendiğini, silindiğini ya da biçimlendirilmesinin değiştiğini kontrol etmek için [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision) ve [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) özelliklerini kullanmanıza izin verir.

{{% alert color="primary" %}}

Notunuzu not edin ki revizyonlar kendileri ve `TrackRevisions` özelliği arasında bir bağlantı yoktur. Ayrıca izleme değişimi özelliğinden bağımsız olarak revizyonları kabul edebilir ya da reddedebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, revizyonlarla birlikte farklı özellikleri nasıl uygulayacağınızı göstermektedir:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
