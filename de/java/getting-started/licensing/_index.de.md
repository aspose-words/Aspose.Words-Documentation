---
title: Lizenzierung und Abonnement
second_title: Aspose.Words für Java
articleTitle: Lizenzierung und Abonnement
linktitle: Lizenzierung und Abonnement
description: "Aspose.Words für Java bietet verschiedene Pläne für den Kauf oder bietet eine kostenlose Testversion und eine 30-tägige temporäre Lizenz für die Bewertung mit Lizenz- und Abonnementrichtlinien."
type: docs
weight: 60
url: /de/java/licensing/
---

Manchmal, um das System besser zu studieren, möchten Sie so schnell wie möglich in den Code eintauchen. Um dies zu erleichtern, Aspose.Words bietet verschiedene Kaufpläne oder bietet eine kostenlose Testversion und eine 30-tägige temporäre Lizenz zur Bewertung an.

{{% alert color="primary" %}}

Beachten Sie, dass es eine Reihe von allgemeinen Richtlinien und Praktiken gibt, die Sie bei der Bewertung, ordnungsgemäße Lizenz und Kauf unserer Produkte führen. Sie finden sie in der [Richtlinien und FAQ kaufen](https://purchase.aspose.com/policies/) Abschnitt.

{{% /alert %}}

## Kostenlose Test- oder Temporärlizenz

Aspose.Words ist unglaubliche Software, die Entwickler vor dem Kauf versuchen können. Sie können einfach herunterladen/installieren Aspose.Words für Java und Aspose.Words für Android über Java [von Maven](https://releases.aspose.com/words/java/) zur Bewertung.

### Kostenlose Testversion

Die Bewertungsversion ist die gleiche wie die gekaufte – die Trial-Version wird einfach lizenziert, wenn Sie ein paar Zeilen Code hinzufügen, um die Lizenz anzuwenden.

Die Trial Version von Aspose.Words für Java und Aspose.Words für Android über Java ohne die angegebene Lizenz bietet volle Produktfunktionalität, fügt aber ein evaluatives Wasserzeichen an der Spitze des Dokuments beim Laden und Speichern ein und begrenzt die maximale Dokumentengröße auf einige hundert Absätze.

### Vorübergehende Lizenz

Wenn Sie testen möchten Aspose.Words für Java und Aspose.Words für Android über Java ohne die Einschränkungen der Trial-Version können Sie auch eine 30-Tage-Befristungslizenz anfordern. Weitere Details finden Sie in der [Sie sind eine vorübergehende Lizenz](https://purchase.aspose.com/temporary-license/) Seite.

## Erworbene Lizenz

Nach dem Kauf müssen Sie die Lizenzdatei anwenden oder die Lizenzdatei als eingebettete Ressource einschließen. Dieser Abschnitt beschreibt Optionen, wie dies geschehen kann, sowie Kommentare zu einigen gemeinsamen Fragen.

{{% alert color="primary" %}}

Eine Lizenz ist eine einfache Text-XML-Datei, die Details wie Produktname, Anzahl der lizenzierten Entwickler, Abo-Verlauf-Datum und so weiter enthält.

Die Datei wird digital signiert, so ändern Sie die Datei nicht. Selbst unbeabsichtigte Hinzufügung eines zusätzlichen Line Break in die Datei wird sie ungültig.

{{% /alert %}}

{{% alert color="primary" %}}

Sie müssen die Lizenz festlegen:

* nur einmal pro Anwendungsdomäne
* vor der Verwendung eines anderen Aspose.Words Klassen

{{% /alert %}}

{{% alert color="primary" %}}

Sie können Preisinformationen über die [Preisinformationen](https://purchase.aspose.com/pricing/words/family/) Seite.

{{% /alert %}}

### Schutz Ihrer erworbenen Lizenz

Nach dem Kauf einer Lizenz müssen Sie die Informationen auf der Seite sorgfältig lesen [Schutz vor Schutz Das ist eine gute Idee](https://purchase.aspose.com/orders/protecting-your-license-file) um Ihre Lizenzdatei zu schützen. Bitte beachten Sie, dass diese Seite nur für die Anzeige zur Verfügung steht, wenn Sie eine bezahlte Lizenz haben.

### Lizenz Applying-Optionen

Lizenzen können an verschiedenen Standorten angewendet werden:

* Explice path
* Der Ordner mit *Aspose.Words JAR* Datei
* Eine eingebettete Ressource im JAR wird aufgerufen *Aspose.Words JAR*
* Als Metered License – ein neuer Lizenzierungsmechanismus

Oft ist der einfachste Weg, eine Lizenz zu setzen, die Lizenzdatei in den gleichen Ordner wie *Aspose.Words JAR* und geben Sie einfach den Dateinamen ohne den Pfad an.

{{% alert color="primary" %}}

Verwenden Sie die [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) Verfahren zur Lizenzierung einer Komponente.

Anruf **SetLicense** mehrfach ist nicht schädlich, es verschwendet nur Prozessorzeit.

Anruf [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) mehrfach ist auch nicht schädlich, sondern verschwendet nur die Prozessorzeit und kann den Verbrauch unangemessen anreichern.

{{% /alert %}}

#### Verwenden einer Datei oder eines Stream-Objekts

{{% alert color="primary" %}}

Anruf **SetLicense** in Ihrem Startcode vor der Verwendung Aspose.Words Klassen.

{{% /alert %}}

Bei der Entwicklung einer Klassenbibliothek können Sie anrufen **SetLicense** aus dem statischen Konstruktor Ihrer Klasse, die Aspose.Words. Der statische Konstrukteur wird ausgeführt, bevor Sie Ihre Klasse sofort bestimmen, um sicherzustellen, dass die Aspose.Words Die Lizenz ist korrekt installiert.

##### Laden Sie eine Lizenz aus einer Datei

Verwendung von [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String) Methode, Sie können versuchen, die Lizenzdatei in den eingebetteten Ressourcen oder Ordner, die die JARs Ihrer Bewerbung zur weiteren Verwendung.

Das folgende Codebeispiel zeigt, wie man eine Lizenz aus einem Ordner initialisiert:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### Eine Lizenz von einem `Stream` Gegenstand

Das folgende Codebeispiel zeigt, wie man eine Lizenz aus einem Stream mit einem anderen initialisiert [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) Methode:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### Include the License File als Embedded Resource

Ein ordentlicher Weg, eine Lizenz mit Ihrer Anwendung zu verpacken und sicherzustellen, dass sie nicht verloren geht, ist es als eingebettete Ressource einzubeziehen. Sie können die LIC-Datei einfach in den Ressourcenordner Ihres Projekts kopieren.

Der Wiederaufbau des Projekts sollte die .lic Datei in die Anwendung .jar Datei einbetten. Danach können Sie eine Lizenz mit folgendem Code beantragen:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### Gemessene Lizenz anwenden

Aspose.Words ermöglicht Entwicklern, einen dosierten Schlüssel anzuwenden. Das ist ein neuer Lizenzierungsmechanismus.

Der neue Lizenzierungsmechanismus wird zusammen mit der bestehenden Lizenzierungsmethode verwendet. Kunden, die auf der Verwendung von API Funktionen können die Metered Licensing verwenden.

Nach Abschluss aller notwendigen Schritte, um diese Art von Lizenz zu erhalten, erhalten Sie die Schlüssel, nicht die Lizenzdatei. Diese dosierte Taste kann mit der [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) Klasse speziell für diesen Zweck eingeführt.

Nicht nennen **SetMeteredKey** Verfahren häufig, so dass diese Lizenzmethode den Verbrauch richtig akkumuliert und uns berichtet. Einfach sofort die Aspose.Words Bibliothek, Anruf **SetMeteredKey** einmal, dann die Bibliothek sofort verlassen und wiederverwenden.

Das folgende Codebeispiel zeigt, wie man dosierte öffentliche und private Schlüssel einstellt:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

Bitte beachten Sie, dass Sie eine stabile Internetverbindung zur korrekten Nutzung der Metered-Lizenz haben müssen, da der Metered-Mechanismus die ständige Interaktion mit unseren Dienstleistungen für korrekte Berechnungen erfordert

Weitere Informationen finden Sie in der [Gemessene Lizenzierung FAQ](https://purchase.aspose.com/faqs/licensing/metered/) Abschnitt.

{{% /alert %}}

### Änderung des Lizenzdateinamens

Der Lizenzdateiname muss nicht sein "Aspose.Words.LIC". Sie können es nach Ihren Wünschen umbenennen und diesen Namen verwenden, wenn Sie eine Lizenz in Ihrer Anwendung festlegen.

### ""Kann keine Lizenzdateinamen finden" Ausnahme

Wenn Sie eine Lizenz erwerben und herunterladen, nennt die Aspose Website die Lizenzdatei *"Aspose.Words.LIC"*. Sie laden die Lizenzdatei mit Ihrem Browser herunter. In solchem Fall erkennen einige Browser die Lizenzdatei als XML an und legen die Dateiendung .xml an, so wird der vollständige Dateiname auf Ihrem Computer *"Aspose.Words.lic.XML"*.

Wann Microsoft Windows ist konfiguriert, um Erweiterungen für bekannte Dateitypen zu verstecken (leider ist dies der Standard in den meisten Windows Installationen), die Lizenzdatei erscheint als *"Aspose.Words. LIC* in Windows Explorer. Sie werden wahrscheinlich denken, dass dies der richtige Dateiname und Anruf ist **SetLicense** *"Aspose.Words.LIC"*, aber es gibt keine solche Datei, daher die Ausnahme.

Um das Problem zu lösen, umbenennen Sie die Datei, um die unsichtbare .xml-Erweiterung zu entfernen. Wir empfehlen Ihnen auch die Option "Hide Extensions" deaktivieren in Microsoft Windows.

## Verwendung mehrerer Aspose Produkte

Wenn Sie mehrere Aspose Produkte in Ihrer Anwendung verwenden, wie Aspose.Words und `Aspose.Cells`, hier sind ein paar nützliche Tipps:

* Setzen Sie die Lizenz für jedes Aspose Produkt separat ein. Auch wenn Sie eine einzelne Lizenzdatei für alle Komponenten haben, zum Beispiel "Aspose.Total.lic", müssen Sie noch anrufen **SetLicense** separat für jedes Aspose Produkt, das Sie in Ihrer Anwendung verwenden.
* Verwenden Sie den vollständigen Qualifizierten Lizenzklasse-Namen. Jedes Aspos Produkt hat eine `License` Klasse in seinem eigenen Namensraum. Zum Beispiel Aspose.Words hat **com.aspose.words.License** und `Aspose.Cells` hat com.aspose.cells. Lizenzklasse. Mit dem vollqualifizierten Klassennamen können Sie Verwechslungen vermeiden, welche Lizenz für welches Produkt gilt.
