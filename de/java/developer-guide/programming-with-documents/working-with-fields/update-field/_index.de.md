---
title: Felder in Java aktualisieren
second_title: Aspose.Words für Java
articleTitle: Felder aktualisieren
linktitle: Felder aktualisieren
description: "Erfahren Sie, wie Sie Felder in Java aktualisieren. Felder programmgesteuert aktualisieren oder automatische Feldaktualisierung mit Java API verwenden"
type: docs
weight: 30
url: /de/java/update-field/
timestamp: 2024-01-27-14-07-04
---

Normalerweise enthält ein in Microsoft Word eingefügtes Feld bereits einen aktuellen Wert. Wenn das Feld beispielsweise eine Formel oder eine Seitenzahl ist, enthält es den korrekten berechneten Wert für die angegebene Version des Dokuments. Wenn Sie jedoch eine Anwendung haben, die ein Dokument mit Feldern generiert oder ändert, z. B. das Zusammenführen von zwei Dokumenten oder das Auffüllen mit Daten, müssen im Idealfall alle Felder aktualisiert werden, damit das Dokument nützlich ist.

## So aktualisieren Sie Felder

Wenn ein Dokument geladen wird, ahmt Aspose.Words das Verhalten von Microsoft Word nach, wobei die Option zum automatischen Aktualisieren von Feldern deaktiviert ist. Das Verhalten kann wie folgt zusammengefasst werden:

- wenn Sie ein Dokument öffnen / speichern, bleiben die Felder intakt
- Sie können alle Felder in einem Dokument explizit aktualisieren, z. B. `TOC` bei Bedarf neu erstellen
- wenn Sie auf PDF oder XPS drucken / rendern, werden die Felder für die Seitennummerierung in Kopf- / Fußzeilen aktualisiert
- wenn Sie Mail Merge ausführen, werden alle Felder automatisch aktualisiert

### Felder programmgesteuert aktualisieren

Um Felder im gesamten Dokument explizit zu aktualisieren, rufen Sie einfach die Methode [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) auf. Um Felder zu aktualisieren, die in einem Teil eines Dokuments enthalten sind, rufen Sie ein [Range](https://reference.aspose.com/words/java/com.aspose.words/range/)-Objekt ab und rufen Sie die [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields)-Methode auf. In Aspose.Words können Sie eine **Range** für jeden Knoten im Dokumentbaum erhalten, z. B.: [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), usw. verwenden der Eigenschaft [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange). Sie können das Ergebnis eines einzelnen Felds aktualisieren, indem Sie die Methode [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) aufrufen.

### Automatische Aktualisierung von seitenbezogenen Feldern während des Renderns

Wenn Sie die Konvertierung eines Dokuments in ein festes Seitenformat ausführen, z. B. in PDF oder XPS, aktualisiert Aspose.Words automatisch die seitenlayoutbezogenen Felder `PAGE`, `PAGEREF` in Kopf- /Fußzeilen des Dokuments. Dieses Verhalten ahmt das Verhalten von Microsoft Word beim Drucken eines Dokuments nach.

Wenn Sie alle anderen Felder im Dokument aktualisieren möchten, müssen Sie [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) aufrufen, bevor Sie das Dokument rendern.

Das folgende Beispiel zeigt, wie Sie alle Felder aktualisieren, bevor Sie ein Dokument rendern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Automatische Feldaktualisierung während Mail Merge

Wenn Sie eine mail merge ausführen, werden alle Felder im Dokument automatisch aktualisiert. Dies liegt daran, dass Mail Merge ein Fall einer Feldaktualisierung ist. Das Programm stößt auf ein Mail Merge -Feld und muss sein Ergebnis aktualisieren, wobei der Wert aus der Datenquelle abgerufen und in das Feld eingefügt wird. Die Logik ist natürlich komplizierter, zum Beispiel wenn das Ende der Dokument- / mail merge -Region erreicht ist, aber noch weitere Daten zusammengeführt werden müssen, dann muss die Region dupliziert und der neue Satz von Feldern aktualisiert werden.

## Felder mit schmutzigem Attribut aktualisieren

Das w:dirty ist ein Attribut auf Feldebene, das nur das von Ihnen angegebene Feld aktualisiert, wenn das Dokument geöffnet wird. Es weist MS Word an, dieses Feld nur beim nächsten Öffnen des Dokuments zu aktualisieren. Sie können LoadOptions verwenden.setUpdateDirtyFields() Eigenschaft, um anzugeben, ob die Felder mit dem dirty Attribut aktualisiert werden sollen. Wenn der Wert von LoadOptions.setUpdateDirtyFields() ist auf *true* gesetzt, alle Felder mit dem Wert *true* für die Eigenschaft `Field.IsDirty` oder `FieldChar.IsDirty` werden beim Laden des Dokuments aktualisiert.

Das folgende Codebeispiel zeigt, wie Felder mit dem dirty Attribut aktualisiert werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## LastSavedTime -Eigenschaft vor dem Speichern aktualisieren

Sie können die Eigenschaft [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) verwenden, um die entsprechende integrierte Dokumenteigenschaft [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) beim Speichern des Dokuments zu aktualisieren.

Das folgende Codebeispiel zeigt, wie diese Eigenschaft aktualisiert wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
