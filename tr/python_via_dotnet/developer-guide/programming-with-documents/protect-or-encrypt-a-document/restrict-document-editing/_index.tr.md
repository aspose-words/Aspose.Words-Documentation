---
title: Python'te Belge Düzenlemeyi Sınırla
second_title: Python via .NET için Aspose.Words
articleTitle: Belge Düzenlemeyi Kısıtla
linktitle: Belge Düzenlemeyi Kısıtla
description: "Python'i kullanarak bir kısıtlama türü ayarlayarak belgenin düzenlenmesini kısıtlayın. Ayrıca korumayı kaldırabilir ve sınırsız düzenlenebilir bölgeler oluşturabilirsiniz."
type: docs
weight: 30
url: /tr/python-net/restrict-document-editing/
---

Bazen bir belgeyi düzenleme yeteneğinizi sınırlamanız ve belgeyle yalnızca belirli işlemlere izin vermeniz gerekebilir. Bu, diğer kişilerin belgenizdeki hassas ve gizli bilgileri düzenlemesini önlemek için yararlı olabilir.

Aspose.Words, bir kısıtlama türü ayarlayarak bir belgenin düzenlenmesini kısıtlamanıza olanak tanır. Ayrıca Aspose.Words, bir belge için yazma koruması ayarlarını belirlemenize de olanak tanır.

Bu makalede, bir kısıtlama türü seçmek için Aspose.Words'in nasıl kullanılacağı, korumanın nasıl ekleneceği veya kaldırılacağı ve sınırsız düzenlenebilir bölgelerin nasıl oluşturulacağı açıklanmaktadır.

## Düzenleme Kısıtlama Türünü Seçin

Aspose.Words, [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) numaralandırma parametresini kullanarak içeriği kısıtlama şeklinizi kontrol etmenize olanak tanır. Bu, aşağıdakiler gibi tam bir koruma türünü seçmenizi sağlayacaktır:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

Tüm türler şifre korumalıdır ve bu şifre doğru girilmezse kullanıcı belgenizin içeriğini yasal olarak değiştiremez. Dolayısıyla belgeniz gerekli şifreyi girmenize gerek kalmadan size iade edilirse, bu bir şeylerin ters gittiğinin işaretidir.

Güvenlik türünü seçerken şifre belirlemediyseniz diğer kullanıcılar belgenizin korumasını göz ardı edebilir.

{{% alert color="primary" %}}

Ayarlanmakta olan parolanın yalnızca belgedeki, belge özelliklerine erişildiğinde kaldırılabilecek bir özellik olduğunu unutmayın. Dolayısıyla böyle bir şifre belge güvenliğinin garantisi değildir. [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) yöntemi tam da bunu gösteriyor.

{{% /alert %}}

## Belge Koruması Ekle

Belgenize koruma eklemek basit bir işlemdir; tek yapmanız gereken bu bölümde ayrıntıları verilen koruma yöntemlerinden birini uygulamaktır.

Aspose.Words, [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/) yöntemini kullanarak belgelerinizi değişikliklerden korumanıza olanak tanır. Bu yöntem bir güvenlik özelliği değildir ve belgeyi şifrelemez.

{{% alert color="primary" %}}

Microsoft Word'te, her ikisini de kullanarak düzenlemeyi benzer şekilde kısıtlayabilirsiniz:

* Düzenlemeyi Kısıtla (Dosya → Bilgi → Belgeyi Koru)
* Alternatif özellik – "Düzenlemeyi Sınırla" (İnceleme → Koru → Düzenlemeyi Sınırla)

{{% /alert %}}

Aşağıdaki kod örneği belgenize nasıl parola koruması ekleyeceğinizi gösterir:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

Aşağıdaki kod örneği, yalnızca form alanlarında düzenlemenin mümkün olması için bir belgede düzenlemenin nasıl kısıtlanacağını gösterir:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Text added to a document.")

# A document protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# Save the protected document.
doc.save(docs_base.artifacts_dir + "DocumentProtection.AllowOnlyFormFieldsProtect.docx");
{{< /highlight >}}

## Belge Korumasını Kaldır

Aspose.Words, basit ve doğrudan belge değişikliğiyle bir belgedeki korumayı kaldırmanıza olanak tanır. Gerçek şifreyi bilmeden belge korumasını kaldırabilir veya [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) yöntemini kullanarak belgenin kilidini açmak için doğru şifreyi sağlayabilirsiniz. Her iki çıkarma yönteminin de hiçbir farkı yoktur.

Aşağıdaki kod örneği, belgenizdeki korumanın nasıl kaldırılacağını gösterir:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Text added to a document.")

# Documents can have protection removed either with no password, or with the correct password.
doc.unprotect()
doc.protect(aw.ProtectionType.READ_ONLY, "newPassword")
doc.unprotect("newPassword")

doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveDocumentProtection.docx");
{{< /highlight >}}

## Kısıtlanmamış Düzenlenebilir Bölgeleri Belirtin

Belgenizin düzenlenmesini kısıtlayabilir ve aynı zamanda belgenin seçilen kısımlarında değişiklik yapılmasına izin verebilirsiniz. Böylece belgenizi açan herkes bu sınırsız kısımlara ulaşabilecek ve içerikte değişiklik yapabilecektir.

Aspose.Words, belgenizde değiştirilebilecek kısımları [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) ve [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/) yöntemlerini kullanarak işaretlemenize olanak sağlar.

Aşağıdaki kod örneği, belgenin tamamının salt okunur olarak nasıl işaretleneceğini ve içinde düzenlenebilir bölgelerin nasıl belirtileceğini gösterir:

{{< highlight python >}}
import aspose.words as aw

# Upload a document and make it as read-only.
doc = aw.Document(docs_base.my_dir + "Document.docx")
builder = aw.DocumentBuilder(doc)

doc.protect(aw.ProtectionType.READ_ONLY, "MyPassword")

builder.writeln("Hello world! Since we have set the document's protection level to read-only, we cannot edit this paragraph without the password.")

# Start an editable range.
edRangeStart = builder.start_editable_range()
# An EditableRange object is created for the EditableRangeStart that we just made.
editableRange = edRangeStart.editable_range

# Put something inside the editable range.
builder.writeln("Paragraph inside first editable range")

# An editable range is well-formed if it has a start and an end.
edRangeEnd = builder.end_editable_range()

builder.writeln("This paragraph is outside any editable ranges, and cannot be edited.");

doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedEditableRegions.docx");
{{< /highlight >}}

Ayrıca farklı bölümler için farklı belge düzenleme kısıtlamaları da seçebilirsiniz.

Aşağıdaki kod örneği, belgenin tamamı için bir kısıtlamanın nasıl ekleneceğini ve ardından bölümlerden biri için kısıtlamanın nasıl kaldırılacağını gösterir:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Section 1. Unprotected.")
builder.insert_break(aw.BreakType.SECTION_BREAK_CONTINUOUS)
builder.writeln("Section 2. Protected.")

# Section protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# By default, all sections are protected, but we can selectively turn protection off.
doc.sections[0].protected_for_forms = False
doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");

doc = aw.Document(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");
self.assertFalse(doc.sections[0].protected_for_forms)
self.assertTrue(doc.sections[1].protected_for_forms);
{{< /highlight >}}
