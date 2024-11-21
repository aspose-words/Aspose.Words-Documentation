---
title: Arbeiten mit Kopf- und Fußzeilen in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Kopf- und Fußzeilen
linktitle: Arbeiten mit Kopf- und Fußzeilen
description: "Wie man Kopf- und Fußzeilen manipuliert Java."
type: docs
weight: 150
url: /de/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ermöglicht es Benutzern, mit Kopf- und Fußzeilen in einem Dokument zu arbeiten. Ein Header ist Text, der oben auf einer Seite platziert wird, und ein Footer ist Text unten auf einer Seite. Typischerweise werden diese Bereiche verwendet, um Informationen einzufügen, die auf allen oder einigen Seiten des Dokuments wiederholt werden sollten, wie Seitennummern, Erstellungsdatum, Unternehmensinformationen und so weiter.

## Kopfzeilen oder Fußzeilen mit DocumentBuilder erstellen

Wenn Sie eine Dokument-Header oder Footer programmatisch hinzufügen möchten, ist der einfachste Weg, die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Klasse, um es zu tun.

Das folgende Codebeispiel zeigt, wie man einen Header und Footer für Dokumentseiten hinzufügt:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## Header oder Footer Optionen angeben

Wenn Sie ein Header oder Footer zu einem Dokument hinzufügen, können Sie einige erweiterte Eigenschaften festlegen. Aspose.Words bietet Benutzern die [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) und [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) Klassen, sowie [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) Aufzählung, die Ihnen mehr Kontrolle über den Kopf- und Fußanpassungsprozess geben.

### Kopf- oder Fußtyp angeben

Sie können drei verschiedene Kopftypen und drei verschiedene Fußtypen für ein Dokument angeben:

ANHANG Header und/oder Footer für die erste Seite
2. Header und/oder Footer für gerade Seiten
3. Header und/oder Footer für ungerade Seiten

Das folgende Codebeispiel zeigt, wie man einen Header für seltsame Dokumentseiten hinzufügt:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### Gibt an, ob verschiedene Header oder Footer für die erste Seite angezeigt werden

Wie oben gesagt, können Sie auch eine andere Kopfzeile oder Fußzeile für die erste Seite setzen. Um dies zu tun, müssen Sie die [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) Flagge `true` und dann spekulieren die **HeaderFirst** oder **FooterFirst** Wert.

Das folgende Codebeispiel zeigt, wie man den Header nur für die erste Seite einstellt:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### Geben Sie an, ob Sie verschiedene Header oder Footer für Odd oder Even Pages anzeigen

 Als nächstes möchten Sie verschiedene Kopfzeilen oder Fußzeilen für seltsame und sogar Seiten in einem Dokument festlegen. Um dies zu tun, müssen Sie die [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) Flagge `true` und dann die Werte spekulieren **HeaderPrimary** und **HeaderEven**, oder **FooterPrimary** und **FooterEven**.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### Einfügen eines absolut positionierten Bild in den Header

Um ein Bild in einer Kopfzeile oder Fußzeile zu platzieren, verwenden Sie die **HeaderPrimary** Kopftyp oder **FooterPrimary** Fußtyp und [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) Methode.

Das folgende Codebeispiel zeigt, wie ein Bild einem Header hinzugefügt wird:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Schriftart und Absatzeigenschaften für Header oder Footer Text festlegen

Mit Aspose.Words Sie können die Eigenschaften der Schriftart und des Absatzes festlegen, **HeaderPrimary** Kopftyp oder **FooterPrimary** Footer-Typ, sowie Methoden und Eigenschaften für die Arbeit mit den Schriften und Paragraphen, die Sie für die Dokument-Einrichtung verwenden.

Das folgende Codebeispiel zeigt, wie der Text im Header auf Arial, fett, Größe 14, und Mittelausrichtung eingestellt werden kann:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### Seitennummern in den Header oder Footer einfügen

Falls erforderlich, können Sie Seitennummern zum Header oder Footer hinzufügen. Um dies zu tun, verwenden Sie die **HeaderPrimary** Kopftyp oder **FooterPrimary** Fußtyp und [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) Verfahren zum Hinzufügen des gewünschten Feldes.

Das folgende Codebeispiel zeigt, wie man Seitennummern zum Footer rechts hinzufügt:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### Verwenden Sie Header oder Footer Definiert in der vorherigen Sektion

Wenn Sie den Kopf oder Fuß aus dem vorherigen Abschnitt kopieren müssen, können Sie das auch tun.

Das folgende Codebeispiel zeigt, wie man den Header oder Footer aus dem vorherigen Abschnitt kopiert:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### Stellen Sie sicher, Header oder Footer-Auftritt bei Verwendung verschiedener Seitenorientierungen und Seitengröße

Aspose.Words ermöglicht es Ihnen, das Aussehen eines Headers oder Footer bei der Verwendung verschiedener Orientierungen und Seitengrößen bereitzustellen.

Das folgende Beispiel zeigt:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## So entfernen Sie nur Kopfzeilen oder nur Fußzeilen

Jeder Abschnitt in einem Dokument kann bis zu drei Kopfzeilen und bis zu drei Fußzeilen (zum ersten, sogar und ungerade Seiten) haben. Wenn Sie alle Kopfzeilen oder alle Fußzeilen in einem Dokument entfernen möchten, müssen Sie alle Abschnitte durchschleifen und jeden entsprechenden Kopfknoten oder Fußknoten entfernen.

Das folgende Codebeispiel zeigt, wie man alle Fußzeilen aus allen Abschnitten entfernt, aber Kopfzeilen intakt lässt. Sie können nur Header in ähnlicher Weise entfernen:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}
