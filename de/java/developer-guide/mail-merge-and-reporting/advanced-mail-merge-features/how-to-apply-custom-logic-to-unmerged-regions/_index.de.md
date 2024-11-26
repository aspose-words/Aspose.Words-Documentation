---
title: So wenden Sie benutzerdefinierte Logik auf nicht zusammengeführte Regionen an
second_title: Aspose.Words für Java
articleTitle: So wenden Sie benutzerdefinierte Logik auf nicht zusammengeführte Regionen an
linktitle: So wenden Sie benutzerdefinierte Logik auf nicht zusammengeführte Regionen an
type: docs
description: "Wenden Sie während einer Mail Merge-Operation mit Java eine benutzerdefinierte Logik auf nicht zusammengeführte Regionen an."
weight: 70
url: /de/java/how-to-apply-custom-logic-to-unmerged-regions/
timestamp: 2024-01-27-14-07-04
---

Es gibt Situationen, in denen das vollständige Entfernen nicht zusammengeführter Bereiche aus dem Dokument während Mail Merge nicht erwünscht ist oder dazu führt, dass das Dokument unvollständig aussieht. Dies kann auftreten, wenn das Fehlen von Eingabedaten dem Benutzer in Form einer Nachricht angezeigt werden soll, anstatt den Bereich vollständig zu entfernen.

Es gibt auch Zeiten, in denen das Entfernen der nicht verwendeten Region allein nicht ausreicht, z. B. wenn der Region ein Titel vorangestellt ist oder die Region in einer Tabelle enthalten ist. Wenn dieser Bereich nicht verwendet wird, bleiben Titel und Tabelle nach dem Entfernen des Bereichs erhalten, was im Dokument fehl am Platz aussieht.

Dieser Artikel bietet eine Lösung, um manuell zu definieren, wie nicht verwendete Bereiche im Dokument behandelt werden. Der Basiscode für diese Funktionalität wird mitgeliefert und kann problemlos in einem anderen Projekt wiederverwendet werden.

Die auf jede Region anzuwendende Logik wird in einer Klasse definiert, die die Schnittstelle [IFieldMergingCallback](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/) implementiert. Auf die gleiche Weise kann ein Mail Merge -Handler eingerichtet werden, um zu steuern, wie jedes Feld zusammengeführt wird. Dieser Handler kann so eingerichtet werden, dass er Aktionen für jedes Feld in einer nicht verwendeten Region oder für die Region als Ganzes ausführt. In diesem Handler können Sie den Code festlegen, um den Text einer Region zu ändern, Knoten oder leere Zeilen und Zellen zu entfernen usw.

In diesem Beispiel verwenden wir das unten angezeigte Dokument. Es enthält verschachtelte Bereiche und einen Bereich in einer Tabelle.

![apply-custom-logic-to-unmerged-regions-aspose-words-java](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-1.png)

Als schnelle Demonstration können wir eine Beispieldatenbank für das Beispieldokument mit aktiviertem Flag [MailMergeCleanupOptions.REMOVE_UNUSED_REGIONS](https://reference.aspose.com/words/java/com.aspose.words/mailmergecleanupoptions/) ausführen. Diese Eigenschaft entfernt nicht zusammengeführte Bereiche während eines mail merge automatisch aus dem Dokument.

Die Datenquelle enthält zwei Datensätze für die Region **StoreDetails**, enthält jedoch absichtlich Daten für die untergeordneten Regionen **ContactDetails** für einen der Datensätze. Darüber hinaus enthält die Region **Suppliers** auch keine Datenzeilen. Dadurch verbleiben nicht verwendete Bereiche im Dokument. Das Ergebnis nach dem Zusammenführen des Dokuments mit dieser Datenquelle ist unten aufgeführt.

![merged-regions-aspose-words-java](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-2.png)

Wie auf dem Bild zu sehen ist, können Sie sehen, dass die Region **ContactDetails** für den zweiten Datensatz und die Regionen **Suppliers** von der Mail Merge -Engine automatisch entfernt wurden, da sie keine Daten enthalten. Es gibt jedoch einige Probleme, die dieses Ausgabedokument unvollständig erscheinen lassen:

- Die Region **ContactDetails** hinterlässt noch einen Absatz mit dem Text "Kontaktdaten".
- Im gleichen Fall gibt es keinen Hinweis darauf, dass keine Telefonnummern vorhanden sind, nur ein Leerzeichen, das zu Verwirrung führen könnte.
- Die Tabelle und der Titel, die sich auf die Region **Suppliers** beziehen, bleiben auch nach dem Entfernen der Region in der Tabelle erhalten.

Die in diesem Artikel bereitgestellte Technik zeigt, wie benutzerdefinierte Logik auf jede nicht zusammengeführte Region angewendet wird, um diese Probleme zu vermeiden.

**Lösung**

Um Logik manuell auf jeden nicht verwendeten Bereich im Dokument anzuwenden, nutzen wir Funktionen, die bereits in Aspose.Words verfügbar sind.

Die Mail Merge -Engine bietet eine Eigenschaft zum Entfernen nicht verwendeter Bereiche durch das Flag **MailMergeCleanupOptions.RemoveUnusedRegions**. Dies kann deaktiviert werden, so dass solche Regionen während einer mail merge unberührt bleiben. Dies ermöglicht es uns, die nicht zusammengeführten Bereiche im Dokument zu belassen und sie stattdessen manuell selbst zu bearbeiten.

Wir können dann die Eigenschaft **MailMerge.FieldMergingCallback** nutzen, um während Mail Merge unsere eigene benutzerdefinierte Logik auf diese nicht zusammengeführten Regionen anzuwenden, indem wir eine Handlerklasse verwenden, die die Schnittstelle **IFieldMergingCallback** implementiert.

Dieser Code innerhalb der Handlerklasse ist die einzige Klasse, die Sie ändern müssen, um die Logik zu steuern, die auf nicht zusammengeführte Regionen angewendet wird. Der andere Code in diesem Beispiel kann ohne Änderung in jedem Projekt wiederverwendet werden.

Dieses Beispielprojekt demonstriert diese Technik. Es umfasst die folgenden Schritte:

1. Führen Sie Mail Merge für das Dokument unter Verwendung Ihrer Datenquelle aus. Das Flag **MailMergeCleanupOptions.RemoveUnusedRegions** ist vorerst deaktiviert, wir möchten, dass die Regionen erhalten bleiben, damit wir sie manuell verarbeiten können. Alle Regionen ohne Daten werden im Dokument nicht zusammengeführt.
1. Rufen Sie die **ExecuteCustomLogicOnEmptyRegions**-Methode auf. Diese Methode wird in diesem Beispiel bereitgestellt. Es führt Aktionen aus, mit denen der angegebene Handler für jede nicht zusammengeführte Region aufgerufen werden kann. Diese Methode ist wiederverwendbar und kann unverändert in jedes Projekt kopiert werden, das sie benötigt (zusammen mit allen abhängigen Methoden).Diese Methode führt die folgenden Schritte aus:
   1. Setzt den vom Benutzer angegebenen Handler auf die Eigenschaft **MailMerge.FieldMergingCallback**.
   1. Ruft die **CreateDataSourceFromDocumentRegions** -Methode auf, die die **Document** - und **ArrayList** -enthaltenden Regionsnamen des Benutzers akzeptiert. Diese Methode erstellt eine Dummy-Datenquelle, die Tabellen für jeden nicht zusammengeführten Bereich im Dokument enthält.
   1. Führt Mail Merge für das Dokument unter Verwendung der Dummy-Datenquelle aus. Wenn Mail Merge mit dieser Datenquelle ausgeführt wird, kann der benutzerdefinierte Handler für jede Unmerge-Region aufgerufen und die benutzerdefinierte Logik angewendet werden

**Codes**

Die Implementierung für die **ExecuteCustomLogicOnEmptyRegions** -Methode finden Sie unten. Diese Methode akzeptiert mehrere Parameter:

1. Das [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) -Objekt, das nicht zusammengeführte Bereiche enthält, die vom übergebenen Handler behandelt werden sollen.
1. Die Handlerklasse, die die Logik definiert, die auf nicht zusammengeführte Regionen angewendet werden soll. Dieser Handler muss die implementieren [IFieldMergingCallback](https://www.aspose.com/api/java/words/com.aspose.words/interfaces/IFieldMergingCallback) Schnittstelle.
1. Durch die Verwendung der entsprechenden Überladung kann die Methode auch einen dritten Parameter akzeptieren - eine Liste von Regionsnamen als Zeichenfolgen. Wenn dies angegeben ist, werden nur Regionsnamen, die in dem in der Liste angegebenen Dokument verbleiben, manuell verarbeitet. Andere gefundene Regionen werden vom Handler nicht aufgerufen und automatisch entfernt. Wenn die Überladung mit nur zwei Parametern angegeben ist, wird jeder verbleibende Bereich im Dokument von der manuell zu handhabenden Methode eingeschlossen.

**Beispiel**

Zeigt, wie benutzerdefinierte Logik für nicht verwendete Bereiche mit dem angegebenen Handler ausgeführt wird.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ExecuteCustomLogicOnUnusedRegions.java" >}}

{{% alert color="primary" %}}

Wenn Sie erwägen, die **ExecuteCustomLogicOnEmptyRegions** -Methode nacheinander mit verschiedenen Handlern auszuführen (z. B. wendet jeder Handler Logik auf bestimmte Felder an), müssen Sie das Entfernen nicht verwendeter Bereiche deaktivieren, damit solche Bereiche zwischen diesen Aufrufen nicht entfernt werden.

{{% /alert %}}

**Beispiel**

Definiert die Methode, mit der nicht zusammengeführte Regionen manuell behandelt werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ManuallyHandleUnmergedRegions.java" >}}

Bei dieser Methode werden alle nicht zusammengeführten Bereiche im Dokument gefunden. Dies wird mit der **MailMerge.GetFieldNames** -Methode erreicht. Diese Methode gibt alle Seriendruckfelder im Dokument zurück, einschließlich der Start- und Endmarkierungen des Bereichs (dargestellt durch Seriendruckfelder mit dem Präfix *TableStart* oder *TableEnd*).

Wenn ein `TableStart` -Seriendruckfeld gefunden wird, wird dieses als neue **DataTable** zu **DataSet** hinzugefügt. Da eine Region mehr als einmal vorkommen kann (z. B. weil es sich um eine verschachtelte Region handelt, in der die übergeordnete Region mit mehreren Datensätzen zusammengeführt wurde), wird die Tabelle nur erstellt und hinzugefügt, wenn sie nicht bereits in **DataSet** vorhanden ist.

Wenn ein geeigneter Regionsanfang gefunden und der Datenbank hinzugefügt wurde, wird das nächste Feld (das dem ersten Feld in der Region entspricht) zu **DataTable** hinzugefügt. Für jedes Feld in der Region, das zusammengeführt und an den Handler übergeben werden soll, muss nur das erste Feld hinzugefügt werden.

Wir setzen auch den Feldwert des ersten Felds auf "FirstField", um die Anwendung von Logik auf das erste oder andere Felder in der Region zu vereinfachen. Wenn Sie dies einschließen, bedeutet dies, dass es nicht erforderlich ist, den Namen des ersten Felds fest zu codieren oder zusätzlichen Code zu implementieren, um zu überprüfen, ob das aktuelle Feld das erste im Handlercode ist.

Der folgende Code zeigt, wie dieses System funktioniert. Das am Anfang dieses Artikels gezeigte Dokument wird mit derselben Datenquelle erneut zusammengeführt, aber diesmal werden die nicht verwendeten Bereiche von benutzerdefiniertem Code verarbeitet.

**Beispiel**

Zeigt, wie nicht zusammengeführte Regionen nach Mail Merge mit benutzerdefiniertem Code behandelt werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-HandleUnmergedRegionsAfterMailMerge.java" >}}


Der Code führt verschiedene Operationen basierend auf dem Namen der Region aus, die mit der Eigenschaft **FieldMergingArgs.TableName** abgerufen wurde. Beachten Sie, dass Sie abhängig von Ihrem Dokument und Ihren Regionen den Handler so codieren können, dass die Logik abhängig von jeder Region oder jedem Code ausgeführt wird, der für jede nicht zusammengeführte Region im Dokument oder eine Kombination aus beiden gilt.

Die Logik für die Region **ContactDetails** beinhaltet das Ändern des Textes jedes Felds in der Region **ContactDetails** mit einer entsprechenden Meldung, die besagt, dass keine Daten vorhanden sind. Die Namen der einzelnen Felder werden innerhalb des Handlers mithilfe der Eigenschaft **FieldMergingArgs.FieldName** abgeglichen.

Ein ähnlicher Prozess wird auf die Region **Suppliers** angewendet, wobei zusätzlicher Code hinzugefügt wird, um die Tabelle zu behandeln, die die Region enthält. Der Code prüft, ob die Region in einer Tabelle enthalten ist (da sie möglicherweise bereits entfernt wurde). Wenn dies der Fall ist, werden die gesamte Tabelle sowie der vorangehende Absatz aus dem Dokument entfernt, sofern sie mit einem Überschriftenstil formatiert ist, z. B. "Heading 1".

**Beispiel**

Zeigt, wie benutzerdefinierte Logik in einem Handler definiert wird, der IFieldMergingCallback implementiert und für nicht zusammengeführte Bereiche im Dokument ausgeführt wird.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-EmptyRegionsHandler.java" >}}

Das Ergebnis des obigen Codes ist unten gezeigt. Die nicht zusammengeführten Felder im ersten Bereich werden durch informativen Text ersetzt, und das Entfernen der Tabelle und der Überschrift lässt das Dokument vollständig aussehen.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-2](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-3.png)


Der Code, der die übergeordnete Tabelle entfernt, könnte auch für jede nicht verwendete Region anstatt nur für eine bestimmte Region ausgeführt werden, indem die Prüfung auf den Tabellennamen entfernt wird. Wenn in diesem Fall ein Bereich innerhalb einer Tabelle nicht mit Daten zusammengeführt wurde, werden sowohl der Bereich als auch die Containertabelle automatisch entfernt.

Wir können verschiedenen Code in den Handler einfügen, um zu steuern, wie nicht zusammengeführte Regionen behandelt werden. Wenn Sie stattdessen den folgenden Code im Handler verwenden, wird der Text im ersten Absatz der Region in eine hilfreiche Nachricht geändert, während alle nachfolgenden Absätze in der Region entfernt werden. Diese anderen Absätze werden entfernt, da sie nach dem Zusammenführen unserer Nachricht in der Region verbleiben würden.

Der Ersetzungstext wird in das erste Feld eingefügt, indem der angegebene Text in die Eigenschaft **FieldMergingArgs.Text** gesetzt wird. Der Text aus dieser Eigenschaft wird von der Mail Merge-Engine in das Feld eingefügt.

Der Code wendet dies nur für das erste Feld in der Region an, indem die Eigenschaft **FieldMergingArgs.FieldValue** überprüft wird. Der Feldwert des ersten Feldes in der Region ist mit "FirstField" gekennzeichnet. Dies erleichtert die Implementierung dieser Art von Logik in vielen Regionen, da kein zusätzlicher Code erforderlich ist.

**Beispiel**

Zeigt, wie Sie einen nicht verwendeten Bereich durch eine Nachricht ersetzen und zusätzliche Absätze entfernen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ReplaceAnUnusedRegionWithAMessage.java" >}}

Das resultierende Dokument, nachdem der obige Code ausgeführt wurde, ist unten gezeigt. Der nicht verwendete Bereich wird durch eine Meldung ersetzt, die besagt, dass keine anzuzeigenden Datensätze vorhanden sind.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-3](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-4.png)


Als weiteres Beispiel können wir den folgenden Code anstelle des Codes einfügen, der ursprünglich die **SuppliersRegion** behandelt hat. Dadurch wird eine Meldung in der Tabelle angezeigt und die Zellen werden zusammengeführt, anstatt die Tabelle aus dem Dokument zu entfernen. Da sich der Bereich in einer Tabelle mit mehreren Zellen befindet, sieht es schöner aus, wenn die Zellen der Tabelle zusammengeführt und die Nachricht zentriert werden.

**Beispiel**

Zeigt, wie alle übergeordneten Zellen eines nicht verwendeten Bereichs zusammengeführt und eine Meldung in der Tabelle angezeigt werden.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-MergeAllTheParentCellsOfAnUnusedRegion.java" >}}

Das resultierende Dokument, nachdem der obige Code ausgeführt wurde, ist unten gezeigt.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-4](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-5.png)


Schließlich können wir die **ExecuteCustomLogicOnEmptyRegions** -Methode aufrufen und die Tabellennamen angeben, die in unserer Handler-Methode behandelt werden sollen, während andere angegeben werden, die automatisch entfernt werden sollen.

**Beispiel**

Zeigt, wie nur die `ContactDetails`-Region angegeben wird, die von der Handlerklasse verarbeitet werden soll.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-HandleTheContactDetailsRegion.java" >}}

Durch Aufrufen dieser Überladung mit dem angegebenen ArrayList wird die Datenquelle erstellt, die nur Datenzeilen für die angegebenen Regionen enthält. Andere Regionen als die `ContactDetails`-Region werden nicht behandelt und stattdessen automatisch von der Mail Merge-Engine entfernt. Das Ergebnis des obigen Aufrufs unter Verwendung des Codes in unserem ursprünglichen Handler ist unten gezeigt.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-5](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-6.png)
