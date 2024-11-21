---
title: Installation
second_title: Aspose.Words für .NET
articleTitle: Installation
linktitle: Installation
description: "Installieren Sie Aspose.Words für .NET mit Visual Studio-Tools wie Manage NuGet Packages oder Package Manager Console und dem MSI-Installationsprogramm. Verwenden Sie den Full Trust-Berechtigungssatz in C#."
type: docs
weight: 10
url: /de/net/installation/
timestamp: 2024-01-27-14-07-04
---

Stellen Sie sicher, dass Ihre Maschine die [System Anforderungen](/words/de/net/system-requirements/)-Anforderungen erfüllt, bevor Sie beginnen.

In diesem Artikel wird erläutert, wie Sie Aspose.Words für .NET auf Ihrem Computer installieren.

## Installieren oder aktualisieren Sie Aspose.Words für .NET mit Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet ist der einfachste Weg, [Aspose.Words für .NET](https://www.nuget.org/packages/Aspose.Words/)-APIs herunterzuladen und zu installieren. Gehen Sie dazu folgendermaßen vor:

1. Öffnen Sie *Microsoft Visual Studio* und *Manage NuGet Packages* aus dem Menü, um den Paketmanager zu öffnen
2. Suchen Sie nach "aspose" oder "aspose.words", um das gewünschte Aspose API zu finden<br>
   <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-words-nuget" style="width:800px"/>
3. Wählen Sie das gewünschte Aspose API aus und klicken Sie auf "Installieren"

Das ausgewählte API wird heruntergeladen und in Ihrem Projekt referenziert.

Sie können Aspose.Words für .NET auch mithilfe von *Manage NuGet Packages* auf die gewünschte Version aktualisieren.

## Installieren oder aktualisieren Sie Aspose.Words mit Package Manager Console

Sie können Aspose.Words auch für .NET-APIs mithilfe von *Package Manager Console* installieren oder aktualisieren. Gehen Sie dazu folgendermaßen vor:

1. Öffnen Sie *Microsoft Visual Studio* und *Package Manager Console* aus dem Menü, um die Paketmanager-Konsole zu öffnen<br>
   <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2. Geben Sie den Befehl `Install-Package Aspose.Words` ein und drücken Sie die Eingabetaste, um die neueste Vollversion in Ihrer Anwendung zu installieren<br>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br>
   {{% alert color="primary" %}}IDarüber hinaus können Sie dem Befehl das `-prerelease`-Suffix hinzufügen, um anzugeben, dass auch die neueste Version, einschließlich Hotfixes, installiert werden soll.{{% /alert %}}
3. Nach dem Herunterladen werden Bestätigungsmeldungen angezeigt<br>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/><br>
   {{% alert color="primary" %}}Wenn Sie mit dem [Legen Sie eine EULA fest](https://about.aspose.com/legal/eula/) nicht vertraut sind, wird empfohlen, die in der URL.{{% /alert %}} referenzierte Lizenz zu lesen
4. Nun stellen Sie möglicherweise fest, dass Aspose.Words für Sie erfolgreich in Ihrer Anwendung hinzugefügt und referenziert wurde<br>
   <img src="/words/net/installation/aspose-words-nuget-references.png" alt="Aspose-Wörter-Nuget-Referenzen" style="width:400px"/>

In *Package Manager Console* können Sie auch den `Update-Package Aspose.Words`-Befehl verwenden, um nach Updates für das Aspose.Words-Paket zu suchen und diese zu installieren, falls vorhanden. Sie können auch das `-prerelease`-Suffix hinzufügen, um die neueste Version zu aktualisieren.

## Installieren Sie Aspose.Words für .NET mit dem Installer

Aspose.Words für .NET kann durch direktes Herunterladen des MSI-Installationsprogramms aus dem [Downloadbereich](https://releases.aspose.com/words/) installiert werden.

{{% alert color="primary" %}}

Sie müssen angemeldet sein, um das Installationsprogramm herunterzuladen. Wenn Sie noch nicht registriert sind, können Sie sich kostenlos anmelden.

{{% /alert %}}

Um Aspose.Words für .NET zu installieren, befolgen Sie diese Schritte:

1. Laden Sie `Aspose.Words_`{LatestVersion}.msi aus dem [Downloadbereich](https://releases.aspose.com/words/) herunter
2. Doppelklicken Sie auf die heruntergeladene Datei, um den Setup-Assistenten zu starten. Befolgen Sie die Anweisungen des Setup-Assistenten<br>
   <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-words-setup-1" style="width:500px"/>
3. Wenn der Setup-Assistent die Installation abschließt, sind die erforderlichen Dateien im Ordner unter dem angegebenen Ordnerpfad verfügbar<br>
   <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-words-setup-4" style="width:500px"/>
4. Öffnen Sie Ihre Lösung/Ihr Projekt in Visual Studio
5. Klicken Sie im *Projektmappen-Explorer* mit der rechten Maustaste auf Ihr Projekt und fügen Sie den Verweis auf installierte Assemblys hinzu
6. Installierte Aspose.Words für .NET-Assemblys werden in den Erweiterungen im Abschnitt "Assemblys" angezeigt – wählen Sie einfach die erforderliche DLL-Komponente aus<br>
   <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7. Klicken Sie abschließend auf OK

## Überlegungen bei der Ausführung in einer gemeinsam genutzten Server-Umgebung

Es wird empfohlen, alle Aspose .NET-Komponenten mit dem Berechtigungssatz *Full Trust* auszuführen. Dies liegt daran, dass die Aspose .NET-Komponente manchmal Zugriff auf Registrierungseinstellungen und Dateien benötigt, die sich an anderen Orten als dem virtuellen Verzeichnis befinden, beispielsweise zum Lesen von Schriftarten. Darüber hinaus basieren `Aspose.NET`-Komponenten auf grundlegenden .NET-Systemklassen, von denen einige in manchen Fällen auch die Berechtigung *Full Trust* erfordern, um ausgeführt zu werden.

Internetdienstanbieter, die mehrere Anwendungen verschiedener Unternehmen hosten, setzen meist die Sicherheitsstufe *Medium Trust* ein. Im Fall von .NET 2.0 kann eine solche Sicherheitsstufe die folgenden Einschränkungen mit sich bringen, die sich auf die ordnungsgemäße Leistung von Aspose.Words auswirken können:

- **RegistryPermission** ist nicht verfügbar. Dies bedeutet, dass Sie nicht auf die Registrierung zugreifen können, die zum Aufzählen der installierten Schriftarten beim Rendern von Dokumenten erforderlich ist.
- **FileIOPermission** ist eingeschränkt. Das bedeutet, dass Sie nur auf Dateien in der virtuellen Verzeichnishierarchie Ihrer Anwendung zugreifen können. Dies bedeutet möglicherweise auch, dass Schriftarten beim Export nicht gelesen werden können.

Aus den oben genannten Gründen wird empfohlen, Aspose.Words mit Full Trust-Berechtigungen auszuführen. Möglicherweise stellen Sie fest, dass einige der Bibliotheksfunktionen funktionieren, wenn Sie verschiedene Aufgaben mit mittlerer Vertrauenswürdigkeit ausführen, andere jedoch nicht, beispielsweise beim Rendern. Dies kann mit GDI+-Bildverarbeitungsaufrufen zusammenhängen.
