---
title: Felder aktualisieren Python
second_title: Aspose.Words für Python via .NET
articleTitle: Felder aktualisieren
linktitle: Felder aktualisieren
description: "Aktualisieren Sie Felder in einem Dokument auf unterschiedliche Weise und mit unterschiedlichen Optionen in Python."
type: docs
weight: 30
url: /de/python-net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Normalerweise enthält ein in Microsoft Word eingefügtes Feld bereits einen aktuellen Wert. Wenn es sich bei dem Feld beispielsweise um eine Formel oder eine Seitenzahl handelt, enthält es den korrekten berechneten Wert für die angegebene Version des Dokuments. Wenn Sie jedoch über eine Anwendung verfügen, die ein Dokument mit Feldern generiert oder ändert, z. B. zwei Dokumente zusammenführen oder mit Daten füllen, müssen im Idealfall alle Felder aktualisiert werden, damit das Dokument nützlich ist.

## So aktualisieren Sie Felder

Wenn ein Dokument geladen wird, ahmt Aspose.Words das Verhalten von Microsoft Word nach, wobei die Option zum automatischen Aktualisieren von Feldern ausgeschaltet ist. Das Verhalten lässt sich wie folgt zusammenfassen:

- Wenn Sie ein Dokument öffnen/speichern, bleiben die Felder erhalten
- Sie können bei Bedarf alle Felder in einem Dokument explizit aktualisieren (z. B. das Inhaltsverzeichnis neu erstellen)
- Wenn Sie in PDF oder XPS drucken/rendern, werden die Felder für die Seitennummerierung in Kopf-/Fußzeilen aktualisiert
- Wenn Sie mail merge ausführen, werden alle Felder automatisch aktualisiert

### Aktualisieren Sie Felder programmgesteuert

Um Felder im gesamten Dokument explizit zu aktualisieren, rufen Sie einfach [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) auf. Um in einem Dokument enthaltene Felder zu aktualisieren, rufen Sie ein [Range](https://reference.aspose.com/words/python-net/aspose.words/range/)-Objekt ab und rufen Sie die [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/)-Methode auf. In Aspose.Words können Sie mithilfe der [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/)-Eigenschaft einen **Range**-Code für jeden Knoten im Dokumentbaum abrufen, z. B. [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) usw. Sie können das Ergebnis eines einzelnen Felds aktualisieren, indem Sie die Methode [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/) aufrufen.

### Automatische Aktualisierung seitenbezogener Felder während des Renderns

Wenn Sie die Konvertierung eines Dokuments in ein festes Seitenformat durchführen, z. B. in PDF oder XPS, aktualisiert Aspose.Words automatisch die seitenlayoutbezogenen Felder `PAGE` und `PAGEREF` in den Kopf-/Fußzeilen des Dokuments. Dieses Verhalten ahmt das Verhalten von Microsoft Word beim Drucken eines Dokuments nach.

Wenn Sie alle anderen Felder im Dokument aktualisieren möchten, müssen Sie [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) aufrufen, bevor Sie das Dokument rendern.

Das folgende Codebeispiel zeigt, wie alle Felder vor dem Rendern eines Dokuments aktualisiert werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

{{% /alert %}}

### Automatische Feldaktualisierung während Mail Merge

Wenn Sie ein mail merge ausführen, werden alle Felder im Dokument automatisch aktualisiert. Dies liegt daran, dass es sich bei mail merge um eine Feldaktualisierung handelt. Das Programm stößt auf ein mail merge-Feld und muss dessen Ergebnis aktualisieren. Dazu muss der Wert aus der Datenquelle abgerufen und in das Feld eingefügt werden. Die Logik ist natürlich komplizierter. Wenn beispielsweise das Ende des Dokument-/mail merge-Bereichs erreicht ist, aber noch weitere Daten zusammengeführt werden müssen, muss der Bereich dupliziert und der neue Satz von Feldern aktualisiert werden.

## Aktualisieren Sie Felder mit fehlerhaften Attributen

"w:dirty" ist ein Attribut auf Feldebene, das beim Öffnen des Dokuments nur das von Ihnen angegebene Feld aktualisiert. Es weist MS Word an, dieses Feld erst beim nächsten Öffnen des Dokuments zu aktualisieren. Mithilfe der [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/)-Eigenschaft können Sie angeben, ob die Felder mit dem Dirty-Attribut aktualisiert werden sollen. Wenn der Wert von **update_dirty_fields** auf `True` festgelegt ist, werden alle Felder mit `True`-Werten für die [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/)- oder [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/)-Eigenschaft beim Laden des Dokuments aktualisiert.

Das folgende Codebeispiel zeigt, wie Felder mit dem Dirty-Attribut aktualisiert werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Aktualisieren Sie die LastSavedTime-Eigenschaft vor dem Speichern

Sie können die [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/)-Eigenschaft verwenden, um beim Speichern des Dokuments die entsprechende integrierte Dokumenteigenschaft [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) zu aktualisieren.

Das folgende Codebeispiel zeigt, wie diese Eigenschaft aktualisiert wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

