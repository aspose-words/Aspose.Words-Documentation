---
title: Lucrul cu câmpurile de formular în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu câmpurile formularului
linktitle: Lucrul cu câmpurile formularului
description: "`Înțelegerea câmpurilor de formular, lucrul cu câmpurile de formular folosind C#`."
type: docs
weight: 380
url: /ro/net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Un document care conține spații de umplut (campuri) este cunoscut sub numele de formular. De exemplu, poţi crea un formular de înregistrare în Microsoft Word care foloseşte liste derulante din care utilizatorii pot selecta intrări. Câmpul `Form` este o locație unde un anumit tip de date, cum ar fi un nume sau o adresă, este stocat. Câmpurile formularului din Microsoft Word includ câmpul de intrare text, câmpul combobox și câmpul checkbox.

Poți folosi câmpurile de formular în proiectul tău pentru a "comunica" cu utilizatorii tăi. De exemplu, creezi un document a cărui conținut este protejat, dar doar câmpurile formularului sunt editabile. Utilizatorii pot introduce datele în câmpurile formularului și să trimită documentul. Aplicația ta care foloseşte Aspose.Words poate recupera datele din câmpurile formularului și să le proceseze.

Pune câmpurile de formular în document prin intermediul codului este ușor. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) are metode speciale pentru inserarea lor, una pentru fiecare tip de câmp de formular. Fiecare dintre metode acceptă un parametru de tip șir reprezentând numele câmpului formularului. Numele poate fi un șir gol. Dacă totuși ai specificat un nume pentru câmpul formularului, atunci o marcă de carte este creată automat cu același nume.

## Inserare câmpuri formular

Câmpurile de formular sunt un caz particular de câmpuri de cuvânt care permit "interacțiunea" cu utilizatorul. Câmpurile formularului în Microsoft Word includ caseta de text, caseta combinată și caseta de verificare.

**DocumentBuilder** oferă metode speciale pentru a insera fiecare tip de câmp de formular în document: [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/) și [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/). Notă că dacă specificați un nume pentru câmpul formularului, atunci se creează automat o marcă cu același nume.

Exemplul de cod următor prezintă modul în care se inserează un câmp formular combobox într-un document

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Introduceţi o intrare de text

Foloseşte metoda **InsertTextInput** pentru a insera o casetă de text în document.

Exemplul de cod următor arată cum să inserezi un câmp de intrare de tip text într-un document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Introduceți o Casetă de Selectare

Apelați **InsertCheckBox** pentru a insera o casetă de selectare în document.

Exemplul de cod următor arată cum se introduce un câmp de casetă selectabilă într-un document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Introduce o casetă combo

Apel **InsertComboBox** pentru a insera un combobox în documentul.

Exemplul de cod următor arată cum să inserați un câmp formular combobox într-un document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Obținerea câmpurilor formularului

O colecție de câmpuri de formular este reprezentată de clasa [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) care poate fi recuperată folosind proprietatea [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/). Acest lucru înseamnă că poți obține câmpuri de formular conținute în orice nod de document inclusiv în documentul însuși.

{{% alert color="primary" %}}

Poţi descărca fişierul de exemplu al următoarelor exemple de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Următorul exemplu de cod arată cum se obține o colecție de câmpuri de formular:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

Poţi obţine un anumit câmp formular după indice sau nume.

Exemplul de cod de mai jos arată cum se accesează câmpurile formularului:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

Proprietățile **FormField** îți permit să lucrezi cu numele câmpului formular, tipul și rezultatul.

Exemplul de cod următor arată cum să lucrezi cu numele câmpului formular, tip și rezultat:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Formate câmpuri formular

Proprietatea [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) din [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) permite aplicarea formatării fontului la întregul **FormField**, inclusiv valoarea câmpului.

Exemplul de cod următor arată cum să aplicați formatarea fontului la **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
