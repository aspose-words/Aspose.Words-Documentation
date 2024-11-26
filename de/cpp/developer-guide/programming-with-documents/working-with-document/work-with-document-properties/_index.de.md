---
title: Arbeiten mit Dokumenteigenschaften in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Dokumenteigenschaften
linktitle: Arbeiten mit Dokumenteigenschaften
description: "Aspose.Words für C++ ermöglicht das Speichern einiger nützlicher Informationen zu Ihrem Dokument, z. B. API und Versionsnummer oder autorisiertes Datum, in integrierten oder benutzerdefinierten Dokumenteigenschaften."
type: docs
weight: 10
url: /de/cpp/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Dokumenteigenschaften ermöglichen das Speichern einiger nützlicher Informationen zu Ihrem Dokument. Diese Eigenschaften können in zwei Gruppen unterteilt werden:

* System oder integriert, die Werte wie Dokumenttitel, Autorenname, Dokumentstatistik und andere enthalten.
* Benutzerdefiniert oder benutzerdefiniert, bereitgestellt als Name-Wert-Paare, wobei der Benutzer sowohl den Namen als auch den Wert definieren kann.

Es ist nützlich zu wissen, dass Informationen zu API und Versionsnummer direkt in Ausgabedokumente geschrieben werden. Wenn Sie beispielsweise ein Dokument in PDF konvertieren, füllt Aspose.Words das Feld "Anwendung" mit "Aspose.Words" und das Feld "PDF Produzent" mit "Aspose.Words für C++ YY.M.N", wobei *YY.M.N* die Version von Aspose.Words ist, die für die Konvertierung verwendet wird. Weitere Einzelheiten finden Sie unter [Name des Generators oder Herstellers in Ausgabedokumenten enthalten](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Beachten Sie, dass Sie **cannot direct** Aspose.Words ändern oder diese Informationen aus Ausgabedokumenten entfernen.

{{% /alert %}}

## Auf Dokumenteigenschaften zugreifen

Um auf Dokumenteigenschaften in Aspose.Words zuzugreifen, verwenden Sie:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/), um integrierte Eigenschaften zu erhalten.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/), um benutzerdefinierte Eigenschaften zu erhalten.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

Mit der Klasse [DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) können Sie den Namen, den Wert und den Typ einer Dokumenteigenschaft abrufen. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) gibt ein Objekt zurück, aber es gibt eine Reihe von Methoden, mit denen Sie den Eigenschaftswert in einen bestimmten Typ konvertieren können. Nachdem Sie erfahren haben, um welchen Typ es sich bei der Eigenschaft handelt, können Sie eine der **DocumentProperty.ToXXX**-Methoden verwenden, z. B. **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) und **DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/), um den Wert des entsprechenden Typs zu ermitteln.

Das folgende Codebeispiel zeigt, wie alle integrierten und benutzerdefinierten Eigenschaften in einem Dokument aufgelistet werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

In Microsoft Word können Sie über das Menü "Datei → Eigenschaften" auf die Dokumenteigenschaften zugreifen.

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## Dokumenteigenschaften hinzufügen oder entfernen

Sie können integrierte Dokumenteigenschaften nicht mit Aspose.Words hinzufügen oder entfernen. Sie können nur ihre Werte ändern oder aktualisieren.

Um benutzerdefinierte Dokumenteigenschaften mit Aspose.Words hinzuzufügen, verwenden Sie die Methode [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/) und übergeben Sie den neuen Eigenschaftsnamen und den Wert des entsprechenden Typs. Die Methode gibt das neu erstellte **DocumentProperty** -Objekt zurück.

Um benutzerdefinierte Eigenschaften zu entfernen, verwenden Sie die Methode [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/) und übergeben Sie den zu entfernenden Eigenschaftsnamen oder die Methode [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/), um die Eigenschaft nach Index zu entfernen. Sie können auch alle Eigenschaften mit der Methode [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/) entfernen.

Das folgende Codebeispiel überprüft, ob eine benutzerdefinierte Eigenschaft mit einem bestimmten Namen in einem Dokument vorhanden ist, und fügt einige weitere benutzerdefinierte Dokumenteigenschaften hinzu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie eine benutzerdefinierte Dokumenteigenschaft entfernen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## Aktualisieren der integrierten Dokumenteigenschaften

Aspose.Words aktualisiert Dokumenteigenschaften nicht automatisch, wie es Microsoft Word bei einigen Eigenschaften tut, sondern bietet eine Methode zum Aktualisieren einiger statistischer integrierter Dokumenteigenschaften. Rufen Sie die Methode [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/) auf, um die folgenden Eigenschaften neu zu berechnen und zu aktualisieren:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## Erstellen einer neuen benutzerdefinierten Eigenschaft, die mit Inhalten verknüpft ist

Aspose.Words stellt die Methode [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) bereit, um eine neue benutzerdefinierte Dokumenteigenschaft zu erstellen, die mit Inhalt verknüpft ist. Diese Eigenschaft gibt das neu erstellte Eigenschaftsobjekt oder null zurück, wenn [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) ungültig ist.

Das folgende Codebeispiel zeigt, wie Sie einen Link zu einer benutzerdefinierten Eigenschaft konfigurieren:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## Dokumentvariablen abrufen

Sie können eine Sammlung von Dokumentvariablen mit der Eigenschaft [Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/) abrufen. Variablennamen und -werte sind Zeichenfolgen.

Das folgende Codebeispiel zeigt, wie Dokumentvariablen aufgelistet werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Persönliche Informationen aus dem Dokument entfernen

Wenn Sie ein Word-Dokument für andere Personen freigeben möchten, möchten Sie möglicherweise persönliche Informationen wie den Namen des Autors und die Firma entfernen. Verwenden Sie dazu die Eigenschaft [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/), um das Flag zu setzen, das angibt, dass Microsoft Word beim Speichern des Dokuments alle Benutzerinformationen aus Kommentaren, Revisionen und Dokumenteigenschaften entfernt.

Das folgende Codebeispiel zeigt, wie Sie persönliche Informationen entfernen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

Das Setzen dieser Option entfernt keine persönlichen Informationen während der Verarbeitung eines Dokuments in Aspose.Words und wirkt sich nur auf das Verhalten von Microsoft Word aus.

{{% /alert %}}
