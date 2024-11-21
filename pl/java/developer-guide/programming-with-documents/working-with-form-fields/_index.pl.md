---
title: Praca z Forma Fields w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z Pola formularza
linktitle: Praca z Pola formularza
description: "Funkcja Understanding Form Fields, praca z Form Fields przy użyciu Java."
type: docs
weight: 380
url: /pl/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Dokument, który zawiera wypełnienie w pustych polach jest znany jako forma. Na przykład, można utworzyć formularz rejestracyjny w Microsoft Word który używa listy rozwijanej, z której użytkownicy mogą wybierać wpisy. W `Form` pole jest miejscem przechowywania określonego rodzaju danych, takich jak nazwa lub adres. Formować pola w Microsoft Word zawiera dane wejściowe tekstowe, pole i pole wyboru.

Możesz użyć pól formularza w projekcie do "komunikowania się" z użytkownikami. Na przykład, tworzysz dokument, którego zawartość jest chroniona, ale tylko pola formy są edytowalne. Użytkownicy mogą wprowadzić dane w polach formularza i przedłożyć dokument. Twoja aplikacja, która wykorzystuje Aspose.Words może pobierać dane z pól formularza i przetwarzać je.

Umieszczenie pola formularza w dokumencie za pomocą kodu jest łatwe. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) posiada specjalne metody ich wstawiania, po jednym dla każdego typu pola formularza. Każda z metod akceptuje parametr łańcucha przedstawiający nazwę pola formularza. Nazwa może być pusta. Jeśli jednak podasz nazwę pola formularza, to zakładka zostanie automatycznie utworzona z tą samą nazwą.

## Wstaw pola formularza

Pola formularza są szczególnym przypadkiem pól Word, które umożliwiają "interakcję" z użytkownikiem. Formować pola w Microsoft Word zawierają textbox, combo box i pole wyboru.

**DocumentBuilder** zawiera specjalne metody umieszczania w dokumencie każdego rodzaju pola formularza: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) lub [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int).

Poniższy przykład kodu pokazuje jak wstawić pole formularza combobox do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Wstaw wejście tekstu

Użyj **wstawić TextInput** metoda umieszczania w dokumencie pola tekstowego.

Poniższy przykład kodu pokazuje, w jaki sposób wstawić pole formularza tekstowego do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Wstaw pole kontrolne

Call **insertCheckBox** wstawić pole kontrolne do dokumentu.

Poniższy przykład kodu pokazuje, jak umieścić pole formularza wyboru w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Wstaw pole Combo

Call **wstawićComboBox** umieszczanie w dokumencie schowka.

Poniższy przykład kodu pokazuje jak umieścić pole formularza Combobox w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Uzyskaj pola formularza

Zbiór pól formularzy jest reprezentowany przez [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) klasy, które można pobrać za pomocą [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) nieruchomości. Oznacza to, że możesz uzyskać pola formularza zawarte w dowolnym węźle dokumentu, w tym samym dokumencie.

Poniższy przykład kodu pokazuje, jak uzyskać zbiór pól formularzy:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik z poniższych przykładów z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Możesz otrzymać konkretne pole formularza według jego indeksu lub nazwy.

Poniższy przykład kodu pokazuje jak uzyskać dostęp do pól formularza:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

W **FormField** właściwości pozwalają na pracę z nazwą pola formularza, typu i wyniku.

Poniższy przykład kodu pokazuje, jak pracować z nazwą pola formularza, typu i wyniku:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
