---
title: Erweiterte Mail Merge Funktionen in Java
second_title: Aspose.Words für Java
articleTitle: Erweiterte Mail Merge Funktionen
linktitle: Erweiterte Mail Merge Funktionen
type: docs
description: "Aspose.Words für Java bietet einige erweiterte Mail Merge Funktionen, mit denen Sie weitere Mail Merge Anpassungen vornehmen können. Zum Beispiel, um Informationen über die Vorlagenstruktur zu erhalten, Regeln festzulegen, nach einer Mail Merge -Operation aufzuräumen und andere."
keywords: "use advanced Mail Merge features java, Mail Merge java"
weight: 50
url: /de/java/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words stellt einige zusätzliche Mail Merge-Eigenschaften und -Methoden bereit, mit denen Sie den Mail Merge-Prozess entweder in einfachen Mail Merge oder Mail Merge mit Regionen weiter anpassen können.

Zu den erweiterten Mail Merge-Funktionen gehören unter anderem das Abrufen von Informationen zur Vorlagenstruktur vor dem Ausführen einer Mail Merge-Operation, das Festlegen von Regeln für eine Mail Merge-Operation und das Bereinigen während einer Mail Merge-Operation. Dieser Artikel behandelt nur einige Eigenschaften und Beispiele, um Ihnen zu zeigen, wie Sie erweiterte Funktionen verwenden.

## Regeln für Mail Merge-Operationen festlegen

Durch das Hinzufügen von Regeln zu Ihrer Vorlage können Sie den Workflow-Prozess effektiver und flexibler gestalten. Mit Mail Merge -Regeln können Sie Inhalte einrichten, die schnell geändert werden können, und die Notwendigkeit vermeiden, mehrere Dokumente zu generieren.

Mit Aspose.Words können Sie Mail Merge basierend auf Regeln anpassen, die beim Ausführen des Vorgangs Mail Merge ausgeführt werden, und Informationen zum Zusammenführen steuern. Zum Beispiel, wenn Sie eine E-Mail oder einen Brief erstellen, den Sie an alle Ihre Kunden senden möchten. Sie können eine Regel einrichten, damit der Brief verschiedene Daten enthalten kann, die auf den unterschiedlichen Werten in bestimmten Feldern Ihrer Datenquelle basieren.

Sehen Sie sich einige Mail Merge -Regeln an, die Sie implementieren können.

### Nächstes Feld implementieren, um Datensätze im aktuellen Dokument zusammenzuführen

Sie können das Feld [Next](https://reference.aspose.com/words/java/com.aspose.words/fieldnext/) implementieren, um den nächsten Datensatz in das aktuelle resultierende Seriendruckdokument zusammenzuführen, anstatt ein neues Seriendruckdokument zu beginnen. Es wird verwendet, um mehrere Datensätze in einem Dokument anzuzeigen.

### Implementieren Sie die Felder NextIf und SkipIf, um zwei Ausdrücke zu vergleichen

Sie können entweder das Feld [NextIf](https://reference.aspose.com/words/java/com.aspose.words/fieldnextif/) oder das Feld [SkipIf](https://reference.aspose.com/words/java/com.aspose.words/fieldskipif/) verwenden, wenn Sie zwei Ausdrücke ([right](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#getRightExpression) und [left](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#getLeftExpression) Ausdrücke) mit [operator](https://reference.aspose.com/words/java/com.aspose.words/fieldskipif/#getComparisonOperator) vergleichen möchten.

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words fügt den nächsten Datensatz in das aktuelle Seriendruckdokument ein, und alle Seriendruckfelder in der Vorlage, die nach dem Feld *NextIf* stehen, werden durch Werte aus dem nächsten Datensatz und nicht durch den aktuellen Datensatz ersetzt. | Aspose.Words führt den nächsten Datensatz zu einem neuen Seriendruckdokument zusammen. |
| `SkipIf` | Aspose.Words bricht das aktuelle Seriendruckdokument ab, wechselt zum nächsten Datensatz in der Datenquelle und startet ein neues Seriendruckdokument. | Aspose.Words setzt das aktuelle Seriendruckdokument fort. |

Das folgende Codebeispiel zeigt, wie zwei Ausdrücke mit **NextIf** oder **SkipIf** verglichen werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-AdvancedMailMergeFeatures-CompareTwoExpressions.java" >}}

## Informationen über die Vorlagenstruktur erhalten

Aspose.Words ermöglicht es Ihnen, verschiedene Informationen in Ihrer Vorlage mit vielen Methoden zu sammeln. Beispielsweise müssen Sie möglicherweise die Namen einiger Seriendruckfelder oder die Hierarchie von Regionen in Ihrer Vorlage abrufen. Jetzt werden wir die möglichen Varianten erklären, um einige spezifische Informationen aus Ihrer Vorlage zu erhalten.

### Seriendruckfeldnamen abrufen

Sie können auf ein Szenario stoßen, in dem Sie Daten mit Seriendruckfeldern zusammenführen möchten, die von anderen erstellt wurden, und in diesem Fall sind Sie sich über die genauen Namen der Seriendruckfelder nicht sicher. Um den Zweck von Mail Merge zu erreichen, müssen Sie zunächst die Namen aller Seriendruckfelder lesen und anzeigen. Aspose.Words ermöglicht es Ihnen, eine Sammlung von Seriendruckfeldnamen mit der Methode [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) abzurufen.

Das folgende Codebeispiel zeigt, wie Namen aller Seriendruckfelder in der Vorlage abgerufen werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}

### Informationen zu Zusammenführungsregionen abrufen

Möglicherweise haben Sie ein Szenario, in dem Sie verstehen möchten, wie Ihre Vorlage durch die angegebenen Zusammenführungsbereiche strukturiert ist. Sie können einige Methoden verwenden, um alle erforderlichen Informationen zu Zusammenführungsregionen zu sammeln oder die Hierarchie der Zusammenführungsregionen in Ihrer Vorlage abzurufen, z. B. die Methode [GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy). Sie können die Eigenschaften und Methoden der Klasse [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/) verwenden.Das folgende Codebeispiel zeigt, wie die Hierarchie der Zusammenführungsregionen abgerufen wird:

**Java**
{{< highlight java >}}

MailMergeRegionInfo regionInfo = doc.getMailMerge().getRegionsHierarchy();

{{< /highlight >}}

Das folgende Codebeispiel zeigt, wie Sie bestimmte Zusammenführungsbereiche in Ihrer Vorlage basierend auf ihren Namen abrufen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ExecuteMailMergeWithRegions-GetRegionsByName.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

### Zugeordnete Felder hinzufügen

Mit Aspose.Words können Sie Namen von Feldern in Ihrer Datenquelle und Namen von Mail Merge Feldern in der Vorlage mithilfe der Eigenschaft [MappedDataFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getMappedDataFields) automatisch zuordnen. Wenn Sie beispielsweise einen Feldnamen mit dem Namen "Nachname" in Ihrer Vorlage und in Ihrer Datenquelle den Feldnamen "Nachname" oder eine andere Variante wie "Last_Name" oder "LastName" haben, dann wird das Feld in der Datenquelle automatisch dem entsprechenden zugeordneten Feld zugeordnet. Wenn eine Zusammenführungsvorlage mit vielen Datenquellen zusammengeführt werden soll, machen zugeordnete Felder es unnötig, die Felder erneut in die Vorlage einzugeben, um mit den Feldnamen in der Datenbank übereinzustimmen.

Das folgende Codebeispiel zeigt, wie Sie ein zugeordnetes Feld mit der Methode [Add](https://reference.aspose.com/words/java/com.aspose.words/mappeddatafieldcollection/#add-java.lang.String-java.lang.String) hinzufügen, wenn ein Seriendruckfeld in einer Vorlage und ein Datenfeld in einer Datenquelle unterschiedliche Namen haben:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-MappedFieldNames.java" >}}
