---
title: Updatefelder in Java
second_title: Aspose.Words für Java
articleTitle: Update-Felder
linktitle: Update-Felder
description: "Erfahren Sie, wie Sie Felder in Java. Aktualisieren Sie die Felder programmatisch oder verwenden Sie das automatische Feldupdate mit Java API"
type: docs
weight: 30
url: /de/java/update-field/
---

Typischerweise wird ein Feld eingefügt Microsoft Word enthält bereits einen aktuellen Wert. Wenn das Feld beispielsweise eine Formel oder eine Seitennummer ist, enthält es den korrekten berechneten Wert für die angegebene Version des Dokuments. Aber wenn Sie eine Anwendung haben, die ein Dokument mit Feldern wie das Zusammenfügen von zwei Dokumenten erzeugt oder verändert oder mit Daten bestückt, dann müssen idealerweise alle Felder aktualisiert werden, damit das Dokument nützlich ist.

## Wie man Felder aktualisiert

Wenn ein Dokument geladen wird, Aspose.Words das Verhalten von Microsoft Word mit der Option zum automatischen Update von Feldern wird ausgeschaltet. Das Verhalten lässt sich wie folgt zusammenfassen:

- wenn Sie ein Dokument öffnen/speichern, bleiben die Felder intakt
- Sie können z.B. alle Felder in einem Dokument explizit aktualisieren `TOC` wenn Sie brauchen
- wenn Sie auf PDF oder XPS die Felder im Zusammenhang mit der Seitenanzahl in Headern/Fußern werden aktualisiert
- wenn Sie ausführen mail merge alle Felder automatisch aktualisiert

### Programmatisch aktualisieren

Um Felder im gesamten Dokument explizit zu aktualisieren, rufen Sie einfach die [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) Methode. Um die in einem Dokument enthaltenen Felder zu aktualisieren, erhalten Sie eine [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) Objekt und rufen Sie die [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) Methode. In Aspose.Words, Sie können eine **Range** für jeden Knoten im Dokumentbaum, wie [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), usw. mit der [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) Eigentum. Sie können das Ergebnis eines einzelnen Feldes aktualisieren, indem Sie die [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) Methode.

### Automatisches Update von Seitenfeldern während des Renderings

Wenn Sie die Umwandlung eines Dokuments in ein Festseitenformat z.B. in PDF oder XPS, dann Aspose.Words wird automatisch Seitenlayout-Felder aktualisieren `PAGE`, `PAGEREF` gefunden in Kopfzeilen/Fußzeilen des Dokuments. Dieses Verhalten mißt das Verhalten von Microsoft Word beim Drucken eines Dokuments.

Wenn Sie alle anderen Felder im Dokument aktualisieren möchten, müssen Sie anrufen [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) vor der Vorlage des Dokuments.

Das folgende Beispiel zeigt, wie Sie alle Felder aktualisieren, bevor Sie ein Dokument abgeben:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Automatische Feldaktualisierung während Mail Merge

Wenn Sie eine <span notrans="<span notrans=" mail merge"=""></span>,"> alle Felder im Dokument werden automatisch aktualisiert. Das ist, weil mail merge ist ein Fall eines Feldupdates. Das Programm begegnet einem mail merge Feld und muss sein Ergebnis aktualisieren, was beinhaltet, den Wert von der Datenquelle zu erfassen und in das Feld einzufügen. Die Logik ist natürlich komplizierter, beispielsweise wenn das Ende des Dokuments/mail merge Es wird eine Region erreicht, aber es gibt noch weitere Daten zu verschmelzen, dann muss die Region vervielfältigt und der neue Feldsatz aktualisiert werden.

## Update Felder mit Dirty Attribut

Das w:dirty ist ein Feld-Level-Attribut, das nur das Feld, das Sie angeben, wenn das Dokument geöffnet ist, aktualisieren wird. Es sagt MS Word, nur dieses Feld zu aktualisieren, wenn das Dokument geöffnet wird. Sie können die Eigenschaft LoadOptions.setUpdateDirtyFields() verwenden, um anzugeben, ob Sie die Felder mit dem schmutzigen Attribut aktualisieren. Wenn der Wert von LoadOptions.setUpdateDirtyFields() eingestellt wird <span notrans="<span notrans=" *true*"=""></span>,"> alle Felder mit *true* Wert für `Field.IsDirty` oder `FieldChar.IsDirty` die Eigenschaft wird auf der Beleglast aktualisiert

Das folgende Codebeispiel zeigt, wie Felder mit dem schmutzigen Attribut aktualisiert werden können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Update LastSavedTime Property vor dem Sparen

Sie können die [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) Eigenschaft, ob die entsprechende eingebaute Dokumenten-Eigenschaft aktualisiert wird [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) beim Speichern des Dokuments.

Das folgende Codebeispiel zeigt, wie man diese Eigenschaft aktualisiert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
