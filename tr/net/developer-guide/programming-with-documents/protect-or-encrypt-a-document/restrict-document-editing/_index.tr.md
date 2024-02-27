---
title: C#'te Belge Düzenlemeyi Sınırla
second_title: .NET için Aspose.Words
articleTitle: Belge Düzenlemeyi Kısıtla
linktitle: Belge Düzenlemeyi Kısıtla
description: "C#'i kullanarak bir kısıtlama türü ayarlayarak belgenin düzenlenmesini kısıtlayın. Ayrıca korumayı kaldırabilir ve sınırsız düzenlenebilir bölgeler oluşturabilirsiniz."
type: docs
weight: 30
url: /tr/net/restrict-document-editing/
---

Bazen bir belgeyi düzenleme yeteneğinizi sınırlamanız ve belgeyle yalnızca belirli işlemlere izin vermeniz gerekebilir. Bu, diğer kişilerin belgenizdeki hassas ve gizli bilgileri düzenlemesini önlemek için yararlı olabilir.

Aspose.Words, bir kısıtlama türü ayarlayarak bir belgenin düzenlenmesini kısıtlamanıza olanak tanır. Ayrıca Aspose.Words, bir belge için yazma koruması ayarlarını belirlemenize de olanak tanır.

Bu makalede, bir kısıtlama türü seçmek için Aspose.Words'in nasıl kullanılacağı, korumanın nasıl ekleneceği veya kaldırılacağı ve sınırsız düzenlenebilir bölgelerin nasıl oluşturulacağı açıklanmaktadır.

## Düzenleme Kısıtlama Türünü Seçin

Aspose.Words, [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) numaralandırma parametresini kullanarak içeriği kısıtlama şeklinizi kontrol etmenize olanak tanır. Bu, aşağıdaki gibi tam bir koruma türünü seçmenizi sağlayacaktır:

*YalnızcaYorumlara İzin Ver
* AllowOnlyFormFields
* Yalnızca Düzeltmelere İzin Ver
* Sadece oku
* Koruma yok

Tüm türler şifre korumalıdır ve bu şifre doğru girilmezse kullanıcı belgenizin içeriğini yasal olarak değiştiremez. Dolayısıyla belgeniz gerekli şifreyi girmenize gerek kalmadan size iade edilirse, bu bir şeylerin ters gittiğinin işaretidir.

Güvenlik türünü seçerken şifre belirlemediyseniz diğer kullanıcılar belgenizin korumasını göz ardı edebilir.

{{% alert color="primary" %}}

Ayarlanmakta olan parolanın yalnızca belgedeki bir özellik olduğunu ve belge özelliklerine erişildiğinde kaldırılabileceğini unutmayın. Dolayısıyla böyle bir şifre belge güvenliğinin garantisi değildir. [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) yöntemi tam da bunu gösteriyor.

{{% /alert %}}

## Belge Koruması Ekle

Belgenize koruma eklemek basit bir işlemdir; tek yapmanız gereken bu bölümde ayrıntıları verilen koruma yöntemlerinden birini uygulamaktır.

Aspose.Words, [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/) yöntemini kullanarak belgelerinizi değişikliklerden korumanıza olanak tanır. Bu yöntem bir güvenlik özelliği değildir ve belgeyi şifrelemez.

{{% alert color="primary" %}}

Microsoft Word'te, her ikisini de kullanarak düzenlemeyi benzer şekilde kısıtlayabilirsiniz:

* Düzenlemeyi Kısıtla (Dosya → Bilgi → Belgeyi Koru)
* Alternatif özellik – "Düzenlemeyi Sınırla" (İnceleme → Koru → Düzenlemeyi Sınırla)

{{% /alert %}}

Aşağıdaki kod örneği belgenize nasıl parola koruması ekleyeceğinizi gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

Aşağıdaki kod örneği, yalnızca form alanlarında düzenlemenin mümkün olması için bir belgede düzenlemenin nasıl kısıtlanacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Belge Korumasını Kaldır

Aspose.Words, basit ve doğrudan belge değişikliğiyle bir belgedeki korumayı kaldırmanıza olanak tanır. Gerçek şifreyi bilmeden belge korumasını kaldırabilir veya [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) yöntemini kullanarak belgenin kilidini açmak için doğru şifreyi sağlayabilirsiniz. Her iki çıkarma yönteminin de hiçbir farkı yoktur.

Aşağıdaki kod örneği, belgenizdeki korumanın nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Kısıtlanmamış Düzenlenebilir Bölgeleri Belirtin

Belgenizin düzenlenmesini kısıtlayabilir ve aynı zamanda belgenin seçilen kısımlarında değişiklik yapılmasına izin verebilirsiniz. Böylece belgenizi açan herkes bu sınırsız kısımlara ulaşabilecek ve içerikte değişiklik yapabilecektir.

Aspose.Words, belgenizde değiştirilebilecek kısımları [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) ve [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/) yöntemlerini kullanarak işaretlemenize olanak sağlar.

Aşağıdaki kod örneği, belgenin tamamının salt okunur olarak nasıl işaretleneceğini ve içinde düzenlenebilir bölgelerin nasıl belirtileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

Ayrıca farklı bölümler için farklı belge düzenleme kısıtlamaları da seçebilirsiniz.

Aşağıdaki kod örneği, belgenin tamamı için bir kısıtlamanın nasıl ekleneceğini ve ardından bölümlerden biri için kısıtlamanın nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
