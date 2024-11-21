---
title: Java içinde bir belgeyi salt okunur olarak açın
second_title: Aspose.Words için Java
articleTitle: Yalnızca Okuma Olarak Bir Belge Aç
linktitle: Yalnızca Okuma Olarak Bir Belge Aç
description: "İçeriğin kopyalanmasına veya okunmasına izin vermek ama değiştirilmesine izin vermemek için belgenizi salt okunur hale getirin Java kullanarak."
type: docs
weight: 10
url: /tr/java/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Bazen bir belgeye ihtiyacınız olabilir inceleme için, ancak gözden geçirenlerin içeriğinizi rastgele değiştirmesini istemeyebilirsiniz. Aspose.Words belgenizin izinlerini salt okunur hale getirmenize olanak tanır böylece içeriği kopyalayıp okuyabilir, ancak değiştirilemez. Bu, içeriğinizin belgenizden kaldırılmasını veya eklenmesini önleyecektir.

{{% alert color="primary" %}}

Yalnızca okuma seçeneğini belgene uygulayın, birinin onu başka bir isimle kaydetmek için yeni bir kopyası oluşturmasını önlemez.

{{% /alert %}}

Bu makale bir belgeyi salt okunur nasıl yapılacağını anlatır.

## Bir Belgeyi Yalnızca Okunur Yap

Aspose.Words bir belge için yazma koruması ayarlarını belirten halka açık sınıf '[WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/)'a sahiptir. Bu sınıfı doğrudan örnek oluşturmazsınız.

Yazma koruması, yazarın bir belgeyi salt okunur olarak açmak ve/veya belgeyi değiştirmek için bir parola gerektirmek üzere önerme yapıp yapmadığını gösterir.

Aspose.Words bir belgeyi düzenleme kısıtlamak için [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) özelliğini ve [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) yöntemini kullanarak salt okunur hale getirmenizi sağlar.

{{% alert color="primary" %}}

Microsoft Word'da benzer bir şekilde hem şu yollarla bir Okuyucu Yalnızca belgesi oluşturabilirsiniz:

* "Her Zaman Yalnızca Okunur" (Dosya → Bilgi → Belgeyi Koru)
Kaydetmek için parola " (Save As → Araçlar → Genel Seçenekler → Parola)

{{% /alert %}}

{{% alert color="primary" %}}

Kullanıcılar ayrıca bir belgeyi düzenlemek için [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/)'i seçerek **ReadOnly** olarak da kısıtlayabilir, ancak bu başka bir özelliğidir ve daha gelişmiş koruma yetenekleri sağlar. Bu işlev sırasıyla Microsoft Word'te mevcuttur ve Aspose.Words'de uygulanır.

**ProtectionType** aşağıdaki makalelerde ayrıntılı olarak açıklanacaktır – "Belge Düzenlemeyi Kısıtlama".

{{% /alert %}}

**ReadOnlyRecommended** özelliğinin şifre korumalı olduğundan, **ReadOnlyRecommended** özelliğini uygulamadan önce bir parola ayarlamazsanız, diğer kullanıcıların parolasız belgeyi açması mümkün olacaktır. Belge koruma ayarlarına erişin ve **SetPassword** yöntemi aracılığıyla yazma koruması parolasını ayarlayın.

{{% alert color="primary" %}}

Şifre ayarlanırken bunun bir belge özelliğidir ve eğer belge özellikleri erişildiğinde kaldırılabilir. Buna göre böyle bir şifre belge güvenliği için bir garanti değildir.

{{% /alert %}}

Bir belgeyi düzenlemekten alıkoyan bir yazma koruması parolası olup olmadığını kontrol etmeniz gerekirse, [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) özelliğini kullanabilirsiniz.

Aşağıdaki kod örneği bir belgenin salt okunur olmasını nasıl yapacağınızı göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Salt Okunur Kısıtlamayı Kaldır

Bir kullanıcının belgenizi salt okunur olarak açmasını istemiyorsanız, **ReadOnlyRecommened** özelliğini *false* olarak ayarlayabilir veya **ProtectionType**'i **NoProtection** olarak seçebilirsiniz.

Aşağıdaki kod örneği bir belgeye salt okunur erişim kaldırmak için nasıl gösterilmektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
