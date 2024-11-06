---
title: Werk Met Vorm Velde in Java
second_title: Aspose.Words vir Java
articleTitle: Werk Met Vorm Velde
linktitle: Werk Met Vorm Velde
description: "Verstaan Vorm Velde funksie, werk met Vorm Velde met behulp van Java."
type: docs
weight: 380
url: /af/java/working-with-form-fields/
---

'n dokument wat vul-in blanks (velde) bevat, staan bekend as'n vorm. U kan byvoorbeeld'n registrasievorm in Microsoft Word skep wat aftreklyste gebruik waaruit gebruikers inskrywings kan kies. Die `Form` veld is'n plek waar'n spesifieke tipe data, soos'n naam of adres, gestoor word. Vorm velde in Microsoft Word sluit teks invoer, combobox en checkbox.

U kan vormvelde in u projek gebruik om met u gebruikers te "kommunikeer". Byvoorbeeld, jy skep'n dokument waarvan die inhoud beskerm word, maar slegs vormvelde is bewerkbaar. Die gebruikers kan die data in die vormvelde invoer en die dokument indien. Jou aansoek wat Aspose.Words gebruik kan data van die vorm velde te haal en verwerk dit.

Die plasing van vorm velde in die dokument via kode is maklik. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) het spesiale metodes om hulle in te voeg, een vir elke vorm veld tipe. Elk van die metodes aanvaar'n string parameter wat die naam van die vorm veld. Die naam kan'n leë string wees. As u egter'n naam vir die vormveld spesifiseer, word'n boekmerk outomaties met dieselfde naam geskep.

## Voeg By Vorm Velde

Vorm velde is'n spesifieke geval van Woord velde wat "interaksie" met die gebruiker toelaat. Vorm velde in Microsoft Word sluit teks boks, combo boks en checkbox.

**DocumentBuilder**

Die volgende kode voorbeeld toon hoe om'n combobox vorm veld in'n dokument in te voeg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Voeg By Teks Invoer

Gebruik die **insertTextInput** metode om'n tekskassie in die dokument in te voeg.

Die volgende kode voorbeeld toon hoe om'n teks invoer vorm veld in'n dokument in te voeg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Voeg'n Boks in

Bel **insertCheckBox** om'n checkbox in die dokument in te voeg.

Die volgende kode voorbeeld toon hoe om'n checkbox vorm veld in'n dokument in te voeg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Voeg'n Kombinasie Boks

Bel **insertComboBox** om'n combobox in die dokument in te voeg.

Die volgende kode voorbeeld toon hoe om'n Combobox vorm veld in'n dokument in te voeg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Verkry Vorm Velde

'n versameling van vorm velde word verteenwoordig deur die [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) klas wat kan verkry word met behulp van die [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) eiendom. Dit beteken dat u vormvelde kan kry wat in enige dokumentknooppunt vervat is, insluitend die dokument self.

Die volgende kode voorbeeld toon hoe om'n versameling van vorm velde te kry:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van die volgende voorbeelde aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Jy kan'n spesifieke vorm veld kry deur sy indeks of naam.

Die volgende kode voorbeeld toon hoe om toegang tot vorm velde:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

Die **FormField** eienskappe laat jou toe om te werk met vorm veld naam, tipe, en resultaat.

Die volgende kode voorbeeld toon hoe om te werk met vorm veld naam, tipe, en resultaat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
