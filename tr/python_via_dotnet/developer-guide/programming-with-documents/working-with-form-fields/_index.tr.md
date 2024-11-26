---
title: Python'te Form Alanlarıyla Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Form Alanlarıyla Çalışmak
linktitle: Form Alanlarıyla Çalışmak
description: "Python kullanarak bir belgeye form alanı ekleyin, edinin veya biçimlendirin."
type: docs
weight: 380
url: /tr/python-net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Doldurulacak boşlukları (alanları) içeren bir belge form olarak bilinir. Örneğin, Microsoft Word'te kullanıcıların girişleri seçebileceği açılır listeleri kullanan bir kayıt formu oluşturabilirsiniz. `Form` alanı, ad veya adres gibi belirli bir veri türünün depolandığı konumdur. Microsoft Word'teki form alanları metin girişi, birleşik giriş kutusu ve onay kutusunu içerir.

Kullanıcılarınızla "iletişim kurmak" için projenizdeki form alanlarını kullanabilirsiniz. Örneğin, içeriği korunan ancak yalnızca form alanlarının düzenlenebildiği bir belge oluşturursunuz. Kullanıcılar form alanlarına verilerini girip belgeyi gönderebilirler. Aspose.Words kullanan uygulamanız form alanlarından veri alıp işleyebilir.

Form alanlarını kod aracılığıyla belgeye yerleştirmek kolaydır. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)'in bunları eklemek için her form alanı türü için bir tane olmak üzere özel yöntemleri vardır. Yöntemlerin her biri, form alanının adını temsil eden bir dize parametresini kabul eder. Ad boş bir dize olabilir. Ancak form alanı için bir ad belirlerseniz, aynı adla otomatik olarak bir yer imi oluşturulur.

## Form Alanları Ekleme

Form alanları, kullanıcıyla "etkileşime" izin veren özel bir Word alanıdır. Microsoft Word'teki form alanları metin kutusu, birleşik giriş kutusu ve onay kutusunu içerir.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), her tür form alanını belgeye eklemek için özel yöntemler sağlar: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) ve [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). Form alanı için bir ad belirlerseniz aynı adla otomatik olarak bir yer işareti oluşturulacağını unutmayın.

Aşağıdaki kod örneği, birleşik giriş kutusu form alanının bir belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Metin Girişi Ekle

Belgeye bir metin kutusu eklemek için [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) yöntemini kullanın.

Aşağıdaki kod örneği, metin giriş formu alanının bir belgeye nasıl ekleneceğini gösterir:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Onay Kutusu Ekle

Belgeye bir onay kutusu eklemek için [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/)'i arayın.

Aşağıdaki kod örneği, onay kutusu form alanının bir belgeye nasıl ekleneceğini gösterir:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Birleşik Giriş Kutusu Ekleme

Belgeye bir Combobox eklemek için [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/)'i arayın.

Aşağıdaki kod örneği, Combobox form alanının bir belgeye nasıl ekleneceğini gösterir:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Form Alanlarını Edinme

Form alanlarının bir koleksiyonu, [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/) özelliği kullanılarak alınabilen [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) sınıfı tarafından temsil edilir. Bu, belgenin kendisi de dahil olmak üzere herhangi bir belge düğümünde bulunan form alanlarını elde edebileceğiniz anlamına gelir.

{{% alert color="primary" %}}

Aşağıdaki örneklerin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx)'ten indirebilirsiniz.

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

Belirli bir form alanını dizinine veya adına göre alabilirsiniz.

Aşağıdaki kod örneği form alanlarına nasıl erişileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

[FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) özellikleri form alanı adı, türü ve sonucuyla çalışmanıza olanak tanır.

Aşağıdaki kod örneği form alanı adı, türü ve sonucuyla nasıl çalışılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Form Alanlarını Biçimlendir

[FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/)'nin [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) özelliği, yazı tipi formatının alan değeri de dahil olmak üzere bir bütün olarak [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/)'ye uygulanmasına olanak tanır.

Aşağıdaki kod örneği, yazı tipi formatının **FormField**'e nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
