---
title: Felder aktualisieren C#
second_title: Aspose.Words für .NET
articleTitle: Felder aktualisieren
linktitle: Felder aktualisieren
description: "Erfahren Sie, wie Sie Felder in C# aktualisieren. Aktualisieren Sie Felder programmgesteuert oder verwenden Sie die automatische Feldaktualisierung mithilfe von .NET API."
type: docs
weight: 30
url: /de/net/update-fields/
---

Normalerweise enthält ein in Microsoft Word eingefügtes Feld bereits einen aktuellen Wert. Wenn es sich bei dem Feld beispielsweise um eine Formel oder eine Seitenzahl handelt, enthält es den korrekten berechneten Wert für die angegebene Version des Dokuments. Wenn Sie jedoch über eine Anwendung verfügen, die ein Dokument mit Feldern generiert oder ändert, z. B. zwei Dokumente zusammenführen oder mit Daten füllen, müssen im Idealfall alle Felder aktualisiert werden, damit das Dokument nützlich ist.

## So aktualisieren Sie Felder

Wenn ein Dokument geladen wird, ahmt Aspose.Words das Verhalten von Microsoft Word nach, wobei die Option zum automatischen Aktualisieren von Feldern ausgeschaltet ist. Das Verhalten lässt sich wie folgt zusammenfassen:

- Wenn Sie ein Dokument öffnen/speichern, bleiben die Felder erhalten
- Sie können bei Bedarf alle Felder in einem Dokument explizit aktualisieren, z. B. `TOC` neu erstellen
- Wenn Sie in PDF oder XPS drucken/rendern, werden die Felder für die Seitennummerierung in Kopf-/Fußzeilen aktualisiert
- Wenn Sie mail merge ausführen, werden alle Felder automatisch aktualisiert

### Aktualisieren Sie Felder programmgesteuert

Um Felder im gesamten Dokument explizit zu aktualisieren, rufen Sie einfach die [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/)-Methode auf. Um in einem Dokument enthaltene Felder zu aktualisieren, rufen Sie ein [Range](https://reference.aspose.com/words/net/aspose.words/range/)-Objekt ab und rufen Sie die [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/)-Methode auf. In Aspose.Words können Sie mithilfe der [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/)-Eigenschaft einen **Range**-Code für jeden Knoten im Dokumentbaum abrufen, z. B. [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) usw. Sie können das Ergebnis eines einzelnen Felds aktualisieren, indem Sie die Methode [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/) aufrufen.

### Automatische Aktualisierung seitenbezogener Felder während des Renderns

Wenn Sie die Konvertierung eines Dokuments in ein festes Seitenformat durchführen, z. B. in PDF oder XPS, aktualisiert Aspose.Words automatisch die seitenlayoutbezogenen Felder `PAGE` und `PAGEREF` in den Kopf-/Fußzeilen des Dokuments. Dieses Verhalten ahmt das Verhalten von Microsoft Word beim Drucken eines Dokuments nach.

Wenn Sie alle anderen Felder im Dokument aktualisieren möchten, müssen Sie [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) aufrufen, bevor Sie das Dokument rendern.

Das folgende Codebeispiel zeigt, wie alle Felder vor dem Rendern eines Dokuments aktualisiert werden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

{{% /alert %}}

### Automatische Feldaktualisierung während Mail Merge

Wenn Sie ein mail merge ausführen, werden alle Felder im Dokument automatisch aktualisiert. Dies liegt daran, dass es sich bei mail merge um eine Feldaktualisierung handelt. Das Programm stößt auf ein mail merge-Feld und muss dessen Ergebnis aktualisieren. Dazu muss der Wert aus der Datenquelle abgerufen und in das Feld eingefügt werden. Die Logik ist natürlich komplizierter. Wenn beispielsweise das Ende des Dokument-/mail merge-Bereichs erreicht ist, aber noch weitere Daten zusammengeführt werden müssen, muss der Bereich dupliziert und der neue Satz von Feldern aktualisiert werden.

## Aktualisieren Sie Felder mit fehlerhaften Attributen

"w:dirty" ist ein Attribut auf Feldebene, das beim Öffnen des Dokuments nur das von Ihnen angegebene Feld aktualisiert. Es weist MS Word an, dieses Feld erst beim nächsten Öffnen des Dokuments zu aktualisieren. Mithilfe der [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/)-Eigenschaft können Sie angeben, ob die Felder mit dem Dirty-Attribut aktualisiert werden sollen. Wenn der Wert von **UpdateDirtyFields** auf *true* festgelegt ist, werden alle Felder mit *true*-Werten für die [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/)- oder [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/)-Eigenschaft beim Laden des Dokuments aktualisiert.

Das folgende Codebeispiel zeigt, wie Felder mit dem Dirty-Attribut aktualisiert werden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Aktualisieren Sie die LastSavedTime-Eigenschaft vor dem Speichern

Mithilfe der [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/)-Eigenschaft können Sie festlegen, ob beim Speichern des Dokuments die entsprechende integrierte Dokumenteigenschaft [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) aktualisiert werden soll.

Das folgende Codebeispiel zeigt, wie diese Eigenschaft aktualisiert wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
