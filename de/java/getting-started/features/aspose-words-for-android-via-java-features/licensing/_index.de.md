---
title: Lizenzierung
second_title: Aspose.Words für Java
articleTitle: Lizenzierung
linktitle: Lizenzierung
description: "Lizenzierung von Aspose.Words für Android über Java."
type: docs
weight: 60
url: /de/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

Manchmal möchte man, um das System besser zu studieren, so schnell wie möglich in den Code eintauchen. Um dies zu vereinfachen, bietet Aspose.Words verschiedene Pläne zum Kauf an oder bietet eine kostenlose Testversion und eine temporäre 30-Tage-Lizenz zur Evaluierung an.

{{% alert color="primary" %}}

Beachten Sie, dass es eine Reihe allgemeiner Richtlinien und Praktiken gibt, die Sie bei der Bewertung, ordnungsgemäßen Lizenzierung und dem Kauf unserer Produkte unterstützen. Sie finden sie in der [Kaufrichtlinien und FAQ](https://purchase.aspose.com/policies/) Abschnitt.

{{% /alert %}}

## Kostenlose Testversion oder temporäre Lizenz

Aspose.Words ist eine unglaubliche Software, die Entwickler vor dem Kauf ausprobieren können. Sie können ganz einfach Aspose.Words für Java und Aspose.Words für Android über Java herunterladen / installieren [von der Download-Seite](https://releases.aspose.com/words/androidjava/) zur Auswertung.

Die Testversion ist die gleiche wie die gekaufte – die Testversion wird einfach lizenziert, wenn Sie ein paar Codezeilen hinzufügen, um die Lizenz anzuwenden.

{{% alert color="primary" %}}

Erfahren Sie mehr über die kostenlose Testversion oder temporäre Lizenz für Aspose.Words für Android über Java auf [die Lizenz- und Abonnementseite](/words/java/licensing/).

{{% /alert %}}

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
* Eine eingebettete Ressource
* Als getaktete Lizenz - ein neuer Lizenzmechanismus

#### Laden der Lizenzdatei

In Aspose.Words für Android über Java kann die Lizenz sein [eingebettet als Ressource](/words/java/licensing/), oder aus einem Stream geladen:

1. Legen Sie die Lizenzdatei an einem beliebigen Ort auf **/mnt/sdcard/** ab.
1. Erstellen Sie einen Stream, der auf eine Datei verweist.
1. Übergeben Sie den Stream (der die Lizenzdatei enthält) an die Methode `SetLicense`.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

Anwenden einer Lizenz von einer eingebetteten Ressource. So greifen Sie über eine Android-Paketdatei namentlich auf die Lizenz als Ressource zu:

1. Fügen Sie die Lizenzdatei als Ressource zum Ordner **res/raw** Ihrer Anwendung hinzu.
   Die Lizenzdatei sollte im Ordner **res/raw** sichtbar sein.
1. Greifen Sie mit dem folgenden Codebeispiel auf die Lizenz von der Ressource zu / laden Sie sie.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Gebührenpflichtige Lizenz anwenden

Aspose.Words ermöglicht Entwicklern das Anwenden eines gemessenen Schlüssels. Es ist ein neuer Lizenzmechanismus. Der neue Lizenzierungsmechanismus wird zusammen mit der bestehenden Lizenzierungsmethode verwendet. Kunden, die eine Abrechnung basierend auf der Nutzung der API-Funktionen wünschen, können die getaktete Lizenzierung verwenden.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### Ändern des Namens der Lizenzdatei

Der Name der Lizenzdatei muss nicht 'Aspose.Words sein.Android.Java.lic'. Sie können es nach Belieben umbenennen und diesen Namen verwenden, wenn Sie `License.SetLicense` aufrufen.

### Ausnahme - Lizenzdateiname kann nicht gefunden werden

Wenn Sie eine gekaufte Lizenz herunterladen, wird die Lizenzdatei standardmäßig **Aspose.Words.Android.Java.lic** genannt. Die Lizenzdatei wird über Ihren Browser heruntergeladen und einige Browser erkennen die Lizenzdatei als XML und hängen eine an .xml-Erweiterung für den Namen. Die heruntergeladene Datei wird **Aspose.Words.Android.Java.lic.XML**.

Wenn Microsoft Windows so konfiguriert ist, dass Erweiterungen bekannter Dateitypen ausgeblendet werden (leider ist dies bei den meisten Windows-Installationen standardmäßig der Fall), wird die Lizenzdatei in Windows Explorer als **Aspose.Words.Android.Java.lic** aufgeführt. Es sieht aus wie der erwartete Dateiname. Wenn Sie `License.SetLicense` aufrufen und 'Aspose.Words übergeben.Android.Java.lic', Sie werden eine Ausnahme sehen, weil es keine solche Datei gibt.

Benennen Sie die Datei um, um das Unsichtbare zu entfernen, um das Problem zu lösen .xml-Erweiterung. Wir empfehlen Ihnen, die Option "Erweiterungen ausblenden" in Microsoft Windows zu deaktivieren.

## Verwendung mehrerer Aspose-Produkte

Wenn Sie mehrere Aspose-Produkte in einer Anwendung verwenden, z. B. Aspose.Words und `Aspose.Cells`, finden Sie hier einige nützliche Tipps.

- Legen Sie die Lizenz für jedes Aspose-Produkt separat fest.
  Auch wenn Sie eine einzige Lizenzdatei für alle Komponenten haben, zum Beispiel 'Aspose.Total.Android.Java.lic'müssen Sie die `License.SetLicense` -Methode weiterhin für jedes Aspose-Produkt separat aufrufen.
- Verwenden Sie den Namen der vollständig qualifizierten Lizenzklasse.
  Jedes Aspose-Produkt hat eine `License` -Klasse in seinem Namespace. Zum Beispiel hat Aspose.Words com.posieren.Wort.Lizenz und `Aspose.Cells` hat com.posieren.Hautzellen.Lizenzklasse. Durch die Verwendung des vollständig qualifizierten Klassennamens können Sie Verwechslungen darüber vermeiden, welche Lizenz auf welches Produkt angewendet wird.
