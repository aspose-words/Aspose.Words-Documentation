---
title: Lucrul cu câmpurile de formular în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu câmpurile de formular
linktitle: Lucrul cu câmpurile de formular
description: "Înțelegerea câmpurilor de formular caracteristică, lucrul cu câmpurile de formular folosind C++."
type: docs
weight: 380
url: /ro/cpp/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Un document care conține spații libere de completare (câmpuri) este cunoscut sub numele de formular. De exemplu, puteți crea un formular de înregistrare în Microsoft Word care utilizează liste derulante din care utilizatorii pot selecta intrări. Un câmp de formular este o locație în care este stocat un anumit tip de date, cum ar fi un nume sau o adresă. Câmpurile de formular din Microsoft Word includ introducerea textului, Combobox și checkbox.

Puteți utiliza câmpurile de formular din proiectul dvs. pentru a" comunica " cu utilizatorii dvs. De exemplu, creați un document al cărui conținut este protejat, dar numai câmpurile de formular sunt editabile. Utilizatorii pot introduce datele în câmpurile formularului și pot trimite documentul. Aplicația dvs. care utilizează Aspose.Words poate prelua date din câmpurile formularului și le poate procesa.

Plasarea câmpurilor de formular în document prin cod este ușoară. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) are metode speciale pentru inserarea lor, câte una pentru fiecare tip de câmp de formular. Fiecare dintre metode acceptă un parametru șir care reprezintă numele câmpului de formular. Numele poate fi un șir gol. Dacă totuși specificați un nume pentru câmpul Formular, atunci un marcaj este creat automat cu același nume.

## Introducerea Câmpurilor De Formular

Câmpurile de formular sunt un caz particular de câmpuri de cuvinte care permite "interacțiunea" cu utilizatorul. Câmpurile de formular din Microsoft Word includ textbox, combo box și checkbox.

**DocumentBuilder**

Următorul exemplu de cod arată cum să inserați un câmp de formular combobox într-un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## Obținerea Câmpurilor De Formular

O colecție de câmpuri de formular este reprezentată de clasa [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/) care poate fi recuperată folosind proprietatea [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/). Aceasta înseamnă că puteți obține câmpuri de formular conținute în orice nod de document, inclusiv documentul în sine.

Următorul exemplu de cod arată cum să obțineți o colecție de câmpuri de formular:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

Puteți obține un anumit câmp de formular după indexul sau numele acestuia.

Următorul exemplu de cod arată cum să accesați câmpurile formularului:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

Proprietățile **FormField** vă permit să lucrați cu numele, tipul și rezultatul câmpului de formular.

Următorul exemplu de cod arată cum să lucrați cu numele câmpului de formular, tipul și rezultatul:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
