---
title: Bir Belgedeki Değişiklikleri C++ içinde İzleme
second_title: Aspose.Words için C++
articleTitle: Belgedeki Değişiklikleri İzleme
linktitle: Belgedeki Değişiklikleri İzleme
description: "Siz veya başkaları tarafından C++ kullanılarak yapılan içerik ve biçimlendirmedeki değişiklikleri izleyin. Bir belgedeki tek tek revizyonlara erişin ve bunlara çeşitli özellikler uygulayın."
type: docs
weight: 270
url: /tr/cpp/track-changes-in-a-document/
timestamp: 2024-01-30-16-22-34
---

Değişiklikleri izle işlevi, gözden geçirme olarak da bilinir, sizin veya diğer kullanıcılar tarafından yapılan içerik ve biçimlendirmedeki değişiklikleri izlemenize olanak tanır. Aspose.Words ile yapılan bu değişiklik izleme özelliği, Microsoft Word içindeki değişiklikleri izlemeyi destekler. Bu işlevle, belgenizdeki tek tek revizyonlara erişebilir ve bunlara farklı özellikler uygulayabilirsiniz.

Değişiklikleri izle özelliğini etkinleştirdiğinizde, belgenin eklenen, silinen ve değiştirilen tüm öğeleri, kimin, ne zaman ve neyin değiştirildiğine ilişkin bilgilerle görsel olarak vurgulanır. Değiştirilenlerle ilgili bilgileri taşıyan nesnelere "değişiklikleri izleme" denir. Örneğin, bir belgeyi gözden geçirmek ve önemli değişiklikler yapmak istediğinizi varsayalım - bu, revizyonlar yapmanız gerektiği anlamına gelebilir. Ayrıca, bazı değişiklikleri tartışmak için yorum eklemeniz gerekebilir. Belgelerdeki değişiklikleri izlemenin devreye girdiği yer burasıdır.

Bu makalede, aynı belgede birçok gözden geçiren tarafından oluşturulan değişikliklerin yanı sıra değişiklikleri izleme özelliklerinin nasıl yönetileceği ve izleneceği açıklanmaktadır.

{{% alert color="primary" %}}

Aspose.Words'deki ve Microsoft Word'daki açıklama özelliğinin değişiklikleri izlemeyle ilişkilendirilebileceğini unutmayın. Ancak, yorumların değişiklikleri izlemekten tamamen bağımsız olduğunu unutmayın.

{{% /alert %}}

## Revizyon Nedir

Revizyonlara dalmadan önce revizyonların anlamını açıklayalım. [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/), bir belgenin bir düğümünde meydana gelen bir değişiklikken, [RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/) sınıfı tarafından temsil edilen bir revizyon grubu, bir belgenin birçok düğümünde meydana gelen sıralı revizyonlar grubudur. Temel olarak, revizyon değişiklikleri izlemek için bir araçtır.

Düzeltmeler, değişiklikleri izleme özelliğinde ve karşılaştırmanın sonucu olarak düzeltmelerin göründüğü belgeleri karşılaştır özelliğinde kullanılır. Bu nedenle, değişiklikleri izleme özelliğindeki revizyonlar kimin ve neyin değiştirildiğini gösterir.

{{% alert color="primary" %}}

Microsoft Word 'in tek tek revizyonları görüntülemenize izin vermediğini, yalnızca sıralı revizyonları tek bir varlık olarak görüntülemenize izin verdiğini unutmayın. Ancak Aspose.Words bu sınırlamayı **RevisionGroup** sınıfı ile çözer.

{{% /alert %}}

Aspose.Words ekleme, Silme, FormatChange, StyleDefinitionChange ve Taşıma gibi Microsoft Word 'de olduğu gibi farklı revizyon türlerini destekler. Tüm revizyon türleri [RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/) numaralandırmasıyla temsil edilir.

{{% alert color="primary" %}}

Düzeltmelerin Microsoft Word 'a benzer bir sonucu olduğunu, ancak Aspose.Words değişikliklerin izlenmesi sırasında biçimlendirmeyi algılamadığını unutmayın.

{{% /alert %}}

## Değişiklikleri İzlemeyi Başlat ve Durdur

Bir belgeyi düzenlemeye, siz onu izlemeye başlayana kadar genellikle revizyon sayılmaz. Aspose.Words belgenizdeki tüm değişiklikleri basit adımlarla otomatik olarak izlemenizi sağlar. [StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/) yöntemini kullanarak değişiklikleri izleme işlemini kolayca başlatabilirsiniz. Gelecekteki düzenlemelerin revizyon olarak kabul edilmemesi için değişiklikleri izleme işlemini durdurmanız gerekiyorsa, [StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/) yöntemini kullanmanız gerekir.

{{% alert color="primary" %}}

`StartTrackingRevisions` yönteminin [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/) özelliğinin durumunu değiştirmediğini ve değerini düzeltme takibi amacıyla kullanmadığını unutmayın. Ayrıca, izlenen belgenin içinde bir düğüm bir konumdan diğerine taşınmışsa, aralıktan taşı ve aralığa taşı dahil olmak üzere taşıma revizyonları oluşturulur.

{{% /alert %}}

Belgenizdeki değişiklikleri izleme işleminin sonunda, belgeyi orijinal formuna döndürmek için tüm revizyonları kabul etme veya reddetme olanağına sahip olacaksınız. Bu, [AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/) veya [RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/) yöntemi kullanılarak sağlanabilir. Ayrıca, [Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/) veya [Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/) yöntemini kullanarak her revizyonu ayrı ayrı kabul edebilir veya reddedebilirsiniz.

Tüm değişiklikler, işlemi başlattığınız andan durdurduğunuz ana kadar tek bir yineleme için izlenecektir. Farklı yinelemeler arasındaki bağlantı şu senaryo olarak gösterilir: izleme işlemini tamamlar, ardından bazı değişiklikler yapar ve değişiklikleri yeniden izlemeye başlarsınız. Bu senaryoda, kabul etmediğiniz veya reddetmediğiniz tüm değişiklikler yeniden görüntülenir.

{{% alert color="primary" %}}

`AcceptAllRevisions` yönteminin Microsoft Word 'deki "Tüm Değişiklikleri Kabul Et" e benzer olduğunu unutmayın.

{{% /alert %}}

Aşağıdaki kod örneği, izleme değişiklikleriyle nasıl çalışılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

Aşağıdaki kod örneği, izlenen bir belge içinde bir düğüm taşındığında revizyonların nasıl oluşturulduğunu gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## Değişiklikleri Revizyon Olarak Yönetin ve Saklayın

Önceki değişiklikleri izleme özelliğiyle belgenizde hangi değişikliklerin yapıldığını ve bu değişiklikleri kimin yaptığını anlayabilirsiniz. [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/) özelliğiyle, belgenizdeki değişiklikleri düzeltme olarak depolamaya zorlarsınız.

Aspose.Words bir belgenin revizyonu olup olmadığını [HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/) özelliğini kullanarak kontrol etmenizi sağlar. Belgenizdeki değişiklikleri StartTrackRevisions ve StopTrackRevisions yöntemleri aracılığıyla otomatik olarak izlemeniz gerekmiyorsa, Microsoft Word'deki bir belgeyi düzenlerken değişikliklerin izlenip izlenmediğini ve revizyon olarak saklanıp saklanmadığını kontrol etmek için `TrackRevisions` özelliğini kullanabilirsiniz.

`TrackRevisions` özelliği, gerçek DOM değişiklikler yerine revizyonlar yapar. Ancak revizyonların kendileri ayrıdır. Örneğin, herhangi bir paragrafı silerseniz, Aspose.Words paragrafı silmek yerine onu silme olarak işaretleyerek revizyon olarak yapın.

Buna ek olarak, Aspose.Words, bir nesnenin eklenip eklenmediğini, silinip silinmediğini veya biçimlendirmenin değiştirilip değiştirilmediğini kontrol etmenizi sağlar. [IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), ve [IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/) özellikleri.

{{% alert color="primary" %}}

Düzeltmelerin kendileri ile `TrackRevisions` özelliği arasında bağlantı olmadığını unutmayın. Ayrıca değişiklikleri izleme özelliğinden bağımsız olarak revizyonları kabul edebilir / reddedebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, revizyonlarla farklı özelliklerin nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
