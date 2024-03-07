---
title: C#'te Bir Belgedeki Değişiklikleri İzleme
second_title: .NET için Aspose.Words
articleTitle: Belgedeki Değişiklikleri İzleme
linktitle: Belgedeki Değişiklikleri İzleme
description: "Sizin tarafınızdan veya başkaları tarafından C# kullanılarak içerik ve biçimlendirmede yapılan değişiklikleri izleyin. Bir belgedeki revizyonlara tek tek erişin ve bunlara çeşitli özellikler uygulayın."
type: docs
weight: 270
url: /tr/net/track-changes-in-a-document/
---

İnceleme olarak da bilinen değişiklikleri izleme işlevi, sizin veya diğer kullanıcıların içerikte ve biçimlendirmede yaptığı değişiklikleri izlemenize olanak tanır. Aspose.Words'li bu parça değiştirme özelliği, Microsoft Word'deki parça değişikliklerini destekler. Bu işlevsellik sayesinde belgenizdeki revizyonlara tek tek erişebilir ve onlara farklı özellikler uygulayabilirsiniz.

Değişiklikleri izle özelliğini etkinleştirdiğinizde, belgenin eklenen, silinen ve değiştirilen tüm öğeleri, kimin tarafından, ne zaman ve neyin değiştirildiğine ilişkin bilgilerle birlikte görsel olarak vurgulanacaktır. Neyin değiştiğine dair bilgiyi taşıyan nesnelere "değişiklikleri izleme" adı veriliyor. Örneğin, bir belgeyi incelemek ve önemli değişiklikler yapmak istediğinizi varsayalım; bu, düzeltmeler yapmanız gerektiği anlamına gelebilir. Ayrıca bazı değişiklikleri tartışmak için yorum eklemeniz gerekebilir. Belgelerdeki değişiklikleri izlemenin devreye girdiği yer burasıdır.

Bu makalede, aynı belgede birçok gözden geçiren tarafından oluşturulan değişikliklerin nasıl yönetileceği ve izleneceğinin yanı sıra değişiklikleri izlemeye yönelik özellikler açıklanmaktadır.

{{% alert color="primary" %}}

Aspose.Words'teki ve Microsoft Word'deki yorum özelliğinin değişiklikleri izlemeyle ilişkilendirilebileceğini unutmayın. Ancak yorumların değişikliklerin izlenmesinden tamamen bağımsız olduğunu unutmayın.

{{% /alert %}}

## Revizyon Nedir?

Revizyonlara geçmeden önce revizyonların anlamını açıklayalım. [revision](https://reference.aspose.com/words/tr/net/aspose.words/revision/), bir belgenin bir düğümünde meydana gelen bir değişikliktir; [RevisionGroup](https://reference.aspose.com/words/tr/net/aspose.words/revision/group/) sınıfı tarafından temsil edilen bir revizyon grubu ise bir belgenin birçok düğümünde meydana gelen sıralı revizyonların bir grubudur. Temel olarak revizyon, değişiklikleri izlemeye yönelik bir araçtır.

Revizyonlar, değişiklikleri izleme özelliğinde ve karşılaştırma sonucunda revizyonların göründüğü belgeleri karşılaştırma özelliğinde kullanılır. Yani değişiklikleri takip etme özelliğindeki revizyonlar, kimin tarafından ve neyin değiştirildiğini gösterir.

{{% alert color="primary" %}}

Microsoft Word'in bireysel revizyonları görüntülemenize izin vermediğini, yalnızca sıralı revizyonları tek bir varlık olarak görüntülemenize izin verdiğini unutmayın. Ancak Aspose.Words bu sınırlamayı **RevisionGroup** sınıfıyla çözer.

{{% /alert %}}

Aspose.Words, Microsoft Word'de olduğu gibi Ekleme, Silme, FormatChange, StyleDefinitionChange ve Taşıma gibi farklı revizyon türlerini destekler. Tüm revizyon türleri [RevisionType](https://reference.aspose.com/words/tr/net/aspose.words/revisiontype/) numaralandırmasıyla temsil edilir.

{{% alert color="primary" %}}

Revizyonların Microsoft Word'e benzer bir sonuca sahip olduğunu ancak Aspose.Words'nin değişiklikleri izleme sırasında formatlamayı algılamadığını unutmayın.

{{% /alert %}}

## Değişiklikleri İzlemeyi Başlatma ve Durdurma

Bir belgeyi düzenlemek genellikle siz onu izlemeye başlayana kadar revizyon olarak sayılmaz. Aspose.Words, belgenizdeki tüm değişiklikleri basit adımlarla otomatik olarak izlemenize olanak tanır. [StartTrackRevisions](https://reference.aspose.com/words/tr/net/aspose.words/document/starttrackrevisions/#starttrackrevisions/) yöntemini kullanarak değişiklikleri takip etme sürecini kolaylıkla başlatabilirsiniz. Gelecekteki düzenlemelerin revizyon olarak kabul edilmemesi için değişiklikleri izleme sürecini durdurmanız gerekirse, [StopTrackRevisions](https://reference.aspose.com/words/tr/net/aspose.words/document/stoptrackrevisions/) yöntemini kullanmanız gerekecektir.

{{% alert color="primary" %}}

`StartTrackingRevisions` yönteminin [TrackRevisions](https://reference.aspose.com/words/tr/net/aspose.words/document/trackrevisions/) özelliğinin durumunu değiştirmediğini ve değerini revizyon takibi amacıyla kullanmadığını unutmayın. Ayrıca, izlenen belge içinde bir düğüm bir konumdan diğerine taşınmışsa, buradan taşıma ve aralığa taşıma da dahil olmak üzere taşıma revizyonları oluşturulacaktır.

{{% /alert %}}

Belgenizdeki değişiklik takibi sürecinin sonunda, tüm düzeltmeleri kabul etme veya belgeyi orijinal haline döndürmek için reddetme olanağına sahip olacaksınız. Bu, [AcceptAllRevisions](https://reference.aspose.com/words/tr/net/aspose.words/document/acceptallrevisions/) veya [RejectAll](https://reference.aspose.com/words/tr/net/aspose.words/revisioncollection/rejectall/) yöntemi kullanılarak gerçekleştirilebilir. Ayrıca [Accept](https://reference.aspose.com/words/tr/net/aspose.words/revision/accept/) veya [Reject](https://reference.aspose.com/words/tr/net/aspose.words/revision/reject/) yöntemini kullanarak her revizyonu ayrı ayrı kabul edebilir veya reddedebilirsiniz.

Süreci başlattığınız andan durdurduğunuz ana kadar tüm değişiklikler bir yineleme boyunca izlenecektir. Farklı yinelemeler arasındaki bağlantı şu senaryoyla temsil edilir: izleme işlemini tamamlarsınız, ardından bazı değişiklikler yaparsınız ve değişiklikleri izlemeye yeniden başlarsınız. Bu senaryoda kabul etmediğiniz veya reddetmediğiniz tüm değişiklikler yeniden görüntülenecektir.

{{% alert color="primary" %}}

`AcceptAllRevisions` yönteminin Microsoft Word'deki "Tüm Değişiklikleri Kabul Et" yöntemine benzer olduğunu unutmayın.

{{% /alert %}}

Aşağıdaki kod örneği, değişiklikleri izlemeyle nasıl çalışılacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-AcceptAllRevisions.cs" >}}

Aşağıdaki kod örneği, izlenen bir belgede bir düğüm taşındığında düzeltmelerin nasıl oluşturulduğunu gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-MoveNodeInTrackedDocument.cs" >}}

## Değişiklikleri Revizyon Olarak Yönetin ve Saklayın

Önceki değişiklikleri takip etme özelliği ile belgenizde hangi değişikliklerin yapıldığını ve bu değişiklikleri kimin yaptığını anlayabilirsiniz. [TrackRevisions](https://reference.aspose.com/words/tr/net/aspose.words/document/trackrevisions/) özelliği ile belgenizdeki herhangi bir değişikliğin revizyon olarak saklanmasını zorlarsınız.

Aspose.Words, [HasRevision](https://reference.aspose.com/words/tr/net/aspose.words/document/hasrevisions/) özelliğini kullanarak bir belgenin revizyonunun olup olmadığını kontrol etmenizi sağlar. Belgenizdeki değişiklikleri StartTrackRevisions ve StopTrackRevisions yöntemleri aracılığıyla otomatik olarak izlemeniz gerekmiyorsa, Microsoft Word'de bir belge düzenlenirken değişikliklerin izlenip izlenmediğini ve revizyon olarak saklanıp saklanmadığını kontrol etmek için `TrackRevisions` özelliğini kullanabilirsiniz.

`TrackRevisions` özelliği gerçek DOM değişiklikleri yerine revizyonlar yapar. Ancak revizyonların kendisi ayrıdır. Örneğin, herhangi bir paragrafı silerseniz, Aspose.Words bunu silmek yerine, silme olarak işaretleyerek onu revizyon olarak yapar.

Ayrıca Aspose.Words, [IsDeleteRevision](https://reference.aspose.com/words/tr/net/aspose.words/inline/isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/tr/net/aspose.words/inline/isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/tr/net/aspose.words/inline/isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/tr/net/aspose.words/inline/ismovefromrevision/) ve [IsMoveToRevision](https://reference.aspose.com/words/tr/net/aspose.words/inline/ismovetorevision/) özelliklerini kullanarak bir nesnenin eklenip eklenmediğini, silinip silinmediğini veya biçimlendirmesinin değiştirilip değiştirilmediğini kontrol etmenize olanak tanır.

{{% alert color="primary" %}}

Düzeltmelerin kendisi ile `TrackRevisions` özelliği arasında hiçbir bağlantı olmadığını unutmayın. Ayrıca değişiklikleri takip etme özelliğinden bağımsız olarak revizyonları kabul/red edebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, farklı özelliklerin düzeltmelerle nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShapeRevision.cs" >}}
