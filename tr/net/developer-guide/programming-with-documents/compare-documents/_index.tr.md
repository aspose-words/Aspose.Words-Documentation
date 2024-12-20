---
title: C#'teki Belgeleri Karşılaştırın
second_title: .NET için Aspose.Words
articleTitle: Belgeleri Karşılaştır
linktitle: Belgeleri Karşılaştır
description: "Desteklenen herhangi bir formattaki iki belgeyi karşılaştırın ve C# kullanarak içerik değişikliklerini gösterin. Karşılaştırma yaparken gelişmiş seçenekleri uygulayabilirsiniz."
type: docs
weight: 60
url: /tr/net/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Dokümanların karşılaştırılması, iki doküman arasındaki değişiklikleri tespit eden ve değişiklikleri revizyon olarak içeren bir işlemdir. Bu işlem, belirli bir belgenin sürümleri de dahil olmak üzere herhangi iki belgeyi karşılaştırır ve ardından her iki belge arasındaki değişiklikler, ilk belgede revizyonlar olarak gösterilir.

Karşılaştırma yöntemi, kelimelerin karakter düzeyinde veya kelime düzeyinde karşılaştırılmasıyla elde edilir. Bir kelimede en az bir karakter değişikliği varsa, sonuçta fark bir karakterde değil, kelimenin tamamında değişiklik olarak görüntülenecektir. Bu karşılaştırma süreci hukuk ve finans sektörlerinde olağan bir görevdir.

Belgeler arasındaki veya farklı sürümleri arasındaki farkları manuel olarak aramak yerine, belgeleri karşılaştırmak ve biçimlendirme, üstbilgi/altbilgi, tablolar ve daha fazlasında içerik değişiklikleri almak için Aspose.Words'i kullanabilirsiniz.

Bu makalede belgelerin nasıl karşılaştırılacağı ve gelişmiş karşılaştırma özelliklerinin nasıl belirleneceği açıklanmaktadır.

{{% alert color="primary" %}}

**Çevrimiçi deneyin**

[Çevrimiçi belge karşılaştırması](https://products.aspose.app/words/comparison) aracını kullanarak iki belgeyi çevrimiçi olarak karşılaştırabilirsiniz.

Aşağıda açıklanan karşılaştırma yönteminin bu araçta eşit sonuçların alınmasını sağlamak için kullanıldığını unutmayın. Böylece çevrimiçi karşılaştırma aracını veya Aspose.Words'teki karşılaştırma yöntemini kullanarak bile aynı sonuçları elde edersiniz.

{{% /alert %}}

## Sınırlamalar ve Desteklenen Dosya Formatları {#limitations-and-supported-file-formats}

Belgeleri karşılaştırmak çok karmaşık bir özelliktir. Tüm farklılıkları tanımak için analiz edilmesi gereken içerik kombinasyonunun çeşitli parçaları vardır. Bu karmaşıklığın nedeni Aspose.Words'in Microsoft Word karşılaştırma algoritmasıyla aynı karşılaştırma sonuçlarını almayı hedeflemesinden kaynaklanmaktadır.

Karşılaştırılan iki belgenin genel sınırlaması, bu sınırlama Microsoft Word'te mevcut olduğundan, karşılaştırma yöntemini çağırmadan önce düzeltmelerin yapılmaması gerektiğidir.

{{% alert color="primary" %}}

[Desteklenen Belge Formatları](/words/tr/net/supported-document-formats/) içindeki herhangi iki belgeyi karşılaştırabileceğinizi unutmayın. Temel olarak, belge nesnelerini karşılaştırabilir ve hatta bu nesneleri belirli bir formata sahip olmadan sıfırdan oluşturabilirsiniz.

{{% /alert %}}

## İki Belgeyi Karşılaştırın {#compare-two-documents}

Belgeleri karşılaştırdığınızda, ikinci belgenin öncekinden farklılıkları, önceki belgenin revizyonları olarak ortaya çıkıyor. Bir belgede değişiklik yaptığınızda, karşılaştırma yöntemini çalıştırdıktan sonra her düzenlemenin kendi revizyonu olacaktır.

Aspose.Words, [Compare](https://reference.aspose.com/words/tr/net/aspose.words/document/compare/#compare/) yöntemini kullanarak belge farklılıklarını belirlemenize olanak tanır; bu, Microsoft Word belge karşılaştırma özelliğine benzer. Yazı tipi değişiklikleri, aralık değişiklikleri, sözcük ve paragraf eklenmesi gibi biçimlendirme değişiklikleri de dahil olmak üzere farklılıkları ve değişiklikleri bulmak için belgeleri veya belge sürümlerini kontrol etmenize olanak tanır.

Karşılaştırma sonucunda belgelerin eşit olup olmadığı belirlenebilir. "Eşit" belgeler terimi, karşılaştırma yönteminin değişiklikleri revizyon olarak temsil edemediği anlamına gelir. Bu, hem belge metninin hem de metin formatının aynı olduğu anlamına gelir. Ancak belgeler arasında başka farklılıklar da olabilir. Örneğin, Microsoft Word yalnızca stiller için format revizyonlarını destekler ve stil ekleme/silme işlemlerini temsil edemezsiniz. Dolayısıyla belgeler farklı stillere sahip olabilir ve **Compare** yöntemi yine de herhangi bir düzeltme üretmez.

Aşağıdaki kod örneği, iki belgenin eşit olup olmadığının nasıl kontrol edileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

Aşağıdaki kod örneği, `Compare` yönteminin iki belgeye nasıl kolayca uygulanacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-ApplyCompareTwoDocuments.cs" >}}

## Gelişmiş Karşılaştırma Seçeneklerini Belirtin {#specify-advanced-comparing-properties}

Belgeleri karşılaştırmak istediğinizde uygulayabileceğiniz [CompareOptions](https://reference.aspose.com/words/tr/net/aspose.words.comparing/compareoptions/) sınıfının birçok farklı özelliği vardır.

Örneğin Aspose.Words, orijinal belgedeki belirli nesne türleri için karşılaştırma işlemi sırasında yapılan değişiklikleri göz ardı etmenize olanak tanır. [IgnoreHeadersAndFooters](https://reference.aspose.com/words/tr/net/aspose.words.comparing/compareoptions/ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/tr/net/aspose.words.comparing/compareoptions/ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/tr/net/aspose.words.comparing/compareoptions/ignorecomments/) ve diğerleri gibi nesne türü için uygun özelliği "true" olarak ayarlayarak seçebilirsiniz.

Ayrıca Aspose.Words, değişiklikleri karaktere göre mi yoksa kelimeye göre mi izleyeceğinizi belirleyebileceğiniz [Granularity](https://reference.aspose.com/words/tr/net/aspose.words.comparing/compareoptions/granularity/) özelliğini sağlar.

Diğer bir ortak özellik, karşılaştırma değişikliklerinin hangi belgede gösterileceğinin seçimidir. Örneğin, Microsoft Word'teki "Belgeleri karşılaştır iletişim kutusunda" "Değişiklikleri göster" seçeneği bulunur; bu aynı zamanda karşılaştırma sonuçlarını da etkiler. Aspose.Words bu amaca hizmet eden [Target](https://reference.aspose.com/words/tr/net/aspose.words.comparing/compareoptions/target/) özelliğini sağlar.

Aşağıdaki kod örneği, gelişmiş karşılaştırma özelliklerinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-SetAdvancedComparingProperties.cs" >}}
