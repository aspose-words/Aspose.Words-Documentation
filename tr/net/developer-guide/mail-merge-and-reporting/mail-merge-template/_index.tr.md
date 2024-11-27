---
title: Mail Merge Şablon içinde C#
second_title: Aspose.Words için .NET
articleTitle: Mail Merge Şablon
linktitle: Mail Merge Şablon
type: docs
description: "Çıktı belgelerindeki sabit içeriği tanımlamak için bir Mail Merge şablonu oluşturun ve ardından C# içindeki birleştirme alanlarını kullanarak birleştirme belgeleri oluşturun."
keywords: "create Mail Merge template с#"
weight: 10
url: /tr/net/mail-merge-template/
timestamp: 2024-07-11-08-07-06
---

Basit bir Mail Merge veya bölgelere sahip Mail Merge ise, Mail Merge işlemi için temel belge olarak bir birleştirme şablonu kullanmak yaygındır. Mail merge bölgelerle basit mail merge 'den daha güçlü ve popülerdir. Basit Mail Merge, bölgenin belgenin tamamı olduğu bölgelerle Mail Merge 'ın özel bir durumu olarak kabul edilir. Hepsi bir sonraki makalede "Mail Merge İşlem Türleri" daha ayrıntılı olarak açıklanmıştır.

Şablon, çıktı birleştirilmiş belgedeki metnin doğru biçimlendirilmesini sağlar ve Mail Merge işlemi, veri kaynağındaki metnin birleştirme şablonuna doğru girilmesini garanti eder.

Aspose.Words, sabit içeriği tanımlamak için bir Mail Merge şablonu oluşturma ve ardından birleştirme alanlarını kullanarak birleştirme belgeleri oluşturma olanağı sağlar. Böylece, birleştirme şablonu, tüm çıktı belgelerinde aynı olan gerekli metne ve değişen içeriği doldurmak için birleştirme alanlarına sahip olacaktır. Sonuç olarak, birleştirilmiş belgenin oluşturulması sırasında belirtilen veri kaynağından gelen bilgiler bu alanlar aracılığıyla birleştirme şablonuna eklenecektir.

## Mail Merge Şablonu nedir

Mail Merge şablonu, değişken metnin olmasını istediğiniz sabit verileri ve birleştirilmiş alanları içeren kişiselleştirilmiş bir belgedir. Birleştirme şablonu, alanları destekleyen herhangi bir biçimde olabilir, örneğin, DOC, DOCX, DOT, DOTX, RTF. Ayrıca "Mustache Şablon Sözdizimi" makalesinde açıklanan mustache şablonu daha ayrıntılı olarak da kullanabilirsiniz.

Yeni belgeler için bir model olması için bir birleştirme şablonu oluşturabilirsiniz ve birleştirilmiş belgenin her sürümü için aynı olması gereken ana metni içermelidir. Şablonun içine birleştirme alanları eklemek, bir veri kaynağından getirilen adlar veya adresler gibi kişiselleştirme verilerini temsil eder. Mail Merge işlemi, kişiselleştirme verilerini veri kaynağınızdan birleştirme şablonu belgenize otomatik olarak ekler.

Ayrıca, posta bölgesinin başlangıcını ve sonunu işaretlemek için iki Mail Merge alan ekleyerek şablonunuza bir Mail Merge bölge ekleyebilirsiniz. Bir sonraki makale "Mail Merge İşlem Türleri" bunu daha ayrıntılı olarak açıklar.

## Mail Merge Şablonu Oluşturma

Bir şablon oluşturabilir ve ona belirli birleştirme alanları ekleyebilirsiniz; bu, veri kaynağındaki değerlerle manuel olarak, örneğin Microsoft Word kullanılarak veya programlı olarak Aspose.Words kullanılarak değiştirilir. Bu makalede, bir şablon oluşturmanın programatik yoluna bakacağız.

Aspose.Words kullanarak gerekli birleştirme şablonunu oluşturmak için [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) sınıfını kullanın. [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) ve [InsertParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertparagraph/) yöntemlerini kullanarak böyle bir şablona metin, birleştirme alanı ve satır sonu ekleyebilirsiniz.

Aşağıdaki kod örneği, Mail Merge şablonunun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "create-mail-merge-template.cs" >}}

Aşağıdaki resim oluşturulan şablonu göstermektedir:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Mail Merge Şablon Özelliklerini Özelleştirme

Aspose.Words şablonunuzu birçok özellik aracılığıyla özelleştirmenize olanak tanır. Şablon özelleştirmesi, görüntülerin ve metnin bazı özelliklerinin özelleştirilmesine ilişkin bir örnekle aşağıda açıklanacaktır.

### Görüntü Özelliklerini Özelleştirme

Görüntü özelliklerini [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/) sınıfını kullanarak belirtebilirsiniz. Veritabanından, içinde açıklandığı şekilde bir resim ekleyebileceğinizi unutmayın [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L214).

Aşağıdaki kod örneği, görüntü dosyası adı ve görüntü boyutunun nasıl belirtileceğini gösterir:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "image-field-merging.cs" >}}

### Metin Özelliklerini Özelleştirme

Geçerli birleştirme alanının belgesine metin eklemek için [Text](https://reference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs/text/) özelliğini kullanabilirsiniz. Ayrıca, [Font](https://reference.aspose.com/words/net/aspose.words/font/) ve [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) sınıflarını kullanarak şablonunuzun içindeki metinlerin ve paragrafların biçimlendirmesini değiştirebilirsiniz. [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) sınıfında bulunan [TextBefore](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textbefore/) ve [TextAfter](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textafter/) özelliklerini kullanarak birleştirme alanından önce veya sonra eklenecek metni işleyebilirsiniz.

Aşağıdaki kod örneği, Mail Merge işlemi sırasında Onay Kutularının veya HTML'in nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

`HandleMergeField` sınıfının uygulanmasını şu adresten de kontrol edebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/828b58e207e96afa624956867ec9c777fa10af87/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L43).

{{% /alert %}}

## Ayrıca bakınız

* Microsoft Word 'de şablonların manuel olarak nasıl oluşturulacağı hakkında daha fazla ayrıntı için lütfen [Şablon Oluşturma](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) Microsoft Belgelerindeki makale
