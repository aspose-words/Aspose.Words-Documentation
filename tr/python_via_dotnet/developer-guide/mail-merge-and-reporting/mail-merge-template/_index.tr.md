---
title: Mail Merge Şablon içinde Python
second_title: Aspose.Words için Python via .NET
articleTitle: Mail Merge Şablon
linktitle: Mail Merge Şablon
type: docs
description: "Çıktı belgelerindeki sabit içeriği tanımlamak için bir Mail Merge şablonu oluşturun ve ardından Python içindeki birleştirme alanlarını kullanarak birleştirme belgeleri oluşturun."
keywords: "create Mail Merge template python"
weight: 10
url: /tr/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
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

Aspose.Words kullanarak gerekli birleştirme şablonunu oluşturmak için [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) sınıfını kullanın. [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) ve [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/) yöntemlerini kullanarak böyle bir şablona metin, birleştirme alanı ve satır sonu ekleyebilirsiniz.

Aşağıdaki kod örneği, Mail Merge şablonunun nasıl oluşturulacağını gösterir:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

Aşağıdaki resim oluşturulan şablonu göstermektedir:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Mail Merge Şablon Özelliklerini Özelleştirme

Aspose.Words şablonunuzu birçok özellik aracılığıyla özelleştirmenize olanak tanır. Şablon özelleştirmesi, görüntülerin ve metnin bazı özelliklerinin özelleştirilmesine ilişkin bir örnekle aşağıda açıklanacaktır.

## Ayrıca bakınız

* Microsoft Word 'de şablonların manuel olarak nasıl oluşturulacağı hakkında daha fazla ayrıntı için lütfen [Şablon Oluşturma](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) Microsoft Belgelerindeki makale
