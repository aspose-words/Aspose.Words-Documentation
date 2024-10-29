---
title: Mail Merge Şablon içinde C++
second_title: Aspose.Words için C++
articleTitle: Mail Merge Şablon
linktitle: Mail Merge Şablon
type: docs
description: "Oluştur mail merge çıktı belgelerindeki sabit içeriği tanımlamak ve ardından birleştirme alanlarını kullanarak birleştirme belgeleri oluşturmak için şablon."
keywords: "create mail merge template с++"
weight: 10
url: /tr/cpp/mail-merge-template/
---

Birleştirme şablonunu temel belge olarak kullanmak yaygındır. mail merge işlem basitse de mail merge veya mail merge bölgelerle. Mail merge bölgelerle basitten daha güçlü ve popüler mail merge. Basit mail merge özel bir durum olarak kabul edilir mail merge bölgenin tüm belge olduğu bölgelerle. Her şey bir sonraki makalede açıklanmıştır "Türleri Mail Merge Operasyon" daha ayrıntılı olarak.

Şablon, çıktı birleştirilmiş belgedeki metnin doğru biçimlendirilmesini sağlar ve mail merge işlem, veri kaynağından gelen metnin birleştirme şablonuna doğru girildiğini garanti eder.

Aspose.Words bir oluşturma yeteneği sağlar mail merge sabit içeriği tanımlamak ve ardından birleştirme alanlarını kullanarak birleştirme belgeleri oluşturmak için şablon. Böylece, birleştirme şablonu, tüm çıktı belgelerinde aynı olan gerekli metne ve değişen içeriği doldurmak için birleştirme alanlarına sahip olacaktır. Sonuç olarak, birleştirilmiş belgenin oluşturulması sırasında belirtilen veri kaynağından gelen bilgiler bu alanlar aracılığıyla birleştirme şablonuna eklenecektir.

## Bir nedir Mail Merge Şablon

A mail merge şablon, sabit verileri ve değişken metnin olmasını istediğiniz birleştirilmiş alanları içeren kişiselleştirilmiş bir belgedir. Birleştirme şablonu, alanları destekleyen herhangi bir biçimde olabilir, örneğin, DOC, DOCX, DOT, DOTX, RTF. Buna ek olarak, şunları da kullanabilirsiniz mustache makalede açıklanan şablon "Mustache Şablon Sözdizimi" daha ayrıntılı olarak.

Yeni belgeler için bir model olması için bir birleştirme şablonu oluşturabilirsiniz ve birleştirilmiş belgenin her sürümü için aynı olması gereken ana metni içermelidir. Şablonun içine birleştirme alanları eklemek, bir veri kaynağından getirilen adlar veya adresler gibi kişiselleştirme verilerini temsil eder. A mail merge işlem, kişiselleştirme verilerini veri kaynağınızdan birleştirme şablonu belgenize otomatik olarak ekler.

Buna ek olarak, bir mail merge şablonunuza iki tane ekleyerek bölge mail merge posta bölgesinin başlangıcını ve sonunu işaretlemek için alanlar. Bir sonraki makale "Türleri Mail Merge Operasyon" bunu daha ayrıntılı olarak açıklıyor.

## Oluştur Mail Merge Şablon

Bir şablon oluşturabilir ve ona belirli birleştirme alanları ekleyebilirsiniz; bu, veri kaynağındaki değerlerle manuel olarak değiştirilecektir, örneğin Microsoft Word veya programlı olarak kullanma Aspose.Words. Bu makalede, bir şablon oluşturmanın programatik yoluna bakacağız.

Kullan... [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) kullanarak gerekli birleştirme şablonunu oluşturmak için sınıf Aspose.Words. Bir metni, birleştirme alanını ve satır sonunu kullanarak böyle bir şablona ekleyebilirsiniz. [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), ve [InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/) yöntemler.

Aşağıdaki kod örneği nasıl oluşturulacağını gösterir mail merge şablon:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

Aşağıdaki resim oluşturulan şablonu göstermektedir:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## Özelleştir a Mail Merge Şablon Özellikleri

Aspose.Words şablonunuzu birçok özellik aracılığıyla özelleştirmenize olanak tanır. Şablon özelleştirmesi, görüntülerin ve metnin bazı özelliklerinin özelleştirilmesine ilişkin bir örnekle aşağıda açıklanacaktır.

### Görüntü Özelliklerini Özelleştirme

Görüntü özelliklerini kullanarak belirtebilirsiniz [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/) sınıf.

Aşağıdaki kod örneği, görüntü dosyası adı ve görüntü boyutunun nasıl belirtileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### Metin Özelliklerini Özelleştirme

Kullanabilirsiniz [Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/) geçerli birleştirme alanı için belgeye metin ekleme özelliği. Ayrıca, şablonunuzun içindeki metinlerin ve paragrafların biçimlendirmesini kullanarak değiştirebilirsiniz [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) ve [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) sınıflar. Birleştirme alanından önce veya sonra eklenecek metni kullanarak işleyebilirsiniz. [TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/) ve [TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/) içerdiği özellikler [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) sınıf.

Aşağıdaki kod örneği, Onay Kutularının nasıl ekleneceğini veya HTML sırasında mail merge operasyon:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Ayrıca uygulamanın uygulanmasını da kontrol edebilirsiniz `HandleMergeField` sınıftan [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Ayrıca bakınız

* Şablon oluşturma hakkında daha fazla ayrıntı için Microsoft Word manuel olarak, lütfen kontrol edin [Şablon Oluşturma](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) makale içinde Microsoft Dokümantasyon
