---
title: Aspose.Words für .NET über COM Interop
second_title: Aspose.Words für .NET
articleTitle: So verwenden Sie Aspose.Words für .NET über COM Interop
linktitle: So verwenden Sie Aspose.Words für .NET über COM Interop
type: docs
description: "Verwenden Sie Aspose.Words für .NET über COM Interop in Python, PHP, VBScript, JScript und anderen Programmiersprachen."
weight: 130
url: /de/net/how-to-use-aspose-words-via-com-interop/
---

Die Informationen in diesem Thema gelten für Szenarios, in denen Sie Aspose.Words für .NET über COM Interop in einer der folgenden Programmiersprachen verwenden möchten:

- ASP
- Delphi ([Beispiel](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- JScript
- Perl
- PHP
- PowerBuilder
- Python
- VBScript
- Visual Basic

## Arbeiten Sie mit COM Interop

Aspose.Words für .NET wird unter der Kontrolle von .NET Framework ausgeführt und dies wird als verwalteter Code bezeichnet. Code, der in allen oben genannten Sprachen geschrieben ist, läuft außerhalb von .NET Framework und wird als nicht verwalteter Code bezeichnet. Die Interaktion zwischen nicht verwaltetem Code und Aspose.Words erfolgt über die .NET-Funktion namens COM Interop.

Aspose.Words-Objekte sind .NET-Objekte, aber wenn sie über COM Interop verwendet werden, erscheinen sie als COM-Objekte in Ihrer Programmiersprache. Stellen Sie daher am besten sicher, dass Sie wissen, wie Sie COM-Objekte in Ihrer Programmiersprache erstellen und verwenden, bevor Sie mit der Verwendung von Aspose.Words beginnen.

Hier sind die Themen, die Sie irgendwann beherrschen müssen:

- Verwenden von COM-Objekten in Ihrer Programmiersprache. Sehen Sie sich die Dokumentation Ihrer Programmiersprache und die sprachspezifischen Themen weiter unten in dieser Dokumentation an.
- Arbeiten mit COM-Objekten, die von .NET COM Interop bereitgestellt werden. Siehe [Interoperieren mit nicht verwaltetem Code](https://learn.microsoft.com/en-us/dotnet/framework/interop/) und [.NET Framework-Komponenten für COM verfügbar machen](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) in MSDN.
- Aspose.Words-Dokumentobjektmodell. Siehe Aspose.Words, [Entwicklerhandbuch](/words/de/net/developer-guide/) und [API Reference](https://reference.aspose.com/words/de/net/).

## Registrieren Sie Aspose.Words für .NET mit COM Interop

Nach [Installation](/words/de/net/installation/) müssen Sie Aspose.Words mit dem `regasm.exe`-Dienstprogramm für COM Interop registrieren.

`regasm.exe` ist ein in .NET Framework SDK enthaltenes Tool. Alle .NET Framework-SDK-Tools befinden sich im `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\`-Verzeichnis, zum Beispiel *C:\Windows\Microsoft .NET\Framework\v4.0.30319*.

Um die TLB-Datei zu erhalten, führen Sie `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` in cmd aus, wobei `<installdir>` das Verzeichnis ist, in dem Sie Aspose.Words installiert haben, normalerweise `%USERPROFILE%\.nuget\packages\aspose.words\`.

## Arbeiten Sie mit Aspose.Words über COM Interop

### ProgIDs

ProgID steht für "Programmatic Identifier" und ist der Name einer `COM`-Klasse, die Sie zum Erstellen eines Objekts verwenden müssen.

Derzeit definiert Aspose.Words vier öffentlich erstellbare COM-Objekte. Ihr ProgIDs ist:

- ComHelper
- Dokumentieren
- DocumentBuilder
- Lizenz

Das ProgIDs besteht aus dem Bibliotheksnamen ("Aspose.Words") und dem Klassennamen.

### Typbibliothek

Während der Installation wird die Aspose.Words.tlb (COM-Typbibliothek) auf Ihren Computer kopiert, um:

- Für .NET Framework 4.0 bis **<installdir>\lib\net40-client**

Wenn Ihre Programmiersprache (z. B. Visual Basic oder Delphi) den Verweis auf eine `COM`-Typbibliothek zulässt, fügen Sie einen Verweis auf **Aspose.Words.tlb** hinzu und Sie können alle Aspose.Words-Klassen, -Methoden, -Eigenschaften und -Enumerationen in Ihrem Objektbrowser sehen.

### Erstellen von COM-Objekten

Die Erstellung eines .NET-Objekts ähnelt der Erstellung eines normalen COM-Objekts:

**VBScript**

```
Schwacher Helfer
Set helper = CreateObject("Aspose.Words.ComHelper")
 
```

Nach der Erstellung können Sie auf die Methoden und Eigenschaften des Objekts zugreifen, als wäre es ein `COM`-Objekt:

**VBScript**

```
Dunkles Dokument
Setze doc = helper.Open("C:\my.doc")
 
```

Einige Methoden weisen Überladungen auf und werden von COM Interop mit einem angehängten numerischen Suffix angezeigt, mit Ausnahme der allerersten Methode, die unverändert bleibt. Beispielsweise werden `Document.Save`-Methodenüberladungen zu `Document.Save`, `Document.Save_2`, `Document.Save_3` usw.

Weitere Informationen finden Sie in den sprachspezifischen Artikeln weiter unten in dieser Dokumentation.

### Erstellen einer Wrapper-Assembly

Wenn Sie viele der Aspose.Words-Klassen, -Methoden und -Eigenschaften verwenden müssen, sollten Sie die Erstellung einer Wrapper-Assembly (mit C# oder einer anderen .NET-Programmiersprache) in Betracht ziehen, um die direkte Verwendung von Aspose.Words aus nicht verwaltetem Code zu vermeiden.

Ein guter Ansatz besteht darin, eine .NET-Assembly zu entwickeln, die auf Aspose.Words verweist, die gesamte Arbeit damit erledigt und nur den minimalen Satz an Klassen und Methoden für nicht verwalteten Code verfügbar macht. Ihre Anwendung sollte dann nur mit Ihrer Wrapper-Bibliothek funktionieren.

Die Reduzierung der Anzahl der Klassen und Methoden, die Sie über COM Interop aufrufen müssen, könnte Ihr Projekt vereinfachen, da die Verwendung von .NET-Klassen über COM Interop häufig fortgeschrittene Kenntnisse erfordert.