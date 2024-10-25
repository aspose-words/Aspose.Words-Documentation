---
title: Werk Met Vorm Velde in C++
second_title: Aspose.Words vir C++
articleTitle: Werk Met Vorm Velde
linktitle: Werk Met Vorm Velde
description: "Verstaan Vorm Velde funksie, werk met Vorm Velde met behulp van C++."
type: docs
weight: 380
url: /af/cpp/working-with-form-fields/
---

'n dokument wat vul-in blanks (velde) bevat, staan bekend as'n vorm. U kan byvoorbeeld'n registrasievorm in Microsoft Word skep wat aftreklyste gebruik waaruit gebruikers inskrywings kan kies. 'n vormveld is'n plek waar'n spesifieke tipe data, soos'n naam of adres, gestoor word. Vorm velde in Microsoft Word sluit teks invoer, Combobox en boks.

U kan vormvelde in u projek gebruik om met u gebruikers te "kommunikeer". Byvoorbeeld, jy skep'n dokument waarvan die inhoud beskerm word, maar slegs vormvelde is bewerkbaar. Die gebruikers kan die data in die vormvelde invoer en die dokument indien. Jou aansoek wat Aspose.Words gebruik kan data van die vorm velde te haal en verwerk dit.

Die plasing van vorm velde in die dokument via kode is maklik. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) het spesiale metodes om hulle in te voeg, een vir elke vorm veld tipe. Elk van die metodes aanvaar'n string parameter wat die naam van die vorm veld. Die naam kan'n leë string wees. As u egter'n naam vir die vormveld spesifiseer, word'n boekmerk outomaties met dieselfde naam geskep.

## Invoeging Van Vormvelde

Vorm velde is'n spesifieke geval van Woord velde wat "interaksie" met die gebruiker toelaat. Vorm velde in Microsoft Word sluit teksboks, kombinasie boks en boks.

**DocumentBuilder**

Die volgende kode voorbeeld toon hoe om'n combobox vorm veld in'n dokument in te voeg:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## Verkryging Van Vormvelde

'n versameling van vorm velde word verteenwoordig deur die [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/) klas wat kan verkry word met behulp van die [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/) eiendom. Dit beteken dat u vormvelde kan kry wat in enige dokumentknooppunt vervat is, insluitend die dokument self.

Die volgende kode voorbeeld toon hoe om'n versameling van vorm velde te kry:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

Jy kan'n spesifieke vorm veld kry deur sy indeks of naam.

Die volgende kode voorbeeld toon hoe om toegang tot vorm velde:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

Die **FormField** eienskappe laat jou toe om te werk met vorm veld naam, tipe, en resultaat.

Die volgende kode voorbeeld toon hoe om te werk met vorm veld naam, tipe, en resultaat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
