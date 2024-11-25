---
title: Lizenzierung und Abonnement
second_title: Aspose.Words für Java
articleTitle: Lizenzierung und Abonnement
linktitle: Lizenzierung und Abonnement
description: "Aspose.Words für Java bietet verschiedene Pläne zum Kauf an oder bietet eine kostenlose Testversion und eine temporäre 30-Tage-Lizenz zur Evaluierung unter Verwendung von Lizenz- und Abonnementrichtlinien an."
type: docs
weight: 60
url: /de/java/licensing/
timestamp: 2024-01-31-14-23-37
---

Manchmal möchte man, um das System besser zu studieren, so schnell wie möglich in den Code eintauchen. Um dies zu vereinfachen, bietet Aspose.Words verschiedene Pläne zum Kauf an oder bietet eine kostenlose Testversion und eine temporäre 30-Tage-Lizenz zur Evaluierung an.

{{% alert color="primary" %}}

Beachten Sie, dass es eine Reihe allgemeiner Richtlinien und Praktiken gibt, die Sie bei der Bewertung, ordnungsgemäßen Lizenzierung und dem Kauf unserer Produkte unterstützen. Sie finden sie in der [Kaufrichtlinien und FAQ](https://purchase.aspose.com/policies/) Abschnitt.

{{% /alert %}}

## Kostenlose Testversion oder temporäre Lizenz

Aspose.Words ist eine unglaubliche Software, die Entwickler vor dem Kauf ausprobieren können. Sie können ganz einfach Aspose.Words für Java und Aspose.Words für Android über Java herunterladen / installieren [von Maven](https://releases.aspose.com/words/java/) zur Auswertung.

### Kostenlose Testversion

Die Testversion ist die gleiche wie die gekaufte – die Testversion wird einfach lizenziert, wenn Sie ein paar Codezeilen hinzufügen, um die Lizenz anzuwenden.

Die Testversion von Aspose.Words für Java und Aspose.Words für Android über Java ohne die angegebene Lizenz bietet die volle Produktfunktionalität, fügt jedoch beim Laden und Speichern oben im Dokument ein bewertendes Wasserzeichen ein und begrenzt die maximale Dokumentgröße auf einige hundert Absätze.

### Temporäre Lizenz

Wenn Sie Aspose.Words für Java und Aspose.Words für Android über Java ohne die Einschränkungen der Testversion testen möchten, können Sie auch eine temporäre 30-Tage-Lizenz anfordern. Weitere Einzelheiten finden Sie in der [Holen Sie sich eine temporäre Lizenz](https://purchase.aspose.com/temporary-license/) Seite.

## Gekaufte Lizenz

Nach dem Kauf müssen Sie die Lizenzdatei anwenden oder die Lizenzdatei als eingebettete Ressource einschließen. Dieser Abschnitt beschreibt Optionen, wie dies geschehen kann, und kommentiert auch einige häufig gestellte Fragen.

{{% alert color="primary" %}}

Eine Lizenz ist eine XML-Klartextdatei, die Details wie Produktname, Anzahl der lizenzierten Entwickler, Ablaufdatum des Abonnements usw. enthält.

Die Datei ist digital signiert, ändern Sie sie also nicht. Selbst das versehentliche Hinzufügen eines zusätzlichen Zeilenumbruchs in die Datei macht sie ungültig.

{{% /alert %}}

{{% alert color="primary" %}}

Sie müssen die Lizenz festlegen:

* nur einmal pro Anwendungsdomäne
* bevor Sie andere Aspose.Words -Klassen verwenden

{{% /alert %}}

{{% alert color="primary" %}}

Preisinformationen finden Sie auf der [Preisinformationen](https://purchase.aspose.com/pricing/words/family/) Seite.

{{% /alert %}}

### Schutz Ihrer erworbenen Lizenz

Nach dem Kauf einer Lizenz müssen Sie die Informationen auf Seite sorgfältig lesen [Schutz Ihrer erworbenen Lizenz](https://purchase.aspose.com/orders/protecting-your-license-file) um Ihre Lizenzdatei zu schützen. Bitte beachten Sie, dass diese Seite nur angezeigt werden kann, wenn Sie über eine kostenpflichtige Lizenz verfügen.

### Optionen zum Beantragen von Lizenzen

Lizenzen können von verschiedenen Standorten aus angewendet werden:

* Expliziter Pfad
* Der Ordner, der die *Aspose.Words JAR*-Datei enthält
* Eine eingebettete Ressource in JAR heißt *Aspose.Words JAR*
* Als getaktete Lizenz - ein neuer Lizenzmechanismus

Oft ist es am einfachsten, eine Lizenz festzulegen, indem Sie die Lizenzdatei im selben Ordner wie *Aspose.Words JAR* ablegen und nur den Dateinamen ohne Pfad angeben.

{{% alert color="primary" %}}

Verwenden Sie die [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream)-Methode, um eine Komponente zu lizenzieren.

Das mehrfache Aufrufen von **SetLicense** ist nicht schädlich, es verschwendet nur Prozessorzeit.

Das mehrfache Aufrufen von [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) ist ebenfalls nicht schädlich, verschwendet jedoch nur Prozessorzeit und kann den Verbrauch nicht ordnungsgemäß akkumulieren.

{{% /alert %}}

#### Lizenz mithilfe eines Datei- oder Stream-Objekts anwenden

{{% alert color="primary" %}}

Rufen Sie **SetLicense** in Ihrem Startcode auf, bevor Sie Aspose.Words Klassen verwenden.

{{% /alert %}}

Wenn Sie eine Klassenbibliothek entwickeln, können Sie **SetLicense** aus dem statischen Konstruktor Ihrer Klasse aufrufen, der Aspose.Words verwendet. Der statische Konstruktor wird vor der Instanziierung Ihrer Klasse ausgeführt, um sicherzustellen, dass die Aspose.Words -Lizenz korrekt installiert ist.

##### Laden einer Lizenz aus einer Datei

Mit der [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String) -Methode können Sie versuchen, die Lizenzdatei in den eingebetteten Ressourcen oder Ordnern zu finden, die die JARs Ihrer Anwendung zur weiteren Verwendung enthalten.

Das folgende Codebeispiel zeigt, wie Sie eine Lizenz aus einem Ordner initialisieren:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### Laden einer Lizenz von einem `Stream`-Objekt

Das folgende Codebeispiel zeigt, wie Sie eine Lizenz aus einem Stream mit einer anderen [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream)-Methode initialisieren:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### Fügen Sie die Lizenzdatei als eingebettete Ressource hinzu

Eine gute Möglichkeit, eine Lizenz mit Ihrer Anwendung zu verpacken und sicherzustellen, dass sie nicht verloren geht, besteht darin, sie als eingebettete Ressource einzuschließen. Sie können die LIC -Datei einfach in den Ressourcenordner Ihres Projekts kopieren.

Der Wiederaufbau des Projekts sollte das einbetten .lic-Datei in Anwendung .jar-Datei. Danach können Sie mit dem folgenden Code eine Lizenz beantragen:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### Gebührenpflichtige Lizenz anwenden

Aspose.Words ermöglicht es Entwicklern, einen gemessenen Schlüssel anzuwenden. Dies ist ein neuer Lizenzmechanismus.

Der neue Lizenzierungsmechanismus wird zusammen mit der bestehenden Lizenzierungsmethode verwendet. Kunden, die basierend auf der Nutzung von API -Funktionen abgerechnet werden möchten, können die getaktete Lizenzierung verwenden.

Nachdem Sie alle erforderlichen Schritte ausgeführt haben, um diesen Lizenztyp zu erhalten, erhalten Sie die Schlüssel, nicht die Lizenzdatei. Dieser gemessene Schlüssel kann mit der speziell für diesen Zweck eingeführten Klasse [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) angewendet werden.

Rufen Sie die **SetMeteredKey** -Methode nicht häufig auf, damit diese Lizenzierungsmethode den Verbrauch ordnungsgemäß akkumuliert und an uns meldet. Instanziieren Sie einfach die Aspose.Words -Bibliothek, rufen Sie **SetMeteredKey** einmal auf, lassen Sie die Bibliothek instanziiert und verwenden Sie sie erneut.

Das folgende Codebeispiel zeigt, wie gemessene öffentliche und private Schlüssel festgelegt werden:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

Bitte beachten Sie, dass Sie für die korrekte Nutzung der Metered-Lizenz über eine stabile Internetverbindung verfügen müssen, da der Metered-Mechanismus für korrekte Berechnungen die ständige Interaktion mit unseren Diensten erfordert.

Weitere Einzelheiten finden Sie in der [Gebührenpflichtige Lizenzierung FAQ](https://purchase.aspose.com/faqs/licensing/metered/) Abschnitt.

{{% /alert %}}

### Ändern des Namens der Lizenzdatei

Der Lizenzdateiname muss nicht "Aspose.Words.LIC" sein. Sie können es nach Ihren Wünschen umbenennen und diesen Namen verwenden, wenn Sie eine Lizenz in Ihrer Anwendung festlegen.

### Ausnahme "Lizenzdateiname kann nicht gefunden werden"

Wenn Sie eine Lizenz kaufen und herunterladen, benennt die Aspose-Website die Lizenzdatei *"Aspose.Words.LIC"*. Sie laden die Lizenzdatei mit Ihrem Browser herunter. In diesem Fall erkennen einige Browser die Lizenzdatei als XML und hängen die an .xml-Erweiterung, sodass der vollständige Dateiname auf Ihrem Computer *"Aspose.Words.lic.XML"* wird.

Wenn Microsoft Windows so konfiguriert ist, dass Erweiterungen für bekannte Dateitypen ausgeblendet werden (leider ist dies bei den meisten Windows-Installationen die Standardeinstellung), wird die Lizenzdatei in Windows Explorer als *"Aspose.Words. LIC"* angezeigt. Sie werden wahrscheinlich denken, dass dies der echte Dateiname ist und **SetLicense** aufrufen und *"Aspose.Words.LIC"* übergeben, aber es gibt keine solche Datei, daher die Ausnahme.

Benennen Sie die Datei um, um das Unsichtbare zu entfernen, um das Problem zu lösen .xml-Erweiterung. Wir empfehlen Ihnen außerdem, die Option "Erweiterungen ausblenden" in Microsoft Windows zu deaktivieren.

## Verwendung mehrerer Aspose-Produkte

Wenn Sie in Ihrer Anwendung mehrere Aspose-Produkte verwenden, z. B. Aspose.Words und `Aspose.Cells`, finden Sie hier einige nützliche Tipps:

* Legen Sie die Lizenz für jedes Aspose-Produkt separat fest. Selbst wenn Sie eine einzige Lizenzdatei für alle Komponenten haben, z. B. "Aspose.Total.lic", müssen Sie **SetLicense** für jedes Aspose-Produkt, das Sie in Ihrer Anwendung verwenden, separat aufrufen.
* Verwenden Sie den Namen der vollständig qualifizierten Lizenzklasse. Jedes Aspose-Produkt hat eine `License` -Klasse in einem eigenen Namespace. Zum Beispiel hat Aspose.Words **com.aspose.words.License** und `Aspose.Cells` hat com.posieren.Hautzellen.Lizenzklasse. Durch die Verwendung des vollqualifizierten Klassennamens können Sie Verwirrung darüber vermeiden, welche Lizenz für welches Produkt gilt.
