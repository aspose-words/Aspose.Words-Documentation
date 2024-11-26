---
title: Java'da Belge Düzenleme'sini Kısıtlama
second_title: Aspose.Words için Java
articleTitle: Belge Düzenlemeyi Kısıtla
linktitle: Belge Düzenlemeyi Kısıtla
description: "Bir belgeyi düzenleme kısıtlamasını ayarlayarak kısıtlama türü ile sınırlayabilirsiniz. Ayrıca korumayı kaldırıp sınırsız düzenlenebilir bölgeler oluşturmak için Java'ı da kullanabilirsiniz."
type: docs
weight: 30
url: /tr/java/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Bazen bir belgeyi düzenlemenin yeteneğini sınırlamanız ve yalnızca belirli eylemleri ona izin vermeniz gerekebilir. Bu, diğer kişilerin hassas ve gizli bilgilere sahip belgenizi düzenleme girişimlerini önlemek için yararlı olabilir.

Aspose.Words belgenin düzenleme yeteneğini kısıtlama türüne göre sınırlandırmanıza izin verir. Buna ek olarak Aspose.Words, ayrıca bir belgeye yazma koruması ayarlarını belirtmenize de olanak tanır.

Bu makale bir kısıtlamayı seçmek için Aspose.Words'in nasıl kullanılacağını, korumayı eklemek veya kaldırmak ve kısıtlanmamış düzenlenebilir bölgeleri oluşturmak için nasıl yapılacağını anlatır.

## Düzenleme kısıtlamasını seç

Aspose.Words kısıtlamanın biçimini [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) numaralandırma parametresi ile kontrol etmenizi sağlar. Bu, sizi aşağıdaki gibi tam bir koruma türü seçmek için etkinleştirecektir:

*AllowOnlyComments
-* AllowOnlyFormFields
* AllowOnlyRevisions
*Salt Okunur*
*NoProtection

Tüm türler şifreyle korunmuştur ve bu şifre doğru girilmezse bir kullanıcı belgeninizin içeriğini yasal olarak değiştiremez. Böylelikle, gerekli şifreyi vermenizi gerektirmeyen bir şekilde belge size geri gönderilirse bunun bir şeylerin yolunda gitmediğinin işareti olduğunu anlamalısınız.

Güvenlik türünü seçerken bir şifre belirlemediyseniz, başka kullanıcılar belgenizin korunmasını tamamen göz ardı edebilirler.

{{% alert color="primary" %}}

Notun, ayarlanan şifre yalnızca bir özelliktir ve belge özellikleri erişildiğinde kaldırılabilir. Bu nedenle, böyle bir şifre belge güvenliğini garanti etmez. [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) yöntemi bu gerçeği gösterir.

{{% /alert %}}

## Belge Korumasını Ekle

Belgenize koruma eklemek basit bir süreçtir çünkü tüm ihtiyacınız olan bu bölümde ayrıntılı olarak açıklanan koruma yöntemlerinden birini uygulamaktır.

Aspose.Words belgeleri [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) yöntemi kullanarak değişikliklerden korumanızı sağlar. Bu yöntem bir güvenlik özelliği değildir ve bir belgeyi şifrelememektedir.

{{% alert color="primary" %}}

Microsoft Word 'da, hem edit etmenizi kısıtlayabilir hem de benzer bir şekilde kullanabilirsiniz:

- Düzenlemeyi Kısıtlama (Dosya → Bilgi → Dokümanı Koru)
"* Alternatif özellik – "Düzenlemeyi Kısıtlama" (İnceleme → Koru → Düzenlemeyi Kısıtlama)

{{% /alert %}}

Aşağıdaki kod örneği, belgenize nasıl parola koruması ekleneceğini gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

Aşağıdaki kod örneği, bir dokümanda düzenleme kısıtlamak ve sadece form alanları içinde düzenlemenin mümkün olmasını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## Belge Korumayı Kaldır

Aspose.Words sizi basit ve doğrudan belge değişikliği ile bir belgeden korumayı kaldırmanızı sağlar. Ya gerçek parolayı bilmeden belge korumasını kaldırırsınız ya da doğru parolayı kullanarak belgeyi kilidi açmak için [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) yöntemini kullanırsınız. Her iki kaldırma yöntemi de fark etmez.

Aşağıdaki kod örneği belgenize nasıl koruma kaldıracağını gösterir

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## Sınırsız Düzenlenebilir Bölgeleri Belirt

Belgenizi düzenlemeye kısıtlayabilir ve aynı zamanda belgenizin seçili bölümlerinde değişikliklere izin verebilirsiniz. Bu nedenle, belgelerinizi açan herkes bu kısıtsız bölümlerin içeriğine erişebilir ve içeriği değiştirebilir.

Aspose.Words belgenizdeki değiştirilebilir bölümleri işaretlemenize izin verir [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) ve [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange) yöntemleri.

Aşağıdaki kod örneği, belgenin tamamını salt okunur olarak nasıl işaretleyeceğinizi ve içinde düzenlenebilir bölgeleri nasıl belirteceğinizi göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

Farklı bölümlerde farklı belge düzenleme kısıtlamaları da seçebilirsiniz.

Aşağıdaki kod örneği, tüm belgenin için bir kısıtlama eklemeyi ve sonra kısıtlamayı tek bir bölümden kaldırmayı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
