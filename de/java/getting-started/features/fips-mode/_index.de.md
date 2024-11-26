---
title: FIPS Modus
second_title: Aspose.Words für Java
articleTitle: FIPS Modus
linktitle: FIPS Modus
description: "Aspose.Words für Java verwendet bei der Verarbeitung von Dokumenten mehrere Kryptografie- und Hash-Algorithmen, um den FIPS -Standards zu entsprechen."
type: docs
weight: 80
url: /de/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Words verwendet bei der Verarbeitung von Dokumenten mehrere Kryptografie- und Hash-Algorithmen, und dieser Artikel beschreibt, wie es mit den FIPS -Standards zusammenhängt.

Federal Information Processing Standards (FIPS) sind eine Reihe von offen veröffentlichten Standards, die von der Bundesregierung der Vereinigten Staaten entwickelt wurden, um Anforderungen für verschiedene Zwecke festzulegen, z. B. zur Gewährleistung der Computersicherheit und Interoperabilität.

## BouncyCastle zur Rettung

Aspose.Words für Java und Aspose.Words für Android nutzen Sie die Hüpfburg FIPS JAR zum Verschlüsseln, Entschlüsseln und Signieren von Dokumenten. Der JAR wurde entworfen und implementiert, um die Anforderungen von FIPS 140-2, Level 1, zu erfüllen.

FIPS 140-2 ist ein Computersicherheitsstandard der US-Regierung, der zur Genehmigung kryptografischer Module verwendet wird. Diese Norm spezifiziert die Sicherheitsanforderungen, die von einem kryptographischen Modul erfüllt werden, und bietet ein hohes Maß an Sicherheit, das eine breite Palette potenzieller Anwendungen und Umgebungen abdecken soll. Weitere Einzelheiten zu FIPS 140-2 finden Sie in der [NIST Veröffentlichung](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words für .NET verwendet die allgemeine Hüpfburg-Version ohne Unterstützung für FIPS.

## Aktivierung des FIPS-Modus

Ab der Version 18.10 erlaubt Aspose.Words in zwei Modi zu arbeiten: Allgemein und FIPS.

Standardmäßig arbeitet Aspose.Words im allgemeinen Modus, daher gibt es in diesem Fall keine Einschränkungen bei der Verwendung von Algorithmen und Schlüsseln.

Sie können Aspose.Words mit der folgenden Methode vom allgemeinen Modus in den FIPS -Modus wechseln:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Aus Sicherheitsgründen können Sie den Modus zur Laufzeit nicht wieder auf Allgemein ändern.

Beachten Sie auch, dass Aspose.Words nicht automatisch erkennen kann, ob sich Ihr Betriebssystem im FIPS -Modus befindet, daher müssen Sie Aspose.Words explizit in den FIPS -Modus schalten.

Verwenden Sie die folgende Methode, um sicherzustellen, dass Aspose.Words für Java im FIPS -Modus ist:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Wenn der FIPS -Modus aktiviert ist, verhindert Aspose Words, dass Sie einige Kryptografiealgorithmen und Schlüssel mit nicht genehmigten Längen verwenden.

Wenn Sie beispielsweise versuchen, ein ODT verschlüsseltes Dokument zu öffnen, während der FIPS -Modus aktiv ist, wird möglicherweise die folgende Ausnahme angezeigt:

{{% alert color="primary" %}}

UnapprovedSecurityOperationException: Ein Versuch, eine ODT -Datei zu öffnen, die den Blowfish-Algorithmus verwendet. Dieser Algorithmus steht nicht auf der Liste der von FIPS genehmigten Algorithmen.

{{% /alert %}}

Dies geschieht, weil der Blowfish-Algorithmus nicht auf der Liste der von FIPS genehmigten Algorithmen steht.

Eine ähnliche Ausnahme kann auftreten, wenn Schlüssel mit unangemessener Länge verwendet werden:

UnapprovedSecurityOperationException: Sie können keinen Schlüssel mit der Größe 1024 für RSA im FIPS-Modus verwenden.

Weitere Einzelheiten zur Liste der genehmigten Algorithmen finden Sie unter [BouncyCastle Benutzerhandbuch](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), "Chiffrieralgorithmen (symmetrisch)".


