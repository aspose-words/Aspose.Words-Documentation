---
title: FIPS-Modus
second_title: Aspose.Words für Java
articleTitle: FIPS-Modus
linktitle: FIPS-Modus
description: "Aspose.Words für Java verwendet mehrere Kryptographie- und Hash-Algorithmen bei der Verarbeitung von Dokumenten, um FIPS-Standards zu erfüllen."
type: docs
weight: 80
url: /de/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Words verwendet mehrere Kryptographie- und Hash-Algorithmen bei der Verarbeitung von Dokumenten und dieser Artikel beschreibt, wie es mit den FIPS-Standards zusammenhängt.

Bundesnormen für die Informationsverarbeitung (FIPS) sind eine Reihe offen veröffentlichter Standards, die von der Regierung der Vereinigten Staaten entwickelt wurden, um Anforderungen für verschiedene Zwecke zu schaffen, wie etwa die Gewährleistung der Computersicherheit und Interoperabilität.

## BouncyCastle zum Rettung

Aspose.Words für Java und Aspose.Words für Android Verwenden Sie die Bouncy Castle FIPS JAR zum Verschlüsseln, Entschlüsseln und Signieren von Dokumenten. Die JAR wurde entwickelt und implementiert, um die Anforderungen von FIPS 140-2, Level 1 zu erfüllen.

FIPS 140-2 ist ein US-amerikanischer Computer-Sicherheitsstandard, der verwendet wird, um kryptographische Module zu genehmigen. Dieser Standard gibt die Sicherheitsanforderungen an, die von einem kryptographischen Modul erfüllt werden und bietet hohe Sicherheitsstandards, die eine breite Palette von potenziellen Anwendungen und Umgebungen abdecken sollen. Weitere Informationen zu FIPS 140-2 finden Sie in der [NIST-Veröffentlichung](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words für .NET verwendet die allgemeine Bouncy Castle Version ohne Unterstützung für FIPS.

## FIPS Modus Aktivierung

Ab der Version 18.10 Aspose.Words ermöglicht die Arbeit in zwei Modi: General und FIPS.

Standardmäßig Aspose.Words funktioniert im Allgemeinen Modus, so gibt es keine Einschränkungen für die Verwendung von Algorithmen und Schlüssel in diesem Fall.

Sie können wechseln Aspose.Words aus dem Allgemeinen Modus in den FIPS-Modus mit der folgenden Methode:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Aus Sicherheitsgründen können Sie den Modus nicht zu General in Laufzeit ändern.

Beachten Sie auch, dass Aspose.Words kann nicht automatisch erkennen, ob Ihr Betriebssystem im FIPS-Modus ist, daher müssen Sie wechseln Aspose.Words zum FIPS-Modus explizit

Verwenden Sie die folgende Methode, um sicherzustellen, Aspose.Words für Java ist im FIPS-Modus:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Wenn der FIPS-Modus aktiviert ist, verhindert Aspose Words, dass Sie einige Kryptographiealgorithmen und Schlüssel mit nicht genehmigten Längen verwenden.

Zum Beispiel, wenn Sie versuchen, ein ODT verschlüsseltes Dokument zu öffnen, während der FIPS-Modus aktiv ist, können Sie die folgende Ausnahme sehen:

{{% alert color="primary" %}}

UngenehmigtSecurityOperation Ausnahme: Ein Versuch, eine ODT-Datei zu öffnen, die den Blowfish-Algorithmus verwendet. Dieser Algorithmus ist nicht auf der FIPS-genehmigten Algorithmusliste.

{{% /alert %}}

Dies geschieht, weil der Blowfish-Algorithmus nicht auf der FIPS-genehmigten Algorithmenliste ist.

Die ähnliche Ausnahme kann auftreten, wenn Tasten mit unangemessener Länge verwendet werden:

UngenehmigtSecurityOperation Ausnahme: Sie können im FIPS-Modus keinen Schlüssel mit der Größe 1024 für RSA verwenden.

Für weitere Details zur freigegebenen Algorithmenliste siehe [Bouncy Benutzerhandbuch von Castle](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), "Cipher Algorithmen (Symmetric)".


