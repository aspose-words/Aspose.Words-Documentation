---
title: Lizenzierung
second_title: Aspose.Words für Java
articleTitle: Lizenzierung
linktitle: Lizenzierung
description: "Lizenzierung Aspose.Words für Android über Java."
type: docs
weight: 60
url: /de/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

Manchmal, um das System besser zu studieren, möchten Sie so schnell wie möglich in den Code eintauchen. Um dies zu erleichtern, Aspose.Words bietet verschiedene Kaufpläne oder bietet eine kostenlose Testversion und eine 30-tägige temporäre Lizenz zur Bewertung an.

{{% alert color="primary" %}}

Beachten Sie, dass es eine Reihe von allgemeinen Richtlinien und Praktiken gibt, die Sie bei der Bewertung, ordnungsgemäße Lizenz und Kauf unserer Produkte führen. Sie finden sie in der [Richtlinien und FAQ kaufen](https://purchase.aspose.com/policies/) Abschnitt.

{{% /alert %}}

## Kostenlose Test- oder Temporärlizenz

Aspose.Words ist unglaubliche Software, die Entwickler vor dem Kauf versuchen können. Sie können einfach herunterladen/installieren Aspose.Words für Java und Aspose.Words für Android über Java [aus der Download-Seite](https://releases.aspose.com/words/androidjava/) zur Bewertung.

Die Bewertungsversion ist die gleiche wie die gekaufte – die Trial-Version wird einfach lizenziert, wenn Sie ein paar Zeilen Code hinzufügen, um die Lizenz anzuwenden.

{{% alert color="primary" %}}

Erfahren Sie mehr über die kostenlose Test- oder temporäre Lizenz für Aspose.Words für Android über Java auf [Lizenzierung und Abonnement](/words/de/java/licensing/).

{{% /alert %}}

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
* Eine eingebettete Ressource
* Als Metered License – ein neuer Lizenzierungsmechanismus

#### Die Lizenzdatei laden

In Aspose.Words für Android über Java, die Lizenz kann [Lizenzierung und Abonnement](/words/de/java/licensing/), oder aus einem Strom geladen:

ANHANG Legen Sie die Lizenzdatei an jedem Ort auf **/mnt/sdcard/**.
ANHANG Erstellen Sie einen Stream, der die Datei referiert.
ANHANG Den Stream (die Lizenzdatei enthält) in den `SetLicense` Methode.

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

Eine Lizenz von einer Embedded Resource anwenden. Zugriff auf die Lizenz als Ressource von einem Android Paketdatei:

ANHANG Fügen Sie die Lizenzdatei als Ressource Ihrer Anwendung hinzu **res/raw** Ordner.
   Die Lizenzdatei sollte in der **res/raw** Ordner.
ANHANG Zugriff / Laden der Lizenz von der Ressource mit der folgenden Codeprobe.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Gemessene Lizenz anwenden

Aspose.Words ermöglicht es Entwicklern, den dosierten Schlüssel anzuwenden. Es ist ein neuer Lizenzierungsmechanismus. Der neue Lizenzierungsmechanismus wird zusammen mit der bestehenden Lizenzierungsmethode verwendet. Jene Kunden, die auf der Nutzung der API Funktionen können die dosierte Lizenzierung verwenden.

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

### Änderung des Lizenzdateinamens

Der Lizenzdateiname muss nicht sein 'Aspose.Words.Android.Java.lic'. Sie können es auf alles umbenennen, was Sie möchten und diesen Namen verwenden, wenn Sie anrufen `License.SetLicense`.

### Ausnahme - Lizenzdateiname nicht finden

Wenn Sie eine Lizenz herunterladen, die Sie gekauft haben, wird die Lizenzdatei benannt **Aspose.Words.Android.Java.lic** Standardmäßig. Die Lizenzdatei wird über Ihren Browser heruntergeladen und einige Browser erkennen die Lizenzdatei als XML und fügen eine .xml-Erweiterung zum Namen an. Die heruntergeladene Datei wird **Aspose.Words.Android.Java.lic.XML**.

Wann Microsoft Windows ist konfiguriert, um Erweiterungen bekannter Dateitypen zu verstecken (leider ist dies in den meisten Windows Installationen), die Lizenzdatei als **Aspose.Words.Android.Java.lic** in Windows Explorer. Es sieht aus wie der erwartete Dateiname. Wenn Sie anrufen `License.SetLicense` und passieren 'Aspose.Words.Android.Java.lic', Sie werden sehen und Ausnahme, weil es keine solche Datei gibt

Um das Problem zu lösen, umbenennen Sie die Datei, um die unsichtbare .xml-Erweiterung zu entfernen. Wir empfehlen Ihnen, die Option "Hide Extensions" in Microsoft Windows.

## Verwendung mehrerer Aspose Produkte

Wenn Sie mehrere Aspose Produkte in einer Anwendung verwenden, zum Beispiel Aspose.Words und `Aspose.Cells`, hier sind ein paar nützliche Tipps.

- Legen Sie die Lizenz für jedes Aspose Produkt separat fest.
  Auch wenn Sie eine einzige Lizenzdatei für alle Komponenten haben, zum Beispiel 'Aspose. Insgesamt.Android.Java.lic', Sie müssen immer noch die `License.SetLicense` Verfahren separat für jedes Aspose Produkt.
- Verwenden Sie den vollständig qualifizierten Lizenz-Klassennamen.
  Jedes Aspos Produkt hat eine `License` Klasse in seinem Namensraum. Zum Beispiel Aspose.Words hat com.aspose.words. Lizenz und `Aspose.Cells` hat com.aspose.cells. Lizenzklasse. Durch die Verwendung des vollqualifizierten Klassennamens können Sie jegliche Verwechslung vermeiden, welche Lizenz auf welches Produkt angewendet wird.
