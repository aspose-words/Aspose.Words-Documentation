---
title: Erweiterte Mail Merge Funktionen in C++
second_title: Aspose.Words für C++
articleTitle: Erweiterte Mail Merge Funktionen
linktitle: Erweiterte Mail Merge Funktionen
type: docs
description: "Aspose.Words für C++ bietet einige erweiterte mail merge Funktionen, mit denen Sie weitere mail merge Anpassungen vornehmen können. Zum Beispiel, um Informationen über die Vorlagenstruktur zu erhalten, Regeln festzulegen, nach einer mail merge -Operation aufzuräumen und andere."
keywords: "use advanced mail merge features c++"
weight: 50
url: /de/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words stellt einige zusätzliche mail merge-Eigenschaften und -Methoden bereit, mit denen Sie den mail merge-Prozess entweder in einfachen mail merge oder mail merge mit Regionen weiter anpassen können.

Zu den erweiterten mail merge-Funktionen gehören unter anderem das Abrufen von Informationen zur Vorlagenstruktur vor dem Ausführen einer mail merge-Operation, das Festlegen von Regeln für eine mail merge-Operation und das Bereinigen während einer mail merge-Operation. Dieser Artikel behandelt nur einige Eigenschaften und Beispiele, um Ihnen zu zeigen, wie Sie erweiterte Funktionen verwenden.

## Regeln für Mail Merge-Operationen festlegen

Durch das Hinzufügen von Regeln zu Ihrer Vorlage können Sie den Workflow-Prozess effektiver und flexibler gestalten. Mit mail merge -Regeln können Sie Inhalte einrichten, die schnell geändert werden können, und die Notwendigkeit vermeiden, mehrere Dokumente zu generieren.

Mit Aspose.Words können Sie mail merge basierend auf Regeln anpassen, die beim Ausführen des Vorgangs mail merge ausgeführt werden, und Informationen zum Zusammenführen steuern. Zum Beispiel, wenn Sie eine E-Mail oder einen Brief erstellen, den Sie an alle Ihre Kunden senden möchten. Sie können eine Regel einrichten, damit der Brief verschiedene Daten enthalten kann, die auf den unterschiedlichen Werten in bestimmten Feldern Ihrer Datenquelle basieren.

Sehen Sie sich einige mail merge -Regeln an, die Sie implementieren können.

### Nächstes Feld implementieren, um Datensätze im aktuellen Dokument zusammenzuführen

Sie können das Feld [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) implementieren, um den nächsten Datensatz in das aktuelle resultierende Seriendruckdokument zusammenzuführen, anstatt ein neues Seriendruckdokument zu beginnen. Es wird verwendet, um mehrere Datensätze in einem Dokument anzuzeigen.

### Implementieren Sie die Felder NextIf und SkipIf, um zwei Ausdrücke zu vergleichen

Sie können entweder das Feld [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) oder das Feld [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/) verwenden, wenn Sie zwei Ausdrücke ([right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/) -Ausdrücke) mit [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/) vergleichen möchten.

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words fügt den nächsten Datensatz in das aktuelle Seriendruckdokument ein, und alle Seriendruckfelder in der Vorlage, die nach dem Feld *NextIf* stehen, werden durch Werte aus dem nächsten Datensatz und nicht durch den aktuellen Datensatz ersetzt. | Aspose.Words führt den nächsten Datensatz zu einem neuen Seriendruckdokument zusammen. |
| `SkipIf` | Aspose.Words bricht das aktuelle Seriendruckdokument ab, wechselt zum nächsten Datensatz in der Datenquelle und startet ein neues Seriendruckdokument. | Aspose.Words setzt das aktuelle Seriendruckdokument fort. |

## Informationen über die Vorlagenstruktur erhalten

Aspose.Words ermöglicht es Ihnen, verschiedene Informationen in Ihrer Vorlage mit vielen Methoden zu sammeln. Beispielsweise müssen Sie möglicherweise die Namen einiger Seriendruckfelder oder die Hierarchie von Regionen in Ihrer Vorlage abrufen. Jetzt werden wir die möglichen Varianten erklären, um einige spezifische Informationen aus Ihrer Vorlage zu erhalten.

### Seriendruckfeldnamen abrufen

Sie können auf ein Szenario stoßen, in dem Sie Daten mit Seriendruckfeldern zusammenführen möchten, die von anderen erstellt wurden, und in diesem Fall sind Sie sich über die genauen Namen der Seriendruckfelder nicht sicher. Um den Zweck von mail merge zu erreichen, müssen Sie zunächst die Namen aller Seriendruckfelder lesen und anzeigen. Aspose.Words ermöglicht es Ihnen, eine Sammlung von Seriendruckfeldnamen mit der Methode [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/) abzurufen.

Das folgende Codebeispiel zeigt, wie Namen aller Seriendruckfelder in der Vorlage abgerufen werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### Informationen zu Zusammenführungsregionen abrufen

Möglicherweise haben Sie ein Szenario, in dem Sie verstehen möchten, wie Ihre Vorlage durch die angegebenen Zusammenführungsbereiche strukturiert ist. Sie können einige Methoden verwenden, um alle erforderlichen Informationen zu Zusammenführungsregionen zu sammeln oder die Hierarchie der Zusammenführungsregionen in Ihrer Vorlage abzurufen, z. B. die Methode [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/). Sie können die Eigenschaften und Methoden der Klasse [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) verwenden.Das folgende Codebeispiel zeigt, wie die Hierarchie der Zusammenführungsregionen abgerufen wird:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Zugeordnete Felder hinzufügen

Mit Aspose.Words können Sie Namen von Feldern in Ihrer Datenquelle und Namen von mail merge Feldern in der Vorlage mithilfe der Eigenschaft [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/) automatisch zuordnen. Wenn Sie beispielsweise einen Feldnamen mit dem Namen "Nachname" in Ihrer Vorlage und in Ihrer Datenquelle den Feldnamen "Nachname" oder eine andere Variante wie "Nachname" oder "LastName" haben, wird das Feld in der Datenquelle automatisch dem entsprechenden zugeordneten Feld zugeordnet. Wenn eine Zusammenführungsvorlage mit vielen Datenquellen zusammengeführt werden soll, machen zugeordnete Felder es unnötig, die Felder erneut in die Vorlage einzugeben, um mit den Feldnamen in der Datenbank übereinzustimmen.

Das folgende Codebeispiel zeigt, wie Sie ein zugeordnetes Feld mit der Methode [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/) hinzufügen, wenn ein Seriendruckfeld in einer Vorlage und ein Datenfeld in einer Datenquelle unterschiedliche Namen haben:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
