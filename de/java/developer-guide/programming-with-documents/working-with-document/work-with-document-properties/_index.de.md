---
title: Arbeiten mit Dokumenteneigenschaften in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Dokumenteneigenschaften
linktitle: Arbeiten mit Dokumenteneigenschaften
description: "Aspose.Words für Java ermöglicht die Speicherung einiger nützlicher Informationen über Ihr Dokument, wie API und Versionsnummer oder autorisiert Date, in integrierten oder benutzerdefinierten Dokumenteneigenschaften."
type: docs
weight: 10
url: /de/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Dokumenteneigenschaften ermöglichen es, einige nützliche Informationen über Ihr Dokument zu speichern. Diese Eigenschaften können in zwei Gruppen unterteilt werden:

* System oder eingebaut, das Werte wie Dokumenttitel, Autorname, Dokumentstatistik und andere enthält.
* Benutzerdefinierte oder benutzerdefinierte, als Name-Wert-Paare bereitgestellt, wo der Benutzer sowohl den Namen als auch den Wert definieren kann.

Es ist nützlich, diese Informationen über API und Version Nummer wird direkt in Ausgabedokumente geschrieben. Zum Beispiel bei der Umwandlung eines Dokuments in PDF, Aspose.Words füllt das Feld "Anwendung" mit "Aspose.Words", und das Feld "PDF Produzent" mit "Aspose.Words für Java YY.M.N", wo *YY.M.N* ist die Version von Aspose.Words zur Umwandlung verwendet. Für weitere Details siehe [Generator oder Vorname In der Ausgabedokumentation enthalten](/words/de/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Beachten Sie, dass Sie **nicht direkt** Aspose.Words diese Informationen aus Ausgabedokumenten zu ändern oder zu entfernen.

{{% /alert %}}

## Zugriff auf Dokumente Eigenschaften

Zugang zu Dokumenteneigenschaften in Aspose.Words Verwendung:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) um eingebaute Eigenschaften zu erhalten.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) um benutzerdefinierte Eigenschaften zu erhalten.

**BuiltInDocumentProperties** und **CustomDocumentProperties** sind Sammlungen von [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) Objekte. Diese Objekte können durch die Indexer-Eigenschaft per Namen oder per Index erhalten werden.

**BuiltInDocumentProperties** bietet zusätzlich Zugriff auf Dokumenteigenschaften durch eine Reihe von eingegebenen Eigenschaften, die Rückgabewerte der entsprechenden Art. **CustomDocumentProperties** Sie können Dokumenteigenschaften aus einem Dokument hinzufügen oder entfernen.

Die [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) class ermöglicht es Ihnen, den Namen, den Wert und die Art einer Dokumenten-Eigenschaft zu erhalten. [Wert]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value) gibt ein Objekt zurück, aber es gibt eine Reihe von Methoden, mit brauchen Sie den Eigenschaftenswert in einem bestimmten Typ erhalten können. Nach oben Sie wissen, welche Art der Immobilie ist, können Sie eine der {0} Verfahren, wie {1}(ToString)](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) und **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), den Wert des entsprechenden Typs zu erhalten.

Das folgende Codebeispiel zeigt, wie man alle eingebauten und benutzerdefinierten Eigenschaften in einem Dokument auszählt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In Microsoft Word, Sie können über das Menü "Datei → Eigenschaften" auf Dokumenteigenschaften zugreifen.

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Hinzufügen oder Entfernen von Dokumenteneigenschaften

Sie können integrierte Dokumenteigenschaften nicht hinzufügen oder entfernen Aspose.Words. Sie können nur ihre Werte ändern oder aktualisieren.

Um benutzerdefinierte Dokumenteigenschaften hinzuzufügen Aspose.Words, verwenden, [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) Verfahren, Weitergabe des neuen Eigenschaftsnamens und des Wertes der entsprechenden Art. Die Methode gibt das neu erstellte zurück **DocumentProperty** Objekt.

Um benutzerdefinierte Eigenschaften zu entfernen, verwenden Sie die [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) Methode, es den Eigenschaftsnamen zu entfernen, oder die [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) Methode, um die Eigenschaft per Index zu entfernen. Sie können auch alle Eigenschaften mit der [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) Methode.

Das folgende Codebeispiel prüft, ob in einem Dokument eine benutzerdefinierte Eigenschaft mit einem bestimmten Namen existiert und einige benutzerdefinierte Dokumenteigenschaften hinzufügt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man eine benutzerdefinierte Dokument-Eigenschaft entfernt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Aktualisieren von integrierten Dokumenteneigenschaften

Aspose.Words nicht automatisch Dokumenteigenschaften aktualisieren, wie Microsoft Word hat einige Eigenschaften, bietet aber eine Methode, um einige statistische eingebaute Dokumenteigenschaften zu aktualisieren. Rufen Sie an [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) Verfahren zur Neuberechnung und Aktualisierung der folgenden Eigenschaften:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Erstellen Sie ein neues Custom Property Linked to Content

Aspose.Words bietet [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) Verfahren zur Erstellung einer neuen benutzerdefinierten Dokumenten-Eigenschaft, die mit Inhalten verknüpft ist. Diese Eigenschaft gibt das neu erstellte Objekt oder null zurück, wenn die [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) ist ungültig.

Das folgende Codebeispiel zeigt, wie man einen Link zu einer benutzerdefinierten Eigenschaft konfiguriert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Dokumentvariablen erhalten

Sie können eine Sammlung von Dokumentvariablen mit der [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) Eigentum. Variable Namen und Werte sind Strings.

Das folgende Codebeispiel zeigt, wie man Dokumentvariablen auszählt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Entfernen Sie personenbezogene Daten von Dokument

Wenn Sie ein Word-Dokument mit anderen Personen teilen möchten, können Sie persönliche Informationen wie Autorname und Firma entfernen möchten. Um dies zu tun, verwenden Sie [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) Eigenschaft, die Flagge zu setzen, die angibt, dass Microsoft Word alle Benutzerinformationen von Kommentaren, Revisionen und Dokumenteigenschaften beim Speichern des Dokuments entfernen.

{{% alert color="primary" %}}

Die Einstellung dieser Option entfernt keine personenbezogenen Daten während der Verarbeitung eines Dokuments in Aspose.Words und nur die Microsoft Word Verhalten.

{{% /alert %}}
