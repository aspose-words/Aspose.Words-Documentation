---
title: Speicheranforderungen
second_title: Aspose.Words für .NET
articleTitle: Speicheranforderungen
linktitle: Speicheranforderungen
description: "Wie viel Speicher benötigt Aspose.Words für .NET, um mit Dokumenten zu arbeiten? Erfahren Sie die Details."
type: docs
weight: 10
url: /de/net/memory-requirements/
---

Aspose.Words bietet zahlreiche Funktionen für die Arbeit mit Dokumenten in verschiedenen Formaten. Es ist wichtig zu beachten, dass es keine Begrenzung für die maximale Größe einer Dokumentdatei gibt, die Aspose.Words verarbeiten oder rendern kann. Die einzige Einschränkung ist die Menge an RAM (Speicher), die auf Ihrer Seite verfügbar ist.

## Wie viel Speicher Aspose.Words benötigt

Normalerweise benötigt Aspose.Words ein Vielfaches mehr Speicher als die Dokumentgröße, um ein Modell des Dokuments im Speicher zu erstellen. Wenn Ihr Dokument beispielsweise 1 MB groß ist, benötigt Aspose.Words 10–20 MB RAM, um sein Document Object Model (DOM) im Speicher zu erstellen. Der Multiplikator hängt vom Format ab, da einige Formate kompakter sind als andere. DOCX ist beispielsweise kompakter als DOC und RTF, und DOC ist kompakter als RTF.

Es gibt keine genaue Möglichkeit abzuschätzen, wie viel Speicher Aspose.Words während der Verarbeitung einer bestimmten Dokumentdatei tatsächlich verbraucht. Wie Sie vielleicht wissen, speichert .NET Daten in Klassen. Jede Klasseninstanz verwendet etwas Speicher für CLR-interne Zwecke. Daher benötigt jeder Absatz oder formatierte Text (selbst wenn er aus einem Zeichen besteht) nach dem Laden in das DOM etwas zusätzlichen Speicher. Darüber hinaus verwendet die .NET-Garbage-Collector-Engine einen komplexen Algorithmus, um den besten Zeitpunkt für die Durchführung einer Speichersammlung zu bestimmen, was es schwierig macht, den tatsächlichen Speicherverbrauch zu bestimmen.

## So berechnen Sie die Speichermenge

Betrachten wir zwei Dokumente:

1. DOCX-Dokument "A" – Größe 0,35 MB (2.000 Seiten), nur Text
2. DOCX "B"-Dokument – 0,35 MB groß (nur 1 Seite), mit PNG-Bild darin

Wie Sie wissen, sind viele moderne Formate wie DOCX, ODT usw. einfache ZIP-Archive. Wir erhalten also den folgenden Berechnungsalgorithmus:
1. Entpacken. Das entpackte Dokument "A" hat eine Größe von 20 MB, Dokument "B" hat eine Größe von 0,4 MB
2. Laden des Dokuments in das Modell (Erstellung seines Document Object Model – DOM):
* Das Erstellen von DOM des ersten Dokuments "A" erfordert eine Größe von 49 MB
* Das Erstellen von DOM des zweiten Dokuments "B" erfordert nur eine Größe von 2 MB.
3. Messen der erforderlichen Speichermenge zum Rendern dieser Dokumente als PDF. Für diesen Vorgang benötigt Aspose.Words:
  * 294 MB für Dokument "A"
  * 7 MB für Dokument "B"

Wie Sie sehen, gibt es also keine lineare Abhängigkeit von der Größe des Eingabedokuments. Es gibt viele Faktoren, die die erforderliche RAM-Größe beeinflussen können – das Dokumentformat, seine Komplexität und Struktur, die Anzahl der Bilder und deren Format sowie viele andere Faktoren.

## So berechnen Sie den Speichermultiplikator am genauesten

Experimente mit Tausenden realen Dokumenten zeigen, dass Aspose.Words normalerweise ein Vielfaches an Speicher benötigt als die durchschnittliche Dokumentgröße, um ein Dokumentmodell im Speicher zu erstellen und einfache Vorgänge wie die Konvertierung zwischen Flussformaten, mail merge, Parsen, Ersetzen usw. durchzuführen. Manchmal sprechen wir von einem Multiplikator von 2, manchmal von 20.

Komplexere Vorgänge wie Rendern (Konvertieren in feste Seitenformate), Aktualisieren von Feldern, Teilen von Seiten und andere erfordern für einige Dokumente 20-mal mehr Ressourcen als der Speicher, der durch das in Aspose.Words DOM geladene Dokument zugewiesen wird.

Wenn Ihre Profilierungsergebnisse auf ein mögliches Speicherproblem in Aspose.Words hinweisen, wenden Sie sich bitte an unseren [Technische Unterstützung](/words/de/net/technical-support/) und geben Sie alle Diagnoseinformationen an.

## Siehe auch

* [Messen Sie die Speichernutzung in Visual Studio (C#, Visual Basic, C++, F#)](https://learn.microsoft.com/en-us/visualstudio/profiling/memory-usage?view=vs-2022)
* [Rendern](/words/de/net/rendering/)
* [Mail Merge und Berichterstattung](/words/net/mail-merge-and-reporting/)
* [Arbeiten mit Feldern](/words/de/net/working-with-fields/)