---
title: Arbeiten mit Formularfeldern in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Formularfeldern
linktitle: Arbeiten mit Formularfeldern
description: "Grundlegendes zu Formularfeldern, Arbeiten mit Formularfeldern mit C++."
type: docs
weight: 380
url: /de/cpp/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Ein Dokument, das ausfüllbare Leerzeichen (Felder) enthält, wird als Formular bezeichnet. Sie können beispielsweise ein Registrierungsformular in Microsoft Word erstellen, das Dropdown-Listen verwendet, aus denen Benutzer Einträge auswählen können. Ein Formularfeld ist ein Speicherort, an dem eine bestimmte Art von Daten, z. B. ein Name oder eine Adresse, gespeichert ist. Formularfelder in Microsoft Word enthalten Texteingabe, Kombinationsfeld und Kontrollkästchen.

Sie können Formularfelder in Ihrem Projekt verwenden, um mit Ihren Benutzern zu "kommunizieren". Sie erstellen beispielsweise ein Dokument, dessen Inhalt geschützt ist, aber nur Formularfelder bearbeitet werden können. Die Benutzer können die Daten in die Formularfelder eingeben und das Dokument absenden. Ihre Anwendung, die Aspose.Words verwendet, kann Daten aus den Formularfeldern abrufen und verarbeiten.

Das Einfügen von Formularfeldern in das Dokument per Code ist einfach. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) verfügt über spezielle Methoden zum Einfügen, eine für jeden Formularfeldtyp. Jede der Methoden akzeptiert einen Zeichenfolgenparameter, der den Namen des Formularfelds darstellt. Der Name kann eine leere Zeichenfolge sein. Wenn Sie jedoch einen Namen für das Formularfeld angeben, wird automatisch ein Lesezeichen mit demselben Namen erstellt.

## Formularfelder einfügen

Formularfelder sind ein besonderer Fall von Wortfeldern, die eine "Interaktion" mit dem Benutzer ermöglichen. Formularfelder in Microsoft Word enthalten Textfeld, Kombinationsfeld und Kontrollkästchen.

**DocumentBuilder**

Das folgende Codebeispiel zeigt, wie Sie ein Kombinationsfeld-Formularfeld in ein Dokument einfügen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## Formularfelder erhalten

Eine Sammlung von Formularfeldern wird durch die Klasse [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/) dargestellt, die mit der Eigenschaft [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/) abgerufen werden kann. Dies bedeutet, dass Sie Formularfelder abrufen können, die in jedem Dokumentknoten enthalten sind, einschließlich des Dokuments selbst.

Das folgende Codebeispiel zeigt, wie Sie eine Sammlung von Formularfeldern abrufen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

Sie können ein bestimmtes Formularfeld anhand seines Index oder Namens abrufen.

Das folgende Codebeispiel zeigt, wie auf Formularfelder zugegriffen wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

Mit den **FormField**-Eigenschaften können Sie mit Name, Typ und Ergebnis des Formularfelds arbeiten.

Das folgende Codebeispiel zeigt, wie Sie mit Name, Typ und Ergebnis des Formularfelds arbeiten:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
