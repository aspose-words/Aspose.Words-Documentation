---
title: So führen Sie die Beispiele aus
second_title: Aspose.Words für C++
articleTitle: So führen Sie die Beispiele aus
linktitle: So führen Sie die Beispiele aus
description: "Herunterladen Aspose.Words für C++ beispiele aus unserem GitHub Repository und lernen, wie man sie ausführt, um sich mit den Aspose.Words Möglichkeiten und Funktionen vertraut zu machen."
type: docs
weight: 110
url: /de/cpp/how-to-run-the-examples/
---

Um sich mit den Aspose.Words Möglichkeiten und Funktionen vertraut zu machen, stellen wir Beispiele zur Verfügung, die aus unserem GitHub Repository heruntergeladen, ausgeführt und detailliert gelernt werden können.

In diesem Artikel finden Sie die Systemanforderungen sowie Informationen zum Ausführen der Beispiele.

## Windows mit Nuget Paket

### Softwareanforderungen und -voraussetzungen

Bitte stellen Sie sicher, dass Sie die folgenden Anforderungen erfüllen, bevor Sie die Beispiele herunterladen und ausführen:

1. Visual Studio Kode, Visual Studio 2022.
2. Installierter NuGet Paketmanager und die neueste NuGet API Version für Visual Studio. (optional)
3. Ausgewählte Option **nuget.org** im Dialogfeld "Extras → Optionen" unter "NuGet Paketmanager → Paketquellen".
4. Eine aktive Internetverbindung, um die automatische Paketwiederherstellungsfunktion `NuGet` im Beispielprojekt zu verwenden. Wenn Sie auf dem Computer, auf dem die Beispiele ausgeführt werden sollen, keine aktive Internetverbindung haben, folgen Sie den Anweisungen aus Windows mit Cmake-Paket.

### Laden Sie die Beispiele herunter und führen Sie sie aus

Aller Aspose.Words für C++ beispiele werden gehostet auf [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Sie können das Repository entweder mit Ihrem bevorzugten GitHub -Client klonen oder herunterladen [die ZIP-Datei](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Nachdem Sie eine Kopie des Repositorys erhalten haben, stellen Sie möglicherweise Folgendes fest:

- Alle Beispiele befinden sich im Ordner **Examples**.
- In Visual Studio 2022 wurden Visual Studio Lösungsdateien für C++ erstellt.

Um die Beispiele auszuführen, öffnen Sie die Lösungsdatei in Visual Studio und erstellen Sie das Projekt:

- Für **API Reference** Beispiele basiert die Struktur auf Klassennamen, für **Docs** Beispiele basiert sie hauptsächlich auf der [Entwickler Guiled](/words/cpp/developer-guide/) abschnitt Dokumentation.
- Beim ersten Durchlauf werden die Abhängigkeiten automatisch über NuGet heruntergeladen.
- Der Ordner **Data** im Stammordner von **Examples** enthält Eingabedateien, die in den Beispielen verwendet wurden.
- Alle Beispiele können als Komponententests ausgeführt werden.

## Windows mit CMake-Paket

### Softwareanforderungen und -voraussetzungen

Bitte stellen Sie sicher, dass Sie die folgenden Anforderungen erfüllen, bevor Sie die Beispiele herunterladen und ausführen:

1. Visual Studio Kode, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. Laden Sie das neueste CMake -Paket von herunter https://downloads.aspose.com/words/cpp

### Laden Sie die Beispiele herunter und führen Sie sie aus

Aller Aspose.Words für C++ beispiele werden gehostet auf [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Sie können das Repository entweder mit Ihrem bevorzugten GitHub -Client klonen oder herunterladen [die ZIP-Datei](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Platzieren Sie die Ordner `Aspose.Words.Cpp` und `CodePorting.Native.Cs2Cpp_*` im Stammverzeichnis einer Kopie des Repositorys.

Alle Beispiele befinden sich im Ordner **Examples**.

Führen Sie zum Ausführen der Beispiele die folgenden Befehle im Stammverzeichnis einer Kopie des Repositorys aus:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

Die Lösung für Visual Studio wird in der `Examples\DocsExamples\build` generiert

Um die Beispiele auszuführen, öffnen Sie die Lösungsdatei in Visual Studio und erstellen Sie das Projekt:

- Für **API Reference** Beispiele basiert die Struktur auf Klassennamen, für **Docs** Beispiele basiert sie hauptsächlich auf der [Entwickler Guiled](/words/cpp/developer-guide/) abschnitt Dokumentation.
- Der Ordner **Data** im Stammordner von **Examples** enthält Eingabedateien, die in den Beispielen verwendet wurden.
- Alle Beispiele können als Komponententests ausgeführt werden.

## Linux

### Softwareanforderungen und -voraussetzungen

Bitte stellen Sie sicher, dass Sie die folgenden Anforderungen erfüllen, bevor Sie die Beispiele herunterladen und ausführen:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. Laden Sie das neueste CMake -Paket von herunter https://downloads.aspose.com/words/cpp

### Laden Sie die Beispiele herunter und führen Sie sie aus

Aller Aspose.Words für C++ beispiele werden gehostet auf [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Sie können das Repository entweder mit Ihrem bevorzugten GitHub -Client klonen oder herunterladen [die ZIP-Datei](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Platzieren Sie die Ordner `Aspose.Words.Cpp` und `CodePorting.Native.Cs2Cpp_*` im Stammverzeichnis einer Kopie des Repositorys.

Alle Beispiele befinden sich im Ordner **Examples**.

Führen Sie zum Ausführen der Beispiele die folgenden Befehle im Stammverzeichnis einer Kopie des Repositorys aus:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- Für **API Reference** Beispiele basiert die Struktur auf Klassennamen, für **Docs** Beispiele basiert sie hauptsächlich auf der [Entwickler Guiled](/words/cpp/developer-guide/) abschnitt Dokumentation.
- Der Ordner **Data** im Stammordner von **Examples** enthält Eingabedateien, die in den Beispielen verwendet wurden.
- Alle Beispiele können als Komponententests ausgeführt werden.

{{% alert color="primary" %}}

Bitte zögern Sie nicht, uns über unser zu erreichen [Aspose.Words Produktfamilienforum](https://forum.aspose.com/c/words/8) wenn Sie Probleme beim Einrichten oder Ausführen der Beispiele haben.

{{% /alert %}}

## Beitrag zur Verbesserung der Beispiele

Wenn Sie ein Beispiel hinzufügen oder verbessern möchten, ermutigen wir Sie, zum Projekt beizutragen. Alle Beispiele und Vorzeigeprojekte in diesem Repository sind Open Source und können in Ihren Anwendungen frei verwendet werden.

Sie können das Repository verzweigen, den Quellcode bearbeiten und einen Pull-Request erstellen, um Beiträge zu leisten. Wir werden die Änderungen überprüfen und sie in das Repository aufnehmen, wenn sie hilfreich sind.

## Siehe auch

- [Einzelheiten zur Installation des NuGet-Paketmanagers](https://docs.microsoft.com/nuget/guides/install-nuget)
