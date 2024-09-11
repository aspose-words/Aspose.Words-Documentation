---
title: Belgeleri Java'da karşılaştır
second_title: Aspose.Words için Java
articleTitle: Belgeleri Karşılaştır
linktitle: Belgeleri Karşılaştır
type: docs
description: "Herhangi bir desteklenen biçimde iki belgeyi karşılaştırın ve içerik değişikliklerini gösterin. Karşılaştırırken Java kullanarak gelişmiş seçenekleri uygulayabilirsiniz."
weight: 60
url: /tr/java/compare-documents/
---

Belgeleri karşılaştırma işlemi iki belgedeki değişiklikleri belirler ve değişiklikleri revizyonlar olarak içeri aktarır. Bu süreç, her türlü belgeyi karşılaştırır, hatta belirli bir belgelerin farklı sürümlerini de karşılaştırır ve ardından her iki belge arasındaki değişiklikler ilk belge içerisinde revizyonlar olarak gösterilir.

Karşılaştırma yöntemi, karakter seviyesinde veya kelime seviyesinde kelimeleri karşılaştırarak elde edilir. Bir kelimenin içinde en az bir karakter değişikliği varsa, sonuçta, fark bir karakter değişikliği yerine tüm kelime olarak görüntülenir. Bu karşılaştırma süreci yasal ve finansal sektörlerde normal bir görevdir.

Farklı belgeler arasında veya farklı sürümleri arasında el ile aramalar yapmak yerine, Aspose.Words'u belgeleri karşılaştırmak ve biçimlendirme, başlık/ayaklar, tablolar ve daha fazlası için içerik değişikliklerini almak için kullanabilirsiniz.

Bu makale belgeleri nasıl karşılaştıracağınızı ve gelişmiş karşılaştırma özelliklerini nasıl belirteceğinizi açıklar.

{{% alert color="primary" %}}

**Çevrimiçi dene**

İki belgeyi çevrimiçi olarak [Document comparison online](https://products.aspose.app/words/comparison) aracını kullanarak karşılaştırabilirsiniz.

Aşağıdaki karşılaştırma yönteminin nasıl kullanıldığını not edin bu araçta, eşit sonuçlar elde etmek için. Böylece, çevrimiçi karşılaştırma aracını kullanarak veya Aspose.Words içindeki karşılaştırma yöntemini kullanarak bile aynı sonuçları elde edeceksiniz.

{{% /alert %}}

## Sınırlamalar ve Desteklenen Dosya Biçimleri {#limitations-and-supported-file-formats}''

Belgeleri karşılaştırma, çok karmaşık bir özelliktir. Tüm farklılıkları tanımak için içeriğin birleştirilmiş parçalarının analiz edilmesi gerekmektedir. Bu karmaşıklığın nedeni Aspose.Wordsnin Microsoft Word karşılaştırma algoritması ile elde etmek istediği karşılaştırma sonuçlarına ulaşmasıdır.

Karşılaştırılacak iki belge için genel kısıtlama, karşılaştırma yöntemini çağırmadan önce revizyonların olmaması gerektiği ve bu sınırlamanın Microsoft Word'da mevcut olduğu yönündedir.

{{% alert color="primary" %}}

Şu anda bir [supported file formats](/words/java/supported-document-formats/) içindeki herhangi iki belgeyi karşılaştırabileceğinizi unutmayın. Temel olarak, belge nesnelerini karşılaştırabilir ve hatta herhangi belirli bir formatta olmadan bu nesneleri ilk elden oluşturabilirsiniz.

{{% /alert %}}

## İki Belgeyi Karşılaştır" {#compare-two-documents}

Belgeleri karşılaştırırken, daha sonraki belgedeki değişiklikler önceki belgeye karşı revizyonlar olarak görünür. Bir belgeyi değiştirdiğinizde, her düzenleme karşılaştırma yöntemini çalıştırdıktan sonra kendi revizyona sahip olacaktır.

Aspose.Words size belgeleri yöntem [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) ile karşılaştırmanızı sağlar – bu, Microsoft Word belgeleri karşılaştırma özelliğine benzer. Sizi, belgeler veya belge sürümlerini aralarındaki farklar ve değişiklikler bulmak için kontrol etmenize olanak tanır, yazı tipi değişikliği gibi biçimlendirme değişiklikleri, boşluk değişiklikleri, sözcüklerin ve paragrafların eklenmesi de dahil.

Karşılaştırmanın bir sonucu olarak belgeler eşit veya eşit olmayan olarak belirlenebilir. "eşit" belgeler terimi karşılaştırma yönteminin değişiklikleri revizyonlar olarak temsil edemeyeceğini ifade eder. Bu, belge metni ve metin biçimlendirmesi aynı demektir. Ancak belgeler arasında diğer farklılıklar olabilir. Örneğin, Microsoft Word sadece stiller için biçim revizyonlarını destekler ve stil ekleme/silme temsil edilemez. Bu nedenle belgelerin farklı bir stil kümesi olabilir ve **Compare** yöntemi hala hiçbir revizyon üretir.

Aşağıdaki kod örneği iki belgenin eşit olup olmadığını nasıl kontrol edeceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

Aşağıdaki kod örneğinde iki belgeye basitçe `Compare` yöntemini nasıl uygulayacağınız gösterilmiştir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## Gelişmiş Karşılaştırma Seçeneklerini Belirtin {#specify-advanced-comparing-properties}

Dokümanları karşılaştırmak istediğinizde uygulayabileceğiniz birçok farklı [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) sınıfı özelliği vardır.

Örneğin, Aspose.Words orijinal belge içindeki belirli türde nesnelere yapılan karşılaştırma işlemi sırasında yapılan değişiklikleri görmezden gelmenizi sağlar. Nesne türü için uygun özelliği seçebilirsiniz, örneğin [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments) ve diğerleri onları true'e ayarlayarak.

Ayrıca, Aspose.Words 'de karakter veya kelime bazında değişiklikleri takip edip etmeyeceğini belirtebileceğiniz [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) özelliğini sağlar.

Başka ortak bir özellik de karşılaştırma değişikliklerini hangi belgeye göstereceğine dair bir seçimdir. Örneğin, Microsoft Word 'deki "belgeler arasındaki karşılaştırma iletişim kutusu" seçeneğinde "Değişiklikleri Göster" seçeneği vardır; bu da karşılaştırma sonuçlarını etkiler. Aspose.Words bu amacı hizmet eden [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) özelliğini sunar.

Aşağıdaki kod örneği, nasıl gelişmiş karşılaştırma özelliklerini ayarlayacağını göstermektedir:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
