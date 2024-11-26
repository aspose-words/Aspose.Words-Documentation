---
title: C#'te Salt Okunur Bir Belge Açma
second_title: .NET için Aspose.Words
articleTitle: Salt Okunur Bir Belgeyi Açma
linktitle: Salt Okunur Bir Belgeyi Açma
description: "İçeriğin kopyalanabilmesi veya okunabilmesi, ancak C# kullanılarak değiştirilememesi için belgenizi salt okunur yapın."
type: docs
weight: 10
url: /tr/net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Bazen, incelenmesi gereken bir belgeniz olabilir ancak inceleyenlerin içeriğinizi rastgele değiştirmesini istemezsiniz. Aspose.Words, içeriğin kopyalanabilmesi veya okunabilmesi ancak değiştirilmemesi için belgenizin iznini salt okunur yapmanıza olanak tanır. Bu, içeriğin kaldırılmasını veya belgenize eklenmesini önleyecektir.

{{% alert color="primary" %}}

Belgenize salt okunur seçeneğinin uygulanması, birisinin belgenin yeni bir kopyasını oluşturmasını ve onu başka bir adla kaydetmesini engellemez.

{{% /alert %}}

Bu makalede bir belgenin nasıl salt okunur hale getirileceği açıklanmaktadır.

## Belgeyi Salt Okunur Hale Getirme

Aspose.Words, bir belgenin yazma koruması ayarlarını belirten genel [WriteProtection](https://reference.aspose.com/words/tr/net/aspose.words.settings/writeprotection/) sınıfına sahiptir. Bu sınıfın örneklerini doğrudan oluşturmazsınız.

Yazma koruması, yazarın bir belgeyi salt okunur olarak açmayı ve/veya belgeyi değiştirmek için parola gerektirmeyi önerip önermediğini gösterir.

Aspose.Words, [ReadOnlyRecommended](https://reference.aspose.com/words/tr/net/aspose.words.settings/writeprotection/readonlyrecommended/) özelliğini ve [SetPassword](https://reference.aspose.com/words/tr/net/aspose.words.settings/writeprotection/setpassword/) yöntemini kullanarak düzenlemeyi kısıtlamak için bir belgeyi salt okunur hale getirmenize olanak tanır.

{{% alert color="primary" %}}

Microsoft Word'te, her ikisini de kullanarak benzer şekilde Salt Okunur bir belge oluşturabilirsiniz:

* "Her Zaman Salt Okunur Aç" (Dosya → Bilgi → Belgeyi Koru)
* "Değiştirilecek şifre" (Farklı Kaydet → Araçlar → Genel Seçenekler → Şifre)

{{% /alert %}}

{{% alert color="primary" %}}

Kullanıcılar [ProtectionType](https://reference.aspose.com/words/tr/net/aspose.words/protectiontype/)'i **ReadOnly** olarak seçerek belge düzenlemeyi de kısıtlayabilirler ancak bu, daha gelişmiş koruma özellikleri sağlayan başka bir özelliktir. Microsoft Word'de sırasıyla böyle bir işlev var, Aspose.Words'de uygulanıyor.

**ProtectionType**, aşağıdaki makalelerden birinde ayrıntılı olarak açıklanacaktır: "Belge Düzenlemeyi Kısıtla".

{{% /alert %}}

**ReadOnlyRecommended** özelliği parola korumalıdır; dolayısıyla, **ReadOnlyRecommended** özelliğini uygulamadan önce parola ayarlamazsanız diğer kullanıcılar belgeyi korumasızmış gibi açabilir. Belge koruma ayarlarına erişirsiniz ve **SetPassword** yöntemini kullanarak bir yazma koruması şifresi belirlersiniz.

{{% alert color="primary" %}}

Ayarlanmakta olan parolanın yalnızca belgedeki bir özellik olduğunu ve belge özelliklerine erişildiğinde kaldırılabileceğini unutmayın. Dolayısıyla böyle bir şifre belge güvenliğinin garantisi değildir.

{{% /alert %}}

Bir belgenin düzenlenmesini kısıtlayan bir yazma koruması parolası olup olmadığını kontrol etmeniz gerekiyorsa [IsWriteProtected](https://reference.aspose.com/words/tr/net/aspose.words.settings/writeprotection/iswriteprotected/) özelliğini kullanabilirsiniz.

Aşağıdaki kod örneği, bir belgenin nasıl salt okunur hale getirileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## Salt Okunur Kısıtlamasını Kaldır

Bir kullanıcının belgenizi salt okunur olarak açmasını istemiyorsanız **ReadOnlyRecommened** özelliğini *false* olarak ayarlayabilir veya **ProtectionType**'i **NoProtection** olarak seçebilirsiniz.

Aşağıdaki kod örneği, bir belgenin salt okunur erişiminin nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
