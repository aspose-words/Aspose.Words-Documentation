---
title: C++ içindeki Belgeleri Karşılaştır
second_title: Aspose.Words için C++
articleTitle: Belgeleri Karşılaştır
linktitle: Belgeleri Karşılaştır
type: docs
description: "Desteklenen formatlardaki iki belgeyi karşılaştırın ve C++ kullanarak içerik değişikliklerini gösterir. Karşılaştırma yaparken gelişmiş seçenekler uygulayabilirsiniz."
weight: 60
url: /tr/cpp/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Belgeleri karşılaştırmak, iki belge arasındaki değişiklikleri tanımlayan ve değişiklikleri düzeltme olarak içeren bir işlemdir. Bu işlem, belirli bir belgenin sürümleri de dahil olmak üzere iki belgeyi karşılaştırır, ardından her iki belge arasındaki değişiklikler ilk belgede revizyon olarak gösterilir.

Karşılaştırma yöntemi, kelimeleri karakter düzeyinde veya kelime düzeyinde karşılaştırarak elde edilir. Bir kelime en az bir karakterlik bir değişiklik içeriyorsa, sonuç olarak fark, bir karakter değil, tüm kelimenin bir değişikliği olarak görüntülenir. Bu karşılaştırma süreci, hukuk ve finans endüstrilerinde olağan bir görevdir.

Belgeler arasındaki veya bunların farklı sürümleri arasındaki farkları manuel olarak aramak yerine, belgeleri karşılaştırmak ve biçimlendirme, üstbilgi / altbilgi, tablolar ve daha fazlasında içerik değişiklikleri almak için Aspose.Words 'ı kullanabilirsiniz.

Bu makalede, belgelerin nasıl karşılaştırılacağı ve gelişmiş karşılaştırma özelliklerinin nasıl belirtileceği açıklanmaktadır.

{{% alert color="primary" %}}

**Çevrimiçi deneyin**

Kullanarak iki belgeyi çevrimiçi olarak karşılaştırabilirsiniz [Çevrimiçi belge karşılaştırması](https://products.aspose.app/words/comparison) alet.

Aşağıda açıklanan karşılaştırma yönteminin, eşit sonuçların alınmasını sağlamak için bu araçta kullanıldığını unutmayın. Böylece, çevrimiçi karşılaştırma aracını kullanarak veya Aspose.Words içindeki karşılaştırma yöntemini kullanarak bile aynı sonuçları elde edersiniz.

{{% /alert %}}

## Sınırlamalar ve Desteklenen Dosya Biçimleri {#limitations-and-supported-file-formats}

Belgeleri karşılaştırmak çok karmaşık bir özelliktir. Tüm farklılıkları tanımak için analiz edilmesi gereken içerik kombinasyonunun çeşitli bölümleri vardır. Bu karmaşıklığın nedeni, Aspose.Words 'in Microsoft Word karşılaştırma algoritması ile aynı karşılaştırma sonuçlarını elde etmeyi amaçlamasından kaynaklanmaktadır.

Karşılaştırılan iki belge için genel sınırlama, Microsoft Word 'da bu sınırlama bulunduğundan, karşılaştırma yöntemini çağırmadan önce revizyonları olmaması gerektiğidir.

{{% alert color="primary" %}}

İçindeki herhangi iki belgeyi karşılaştırabileceğinizi unutmayın. [desteklenen dosya biçimleri](/words/cpp/supported-document-formats/). Belge nesnelerini karşılaştırabilir ve hatta belirli bir biçime sahip olmadan bu nesneleri sıfırdan oluşturabilirsiniz.

{{% /alert %}}

## İki Belgeyi Karşılaştır {#compare-two-documents}

Belgeleri karşılaştırdığınızda, ikinci belgenin öncekinden farkları, öncekine yapılan düzeltmeler olarak görünür. Bir belgeyi değiştirdiğinizde, karşılaştırma yöntemini çalıştırdıktan sonra her düzenlemenin kendi revizyonu olacaktır.

Aspose.Words, [Compare](https://reference.aspose.com/words/cpp/aspose.words/document/compare/) yöntemini kullanarak belge farklılıklarını tanımlamanıza olanak tanır - bu, Microsoft Word belge karşılaştırma özelliğine benzer. Yazı tipi değişiklikleri, aralık değişiklikleri, sözcük ve paragraf ekleme gibi biçimlendirme değişiklikleri de dahil olmak üzere farklılıkları ve değişiklikleri bulmak için belgeleri veya belge sürümlerini kontrol etmenizi sağlar.

Karşılaştırma sonucunda belgeler eşit veya eşit değil olarak belirlenebilir. "Eşit" belgeler terimi, karşılaştırma yönteminin değişiklikleri revizyon olarak gösteremediği anlamına gelir. Bu, hem belge metninin hem de metin biçimlendirmesinin aynı olduğu anlamına gelir. Ancak belgeler arasında başka farklılıklar da olabilir. Örneğin, Microsoft Word yalnızca stiller için biçim revizyonlarını destekler ve stil ekleme/silme işlemini temsil edemezsiniz. Bu nedenle, belgeler farklı bir stil kümesine sahip olabilir ve **Compare** yöntemi hala herhangi bir düzeltme üretmez.

Aşağıdaki kod örneği, iki belgenin eşit olup olmadığının nasıl kontrol edileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

Aşağıdaki kod örneği, `Compare` yönteminin iki belgeye nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareWhenDocumentHasRevisions.cpp" >}}

## Gelişmiş Karşılaştırma Seçeneklerini Belirtin {#specify-advanced-comparing-properties}

Belgeleri karşılaştırmak istediğinizde uygulayabileceğiniz [CompareOptions](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/) sınıfının birçok farklı özelliği vardır.

Örneğin, Aspose.Words, orijinal belgedeki belirli nesne türleri için bir karşılaştırma işlemi sırasında yapılan değişiklikleri yok saymanıza olanak tanır. Nesne türü için uygun özelliği seçebilirsiniz, örneğin [IgnoreHeadersAndFooters](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignorecomments/), ve diğerleri onları "doğru" olarak ayarlayarak.

Ayrıca Aspose.Words, değişiklikleri karaktere veya kelimeye göre izleyip izlemeyeceğinizi belirleyebileceğiniz [Granularity](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_granularity/) özelliğini sağlar.

Diğer bir ortak özellik, karşılaştırma değişikliklerinin hangi belgede gösterileceği seçimidir. Örneğin, Microsoft Word 'deki "Belgeleri karşılaştır iletişim kutusunda" "Değişiklikleri göster" seçeneği bulunur – bu, karşılaştırma sonuçlarını da etkiler. Aspose.Words bu amaca hizmet eden [Target](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_target/) özelliğini sağlar.

Aşağıdaki kod örneği, gelişmiş karşılaştırma özelliklerinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}
