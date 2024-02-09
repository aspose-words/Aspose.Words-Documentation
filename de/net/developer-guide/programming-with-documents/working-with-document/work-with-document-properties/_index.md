---
title: Arbeiten Sie mit Dokumenteigenschaften in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten Sie mit Dokumenteigenschaften
linktitle: Arbeiten Sie mit Dokumenteigenschaften
description: "Aspose.Words für .NET ermöglicht das Speichern einiger nützlicher Informationen zu Ihrem Dokument, z. B. API und Versionsnummer oder autorisiertes Date, in integrierten oder benutzerdefinierten Dokumenteigenschaften mithilfe von C#."
type: docs
weight: 10
url: /de/net/work-with-document-properties/
---

Dokumenteigenschaften ermöglichen das Speichern einiger nützlicher Informationen zu Ihrem Dokument. Diese Eigenschaften können in zwei Gruppen unterteilt werden:

* System oder integriert, das Werte wie Dokumenttitel, Autorenname, Dokumentstatistiken und andere enthält.
* Benutzerdefiniert oder benutzerdefiniert, bereitgestellt als Name-Wert-Paare, wobei der Benutzer sowohl den Namen als auch den Wert definieren kann.

Es ist nützlich zu wissen, dass Informationen zu API und Versionsnummer direkt in Ausgabedokumente geschrieben werden. Beispielsweise füllt Aspose.Words beim Konvertieren eines Dokuments in PDF das Feld "Anwendung" mit "Aspose.Words" und das Feld "PDF-Produzent" mit "Aspose.Words für .NET YY.MN" aus, wobei *YY.M.N* die für die Konvertierung verwendete Aspose.Words-Version ist. Weitere Einzelheiten finden Sie unter [Der Name des Generators oder Produzenten ist in den Ausgabedokumenten enthalten](/words/de/net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Beachten Sie, dass Sie **kann nicht leiten** Aspose.Words verwenden, um diese Informationen aus Ausgabedokumenten zu ändern oder zu entfernen.

{{% /alert %}}

## Greifen Sie auf die Dokumenteigenschaften zu

Um auf Dokumenteigenschaften in Aspose.Words zuzugreifen, verwenden Sie:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/), um integrierte Eigenschaften zu erhalten.

* [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/), um benutzerdefinierte Eigenschaften zu erhalten.

**BuiltInDocumentProperties** und **CustomDocumentProperties** sind Sammlungen von [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/)-Objekten. Diese Objekte können über die Indexer-Eigenschaft nach Namen oder Index abgerufen werden.

**BuiltInDocumentProperties** bietet zusätzlich Zugriff auf Dokumenteigenschaften über eine Reihe eingegebener Eigenschaften, die Werte des entsprechenden Typs zurückgeben. Mit **CustomDocumentProperties** können Sie Dokumenteigenschaften zu einem Dokument hinzufügen oder daraus entfernen.

Mit der [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/)-Klasse können Sie den Namen, den Wert und den Typ einer Dokumenteigenschaft abrufen. [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/) gibt ein Objekt zurück, es gibt jedoch eine Reihe von Methoden, mit denen Sie den Eigenschaftswert in einen bestimmten Typ konvertieren können. Nachdem Sie den Typ der Eigenschaft kennengelernt haben, können Sie eine der **DocumentProperty.ToXXX**-Methoden wie **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) und **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/) verwenden, um den Wert des entsprechenden Typs abzurufen.

Das folgende Codebeispiel zeigt, wie alle integrierten und benutzerdefinierten Eigenschaften in einem Dokument aufgezählt werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx) herunterladen.

{{% /alert %}}

In Microsoft Word können Sie über das Menü "Datei → Eigenschaften" auf die Dokumenteigenschaften zugreifen.

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## Dokumenteigenschaften hinzufügen oder entfernen

Mit Aspose.Words können Sie keine integrierten Dokumenteigenschaften hinzufügen oder entfernen. Sie können nur deren Werte ändern oder aktualisieren.

Um benutzerdefinierte Dokumenteigenschaften mit Aspose.Words hinzuzufügen, verwenden Sie die [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/)-Methode und übergeben den neuen Eigenschaftsnamen und den Wert des entsprechenden Typs. Die Methode gibt das neu erstellte **DocumentProperty**-Objekt zurück.

Um benutzerdefinierte Eigenschaften zu entfernen, verwenden Sie die [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/)-Methode, indem Sie ihr den zu entfernenden Eigenschaftsnamen übergeben, oder die [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at)-Methode, um die Eigenschaft nach Index zu entfernen. Sie können alle Eigenschaften auch mithilfe der [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/)-Methode entfernen.

Das folgende Codebeispiel prüft, ob eine benutzerdefinierte Eigenschaft mit einem bestimmten Namen in einem Dokument vorhanden ist, und fügt einige weitere benutzerdefinierte Dokumenteigenschaften hinzu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx) herunterladen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie eine benutzerdefinierte Dokumenteigenschaft entfernt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## Integrierte Dokumenteigenschaften aktualisieren

Aspose.Words aktualisiert Dokumenteigenschaften nicht automatisch, wie dies bei Microsoft Word bei einigen Eigenschaften der Fall ist, sondern bietet eine Methode zum Aktualisieren einiger statistischer integrierter Dokumenteigenschaften. Rufen Sie die [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/)-Methode auf, um die folgenden Eigenschaften neu zu berechnen und zu aktualisieren:

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## Erstellen Sie eine neue benutzerdefinierte Eigenschaft, die mit Inhalt verknüpft ist

Aspose.Words bietet die [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/)-Methode zum Erstellen einer neuen benutzerdefinierten Dokumenteigenschaft, die mit dem Inhalt verknüpft ist. Diese Eigenschaft gibt das neu erstellte Eigenschaftsobjekt oder null zurück, wenn das [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) ungültig ist.

Das folgende Codebeispiel zeigt, wie Sie einen Link zu einer benutzerdefinierten Eigenschaft konfigurieren:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## Dokumentvariablen abrufen

Mithilfe der [Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/)-Eigenschaft können Sie eine Sammlung von Dokumentvariablen abrufen. Variablennamen und -werte sind Zeichenfolgen.

Das folgende Codebeispiel zeigt, wie Dokumentvariablen aufgezählt werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx) herunterladen.

{{% /alert %}}

## Persönliche Informationen aus dem Dokument entfernen

Wenn Sie ein Word-Dokument mit anderen Personen teilen möchten, möchten Sie möglicherweise persönliche Informationen wie den Namen des Autors und das Unternehmen entfernen. Verwenden Sie dazu die [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/)-Eigenschaft, um das Flag zu setzen, das angibt, dass Microsoft Word beim Speichern des Dokuments alle Benutzerinformationen aus Kommentaren, Revisionen und Dokumenteigenschaften entfernt.

Das folgende Codebeispiel zeigt, wie persönliche Informationen entfernt werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

Durch das Festlegen dieser Option werden bei der Verarbeitung eines Dokuments in Aspose.Words keine persönlichen Informationen entfernt, sondern nur das Microsoft Word-Verhalten.

{{% /alert %}}
