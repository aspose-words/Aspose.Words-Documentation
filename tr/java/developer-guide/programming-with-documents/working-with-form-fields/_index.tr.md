---
title: Form Alanlarında Çalışma Java ile
second_title: Aspose.Words için Java
articleTitle: Form Alanlarıyla Çalışmak
linktitle: Form Alanlarıyla Çalışmak
description: "Form Alanları özelliğini anlama ve Java kullanarak Form Alanlarıyla çalışma."
type: docs
weight: 380
url: /tr/java/working-with-form-fields/
---

Boşlukları doldurmak için kullanılan bir belgeye form denir. Örneğin, kullanıcıların girişler arasından seçim yapabileceği düşüş menüleri kullanan kayıt formunu Microsoft Word'da oluşturabilirsiniz. The `Form` alanı ad veya adres gibi belirli bir tür verinin saklandığı yerdir. Form alanları Microsoft Word metin girişi, combobox ve onay kutusundan oluşur.

Projenizde kullanıcılarınızla "iletişime geçmek" için form alanları kullanabilirsiniz. Örneğin, içeriği korunan ancak yalnızca form alanları düzenlenebilir olan bir belge oluşturursunuz. Kullanıcılar form alanlarına veri girebilir ve belgenin gönderilmesini sağlayabilir. Form alanlarından veri alabilen ve işleyebilen Aspose.Words kullanan uygulamanız bu verileri işleyebilir.

Form alanları belgeye kod aracılığıyla yerleştirilmesi kolaydır. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) her bir form alanı türü için özel yöntemlere sahiptir. Her yöntemin kabul ettiği parametre form alanının adı temsil eden bir dizedir. Ad boş bir dize olabilir. Ancak form alanı adına bir isim belirtirseniz, aynı adında otomatik olarak bir yer imi oluşturulur.

## Form Alanları Ekle

Form alanları kelime alanlarının bir özel türüdür ve kullanıcı ile "eş etkileşim" sağlar. Microsoft Word 'daki form alanları metin kutusu, kombinasyon kutusu ve onay kutusunu içerir.

**DocumentBuilder** bir belgeye her tür form alanı eklemek için özel yöntemler sağlar: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) veya [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int).

Aşağıdaki kod örneğinde, bir belgeye bir kombinasyon kutusu form alanı nasıl eklenir gösterilmektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Metin Girişi Ekle

Metin kutusunu belgenin içine eklemek için **insertTextInput** yöntemini kullanın.

Aşağıdaki kod örneği bir metin girişi form alanını bir belgeye nasıl ekleyeceğinizi göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Bir onay kutusunu yerleştirin

Çağrı **insertCheckBox** belgenin içine bir onay kutusunu eklemek için.

Aşağıdaki kod örneği, bir belgeye onay kutusu form alanı nasıl ekleneceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Kombinasyon Kutusunu Ekle

Çağrı **insertComboBox** belgeye bir kombobox eklemek için.

Aşağıdaki kod örneği bir belgeye Combobox form alanı eklemeyi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Form Alanlarını Elde Etmek

Bir form alanı koleksiyonu, [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) sınıfı tarafından temsil edilir ve [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) özelliğini kullanarak alınabilir. Bu, her bir belge düğümünü içeren herhangi bir belge düğümü de dahil olmak üzere form alanlarını elde edebileceğiniz anlamına gelir.

Aşağıdaki kod örneği bir form alanlarının koleksiyonunu nasıl alacağınızı göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Aşağıdaki örneklerden bir örnek dosyası dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx)'dan indirebilirsiniz.

{{% /alert %}}

Sıra numarası veya adı ile belirli bir form alanına erişebilirsiniz.

Aşağıdaki kod örneği form alanlarına nasıl erişileceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

**FormField** özellikleri sizin form alan adı, türü ve sonucu ile çalışmanıza izin verir.

Aşağıdaki kod örneği form alan adı, türü ve sonucu ile nasıl çalışılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
