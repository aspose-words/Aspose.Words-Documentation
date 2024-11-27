---
title: Praca z polami formularzy w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z polami formularzy
linktitle: Praca z polami formularzy
description: "Zrozumienie funkcji pola formularza, praca z polami formularza przy użyciu C++."
type: docs
weight: 380
url: /pl/cpp/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Dokument zawierający puste pola (pola) jest znany jako formularz. Na przykład możesz utworzyć formularz rejestracyjny w Microsoft Word, który używa list rozwijanych, z których użytkownicy mogą wybierać wpisy. Pole formularza To lokalizacja, w której przechowywany jest określony typ danych, taki jak nazwa lub adres. Pola formularza w Microsoft Word obejmują wprowadzanie tekstu, Combobox i checkbox.

Możesz użyć pól formularza w projekcie ,aby" komunikować się " z użytkownikami. Na przykład tworzysz dokument, którego zawartość jest chroniona, ale edytowalne są tylko pola formularza. Użytkownicy mogą wprowadzić dane w polach formularza i przesłać dokument. Twoja aplikacja, która używa Aspose.Words, może pobierać dane z pól formularza i przetwarzać je.

Umieszczanie pól formularza w dokumencie za pomocą kodu jest łatwe. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) ma specjalne metody ich wstawiania, po jednym dla każdego typu pola formularza. Każda z metod akceptuje parametr ciągu reprezentujący nazwę pola formularza. Nazwa może być pustym ciągiem. Jeśli jednak podasz nazwę pola formularza, automatycznie zostanie utworzona zakładka o tej samej nazwie.

## Wstawianie Pól Formularza

Pola formularza to szczególny przypadek pól Word, który umożliwia "interakcję" z użytkownikiem. Pola formularza w Microsoft Word obejmują pole tekstowe, pole kombi i checkbox.

**DocumentBuilder**

Poniższy przykład kodu pokazuje, jak wstawić pole formularza combobox do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## Uzyskiwanie Pól Formularza

Zbiór pól formularza jest reprezentowany przez klasę [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/), którą można pobrać za pomocą właściwości [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/). Oznacza to, że można uzyskać pola formularza zawarte w dowolnym węźle dokumentu, w tym w samym dokumencie.

Poniższy przykład kodu pokazuje, jak uzyskać kolekcję pól formularza:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

Możesz uzyskać określone pole formularza według jego indeksu lub nazwy.

Poniższy przykład kodu pokazuje, jak uzyskać dostęp do pól formularza:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

Właściwości **FormField** umożliwiają pracę z nazwą pola formularza, typem i wynikiem.

Poniższy przykład kodu pokazuje, jak pracować z nazwą pola formularza, typem i wynikiem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
