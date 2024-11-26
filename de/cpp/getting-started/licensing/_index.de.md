---
title: Lizenzierung und Abonnement
second_title: Aspose.Words für C++
articleTitle: Lizenzierung und Abonnement
linktitle: Lizenzierung und Abonnement
description: "Aspose.Words für С++ bietet verschiedene Pläne zum Kauf an oder bietet eine kostenlose Testversion und eine temporäre 30-Tage-Lizenz zur Evaluierung unter Verwendung von Lizenz- und Abonnementrichtlinien an."
type: docs
weight: 60
url: /de/cpp/licensing/
timestamp: 2024-10-24-11-44-28
---

Manchmal möchte man, um das System besser zu studieren, so schnell wie möglich in den Code eintauchen. Um dies zu vereinfachen, bietet Aspose.Words verschiedene Pläne zum Kauf an oder bietet eine kostenlose Testversion und eine temporäre 30-Tage-Lizenz zur Evaluierung an.

{{% alert color="primary" %}}

Beachten Sie, dass es eine Reihe allgemeiner Richtlinien und Praktiken gibt, die Sie bei der Bewertung, ordnungsgemäßen Lizenzierung und dem Kauf unserer Produkte unterstützen. Sie finden sie in der [Kaufrichtlinien und FAQ](https://purchase.aspose.com/policies/) Abschnitt.

{{% /alert %}}

## Kostenlose Testversion oder temporäre Lizenz

Aspose.Words ist eine unglaubliche Software, die Entwickler vor dem Kauf ausprobieren können.

### Kostenlose Testversion

Die Testversion ist die gleiche wie die gekaufte - die [Testversion](https://releases.aspose.com/words/) wird einfach lizenziert, wenn Sie ein paar Codezeilen hinzufügen, um die Lizenz anzuwenden.

Die Testversion von Aspose.Words ohne die angegebene Lizenz bietet die volle Produktfunktionalität, fügt jedoch beim Laden und Speichern oben im Dokument ein bewertendes Wasserzeichen ein und begrenzt die maximale Dokumentgröße auf einige hundert Absätze.

### Temporäre Lizenz

Wenn Sie Aspose.Words ohne die Einschränkungen der Testversion testen möchten, können Sie auch eine temporäre 30-Tage-Lizenz anfordern. Weitere Einzelheiten finden Sie in der [Holen Sie sich eine temporäre Lizenz](https://purchase.aspose.com/temporary-license/) Seite.

## Gekaufte Lizenz

Nach dem Kauf müssen Sie die Lizenzdatei anwenden oder die Lizenzdatei als eingebettete Ressource einschließen. Dieser Abschnitt beschreibt Optionen, wie dies geschehen kann, und kommentiert auch einige häufig gestellte Fragen.

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
* Der Ordner, der die `Aspose.Words_\*.dll`-Datei enthält
* Der Ordner, der die Assembly enthält, die `Aspose.Words_\*.dll` aufgerufen hat
* Der Ordner, der die Eintragsassembly enthält (Ihre `.exe`)
* Eine eingebettete Ressource in der Assembly heißt `Aspose.Words_\*.dll`

Oft ist es am einfachsten, eine Lizenz festzulegen, indem Sie die Lizenzdatei im selben Ordner wie `Aspose.Words_\*.dll` ablegen und nur den Dateinamen ohne Pfad angeben.

{{% alert color="primary" %}}

Verwenden Sie die [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/)-Methode, um eine Komponente zu lizenzieren.

Das mehrfache Aufrufen von **SetLicense** ist nicht schädlich, es verschwendet nur Prozessorzeit.

{{% /alert %}}

#### Lizenz mithilfe eines Datei- oder Stream-Objekts anwenden

Rufen Sie bei der Entwicklung Ihrer Anwendung **SetLicense** in Ihrem Startcode auf, bevor Sie Aspose.Words Klassen verwenden.

##### Laden einer Lizenz aus einer Datei

Mit der Methode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) können Sie versuchen, die Lizenzdatei in den eingebetteten Ressourcen- oder Assemblyordnern zur weiteren Verwendung zu finden.

Das folgende Codebeispiel zeigt, wie Sie eine Lizenz aus einem Ordner initialisieren:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-file.h" >}}

##### Laden einer Lizenz aus einem Stream-Objekt

Das folgende Codebeispiel zeigt, wie Sie eine Lizenz aus einem Stream mit einer anderen [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/)-Methode initialisieren:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-stream.h" >}}

#### Fügen Sie die Lizenzdatei als eingebettete Ressource hinzu

Eine gute Möglichkeit, eine Lizenz mit Ihrer Anwendung zu verpacken und sicherzustellen, dass sie nicht verloren geht, besteht darin, sie als eingebettete Ressource einzuschließen. Die Art und Weise, wie Ressourcen eingebettet und verwendet werden, hängt von Ihrer Zielplattform ab.

##### Windows

Nehmen wir an, Sie haben die Lizenz wie unten gezeigt als Ressource hinzugefügt.

```
resource.h
#define IDR_ASPOSE_WORDS_LIC            101
```

```
resource.rc
IDR_ASPOSE_WORDS_LIC RCDATA "Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

Informationen zum Arbeiten mit Ressourcendateien finden Sie auf der [Arbeiten mit Ressourcendateien](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) Seite.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie eine Lizenz von einer eingebetteten Ressource mit der Methode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) initialisieren:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-windows.h" >}}

##### Linux

Es gibt eine ähnliche Möglichkeit, Ressourcen auf Linux in eine ausführbare Datei einzubetten.

{{% alert color="primary" %}}

Weitere Informationen finden Sie unter [Ressourcen mit GCC in ausführbare Datei einbetten](https://stackoverflow.com/questions/4158900/embedding-resources-in-executable-using-gcc/4158997#4158997).

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie eine Lizenz von einer eingebetteten Ressource mit der Methode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) initialisiert wird:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-linux.h" >}}

### Ändern des Namens der Lizenzdatei

Der Lizenzdateiname muss nicht "Aspose.Words.LIC" sein. Sie können es nach Ihren Wünschen umbenennen und diesen Namen verwenden, wenn Sie eine Lizenz in Ihrer Anwendung festlegen.

### Ausnahme "Lizenzdateiname kann nicht gefunden werden"

Wenn Sie eine Lizenz kaufen und herunterladen, benennt die Aspose-Website die Lizenzdatei *"Aspose.Words.LIC"*. Sie laden die Lizenzdatei mit Ihrem Browser herunter. In diesem Fall erkennen einige Browser die Lizenzdatei als XML und hängen die an .xml-Erweiterung, sodass der vollständige Dateiname auf Ihrem Computer *"Aspose.Words.lic.XML"* wird.

Wenn Microsoft Windows so konfiguriert ist, dass Erweiterungen für bekannte Dateitypen ausgeblendet werden (leider ist dies bei den meisten Windows-Installationen die Standardeinstellung), wird die Lizenzdatei in Windows Explorer als *"Aspose.Words. LIC"* angezeigt. Sie werden wahrscheinlich denken, dass dies der echte Dateiname ist und **SetLicense** aufrufen und *"Aspose.Words.LIC"* übergeben, aber es gibt keine solche Datei, daher die Ausnahme.

Benennen Sie die Datei um, um das Unsichtbare zu entfernen, um das Problem zu lösen .xml-Erweiterung. Wir empfehlen Ihnen außerdem, die Option "Erweiterungen ausblenden" in Microsoft Windows zu deaktivieren.

## Verwendung mehrerer Aspose-Produkte

Wenn Sie in Ihrer Anwendung mehrere Aspose-Produkte verwenden, z. B. Aspose.Words und `Aspose.Cells`, finden Sie hier einige nützliche Tipps:

* Legen Sie die Lizenz für jedes Aspose-Produkt separat fest. Selbst wenn Sie eine einzige Lizenzdatei für alle Komponenten haben, z. B. "Aspose.Total.lic", müssen Sie **SetLicense** für jedes Aspose-Produkt, das Sie in Ihrer Anwendung verwenden, separat aufrufen.
* Verwenden Sie den Namen der vollständig qualifizierten Lizenzklasse. Jedes Aspose-Produkt hat eine **License** -Klasse in einem eigenen Namespace. Zum Beispiel hat Aspose.Words [Aspose.Words.License](https://reference.aspose.com/words/cpp/aspose.words/license/) und `Aspose.Cells` `Aspose.Cells`.Lizenzklasse. Durch die Verwendung des vollqualifizierten Klassennamens können Sie Verwirrung darüber vermeiden, welche Lizenz für welches Produkt gilt.
