---
title: C#'te Form Alanlarıyla Çalışmak
second_title: .NET için Aspose.Words
articleTitle: Form Alanlarıyla Çalışmak
linktitle: Form Alanlarıyla Çalışmak
description: "Form Alanları özelliğini anlama, C# kullanarak Form Alanları ile çalışma."
type: docs
weight: 380
url: /tr/net/working-with-form-fields/
---

Doldurulacak boşlukları (alanları) içeren bir belge form olarak bilinir. Örneğin, Microsoft Word'te kullanıcıların girişleri seçebileceği açılır listeleri kullanan bir kayıt formu oluşturabilirsiniz. `Form` alanı, ad veya adres gibi belirli bir veri türünün depolandığı konumdur. Microsoft Word'teki form alanları metin girişi, birleşik giriş kutusu ve onay kutusunu içerir.

Kullanıcılarınızla "iletişim kurmak" için projenizdeki form alanlarını kullanabilirsiniz. Örneğin, içeriği korunan ancak yalnızca form alanlarının düzenlenebildiği bir belge oluşturursunuz. Kullanıcılar form alanlarına verilerini girip belgeyi gönderebilirler. Aspose.Words kullanan uygulamanız form alanlarından veri alıp işleyebilir.

Form alanlarını kod aracılığıyla belgeye yerleştirmek kolaydır. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)'in bunları eklemek için her form alanı türü için bir tane olmak üzere özel yöntemleri vardır. Yöntemlerin her biri, form alanının adını temsil eden bir dize parametresini kabul eder. Ad boş bir dize olabilir. Ancak form alanı için bir ad belirlerseniz, aynı adla otomatik olarak bir yer imi oluşturulur.

## Form Alanları Ekle

Form alanları, kullanıcıyla "etkileşime" izin veren özel bir Word alanıdır. Microsoft Word'teki form alanları metin kutusu, birleşik giriş kutusu ve onay kutusunu içerir.

**DocumentBuilder**, her tür form alanını belgeye eklemek için özel yöntemler sağlar: [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/) ve [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/). Form alanı için bir ad belirlerseniz aynı adla otomatik olarak bir yer işareti oluşturulacağını unutmayın.

Aşağıdaki kod örneği, birleşik giriş kutusu form alanının bir belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Metin Girişi Ekle

Belgeye bir metin kutusu eklemek için **InsertTextInput** yöntemini kullanın.

Aşağıdaki kod örneği, metin giriş formu alanının bir belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Onay Kutusu Ekle

Belgeye bir onay kutusu eklemek için **InsertCheckBox**'i arayın.

Aşağıdaki kod örneği, onay kutusu form alanının bir belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Birleşik Giriş Kutusu Ekleme

Belgeye bir açılan kutu eklemek için **InsertComboBox**'i arayın.

Aşağıdaki kod örneği, Combobox form alanının bir belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Form Alanlarını Edinme

Form alanlarının bir koleksiyonu, [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/) özelliği kullanılarak alınabilen [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) sınıfı tarafından temsil edilir. Bu, belgenin kendisi de dahil olmak üzere herhangi bir belge düğümünde bulunan form alanlarını elde edebileceğiniz anlamına gelir.

{{% alert color="primary" %}}

Aşağıdaki örneklerin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx)'ten indirebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, form alanları koleksiyonunun nasıl alınacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

Belirli bir form alanını dizinine veya adına göre alabilirsiniz.

Aşağıdaki kod örneği form alanlarına nasıl erişileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

**FormField** özellikleri form alanı adı, türü ve sonucuyla çalışmanıza olanak tanır.

Aşağıdaki kod örneği form alanı adı, türü ve sonucuyla nasıl çalışılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Form Alanlarını Biçimlendir

[FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/)'nin [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) özelliği, yazı tipi formatının alan değeri de dahil olmak üzere **FormField**'e bir bütün olarak uygulanmasına olanak tanır.

Aşağıdaki kod örneği, yazı tipi formatının **FormField**'e nasıl uygulanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
