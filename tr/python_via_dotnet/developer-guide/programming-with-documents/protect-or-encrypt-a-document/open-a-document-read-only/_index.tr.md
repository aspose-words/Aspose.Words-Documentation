---
title: Python'te Salt Okunur Bir Belge Açma
second_title: Python via .NET için Aspose.Words
articleTitle: Salt Okunur Bir Belgeyi Açma
linktitle: Salt Okunur Bir Belgeyi Açma
description: "İçeriğin kopyalanabilmesi veya okunabilmesi, ancak Python kullanılarak değiştirilememesi için belgenizi salt okunur yapın."
type: docs
weight: 10
url: /tr/python-net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Bazen incelenmesi gereken bir belgeniz olabilir ancak inceleyenlerin içeriğinizi rastgele değiştirmesini istemezsiniz. Aspose.Words, içeriğin kopyalanabilmesi veya okunabilmesi ancak değiştirilmemesi için belgenizin iznini salt okunur yapmanıza olanak tanır. Bu, içeriğin kaldırılmasını veya belgenize eklenmesini önleyecektir.

{{% alert color="primary" %}}

Belgenize salt okunur seçeneğinin uygulanması, birisinin belgenin yeni bir kopyasını oluşturmasını ve onu başka bir adla kaydetmesini engellemez.

{{% /alert %}}

Bu makalede bir belgenin nasıl salt okunur hale getirileceği açıklanmaktadır.

## Belgeyi Salt Okunur Hale Getirme

Aspose.Words, bir belgenin yazma koruması ayarlarını belirten ortak [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) sınıfına sahiptir. Bu sınıfın örneklerini doğrudan oluşturmazsınız.

Yazma koruması, yazarın bir belgeyi salt okunur olarak açmayı ve/veya belgeyi değiştirmek için parola gerektirmeyi önerip önermediğini gösterir.

Aspose.Words, [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) özelliğini ve [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) yöntemini kullanarak düzenlemeyi kısıtlamak için bir belgeyi salt okunur hale getirmenize olanak tanır.

{{% alert color="primary" %}}

Microsoft Word'te, her ikisini de kullanarak benzer şekilde Salt Okunur bir belge oluşturabilirsiniz:

* "Her Zaman Salt Okunur Aç" (Dosya → Bilgi → Belgeyi Koru)
* "Değiştirilecek şifre" (Farklı Kaydet → Araçlar → Genel Seçenekler → Şifre)

{{% /alert %}}

{{% alert color="primary" %}}

Kullanıcılar [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/)'i [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only) olarak seçerek belge düzenlemeyi de kısıtlayabilirler ancak bu, daha gelişmiş koruma özellikleri sağlayan başka bir özelliktir. Microsoft Word'de sırasıyla böyle bir işlev var, Aspose.Words'de uygulanıyor.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/), aşağıdaki makalelerden birinde ayrıntılı olarak açıklanacaktır: "Belge Düzenlemeyi Kısıtla".

{{% /alert %}}

[read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) özelliği parola korumalıdır; dolayısıyla, [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) özelliğini uygulamadan önce parola ayarlamazsanız diğer kullanıcılar belgeyi korumasızmış gibi açabilir. Belge koruma ayarlarına erişirsiniz ve [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) yöntemini kullanarak bir yazma koruması şifresi belirlersiniz.

{{% alert color="primary" %}}

Ayarlanmakta olan parolanın yalnızca belgedeki, belge özelliklerine erişildiğinde kaldırılabilecek bir özellik olduğunu unutmayın. Dolayısıyla böyle bir şifre belge güvenliğinin garantisi değildir.

{{% /alert %}}

Bir belgenin, düzenlenmesini kısıtlayan bir yazma koruması parolası olup olmadığını kontrol etmeniz gerekiyorsa [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/) özelliğini kullanabilirsiniz.

Aşağıdaki kod örneği, bir belgenin nasıl salt okunur hale getirileceğini gösterir:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## Salt Okunur Kısıtlamasını Kaldır

Bir kullanıcının belgenizi salt okunur olarak açmasını istemiyorsanız [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) özelliğini `False` olarak ayarlayabilir veya [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/)'i [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection) olarak seçebilirsiniz.

Aşağıdaki kod örneği, bir belgenin salt okunur erişiminin nasıl kaldırılacağını gösterir:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
