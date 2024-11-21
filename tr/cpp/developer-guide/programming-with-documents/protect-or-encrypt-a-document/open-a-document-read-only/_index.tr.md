---
title: C++ içinde Salt Okunur Bir Belge Açma
second_title: Aspose.Words için C++
articleTitle: Salt Okunur Belge Açma
linktitle: Salt Okunur Belge Açma
description: "Belgenizi salt okunur hale getirin, böylece içerik kopyalanabilir veya okunabilir, ancak değiştirilemez."
type: docs
weight: 10
url: /tr/cpp/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Bazen gözden geçirilmesi gereken bir belgeniz olabilir, ancak gözden geçirenlerin içeriğinizi rastgele değiştirmesini istemezsiniz. Aspose.Words içeriğin kopyalanabilmesi veya okunabilmesi, ancak değiştirilememesi için belgenizin iznini salt okunur hale getirmenize olanak tanır. Bu, içeriğin kaldırılmasını veya belgenize eklenmesini engeller.

{{% alert color="primary" %}}

Salt okunur seçeneğinin belgenize uygulanması, birinin belgenin yeni bir kopyasını oluşturmasını ve başka bir adla kaydetmesini engellemez.

{{% /alert %}}

Bu makalede, bir belgenin salt okunur hale getirilmesi açıklanmaktadır.

## Belgeyi Salt Okunur Yapma

Aspose.Words, bir belge için yazma koruması ayarlarını belirten genel [WriteProtection](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/) sınıfına sahiptir. Bu sınıfın örneklerini doğrudan oluşturmazsınız.

Yazma koruması, yazarın bir belgeyi salt okunur olarak açmayı önerip önermediğini ve / veya belgeyi değiştirmek için parola gerektirip gerektirmediğini gösterir.

Aspose.Words, [ReadOnlyRecommended](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_readonlyrecommended/) özelliğini ve [SetPassword](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/setpassword/) yöntemini kullanarak düzenlemeyi kısıtlamak için belgeyi salt okunur hale getirmenize olanak tanır.

{{% alert color="primary" %}}

Microsoft Word 'da, her ikisini de kullanarak benzer şekilde Salt Okunur bir belge oluşturabilirsiniz:

* "Her Zaman Salt Okunur Aç" (Dosya → Bilgi → Belgeyi Koru)
* "Değiştirilecek parola" (Farklı Kaydet → Araçlar → Genel Seçenekler → Parola)

{{% /alert %}}

{{% alert color="primary" %}}

Kullanıcılar ayrıca [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) öğesini **ReadOnly** olarak seçerek belge düzenlemeyi kısıtlayabilir, ancak bu daha gelişmiş koruma yetenekleri sağlayan başka bir özelliktir. Sırasıyla Microsoft Word 'de böyle bir işlev vardır, Aspose.Words 'te uygulanır.

**ProtectionType**

{{% /alert %}}

**ReadOnlyRecommended** özelliği parola korumalıdır, bu nedenle **ReadOnlyRecommended** özelliğini uygulamadan önce bir parola belirlemezseniz, diğer kullanıcılar belgeyi korumasızmış gibi açabilir. Belge koruma ayarlarına erişir ve **SetPassword** yöntemiyle bir yazma koruması şifresi belirlersiniz.

{{% alert color="primary" %}}

Ayarlanmakta olan parolanın, belge özelliklerine erişildiğinde kaldırılabilen bir belgede yalnızca bir özellik olduğunu unutmayın. Buna göre, böyle bir şifre belge güvenliğinin garantisi değildir.

{{% /alert %}}

Bir belgenin düzenlenmesini kısıtlayan bir yazma koruması parolası olup olmadığını denetlemeniz gerekirse, [IsWriteProtected](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_iswriteprotected/) özelliğini kullanabilirsiniz.

Aşağıdaki kod örneği, bir belgenin salt okunur hale nasıl getirileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.h" >}}

## Salt Okunur Kısıtlamayı Kaldır

Bir kullanıcının belgenizi salt okunur olarak açmasını istemiyorsanız, **ReadOnlyRecommened** özelliğini *false* olarak ayarlayabilir veya **ProtectionType** öğesini **NoProtection** olarak seçebilirsiniz.

Aşağıdaki kod örneği, bir belge için salt okunur erişimin nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.h" >}}
