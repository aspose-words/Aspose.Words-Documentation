---
title: Belge Düzenlemeyi C++ ile Sınırla
second_title: Aspose.Words için C++
articleTitle: Belge Düzenlemeyi Kısıtla
linktitle: Belge Düzenlemeyi Kısıtla
description: "C++ kullanarak bir kısıtlama türü ayarlayarak bir belgeyi düzenlemeyi kısıtlayın. Ayrıca korumayı kaldırabilir ve sınırsız düzenlenebilir bölgeler oluşturabilirsiniz."
type: docs
weight: 30
url: /tr/cpp/restrict-document-editing/
---

Bazen bir belgeyi düzenleme yeteneğini sınırlamanız ve yalnızca onunla belirli eylemlere izin vermeniz gerekebilir. Bu, diğer kişilerin belgenizdeki hassas ve gizli bilgileri düzenlemesini önlemek için yararlı olabilir.

Aspose.Words bir kısıtlama türü ayarlayarak bir belgeyi düzenlemeyi kısıtlamanıza olanak tanır. Ayrıca Aspose.Words, bir belge için yazma koruması ayarlarını belirlemenizi de sağlar.

Bu makalede, bir kısıtlama türü seçmek için Aspose.Words'ın nasıl kullanılacağı, korumanın nasıl ekleneceği veya kaldırılacağı ve kısıtlanmamış düzenlenebilir bölgelerin nasıl oluşturulacağı açıklanmaktadır.

## Düzenleme Kısıtlaması Türünü Seçin

Aspose.Words [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) numaralandırma parametresini kullanarak içeriği kısıtlama şeklinizi kontrol etmenizi sağlar. Bu, aşağıdakiler gibi tam bir koruma türü seçmenize olanak tanır:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

Tüm türler parola korumalıdır ve bu parola doğru girilmezse, bir kullanıcı belgenizin içeriğini yasal olarak değiştiremez. Bu nedenle, belgeniz gerekli şifreyi sağlama zorunluluğu olmadan size iade edilirse, bu bir şeylerin yanlış olduğunun işaretidir.

Güvenlik türünü seçerken bir parola belirlemediyseniz, diğer kullanıcılar belgenizin korumasını göz ardı edebilir.

{{% alert color="primary" %}}

Ayarlanmakta olan parolanın, belge özelliklerine erişildiğinde kaldırılabilen bir belgede yalnızca bir özellik olduğunu unutmayın. Buna göre, böyle bir şifre belge güvenliğinin garantisi değildir. [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) yöntemi tam olarak bunu gösterir.

{{% /alert %}}

## Belge Koruması Ekle

Belgenize koruma eklemek basit bir işlemdir, çünkü yapmanız gereken tek şey bu bölümde ayrıntılı olarak açıklanan koruma yöntemlerinden birini uygulamaktır.

Aspose.Words, [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/) yöntemini kullanarak belgelerinizi değişikliklerden korumanıza olanak tanır. Bu yöntem bir güvenlik özelliği değildir ve bir belgeyi şifrelemez.

{{% alert color="primary" %}}

Microsoft Word 'da, her ikisini de kullanarak düzenlemeyi benzer şekilde kısıtlayabilirsiniz:

* Düzenlemeyi Kısıtla (Dosya → Bilgi → Belgeyi Koru)
* Alternatif özellik – "Düzenlemeyi Kısıtla" (İnceleme → Koruma → Düzenlemeyi Kısıtla)

{{% /alert %}}

Aşağıdaki kod örneği, belgenize parola korumasının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

Aşağıdaki kod örneği, yalnızca form alanlarında düzenlemenin mümkün olması için bir belgede düzenlemenin nasıl kısıtlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## Belge Korumasını Kaldır

Aspose.Words basit ve doğrudan belge değişikliği ile bir belgeden korumayı kaldırmanıza olanak tanır. Gerçek parolayı bilmeden belge korumasını kaldırabilir veya [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) yöntemini kullanarak belgenin kilidini açmak için doğru parolayı sağlayabilirsiniz. Her iki kaldırma yolunun da hiçbir farkı yoktur.

Aşağıdaki kod örneği, belgenizden korumanın nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## Sınırsız Düzenlenebilir Bölgeler Belirtin

Belgenizin düzenlenmesini kısıtlayabilir ve aynı zamanda belgenizin seçili bölümlerinde değişikliklere izin verebilirsiniz. Böylece, belgenizi açan herkes bu sınırsız parçalara erişebilir ve içerikte değişiklik yapabilir.

Aspose.Words belgenizde değiştirilebilecek parçaları [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) ve [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/) yöntemlerini kullanarak işaretlemenizi sağlar.

Aşağıdaki kod örneği, belgenin tamamının salt okunur olarak nasıl işaretleneceğini ve içindeki düzenlenebilir bölgelerin nasıl belirtileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

Farklı bölümler için farklı belge düzenleme kısıtlamaları da seçebilirsiniz.

Aşağıdaki kod örneği, belgenin tamamı için bir kısıtlamanın nasıl ekleneceğini ve ardından bölümlerden biri için kısıtlamanın nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
