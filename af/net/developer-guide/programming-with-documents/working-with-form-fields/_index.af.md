---
title: Werk Met Vorm Velde in C#
second_title: Aspose.Words vir .NET
articleTitle: Werk Met Vorm Velde
linktitle: Werk Met Vorm Velde
description: "Verstaan Vorm Velde funksie, werk met Vorm Velde met behulp van C#."
type: docs
weight: 380
url: /af/net/working-with-form-fields/
---

'n dokument wat vul-in blanks (velde) bevat, staan bekend as'n vorm. U kan byvoorbeeld'n registrasievorm in Microsoft Word skep wat aftreklyste gebruik waaruit gebruikers inskrywings kan kies. Die `Form` veld is'n plek waar'n spesifieke tipe data, soos'n naam of adres, gestoor word. Vorm velde in Microsoft Word sluit teks invoer, combobox en checkbox.

U kan vormvelde in u projek gebruik om met u gebruikers te "kommunikeer". Byvoorbeeld, jy skep'n dokument waarvan die inhoud beskerm word, maar slegs vormvelde is bewerkbaar. Die gebruikers kan die data in die vormvelde invoer en die dokument indien. Jou aansoek wat Aspose.Words gebruik kan data van die vorm velde te haal en verwerk dit.

Die plasing van vorm velde in die dokument via kode is maklik. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) het spesiale metodes om hulle in te voeg, een vir elke vorm veld tipe. Elk van die metodes aanvaar'n string parameter wat die naam van die vorm veld. Die naam kan'n leë string wees. As u egter'n naam vir die vormveld spesifiseer, word'n boekmerk outomaties met dieselfde naam geskep.

## Voeg By Vorm Velde

Vorm velde is'n spesifieke geval van Woord velde wat "interaksie" met die gebruiker toelaat. Vorm velde in Microsoft Word sluit teks boks, combo boks en checkbox.

**DocumentBuilder**

Die volgende kode voorbeeld toon hoe om'n combobox vorm veld in'n dokument in te voeg:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Voeg By Teks Invoer

Gebruik die **InsertTextInput** metode om'n tekskassie in die dokument in te voeg.

Die volgende kode voorbeeld toon hoe om'n teks invoer vorm veld in'n dokument in te voeg:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Voeg'n Boks in

Bel **InsertCheckBox** om'n checkbox in die dokument in te voeg.

Die volgende kode voorbeeld toon hoe om'n checkbox vorm veld in'n dokument in te voeg:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Voeg'n Kombinasie Boks

Bel **InsertComboBox** om'n combobox in die dokument in te voeg.

Die volgende kode voorbeeld toon hoe om'n Combobox vorm veld in'n dokument in te voeg:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Verkry Vorm Velde

'n versameling van vorm velde word verteenwoordig deur die [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) klas wat kan verkry word met behulp van die [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/) eiendom. Dit beteken dat u vormvelde kan kry wat in enige dokumentknooppunt vervat is, insluitend die dokument self.

{{% alert color="primary" %}}

U kan die voorbeeldlêer van die volgende voorbeelde aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n versameling van vorm velde te kry:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

Jy kan'n spesifieke vorm veld kry deur sy indeks of naam.

Die volgende kode voorbeeld toon hoe om toegang tot vorm velde:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

Die **FormField** eienskappe laat jou toe om te werk met vorm veld naam, tipe, en resultaat.

Die volgende kode voorbeeld toon hoe om te werk met vorm veld naam, tipe, en resultaat:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Formaat Vorm Velde

Die [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) eienskap van [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) laat toe om lettertipe te formateer op die **FormField** as geheel, insluitend die veldwaarde.

Die volgende kode voorbeeld toon hoe om lettertipe formatering toe te pas op die **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
