---
title: Lizenzierung und Abonnement
second_title: Aspose.Words für Python via .NET
articleTitle: Lizenzierung und Abonnement
linktitle: Lizenzierung und Abonnement
description: "Aspose.Words für Python via .NET bietet verschiedene Kaufpläne oder eine kostenlose Testversion und eine 30-tägige temporäre Lizenz zur Evaluierung mithilfe von Lizenz- und Abonnementrichtlinien."
type: docs
weight: 40
url: /de/python-net/licensing/
---

Um das System besser zu studieren, möchte man manchmal so schnell wie möglich in den Code eintauchen. Um dies zu vereinfachen, bietet Aspose.Words verschiedene Kaufpläne oder eine kostenlose Testversion und eine 30-tägige temporäre Lizenz zur Evaluierung an.

{{% alert color="primary" %}}

Beachten Sie, dass es eine Reihe allgemeiner Richtlinien und Praktiken gibt, die Sie bei der Bewertung, ordnungsgemäßen Lizenzierung und dem Kauf unserer Produkte unterstützen. Sie finden sie im [Kaufrichtlinien und FAQ](https://purchase.aspose.com/policies/)-Bereich.

{{% /alert %}}

## Kostenlose Testversion oder temporäre Lizenz

Aspose.Words ist eine unglaubliche Software, die Entwickler vor dem Kauf ausprobieren können.

### Kostenlose Testphase

Die Testversion ist die gleiche wie die gekaufte – die Testversion wird einfach lizenziert, wenn Sie ein paar Codezeilen hinzufügen, um die Lizenz anzuwenden.

Die Testversion von Aspose.Words ohne die angegebene Lizenz bietet die volle Produktfunktionalität, fügt jedoch beim Laden und Speichern ein bewertendes Wasserzeichen am oberen Rand des Dokuments ein und begrenzt die maximale Dokumentgröße auf einige hundert Absätze.

### Temporäre Lizenz

Wenn Sie Aspose.Words ohne die Einschränkungen der Testversion testen möchten, können Sie auch eine 30-tägige temporäre Lizenz anfordern. Weitere Einzelheiten finden Sie auf der [Holen Sie sich eine temporäre Lizenz](https://purchase.aspose.com/temporary-license/)-Seite.

## Gekaufte Lizenz

Nach dem Kauf müssen Sie die Lizenzdatei oder den Stream anwenden. In diesem Abschnitt werden Möglichkeiten beschrieben, wie dies bewerkstelligt werden kann, und es werden auch einige häufig gestellte Fragen beantwortet.

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
* Der Ordner, der das Python-Skript enthält, das Aspose.Words für Python via .NET aufruft
* Streamen
* Als Metered License – ein neuer Lizenzierungsmechanismus

{{% alert color="primary" %}}

Verwenden Sie die [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/)-Methode, um eine Komponente zu lizenzieren.

Das mehrmalige Aufrufen von [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) ist nicht schädlich, sondern verschwendet lediglich Prozessorzeit.

Das mehrmalige Aufrufen von [set_metered_key](https://reference.aspose.com/words/python-net/aspose.words/metered/set_metered_key/#str_str) ist ebenfalls nicht schädlich, sondern verschwendet lediglich Prozessorzeit und kann zu einer unzulässigen Verbrauchshäufigkeit führen.

{{% /alert %}}

#### Wenden Sie die Lizenz mithilfe einer Datei oder eines Stream-Objekts an

Rufen Sie beim Entwickeln Ihrer Anwendung [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) in Ihrem Startcode auf, bevor Sie Aspose.Words-Klassen verwenden.

##### Laden Sie eine Lizenz aus einer Datei

Mit der [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/)-Methode können Sie versuchen, die Lizenzdatei zur weiteren Verwendung in den eingebetteten Ressourcen oder Assembly-Ordnern zu finden.

Das folgende Codebeispiel zeigt, wie eine Lizenz aus einem Ordner initialisiert wird:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-file.py" >}}

##### Laden Sie eine Lizenz von einem `Stream`-Objekt

Das folgende Codebeispiel zeigt, wie eine Lizenz aus einem Stream mit einer anderen [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/)-Methode initialisiert wird:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-stream.py" >}}

#### Wenden Sie eine Metered-Lizenz an

Aspose.Words ermöglicht Entwicklern die Anwendung eines gemessenen Schlüssels. Dabei handelt es sich um einen neuen Lizenzierungsmechanismus.

Der neue Lizenzierungsmechanismus wird zusammen mit der bestehenden Lizenzierungsmethode verwendet. Kunden, die eine Abrechnung auf Basis der Nutzung von API-Funktionen wünschen, können die Metered Licensing nutzen.

Nachdem Sie alle notwendigen Schritte zum Erhalt dieser Art von Lizenz abgeschlossen haben, erhalten Sie die Schlüssel, nicht die Lizenzdatei. Dieser dosierte Schlüssel kann mit der speziell für diesen Zweck eingeführten [Metered](https://reference.aspose.com/words/python-net/aspose.words/metered/)-Klasse angewendet werden.

Rufen Sie die **SetMeteredKey**-Methode nicht häufig auf, damit diese Lizenzierungsmethode den Verbrauch ordnungsgemäß erfasst und uns meldet. Instanziieren Sie einfach die Aspose.Words-Bibliothek, rufen Sie **SetMeteredKey** einmal auf, lassen Sie die Bibliothek dann instanziiert und verwenden Sie sie erneut.

Das folgende Codebeispiel zeigt, wie gemessene öffentliche und private Schlüssel festgelegt werden:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-metered-license.py" >}}

{{% alert color="primary" %}}

Bitte beachten Sie, dass Sie für die korrekte Nutzung der Metered-Lizenz über eine stabile Internetverbindung verfügen müssen, da der Metered-Mechanismus für korrekte Berechnungen die ständige Interaktion mit unseren Diensten erfordert. Weitere Einzelheiten finden Sie im Abschnitt [Häufig gestellte Fragen zur gemessenen Lizenzierung](https://purchase.aspose.com/faqs/licensing/metered/).

{{% /alert %}}

### Ändern des Lizenzdateinamens

Der Lizenzdateiname muss nicht "Aspose.Words.Python.NET.lic" lauten. Sie können es nach Ihren Wünschen umbenennen und diesen Namen verwenden, wenn Sie in Ihrer Anwendung eine Lizenz festlegen.

### Ausnahme "Lizenzdateiname kann nicht gefunden werden"

Wenn Sie eine Lizenz kaufen und herunterladen, nennt die Aspose-Website die Lizenzdatei *"Aspose.Words.Python.NET.lic"*. Sie laden die Lizenzdatei über Ihren Browser herunter. In diesem Fall erkennen einige Browser die Lizenzdatei als XML und hängen die Erweiterung .xml an, sodass der vollständige Dateiname auf Ihrem Computer *"Aspose.Words.Python.NET.lic.XML"* wird.

Wenn Microsoft Windows so konfiguriert ist, dass Erweiterungen für bekannte Dateitypen ausgeblendet werden (leider ist dies die Standardeinstellung in den meisten Windows-Installationen), wird die Lizenzdatei im Windows Explorer als *"Aspose.Words.Python.NET.lic"* angezeigt. Sie werden wahrscheinlich denken, dass dies der tatsächliche Dateiname ist, und [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) aufrufen und ihm *"Aspose.Words.Python.NET.lic"* übergeben, aber es gibt keine solche Datei, daher die Ausnahme.

Um das Problem zu lösen, benennen Sie die Datei um, um die unsichtbare Erweiterung .xml zu entfernen. Wir empfehlen Ihnen außerdem, die Option "Erweiterungen ausblenden" in Microsoft Windows zu deaktivieren.

## Verwendung mehrerer Aspose-Produkte

Wenn Sie in Ihrer Anwendung mehrere Aspose-Produkte wie Aspose.Words und `Aspose.Cells` verwenden, finden Sie hier einige nützliche Tipps:

* Legen Sie die Lizenz für jedes Aspose-Produkt separat fest. Selbst wenn Sie eine einzige Lizenzdatei für alle Komponenten haben, zum Beispiel "Aspose.Total.lic", müssen Sie [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) dennoch für jedes Aspose-Produkt, das Sie in Ihrer Anwendung verwenden, separat aufrufen.
* Verwenden Sie den vollständig qualifizierten Lizenzklassennamen. Jedes Aspose-Produkt verfügt über eine **License**-Klasse in seinem eigenen Namensraum. Beispielsweise verfügt Aspose.Words über [aspose.words.License](https://reference.aspose.com/words/python-net/aspose.words/license/) und `Aspose.Cells` über die **aspose.cells.License**-Klasse. Durch die Verwendung des vollständig qualifizierten Klassennamens können Sie Verwirrung darüber vermeiden, welche Lizenz für welches Produkt gilt.
