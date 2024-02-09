---
title: Lizenzierung und Abonnement
second_title: Aspose.Words für .NET
articleTitle: Lizenzierung und Abonnement
linktitle: Lizenzierung und Abonnement
description: "Aspose.Words für .NET bietet verschiedene Kaufpläne oder eine kostenlose Testversion und eine 30-tägige temporäre Lizenz zur Evaluierung unter Verwendung von Lizenz- und Abonnementrichtlinien in C#."
type: docs
weight: 55
url: /de/net/licensing/
---

Um das System besser zu studieren, möchte man manchmal so schnell wie möglich in den Code eintauchen. Um dies zu vereinfachen, bietet Aspose.Words verschiedene Kaufpläne oder eine kostenlose Testversion und eine 30-tägige temporäre Lizenz zur Evaluierung an.

{{% alert color="primary" %}}

Beachten Sie, dass es eine Reihe allgemeiner Richtlinien und Praktiken gibt, die Sie bei der Bewertung, ordnungsgemäßen Lizenzierung und dem Kauf unserer Produkte unterstützen. Sie finden sie im [Kaufrichtlinien und FAQ](https://purchase.aspose.com/policies/)-Bereich.

{{% /alert %}}

## Kostenlose Testversion oder temporäre Lizenz

Aspose.Words ist eine unglaubliche Software, die Entwickler vor dem Kauf ausprobieren können.

### Kostenlose Testphase

Die Evaluierungsversion ist die gleiche wie die gekaufte – das [Probeversion](https://releases.aspose.com/words/) wird einfach lizenziert, wenn Sie ein paar Codezeilen hinzufügen, um die Lizenz anzuwenden.

Die Testversion von Aspose.Words ohne die angegebene Lizenz bietet die volle Produktfunktionalität, fügt jedoch beim Laden und Speichern ein bewertendes Wasserzeichen am oberen Rand des Dokuments ein und begrenzt die maximale Dokumentgröße auf einige hundert Absätze.

### Temporäre Lizenz

Wenn Sie Aspose.Words ohne die Einschränkungen der Testversion testen möchten, können Sie auch eine 30-tägige temporäre Lizenz anfordern. Weitere Einzelheiten finden Sie auf der [Holen Sie sich eine temporäre Lizenz](https://purchase.aspose.com/temporary-license/)-Seite.

## Gekaufte Lizenz

Nach dem Kauf müssen Sie die Lizenzdatei anwenden oder die Lizenzdatei als eingebettete Ressource hinzufügen. In diesem Abschnitt werden Möglichkeiten beschrieben, wie dies bewerkstelligt werden kann, und es werden auch einige häufig gestellte Fragen beantwortet.

{{% alert color="primary" %}}

Sie müssen die Lizenz festlegen:

* nur einmal pro Anwendungsdomäne

* bevor Sie andere Aspose.Words-Klassen verwenden

{{% /alert %}}

{{% alert color="primary" %}}

Preisinformationen finden Sie auf der [Preisinformationen](https://purchase.aspose.com/pricing/words/family/)-Seite.

{{% /alert %}}

### Schutz Ihrer gekauften Lizenz

Nach dem Kauf einer Lizenz müssen Sie die Informationen auf Seite [Schutz Ihrer gekauften Lizenz](https://purchase.aspose.com/orders/protecting-your-license-file) sorgfältig lesen, um Ihre Lizenzdatei zu schützen. Bitte beachten Sie, dass diese Seite nur angezeigt werden kann, wenn Sie über eine kostenpflichtige Lizenz verfügen.

### Optionen zur Lizenzanwendung

Lizenzen können von verschiedenen Standorten aus beantragt werden:

* Expliziter Pfad
* Der Ordner, der die *Aspose.Words.dll*-Datei enthält
* Der Ordner, der die Assembly enthält, die *Aspose.Words.dll* aufgerufen hat
* Der Ordner, der die Eintragsassembly enthält (Ihr *.exe*)
* Eine eingebettete Ressource in der Assembly heißt *Aspose.Words.dll*
* Als Metered License – ein neuer Lizenzierungsmechanismus

Wenn Sie in der Anwendung auf *Aspose.Words.dll* verweisen, wird die Bibliothek in Ihr Ausgabeverzeichnis kopiert (es sei denn, *Copy Local* in den Eigenschaften für diesen Eintrag ist auf false gesetzt). Der einfachste Weg, eine Lizenz festzulegen, besteht häufig darin, die Lizenzdatei im selben Ordner wie *Aspose.Words.dll* abzulegen und nur den Dateinamen ohne Pfad anzugeben.

{{% alert color="primary" %}}

Verwenden Sie die [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/#setlicense)-Methode, um eine Komponente zu lizenzieren.

Das mehrmalige Aufrufen von **SetLicense** ist nicht schädlich, sondern verschwendet lediglich Prozessorzeit.

Das mehrfache Aufrufen von [SetMeteredKey](https://reference.aspose.com/words/net/aspose.words/metered/setmeteredkey/) ist ebenfalls nicht schädlich, sondern verschwendet lediglich Prozessorzeit und kann zu einer unzulässigen Steigerung des Verbrauchs führen.

{{% /alert %}}

#### Wenden Sie die Lizenz mithilfe einer Datei oder eines Stream-Objekts an

Rufen Sie beim Entwickeln Ihrer Anwendung **SetLicense** in Ihrem Startcode auf, bevor Sie Aspose.Words-Klassen verwenden.

##### Laden Sie eine Lizenz aus einer Datei

Mit der [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/)-Methode können Sie versuchen, die Lizenzdatei zur weiteren Verwendung in den eingebetteten Ressourcen oder Assembly-Ordnern zu finden.

Das folgende Codebeispiel zeigt, wie eine Lizenz aus einem Ordner initialisiert wird:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-file.cs" >}}

##### Laden Sie eine Lizenz von einem Stream-Objekt

Das folgende Codebeispiel zeigt, wie eine Lizenz aus einem Stream mit einer anderen [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/)-Methode initialisiert wird:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-stream.cs" >}}

#### Fügen Sie die Lizenzdatei als eingebettete Ressource hinzu

Eine praktische Möglichkeit, eine Lizenz in Ihre Anwendung zu packen und sicherzustellen, dass sie nicht verloren geht, besteht darin, sie als eingebettete Ressource in eine der Assemblys einzubinden, die Aspose.Words aufrufen. Um eine Datei als eingebettete Ressource einzuschließen, führen Sie die folgenden Schritte aus:

1. Fügen Sie in Visual Studio die .lic-Datei über das Menü "**Datei | Vorhandenes Element hinzufügen…**" in das Projekt ein.
2. Wählen Sie die Datei im Projektmappen-Explorer aus und stellen Sie im Eigenschaftenfenster "**"Aktion zur eingebetteten Ressource erstellen"**" ein.
3. Rufen Sie in Ihrem Code **SetLicense** auf, das nur den Kurznamen der Ressourcendatei übergibt.

#### Wenden Sie eine Metered-Lizenz an

Aspose.Words ermöglicht Entwicklern die Anwendung eines gemessenen Schlüssels. Dabei handelt es sich um einen neuen Lizenzierungsmechanismus.

Der neue Lizenzierungsmechanismus wird zusammen mit der bestehenden Lizenzierungsmethode verwendet. Kunden, die eine Abrechnung auf Basis der Nutzung von API-Funktionen wünschen, können die Metered Licensing nutzen.

Nachdem Sie alle notwendigen Schritte zum Erhalt dieser Art von Lizenz abgeschlossen haben, erhalten Sie die Schlüssel, nicht die Lizenzdatei. Dieser dosierte Schlüssel kann mit der speziell für diesen Zweck eingeführten [Metered](https://reference.aspose.com/words/net/aspose.words/metered/)-Klasse angewendet werden.

Rufen Sie die **SetMeteredKey**-Methode nicht häufig auf, damit diese Lizenzierungsmethode den Verbrauch ordnungsgemäß erfasst und uns meldet. Instanziieren Sie einfach die Aspose.Words-Bibliothek, rufen Sie **SetMeteredKey** einmal auf, lassen Sie die Bibliothek dann instanziiert und verwenden Sie sie erneut.

Das folgende Codebeispiel zeigt, wie begrenzte öffentliche und private Schlüssel festgelegt werden:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-metered-license.cs" >}}

Normalerweise reicht es aus, die gemessene Lizenz einmalig beim Anwendungsstart anzuwenden. Wenn der gemessene Lizenzierungsmechanismus jedoch 24 Stunden lang nicht mit den Aspose-Servern kommuniziert, verlässt Aspose.Words den Lizenzmodus und wechselt in den Testmodus. Um einen solchen Fall zu vermeiden, sollten Sie regelmäßig den Lizenzstatus überprüfen – wenn Aspose.Words in den Testmodus wechselt, wenden Sie bitte die gemessene Lizenz erneut an.

{{% alert color="primary" %}}

Bitte beachten Sie, dass Sie für die korrekte Nutzung der Metered-Lizenz über eine stabile Internetverbindung verfügen müssen, da der Metered-Mechanismus für korrekte Berechnungen die ständige Interaktion mit unseren Diensten erfordert. Weitere Einzelheiten finden Sie im Abschnitt [Häufig gestellte Fragen zur gemessenen Lizenzierung](https://purchase.aspose.com/faqs/licensing/metered/).

{{% /alert %}}

### Ändern des Lizenzdateinamens

Der Lizenzdateiname muss nicht "Aspose.Words.LIC" lauten. Sie können es nach Ihren Wünschen umbenennen und diesen Namen verwenden, wenn Sie in Ihrer Anwendung eine Lizenz festlegen.

### Ausnahme "Lizenzdateiname kann nicht gefunden werden"

Wenn Sie eine Lizenz kaufen und herunterladen, nennt die Aspose-Website die Lizenzdatei *"Aspose.Words.LIC"*. Sie laden die Lizenzdatei über Ihren Browser herunter. In diesem Fall erkennen einige Browser die Lizenzdatei als XML und hängen die Erweiterung .xml an, sodass der vollständige Dateiname auf Ihrem Computer *"Aspose.Words.lic.XML"* wird.

Wenn Microsoft Windows so konfiguriert ist, dass Erweiterungen für bekannte Dateitypen ausgeblendet werden (leider ist dies die Standardeinstellung in den meisten Windows-Installationen), wird die Lizenzdatei im Windows Explorer als *"Aspose.Words. LIC"* angezeigt. Sie werden wahrscheinlich denken, dass dies der tatsächliche Dateiname ist, und **SetLicense** aufrufen und dabei *"Aspose.Words.LIC"* übergeben, aber es gibt keine solche Datei, daher die Ausnahme.

Um das Problem zu lösen, benennen Sie die Datei um, um die unsichtbare Erweiterung .xml zu entfernen. Wir empfehlen Ihnen außerdem, die Option "Erweiterungen ausblenden" in Microsoft Windows zu deaktivieren.

## Verwendung mehrerer Aspose-Produkte

Wenn Sie in Ihrer Anwendung mehrere Aspose-Produkte wie Aspose.Words und `Aspose.Cells` verwenden, finden Sie hier einige nützliche Tipps:

* Legen Sie die Lizenz für jedes Aspose-Produkt separat fest. Auch wenn Sie eine einzige Lizenzdatei für alle Komponenten haben, zum Beispiel "Aspose.Total.lic", müssen Sie **SetLicense** dennoch für jedes Aspose-Produkt, das Sie in Ihrer Anwendung verwenden, separat aufrufen.
* Verwenden Sie den vollständig qualifizierten Lizenzklassennamen. Jedes Aspose-Produkt verfügt über eine **License**-Klasse in seinem eigenen Namensraum. Beispielsweise verfügt Aspose.Words über [Aspose.Words.License](https://reference.aspose.com/words/net/aspose.words/license/) und `Aspose.Cells` über die Klasse `Aspose.Cells`.License. Durch die Verwendung des vollständig qualifizierten Klassennamens können Sie Verwirrung darüber vermeiden, welche Lizenz für welches Produkt gilt.
