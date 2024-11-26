---
title: Felder in C++ aktualisieren
second_title: Aspose.Words für C++
articleTitle: Felder aktualisieren
linktitle: Felder aktualisieren
description: "Erfahren Sie, wie Sie Felder in C++ aktualisieren. Aktualisieren Sie Felder programmgesteuert oder verwenden Sie die automatische Feldaktualisierung mit C++ API."
type: docs
weight: 30
url: /de/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

Normalerweise enthält ein in Microsoft Word eingefügtes Feld bereits einen aktuellen Wert. Wenn das Feld beispielsweise eine Formel oder eine Seitenzahl ist, enthält es den korrekten berechneten Wert für die angegebene Version des Dokuments. Wenn Sie jedoch eine Anwendung haben, die ein Dokument mit Feldern generiert oder ändert, z. B. das Zusammenführen von zwei Dokumenten oder das Auffüllen mit Daten, müssen im Idealfall alle Felder aktualisiert werden, damit das Dokument nützlich ist.

## So aktualisieren Sie Felder

Wenn ein Dokument geladen wird, ahmt Aspose.Words das Verhalten von Microsoft Word nach, wobei die Option zum automatischen Aktualisieren von Feldern deaktiviert ist. Das Verhalten kann wie folgt zusammengefasst werden:

- wenn Sie ein Dokument öffnen / speichern, bleiben die Felder intakt
- Sie können bei Bedarf alle Felder in einem Dokument explizit aktualisieren, z. B. `TOC` neu erstellen
- wenn Sie auf PDF oder XPS rendern, werden die Felder für die Seitennummerierung in Kopf- / Fußzeilen aktualisiert
- wenn Sie Mail Merge ausführen, werden alle Felder automatisch aktualisiert

### Felder programmgesteuert aktualisieren

Um Felder im gesamten Dokument explizit zu aktualisieren, rufen Sie einfach die Methode [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) auf. Um Felder zu aktualisieren, die in einem Teil eines Dokuments enthalten sind, rufen Sie ein [Range](https://reference.aspose.com/words/cpp/aspose.words/range/)-Objekt ab und rufen Sie die [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/)-Methode auf. In Aspose.Words können Sie eine **Range** für jeden Knoten im Dokumentbaum erhalten, z. B.: [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), usw. verwenden der Eigenschaft [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/).Sie können das Ergebnis eines einzelnen Felds aktualisieren, indem Sie die Methode [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/) aufrufen.

### Automatische Aktualisierung von seitenbezogenen Feldern während des Renderns

Wenn Sie die Konvertierung eines Dokuments in ein festes Seitenformat ausführen, z. B. in PDF oder XPS, aktualisiert Aspose.Words automatisch die seitenlayoutbezogenen Felder `PAGE`, `PAGEREF` in Kopf- /Fußzeilen des Dokuments. Dieses Verhalten ahmt das Verhalten von Microsoft Word beim Drucken eines Dokuments nach.

Wenn Sie alle anderen Felder im Dokument aktualisieren möchten, müssen Sie [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) aufrufen, bevor Sie das Dokument rendern.

Das folgende Codebeispiel zeigt, wie alle Felder vor dem Rendern eines Dokuments aktualisiert werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Automatische Feldaktualisierung während Mail Merge

Wenn Sie eine Mail Merge ausführen, werden alle Felder im Dokument automatisch aktualisiert. Dies liegt daran, dass Mail Merge ein Fall einer Feldaktualisierung ist. Das Programm stößt auf ein Mail Merge -Feld und muss sein Ergebnis aktualisieren, wobei der Wert aus der Datenquelle abgerufen und in das Feld eingefügt wird. Die Logik ist natürlich komplizierter, zum Beispiel wenn das Ende des Bereichs Dokument / Mail Merge erreicht ist, aber noch weitere Daten zusammengeführt werden müssen, dann muss der Bereich dupliziert und der neue Satz von Feldern aktualisiert werden.

## LastSavedTime -Eigenschaft vor dem Speichern aktualisieren

Sie können die Eigenschaft [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) verwenden, um die entsprechende integrierte Dokumenteigenschaft [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) beim Speichern des Dokuments zu aktualisieren.

Das folgende Codebeispiel zeigt, wie diese Eigenschaft aktualisiert wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


