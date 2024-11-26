---
title: Arbeiten Sie mit Dokumenteigenschaften
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten Sie mit Dokumenteigenschaften
linktitle: Arbeiten Sie mit Dokumenteigenschaften
description: "Aspose.Words für Python ermöglicht das Speichern einiger nützlicher Informationen zu Ihrem Dokument, wie z. B. API und Versionsnummer oder autorisiertes Date, in integrierten oder benutzerdefinierten Dokumenteigenschaften."
type: docs
weight: 10
url: /de/python-net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Dokumenteigenschaften ermöglichen das Speichern einiger nützlicher Informationen zu Ihrem Dokument. Diese Eigenschaften können in zwei Gruppen unterteilt werden:

* System oder integriert, das Werte wie Dokumenttitel, Autorenname, Dokumentstatistiken und andere enthält.
* Benutzerdefiniert oder benutzerdefiniert, bereitgestellt als Name-Wert-Paare, wobei der Benutzer sowohl den Namen als auch den Wert definieren kann.

Es ist nützlich zu wissen, dass Informationen zu API und Versionsnummer direkt in Ausgabedokumente geschrieben werden. Beispielsweise füllt Aspose.Words beim Konvertieren eines Dokuments in PDF das Feld "Anwendung" mit "Aspose.Words" und das Feld "PDF-Produzent" mit "Aspose.Words für .NET YY.MN" aus, wobei *YY.M.N* die für die Konvertierung verwendete Aspose.Words-Version ist. Weitere Einzelheiten finden Sie unter [Der Name des Generators oder Produzenten ist in den Ausgabedokumenten enthalten](/words/de/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Beachten Sie, dass Sie **kann nicht leiten** Aspose.Words verwenden, um diese Informationen aus Ausgabedokumenten zu ändern oder zu entfernen.

{{% /alert %}}

## Greifen Sie auf die Dokumenteigenschaften zu

Um auf Dokumenteigenschaften in Aspose.Words zuzugreifen, verwenden Sie:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/), um integrierte Eigenschaften zu erhalten.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/), um benutzerdefinierte Eigenschaften zu erhalten.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) und [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) sind Sammlungen von [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/)-Objekten. Diese Objekte können über die Indexer-Eigenschaft nach Namen oder Index abgerufen werden.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) bietet zusätzlich Zugriff auf Dokumenteigenschaften über eine Reihe eingegebener Eigenschaften, die Werte des entsprechenden Typs zurückgeben. Mit [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) können Sie Dokumenteigenschaften zu einem Dokument hinzufügen oder daraus entfernen.

Mit der [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/)-Klasse können Sie den Namen, den Wert und den Typ einer Dokumenteigenschaft abrufen. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) gibt ein Objekt zurück, es gibt jedoch eine Reihe von Methoden, mit denen Sie den Eigenschaftswert in einen bestimmten Typ konvertieren können. Nachdem Sie den Typ der Eigenschaft kennengelernt haben, können Sie eine der **DocumentProperty.to_XXX**-Methoden wie **DocumentProperty.\_\_str\_\_** und [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/) verwenden, um den Wert des entsprechenden Typs abzurufen.

Das folgende Codebeispiel zeigt, wie alle integrierten und benutzerdefinierten Eigenschaften in einem Dokument aufgezählt werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx) herunterladen.

{{% /alert %}}

In Microsoft Word können Sie über das Menü "Datei → Eigenschaften" auf die Dokumenteigenschaften zugreifen.

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## Dokumenteigenschaften hinzufügen oder entfernen

Mit Aspose.Words können Sie keine integrierten Dokumenteigenschaften hinzufügen oder entfernen. Sie können nur deren Werte ändern oder aktualisieren.

Um benutzerdefinierte Dokumenteigenschaften mit Aspose.Words hinzuzufügen, verwenden Sie die [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/)-Methode und übergeben den neuen Eigenschaftsnamen und den Wert des entsprechenden Typs. Die Methode gibt das neu erstellte [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/)-Objekt zurück.

Um benutzerdefinierte Eigenschaften zu entfernen, verwenden Sie die [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/)-Methode, indem Sie ihr den zu entfernenden Eigenschaftsnamen übergeben, oder die [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/)-Methode, um die Eigenschaft nach Index zu entfernen. Sie können alle Eigenschaften auch mithilfe der [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/)-Methode entfernen.

Das folgende Codebeispiel prüft, ob eine benutzerdefinierte Eigenschaft mit einem bestimmten Namen in einem Dokument vorhanden ist, und fügt einige weitere benutzerdefinierte Dokumenteigenschaften hinzu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx) herunterladen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie eine benutzerdefinierte Dokumenteigenschaft entfernt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Integrierte Dokumenteigenschaften aktualisieren

Aspose.Words aktualisiert Dokumenteigenschaften nicht automatisch, wie dies bei Microsoft Word bei einigen Eigenschaften der Fall ist, sondern bietet eine Methode zum Aktualisieren einiger statistischer integrierter Dokumenteigenschaften. Rufen Sie die [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/)-Methode auf, um die folgenden Eigenschaften neu zu berechnen und zu aktualisieren:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## Erstellen Sie eine neue benutzerdefinierte Eigenschaft, die mit Inhalt verknüpft ist

Aspose.Words bietet die [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/)-Methode zum Erstellen einer neuen benutzerdefinierten Dokumenteigenschaft, die mit dem Inhalt verknüpft ist. Diese Eigenschaft gibt das neu erstellte Eigenschaftsobjekt oder null zurück, wenn das **link_source** ungültig ist.

Das folgende Codebeispiel zeigt, wie Sie einen Link zu einer benutzerdefinierten Eigenschaft konfigurieren:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Dokumentvariablen abrufen

Mithilfe der [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/)-Eigenschaft können Sie eine Sammlung von Dokumentvariablen abrufen. Variablennamen und -werte sind Zeichenfolgen.

Das folgende Codebeispiel zeigt, wie Sie Dokumentvariablen hinzufügen und darauf zugreifen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx) herunterladen.

{{% /alert %}}

## Persönliche Informationen aus dem Dokument entfernen

Wenn Sie ein Word-Dokument mit anderen Personen teilen möchten, möchten Sie möglicherweise persönliche Informationen wie den Namen des Autors und das Unternehmen entfernen. Verwenden Sie dazu die [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/)-Eigenschaft, um das Flag zu setzen, das angibt, dass Microsoft Word beim Speichern des Dokuments alle Benutzerinformationen aus Kommentaren, Revisionen und Dokumenteigenschaften entfernt.

Das folgende Codebeispiel zeigt, wie persönliche Informationen entfernt werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

Durch das Festlegen dieser Option werden persönliche Informationen bei der Verarbeitung eines Dokuments in Aspose.Words nicht wirklich entfernt und wirkt sich nur auf das Microsoft Word-Verhalten aus.

{{% /alert %}}
