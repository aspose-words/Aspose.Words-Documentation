---
title: Arbeiten mit Dokumenteigenschaften in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Dokumenteigenschaften
linktitle: Arbeiten mit Dokumenteigenschaften
description: "Aspose.Words für Java ermöglicht das Speichern einiger nützlicher Informationen zu Ihrem Dokument, z. B. API und Versionsnummer oder autorisiertes Datum, in integrierten oder benutzerdefinierten Dokumenteigenschaften."
type: docs
weight: 10
url: /de/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Dokumenteigenschaften ermöglichen das Speichern einiger nützlicher Informationen zu Ihrem Dokument. Diese Eigenschaften können in zwei Gruppen unterteilt werden:

* System oder integriert, die Werte wie Dokumenttitel, Autorenname, Dokumentstatistik und andere enthalten.
* Benutzerdefiniert oder benutzerdefiniert, bereitgestellt als Name-Wert-Paare, wobei der Benutzer sowohl den Namen als auch den Wert definieren kann.

Es ist nützlich zu wissen, dass Informationen zu API und Versionsnummer direkt in Ausgabedokumente geschrieben werden. Wenn Sie beispielsweise ein Dokument in PDF konvertieren, füllt Aspose.Words das Feld "Anwendung" mit "Aspose.Words" und das Feld "PDF Produzent" mit "Aspose.Words für Java YY.M.N", wobei *YY.M.N* die Version von Aspose.Words ist, die für die Konvertierung verwendet wird. Weitere Einzelheiten finden Sie unter [Name des Generators oder Herstellers in Ausgabedokumenten enthalten](/words/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Beachten Sie, dass Sie **cannot direct** Aspose.Words ändern oder diese Informationen aus Ausgabedokumenten entfernen.

{{% /alert %}}

## Auf Dokumenteigenschaften zugreifen

Um auf Dokumenteigenschaften in Aspose.Words zuzugreifen, verwenden Sie:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties), um integrierte Eigenschaften zu erhalten.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties), um benutzerdefinierte Eigenschaften zu erhalten.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

Mit der Klasse [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) können Sie den Namen, den Wert und den Typ einer Dokumenteigenschaft abrufen. [Wert]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value ) gibt ein Objekt zurück, aber es gibt eine Reihe von Methoden, mit denen Sie den Eigenschaftswert in einen bestimmten Typ konvertieren können. Nachdem Sie erfahren haben, um welchen Typ es sich bei der Eigenschaft handelt, können Sie eine der **DocumentProperty.ToXXX**-Methoden verwenden, z. B. **DocumentProperty.**[ToString](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) und **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), um den Wert des entsprechenden Typs zu erhalten.

Das folgende Codebeispiel zeigt, wie alle integrierten und benutzerdefinierten Eigenschaften in einem Dokument aufgelistet werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In Microsoft Word können Sie über das Menü "Datei → Eigenschaften" auf die Dokumenteigenschaften zugreifen.

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Dokumenteigenschaften hinzufügen oder entfernen

Sie können integrierte Dokumenteigenschaften nicht mit Aspose.Words hinzufügen oder entfernen. Sie können nur ihre Werte ändern oder aktualisieren.

Um benutzerdefinierte Dokumenteigenschaften mit Aspose.Words hinzuzufügen, verwenden Sie die Methode [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) und übergeben Sie den neuen Eigenschaftsnamen und den Wert des entsprechenden Typs. Die Methode gibt das neu erstellte **DocumentProperty** -Objekt zurück.

Verwenden Sie zum Entfernen benutzerdefinierter Eigenschaften die Methode [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) und übergeben Sie ihr den zu entfernenden Eigenschaftsnamen oder die Methode [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int), um die Eigenschaft nach Index zu entfernen. Sie können auch alle Eigenschaften mit der Methode [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) entfernen.

Das folgende Codebeispiel überprüft, ob eine benutzerdefinierte Eigenschaft mit einem bestimmten Namen in einem Dokument vorhanden ist, und fügt einige weitere benutzerdefinierte Dokumenteigenschaften hinzu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie eine benutzerdefinierte Dokumenteigenschaft entfernen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Aktualisieren der integrierten Dokumenteigenschaften

Aspose.Words aktualisiert Dokumenteigenschaften nicht automatisch, wie es Microsoft Word bei einigen Eigenschaften tut, sondern bietet eine Methode zum Aktualisieren einiger statistischer integrierter Dokumenteigenschaften. Rufen Sie die Methode [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) auf, um die folgenden Eigenschaften neu zu berechnen und zu aktualisieren:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Erstellen einer neuen benutzerdefinierten Eigenschaft, die mit Inhalten verknüpft ist

Aspose.Words stellt die Methode [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) bereit, um eine neue benutzerdefinierte Dokumenteigenschaft zu erstellen, die mit Inhalt verknüpft ist. Diese Eigenschaft gibt das neu erstellte Eigenschaftsobjekt oder null zurück, wenn [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) ungültig ist.

Das folgende Codebeispiel zeigt, wie Sie einen Link zu einer benutzerdefinierten Eigenschaft konfigurieren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Dokumentvariablen abrufen

Sie können eine Sammlung von Dokumentvariablen mit der Eigenschaft [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) abrufen. Variablennamen und -werte sind Zeichenfolgen.

Das folgende Codebeispiel zeigt, wie Dokumentvariablen aufgelistet werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Persönliche Informationen aus dem Dokument entfernen

Wenn Sie ein Word-Dokument für andere Personen freigeben möchten, möchten Sie möglicherweise persönliche Informationen wie den Namen des Autors und die Firma entfernen. Verwenden Sie dazu die Eigenschaft [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation), um das Flag zu setzen, das angibt, dass Microsoft Word beim Speichern des Dokuments alle Benutzerinformationen aus Kommentaren, Revisionen und Dokumenteigenschaften entfernt.

{{% alert color="primary" %}}

Das Setzen dieser Option entfernt keine persönlichen Informationen während der Verarbeitung eines Dokuments in Aspose.Words und wirkt sich nur auf das Verhalten von Microsoft Word aus.

{{% /alert %}}
