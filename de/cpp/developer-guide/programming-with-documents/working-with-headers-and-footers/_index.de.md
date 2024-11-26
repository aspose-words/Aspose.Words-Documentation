---
title: Arbeiten mit Kopf- und Fußzeilen in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Kopf- und Fußzeilen
linktitle: Arbeiten mit Kopf- und Fußzeilen
description: "So bearbeiten Sie Kopf- und Fußzeilen mit C++."
type: docs
weight: 150
url: /de/cpp/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ermöglicht Benutzern das Arbeiten mit Kopf- und Fußzeilen in einem Dokument. Eine Kopfzeile ist Text, der oben auf einer Seite platziert wird, und eine Fußzeile ist Text am Ende einer Seite. In der Regel werden diese Bereiche zum Einfügen von Informationen verwendet, die auf allen oder einigen Seiten des Dokuments wiederholt werden sollen, z. B. Seitenzahlen, Erstellungsdatum, Unternehmensinformationen usw.

## Kopf- oder Fußzeilen mit DocumentBuilder erstellen

Wenn Sie eine Dokumentkopf- oder -fußzeile programmgesteuert hinzufügen möchten, verwenden Sie dazu am einfachsten die Klasse [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).

Das folgende Codebeispiel zeigt, wie Sie eine Kopf- und Fußzeile für Dokumentseiten hinzufügen:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## Kopf- oder Fußzeilenoptionen angeben

Wenn Sie einem Dokument eine Kopf- oder Fußzeile hinzufügen, können Sie einige erweiterte Eigenschaften festlegen. Aspose.Words bietet Benutzern die Klassen [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) und [HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/) sowie die [HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/)-Aufzählung, mit der Sie mehr Kontrolle über den Anpassungsprozess für Kopf- und Fußzeilen haben.

### Geben Sie den Kopf- oder Fußzeilentyp an

Sie können drei verschiedene Kopfzeilentypen und drei verschiedene Fußzeilentypen für ein Dokument angeben:

1. Kopf- und/oder Fußzeile für die erste Seite
2. Kopf- und/oder Fußzeile für gerade Seiten
3. Kopf- und / oder Fußzeile für ungerade Seiten

Das folgende Codebeispiel zeigt, wie Sie eine Kopfzeile für ungerade Dokumentseiten hinzufügen:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### Geben Sie an, ob für die erste Seite unterschiedliche Kopf- oder Fußzeilen angezeigt werden sollen

Wie oben erwähnt, können Sie für die erste Seite auch eine andere Kopf- oder Fußzeile festlegen. Dazu müssen Sie das Flag [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/) auf `true` setzen und dann den Wert **HeaderFirst** oder **FooterFirst** angeben.

Das folgende Codebeispiel zeigt, wie die Kopfzeile nur für die erste Seite festgelegt wird:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### Geben Sie an, ob für ungerade oder gerade Seiten unterschiedliche Kopf- oder Fußzeilen angezeigt werden sollen

 Als nächstes möchten Sie verschiedene Kopf- oder Fußzeilen für ungerade und gerade Seiten in einem Dokument festlegen. Dazu müssen Sie das Flag [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/) auf `true` setzen und dann die Werte **HeaderPrimary** und **HeaderEven** oder **FooterPrimary** und **FooterEven** angeben.

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### Fügen Sie ein absolut positioniertes Bild in die Kopfzeile ein

Um ein Bild in einer Kopf- oder Fußzeile zu platzieren, verwenden Sie den Kopfzeilentyp **HeaderPrimary** oder den Fußzeilentyp **FooterPrimary** und die Methode `InsertImage`.

Das folgende Codebeispiel zeigt, wie Sie einem Header ein Bild hinzufügen:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### Festlegen von Schrift- und Absatzeigenschaften für Kopf- oder Fußzeilentext

Mit Aspose.Words können Sie die Schrift- und Absatzeigenschaften festlegen, den Kopfzeilentyp **HeaderPrimary** oder den Fußzeilentyp **FooterPrimary** sowie Methoden und Eigenschaften für die Arbeit mit den Schriftarten und Absätzen verwenden, die Sie für den Dokumentkörper verwenden.

Das folgende Codebeispiel zeigt, wie Sie den Text in der Kopfzeile auf Arial, fett, Größe 14 und zentrierte Ausrichtung festlegen:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### Seitenzahlen in die Kopf- oder Fußzeile einfügen

Bei Bedarf können Sie der Kopf- oder Fußzeile Seitenzahlen hinzufügen. Verwenden Sie dazu den Kopfzeilentyp **HeaderPrimary** oder den Fußzeilentyp **FooterPrimary** und die Methode [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), um das erforderliche Feld hinzuzufügen.

Das folgende Codebeispiel zeigt, wie Sie der Fußzeile rechts Seitenzahlen hinzufügen:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### Verwenden Sie Kopf- oder Fußzeilen, die im vorherigen Abschnitt definiert wurden

Wenn Sie die Kopf- oder Fußzeile aus dem vorherigen Abschnitt kopieren müssen, können Sie dies auch tun.

Das folgende Codebeispiel zeigt, wie Sie die Kopf- oder Fußzeile aus dem vorherigen Abschnitt kopieren:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### Stellen Sie das Erscheinungsbild der Kopf- oder Fußzeile sicher, wenn Sie unterschiedliche Seitenausrichtungen und Seitengrößen verwenden

Aspose.Words ermöglicht es Ihnen, das Erscheinungsbild einer Kopf- oder Fußzeile anzugeben, wenn Sie unterschiedliche Ausrichtungen und Seitengrößen verwenden.

Das folgende Beispiel zeigt, wie das geht:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## So entfernen Sie nur Kopf- oder Fußzeilen

Jeder Abschnitt in einem Dokument kann bis zu drei Kopf- und bis zu drei Fußzeilen haben (für erste, gerade und ungerade Seiten). Wenn Sie alle Kopf- oder Fußzeilen in einem Dokument entfernen möchten, müssen Sie alle Abschnitte durchlaufen und jeden entsprechenden Kopf- oder Fußzeilenknoten entfernen.

Das folgende Codebeispiel zeigt, wie Sie alle Fußzeilen aus allen Abschnitten entfernen, die Kopfzeilen jedoch intakt lassen. Sie können nur Header auf ähnliche Weise entfernen:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
