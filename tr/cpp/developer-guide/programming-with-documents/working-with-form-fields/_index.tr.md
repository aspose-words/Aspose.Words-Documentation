---
title: C++ içindeki Form Alanlarıyla Çalışma
second_title: Aspose.Words için C++
articleTitle: Form Alanları ile Çalışma
linktitle: Form Alanları ile Çalışma
description: "Form Alanlarını Anlama özelliği, C++ kullanarak Form Alanlarıyla çalışma."
type: docs
weight: 380
url: /tr/cpp/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Doldurma boşlukları (alanlar) içeren bir belge form olarak bilinir. Örneğin, kullanıcıların girdileri seçebileceği açılır listeleri kullanan Microsoft Word biçiminde bir kayıt formu oluşturabilirsiniz. Form alanı, ad veya adres gibi belirli bir veri türünün depolandığı konumdur. Microsoft Word içindeki form alanları arasında metin girişi, Combobox ve onay kutusu bulunur.

Projenizdeki form alanlarını kullanıcılarınızla "iletişim kurmak" için kullanabilirsiniz. Örneğin, içeriği korunan ancak yalnızca form alanları düzenlenebilir bir belge oluşturursunuz. Kullanıcılar form alanlarına verileri girebilir ve belgeyi gönderebilir. Aspose.Words kullanan uygulamanız form alanlarından veri alabilir ve bunları işleyebilir.

Form alanlarını kod aracılığıyla belgeye yerleştirmek kolaydır. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), her form alanı türü için bir tane olmak üzere bunları eklemek için özel yöntemlere sahiptir. Yöntemlerin her biri, form alanının adını temsil eden bir dize parametresini kabul eder. Ad boş bir dize olabilir. Ancak form alanı için bir ad belirtirseniz, aynı ada sahip bir yer imi otomatik olarak oluşturulur.

## Form Alanları Ekleme

Form alanları, kullanıcıyla "etkileşime" izin veren belirli bir Sözcük alanı durumudur. Microsoft Word içindeki form alanları metin kutusu, birleşik giriş kutusu ve onay kutusunu içerir.

**DocumentBuilder**

Aşağıdaki kod örneği, bir belgeye bir combobox form alanının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## Form Alanlarının Alınması

Form alanları topluluğu, [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/) özelliği kullanılarak alınabilen [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/) sınıfı tarafından temsil edilir. Bu, belgenin kendisi de dahil olmak üzere herhangi bir belge düğümünde bulunan form alanlarını alabileceğiniz anlamına gelir.

Aşağıdaki kod örneği, form alanları koleksiyonunun nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

Belirli bir form alanını dizinine veya adına göre alabilirsiniz.

Aşağıdaki kod örneği, form alanlarına nasıl erişileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

**FormField** özellikleri, form alanı adı, türü ve sonucu ile çalışmanıza izin verir.

Aşağıdaki kod örneği, form alanı adı, türü ve sonucuyla nasıl çalışılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
