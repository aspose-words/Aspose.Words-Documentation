---
title: Praca z polami formularzy w C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z polami formularzy
linktitle: Praca z polami formularzy
description: "Zrozumienie funkcji Pola formularza, praca z polami formularza przy użyciu C#."
type: docs
weight: 380
url: /pl/net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Dokument zawierający puste pola (pola) do wypełnienia nazywany jest formularzem. Na przykład możesz utworzyć formularz rejestracyjny w Microsoft Word, który korzysta z list rozwijanych, z których użytkownicy mogą wybierać wpisy. Pole `Form` to miejsce, w którym przechowywany jest określony typ danych, taki jak imię i nazwisko lub adres. Pola formularzy w Microsoft Word obejmują wprowadzanie tekstu, pole kombi i pole wyboru.

Możesz używać pól formularzy w swoim projekcie do "komunikowania się" z użytkownikami. Na przykład tworzysz dokument, którego treść jest chroniona, ale edytowalne są tylko pola formularza. Użytkownicy mają możliwość wprowadzenia danych w polach formularza i przesłania dokumentu. Twoja aplikacja korzystająca z Aspose.Words może pobierać dane z pól formularza i je przetwarzać.

Umieszczanie pól formularzy w dokumencie za pomocą kodu jest łatwe. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) posiada specjalne metody ich wstawiania, po jednej dla każdego typu pola formularza. Każda z metod przyjmuje parametr string reprezentujący nazwę pola formularza. Nazwa może być pustym ciągiem znaków. Jeśli jednak podasz nazwę pola formularza, automatycznie utworzona zostanie zakładka o tej samej nazwie.

## Wstaw pola formularza

Pola formularzy to szczególny przypadek pól programu Word, który umożliwia "interakcję" z użytkownikiem. Pola formularzy w Microsoft Word obejmują pole tekstowe, pole kombi i pole wyboru.

**DocumentBuilder** udostępnia specjalne metody wstawiania każdego typu pola formularza do dokumentu: [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/) i [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/). Pamiętaj, że jeśli określisz nazwę pola formularza, automatycznie utworzona zostanie zakładka o tej samej nazwie.

Poniższy przykład kodu pokazuje, jak wstawić pole formularza combobox do dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Wstaw wprowadzany tekst

Użyj metody **InsertTextInput**, aby wstawić pole tekstowe do dokumentu.

Poniższy przykład kodu pokazuje, jak wstawić pole formularza wprowadzania tekstu do dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Wstaw pole wyboru

Wywołaj **InsertCheckBox**, aby wstawić pole wyboru do dokumentu.

Poniższy przykład kodu pokazuje, jak wstawić pole formularza pola wyboru do dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Wstaw pole kombi

Wywołaj **InsertComboBox**, aby wstawić combobox do dokumentu.

Poniższy przykład kodu pokazuje, jak wstawić pole formularza Combobox do dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Uzyskaj pola formularza

Zbiór pól formularzy jest reprezentowany przez klasę [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/), którą można pobrać za pomocą właściwości [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/). Oznacza to, że możesz uzyskać pola formularzy zawarte w dowolnym węźle dokumentu, łącznie z samym dokumentem.

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik z poniższymi przykładami z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak uzyskać kolekcję pól formularza:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

Możesz uzyskać określone pole formularza według jego indeksu lub nazwy.

Poniższy przykład kodu pokazuje, jak uzyskać dostęp do pól formularza:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

Właściwości **FormField** umożliwiają pracę z nazwą, typem i wynikiem pola formularza.

Poniższy przykład kodu pokazuje, jak pracować z nazwą, typem i wynikiem pola formularza:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Formatuj pola formularza

Właściwość [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) umożliwia zastosowanie formatowania czcionki do całego pliku **FormField**, łącznie z wartością pola.

Poniższy przykład kodu pokazuje, jak zastosować formatowanie czcionki do **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
