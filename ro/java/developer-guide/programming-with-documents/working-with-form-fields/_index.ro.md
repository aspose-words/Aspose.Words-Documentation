---
title: Lucrul cu câmpurile de formular în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu câmpurile de formular
linktitle: Lucrul cu câmpurile de formular
description: "Înțelegerea câmpurilor de formular caracteristică, lucrul cu câmpurile de formular folosind Java."
type: docs
weight: 380
url: /ro/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Un document care conține spații libere de completare (câmpuri) este cunoscut sub numele de formular. De exemplu, puteți crea un formular de înregistrare în Microsoft Word care utilizează liste derulante din care utilizatorii pot selecta intrări. Câmpul `Form` este o locație în care este stocat un anumit tip de date, cum ar fi un nume sau o adresă. Câmpurile de formular din Microsoft Word includ introducerea textului, combobox și checkbox.

Puteți utiliza câmpurile de formular din proiectul dvs. pentru a" comunica " cu utilizatorii dvs. De exemplu, creați un document al cărui conținut este protejat, dar numai câmpurile de formular sunt editabile. Utilizatorii pot introduce datele în câmpurile formularului și pot trimite documentul. Aplicația dvs. care utilizează Aspose.Words poate prelua date din câmpurile formularului și le poate procesa.

Plasarea câmpurilor de formular în document prin cod este ușoară. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) are metode speciale pentru inserarea lor, câte una pentru fiecare tip de câmp de formular. Fiecare dintre metode acceptă un parametru șir care reprezintă numele câmpului de formular. Numele poate fi un șir gol. Dacă totuși specificați un nume pentru câmpul Formular, atunci un marcaj este creat automat cu același nume.

## Introduceți Câmpurile Formularului

Câmpurile de formular sunt un caz particular de câmpuri de cuvinte care permite "interacțiunea" cu utilizatorul. Câmpurile de formular din Microsoft Word includ textbox, combo box și checkbox.

**DocumentBuilder**

Următorul exemplu de cod arată cum să inserați un câmp de formular combobox într-un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Introduceți o introducere de Text

Utilizați metoda **insertTextInput** pentru a insera o casetă de text în document.

Următorul exemplu de cod arată cum să inserați un câmp de formular de introducere a textului într-un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Introduceți o casetă de selectare

Apelați **insertCheckBox** pentru a insera un checkbox în document.

Următorul exemplu de cod arată cum să inserați un câmp de formular checkbox într-un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Introduceți o casetă combinată

Apelați **insertComboBox** pentru a insera un combobox în document.

Următorul exemplu de cod arată cum să inserați un câmp de formular Combobox într-un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Obțineți Câmpuri De Formular

O colecție de câmpuri de formular este reprezentată de clasa [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) care poate fi recuperată folosind proprietatea [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields). Aceasta înseamnă că puteți obține câmpuri de formular conținute în orice nod de document, inclusiv documentul în sine.

Următorul exemplu de cod arată cum să obțineți o colecție de câmpuri de formular:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion din următoarele exemple din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Puteți obține un anumit câmp de formular după indexul sau numele acestuia.

Următorul exemplu de cod arată cum să accesați câmpurile formularului:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

Proprietățile **FormField** vă permit să lucrați cu numele, tipul și rezultatul câmpului de formular.

Următorul exemplu de cod arată cum să lucrați cu numele câmpului de formular, tipul și rezultatul:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
