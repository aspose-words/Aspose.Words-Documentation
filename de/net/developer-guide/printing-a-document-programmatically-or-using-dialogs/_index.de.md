---
title: Drucken eines Dokuments in C#
second_title: Aspose.Words für .NET
articleTitle: Drucken eines Dokuments programmgesteuert oder mithilfe von Dialogen
linktitle: Drucken eines Dokuments programmgesteuert oder mithilfe von Dialogen
description: "Drucken Sie ein Dokument auf einem Server mit dem nicht verwalteten XpsPrint API oder über einen ausgewählten Drucker mit Einstellungen und Druckvorschau-Dialogen in C#."
type: docs
weight: 55
url: /de/net/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-31-14-23-37
---

In diesem Artikel wird beschrieben, wie Sie ein Textverarbeitungsdokument aus einer ASP.NET- oder Windows-Dienstanwendung mithilfe von Aspose.Words und `XpsPrint` API drucken. Außerdem werden die Methoden zum Drucken eines Dokuments mit den Dialogfeldern "Einstellungen", "Druckvorschau" und "Druckfortschritt" demonstriert und erklärt, wie Sie die Zeit des ersten Aufrufs zum Drucken eines Dokuments verkürzen können.

## Drucken eines Dokuments auf einem Server über das `XpsPrint`-API

Dieser Abschnitt richtet sich an Benutzer, die ein XPS-Dokument aus einer .NET-Anwendung mithilfe von Aspose.Words an den nicht verwalteten XpsPrint API senden möchten.

### Einschränkungen beim Drucken eines Dokuments in den ASP.NET- oder Windows-Dienstanwendungen

Wenn Sie eine .NET-Anwendung entwickeln, die gedruckte Ausgaben erzeugt, können Sie normalerweise Klassen verwenden, die im *System.Drawing.Printing*-Namespace bereitgestellt werden, oder Windows Presentation Foundation (WPF)-Klassen. Wenn es sich bei der Anwendung jedoch um eine ASP.NET- oder Windows-Dienstanwendung handelt, sind die Druckoptionen begrenzt, da Microsoft von der Verwendung dieses Ansatzes abrät. Die .NET Framework-Druckklassen werden von der Dienstanwendung nicht unterstützt. Dazu gehören ASP-Seiten, die im Allgemeinen im Kontext des Serverdienstes ausgeführt werden.

Die Verwendung der Klassen im *System.Drawing.Printing*-Namespace wird in einem Windows-Dienst oder einer ASP.NET-Anwendung oder einem ASP.NET-Dienst nicht unterstützt, und der Versuch, sie zu verwenden, kann zu einer verminderten Dienstleistung, Laufzeitausnahmen und anderen Problemen führen. Die Verwendung von WPF zum Aufbau von Windows-Diensten wird ebenfalls nicht unterstützt. Da es sich bei WPF um eine Präsentationstechnologie handelt, benötigt der Windows-Dienst entsprechende Berechtigungen, um visuelle Vorgänge mit Benutzerinteraktion auszuführen. Wenn der Windows-Dienst nicht über solche Berechtigungen verfügt, kann es zu unerwarteten Ergebnissen kommen.

Das Aspose.Words [Document](https://reference.aspose.com/words/de/net/aspose.words/document/)-Objekt stellt eine Familie von [Print](https://reference.aspose.com/words/de/net/aspose.words/document/methods/print/index)-Methoden zum Drucken von Dokumenten bereit. Diese Methoden verwenden die im *System.Drawing.Printing*-Namespace definierten .NET-Druckklassen. Es gibt viele Aspose.Words-Kunden, die es erfolgreich zum Drucken in ihren serverseitigen Anwendungen einsetzen. Dennoch zeigt dieser Artikel eine alternative Druckmethode auf, die den Empfehlungen von Microsoft entspricht.

### Methoden zum Drucken eines Dokuments auf einem Server

Der richtige Weg, Dokumente gemäß Microsoft zu drucken, ist die Verwendung des nicht verwalteten XpsPrint API. Dieses API ist auf Windows 7, Windows Server 2008 R2 und auf Windows Vista verfügbar, sofern das Plattformupdate für Windows Vista installiert ist.

Da Aspose.Words problemlos jedes Dokument in XPS konvertieren kann, müssen Sie nur den Code schreiben, der ein XPS-Dokument an das `XpsPrint`-API übergibt. Das einzige Problem besteht darin, dass das `XpsPrint`-API nicht verwaltet wird und einige Kenntnisse der Platform Invoke-Technologie erfordert.

Um ein Dokument zu drucken, stellt Aspose.Words eine **XpsPrintHelper**-Klasse bereit, die eine einfache Print-Methode enthält, bei der Sie lediglich die folgenden Parameter angeben müssen (weitere Details finden Sie im Artikel [Dokument über XPS API drucken](/words/net/missing-features-in-openxml/)):

- Dokument, das Sie drucken möchten.
- Druckername.
- Jobname (optional).
– Boolescher Wert, der angibt, ob das Programm warten soll, bis der Druckauftrag abgeschlossen ist. Daher prüft das System entweder, ob das Dokument erfolgreich gedruckt wurde, oder meldet sich sofort nach dem Absenden des Druckauftrags. Im letzten Fall kann nicht festgestellt werden, ob der Druckauftrag erfolgreich war.

Wenn beim Senden oder Drucken des Dokuments Probleme auftreten, löst die Methode eine Ausnahme aus.

Das folgende Codebeispiel zeigt, wie man ein Dokument mit der **XpsPrintHelper**-Klasse druckt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

Wenn Sie das Projekt ausführen, druckt es ein Beispieldokument auf dem angegebenen Drucker und öffnet ein Konsolenfenster, um die Druckergebnisse anzuzeigen. Wenn der Druckauftrag abgeschlossen ist oder ein Fehler auftritt, zeigt das System eine Erfolgsmeldung oder einen Text der ausgelösten Ausnahme an.

Sie können einige Druckeinstellungen auch mithilfe der [PageSetup](https://reference.aspose.com/words/de/net/aspose.words/pagesetup/)-Klasse festlegen. In Microsoft Word werden beispielsweise Druckerfächer für jeden Abschnitt definiert und sind druckerspezifisch. Daher können Sie diese Werte für jeden Abschnitt programmgesteuert über die [FirstPageTray](https://reference.aspose.com/words/de/net/aspose.words/pagesetup/firstpagetray/)- und [OtherPagesTray](https://reference.aspose.com/words/de/net/aspose.words/pagesetup/otherpagestray/)-Eigenschaften ändern.

{{% alert color="primary" %}}

In einigen Fällen müssen Sie dieses Beispiel möglicherweise ohne Aspose.Words verwenden. Wenn Sie beispielsweise bereits über ein XPS-Dokument verfügen und es nur aus einer ASP.NET- oder Windows-Dienstanwendung drucken möchten. Dann können Sie einfach die `Print`-Methode löschen.

{{% /alert %}}

Es gibt zwei Überladungen der **XpsPrintHelper**.**Print**-Methode. Die erste Überladung nimmt ein [Document](https://reference.aspose.com/words/de/net/aspose.words/document/)-Objekt und speichert es in einem `MemoryStream` im XPS-Format. Die zweite Überladung akzeptiert ein `Stream`-Objekt. Der Stream muss ein Dokument im XPS-Format enthalten.

Sie können die Beispiele für Methodenüberladung von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip) herunterladen.

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

## Drucken eines Dokuments mit Einstellungs- und Druckvorschau-Dialogen

Bei der Arbeit mit Dokumenten ist es häufig erforderlich, diese auf einem ausgewählten Drucker auszudrucken. Es ist hilfreich, einen Druckvorschaudialog zu verwenden, um visuell zu prüfen, wie das gedruckte Dokument aussehen wird, und relevante Druckoptionen auszuwählen.

Das Aspose.Words verfügt über keine integrierten Dialoge oder Formulare, sondern implementiert die [AsposeWordsPrintDocument](https://reference.aspose.com/words/de/net/aspose.words.rendering/asposewordsprintdocument/)-Klasse, basierend auf der .NET-**PrintDocument**-Klasse. Eine Instanz dieser Klasse kann an das **PrintPreviewDialog**-Formular übergeben werden, um eine Vorschau des Dokuments anzuzeigen und es zu drucken. Außerdem definiert die [PrintPreviewDialog](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8)-Klasse die Ausgabe, die an einen Drucker übertragen werden soll.

Das folgende Beispiel zeigt, wie Sie diese Klassen verwenden, um ein Dokument aus Aspose.Words über die Dialogfelder "Druckvorschau" und "Einstellungen" zu drucken:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

Mit der **AllowSomePages**-Eigenschaft können Sie einen Seitenbereich zum Drucken auswählen, wenn der Wert dieser Eigenschaft "True" ist. Standardmäßig sind alle Seiten im Bereich zum Drucken ausgewählt.

{{% /alert %}}

Um das Erscheinungsbild der Druckvorschau-Dialogeinstellungen zu optimieren, geben Sie Eigenschaften der **PrintPreviewDialog**-Klasse an.

## Drucken mehrerer Seiten auf einem Blatt

Es ist immer von Vorteil, beim Drucken von Dokumenten mehr Flexibilität zu haben. Mithilfe von .NET und Aspose.Words können Sie den Druckvorgang ganz einfach optimieren, um Ihre benutzerdefinierte Logik zu implementieren, indem Sie festlegen, wie das Dokument auf der gedruckten Seite angezeigt wird.

Wie im vorherigen Abschnitt implementiert Aspose.Words die **MultipagePrintDocument**-Klasse, die auf der .NET-**PrintDocument**-Klasse basiert. Dies bedeutet, dass die vorhandene .NET-Druckinfrastruktur so genutzt werden kann, dass die Druck- und Druckvorschaudialoge eine Visualisierung des Dokuments vor dem Drucken ermöglichen. Die **MultipagePrintDocument**-Klasse bietet die Möglichkeit, mehrere Seiten auf einem Blatt Papier zu drucken.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

Das Ergebnis dieses Codebeispiels ist unten dargestellt:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## Ausblenden des Druckfortschrittsdialogs beim Drucken eines Dokuments

Der Druckfortschrittsdialog erscheint nicht, wenn ein Dokument über die [Print](https://reference.aspose.com/words/de/net/aspose.words/document/print/)-Methode gedruckt wird. Dieser Dialog erscheint jedoch beim Drucken mit einer anderen [Print](https://reference.aspose.com/words/de/net/aspose.words.rendering/asposewordsprintdocument/)-Methode. Um in diesem Fall zu verhindern, dass das Dialogfeld "Drucken" angezeigt wird, sollten Sie bei dieser Methode gültige Druckereinstellungen und einen Standard-Druckcontroller angeben, wie im folgenden Beispiel gezeigt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

## So verkürzen Sie die Zeit des ersten Aufrufs zum Drucken eines Dokuments

Aspose.Words liest und speichert einige **PrinterSettings**-Felder zwischen, um die Druckzeit zu verkürzen. Dies erreichen Sie durch den Aufruf der [CachePrinterSettings](https://reference.aspose.com/words/de/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/)-Methode. Diese Methode wird vor Beginn des Druckvorgangs aufgerufen, sofern sie nicht zuvor ausgeführt wurde. Beachten Sie, dass die Gesamtzeit des Druckens mit und ohne Aufruf dieser Methode nahezu gleich ist. Der Zweck dieser Methode besteht darin, die Zeit des ersten Aufrufs der [Print](https://reference.aspose.com/words/de/net/aspose.words/document/print/)-Methode zu verkürzen. Das folgende Codebeispiel zeigt, wie diese Methode verwendet wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Siehe auch

- [Plattform-Update für Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
