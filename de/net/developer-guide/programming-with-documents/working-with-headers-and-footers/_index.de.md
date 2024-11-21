---
title: Arbeiten mit Kopf- und Fußzeilen in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Kopf- und Fußzeilen
linktitle: Arbeiten mit Kopf- und Fußzeilen
description: "So bearbeiten Sie Kopf- und Fußzeilen mit C#. Erstellen Sie Kopf- und Fußzeilen im C#-Format. Entfernen Sie Kopf- und Fußzeilen im C#-Format."
type: docs
weight: 150
url: /de/net/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Mit Aspose.Words können Benutzer mit Kopf- und Fußzeilen in einem Dokument arbeiten. Eine Kopfzeile ist Text, der oben auf einer Seite platziert wird, und eine Fußzeile ist Text, der unten auf einer Seite platziert wird. In der Regel werden diese Bereiche zum Einfügen von Informationen verwendet, die auf allen oder einigen Seiten des Dokuments wiederholt werden sollen, z. B. Seitenzahlen, Erstellungsdatum, Unternehmensinformationen usw.

## Erstellen Sie Kopf- oder Fußzeilen mit DocumentBuilder

Wenn Sie eine Kopf- oder Fußzeile eines Dokuments programmgesteuert hinzufügen möchten, ist es am einfachsten, die [DocumentBuilder](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/)-Klasse zu verwenden.

Das folgende Codebeispiel zeigt, wie man eine Kopf- und Fußzeile für Dokumentseiten hinzufügt:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "create-header-footer.cs" >}}

## Geben Sie Kopf- oder Fußzeilenoptionen an

Wenn Sie einem Dokument eine Kopf- oder Fußzeile hinzufügen, können Sie einige erweiterte Eigenschaften festlegen. Aspose.Words stellt Benutzern die [HeaderFooter](https://reference.aspose.com/words/de/net/aspose.words/headerfooter/)- und [HeaderFooterCollection](https://reference.aspose.com/words/de/net/aspose.words/headerfootercollection/)-Klassen sowie die [HeaderFooterType](https://reference.aspose.com/words/de/net/aspose.words/headerfootertype/)-Aufzählung zur Verfügung, die Ihnen mehr Kontrolle über den Anpassungsprozess von Kopf- und Fußzeilen geben.

### Geben Sie den Kopf- oder Fußzeilentyp an

Sie können für ein Dokument drei verschiedene Kopfzeilentypen und drei verschiedene Fußzeilentypen angeben:
1. Kopf- und/oder Fußzeile für die erste Seite
2. Kopf- und/oder Fußzeile für gerade Seiten
3. Kopf- und/oder Fußzeile für ungerade Seiten

Das folgende Codebeispiel zeigt, wie man eine Kopfzeile für ungerade Dokumentseiten hinzufügt:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "header-footer-type.cs" >}}

### Geben Sie an, ob für die erste Seite unterschiedliche Kopf- oder Fußzeilen angezeigt werden sollen

Wie oben erwähnt, können Sie für die erste Seite auch eine andere Kopf- oder Fußzeile festlegen. Dazu müssen Sie das [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/de/net/aspose.words/pagesetup/differentfirstpageheaderfooter/)-Flag auf `true` setzen und dann den **HeaderFirst**- oder **FooterFirst**-Wert angeben.

Das folgende Codebeispiel zeigt, wie die Kopfzeile nur für die erste Seite festgelegt wird:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "different-first-page.cs" >}}

### Geben Sie an, ob für ungerade oder gerade Seiten unterschiedliche Kopf- oder Fußzeilen angezeigt werden sollen

 Als Nächstes möchten Sie für ungerade und gerade Seiten in einem Dokument unterschiedliche Kopf- oder Fußzeilen festlegen. Dazu müssen Sie das [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/de/net/aspose.words/pagesetup/oddandevenpagesheaderfooter/)-Flag auf `true` setzen und anschließend die Werte **HeaderPrimary** und **HeaderEven** bzw. **FooterPrimary** und **FooterEven** angeben.

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "odd-even-pages.cs" >}}

### Fügen Sie ein absolut positioniertes Bild in die Kopfzeile ein

Um ein Bild in einer Kopf- oder Fußzeile zu platzieren, verwenden Sie den **HeaderPrimary**-Kopfzeilentyp oder den **FooterPrimary**-Fußzeilentyp und die [InsertImage](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertimage/)-Methode.

Das folgende Codebeispiel zeigt, wie man einem Header ein Bild hinzufügt:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "insert-image.cs" >}}

### Legen Sie Schriftart- und Absatzeigenschaften für Kopf- oder Fußzeilentext fest

Mit Aspose.Words können Sie die Schriftart- und Absatzeigenschaften festlegen, den **HeaderPrimary**-Kopfzeilentyp oder den **FooterPrimary**-Fußzeilentyp verwenden sowie Methoden und Eigenschaften für die Arbeit mit den Schriftarten und Absätzen, die Sie für den Dokumentkörper verwenden.

Das folgende Codebeispiel zeigt, wie der Text in der Kopfzeile auf Arial, Fett, Größe 14 und zentrierte Ausrichtung eingestellt wird:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "font-props.cs" >}}

### Fügen Sie Seitenzahlen in die Kopf- oder Fußzeile ein

Bei Bedarf können Sie der Kopf- oder Fußzeile Seitenzahlen hinzufügen. Verwenden Sie dazu den **HeaderPrimary**-Header-Typ oder den **FooterPrimary**-Footer-Typ und die [InsertField](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertfield/)-Methode, um das erforderliche Feld hinzuzufügen.

Das folgende Codebeispiel zeigt, wie man der Fußzeile rechts Seitenzahlen hinzufügt:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "page-numbers.cs" >}}

### Verwenden Sie die im vorherigen Abschnitt definierten Kopf- oder Fußzeilen

Wenn Sie die Kopf- oder Fußzeile aus dem vorherigen Abschnitt kopieren müssen, können Sie dies auch tun.

Das folgende Codebeispiel zeigt, wie Sie die Kopf- oder Fußzeile aus dem vorherigen Abschnitt kopieren:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "copy-headers-footers-from-previous-section.cs" >}}

### Stellen Sie sicher, dass die Kopf- oder Fußzeile angezeigt wird, wenn Sie unterschiedliche Seitenausrichtungen und Seitengrößen verwenden

Mit Aspose.Words können Sie das Erscheinungsbild einer Kopf- oder Fußzeile bereitstellen, wenn Sie unterschiedliche Ausrichtungen und Seitengrößen verwenden.

Das folgende Beispiel zeigt, wie das geht:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

## So entfernen Sie nur Kopf- oder Fußzeilen

Jeder Abschnitt in einem Dokument kann bis zu drei Kopfzeilen und bis zu drei Fußzeilen haben (für die erste, gerade und ungerade Seite). Wenn Sie alle Kopf- oder Fußzeilen in einem Dokument entfernen möchten, müssen Sie alle Abschnitte durchlaufen und jeden entsprechenden Kopf- oder Fußzeilenknoten entfernen.

Das folgende Codebeispiel zeigt, wie Sie alle Fußzeilen aus allen Abschnitten entfernen, die Kopfzeilen jedoch intakt lassen. Auf ähnliche Weise können Sie nur Header entfernen:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "remove-footers.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx) herunterladen.

{{% /alert %}}
