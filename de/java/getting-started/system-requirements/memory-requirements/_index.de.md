---
title: Speicherbedarf
second_title: Aspose.Words für Java
articleTitle: Speicherbedarf
linktitle: Speicherbedarf
description: "Wie viel Speicher benötigt Aspose.Words für Java, um mit Dokumenten zu arbeiten? Lerne die Details."
type: docs
weight: 10
url: /de/java/memory-requirements/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words bietet eine Vielzahl von Funktionen zum Arbeiten mit Dokumenten in verschiedenen Formaten. Es ist wichtig zu beachten, dass es keine Begrenzung für die maximale Größe einer Dokumentdatei gibt, die Aspose.Words verarbeiten oder rendern kann. Die einzige Einschränkung ist die Menge an RAM (Speicher), die auf Ihrer Seite verfügbar ist.

## Wieviel Speicher Aspose.Words benötigt

Normalerweise benötigt Aspose.Words ein Vielfaches des Speichers als die Dokumentgröße, um ein Modell des Dokuments im Speicher zu erstellen. Wenn Ihre Dokumentgröße beispielsweise 1 MB beträgt, benötigt Aspose.Words 10-20 MB von RAM, um sein Dokumentobjektmodell (DOM) im Speicher zu erstellen. Der Multiplikator hängt vom Format ab, da einige Formate kompakter sind als andere. Zum Beispiel ist DOCX kompakter als DOC und RTF und DOC ist kompakter als RTF.

Es gibt keine genaue Möglichkeit abzuschätzen, wie viel Speicher Aspose.Words während der Verarbeitung einer bestimmten Dokumentdatei tatsächlich verbraucht wird. Wie Sie vielleicht wissen, speichert Java Daten in Klassen, jede Klasseninstanz verwendet etwas Speicher für interne Zwecke von JVM (Java virtuelle Maschine). Jeder Absatz oder formatierte Text (auch wenn er aus einem Zeichen besteht) benötigt nach dem Laden in DOM zusätzlichen Speicher. Darüber hinaus verwendet die Java Garbage Collector-Engine einen komplexen Algorithmus, um den besten Zeitpunkt für die Durchführung einer Speichersammlung zu bestimmen, was es schwierig macht, den tatsächlichen Speicherverbrauch zu bestimmen.

## So berechnen Sie die Speichermenge

Betrachten wir zwei Dokumente:

1. DOCX "A" Dokument - 0.35 MB Größe (2 Tausend Seiten), nur Text
2. DOCX "B" Dokument - 0.35 MB Größe (nur 1 Seite), mit PNG Bild darin

Wie Sie wissen, gibt es viele moderne Formate wie DOCX, ODT usw. sind einfache ZIP Archive. Wir erhalten also den folgenden Berechnungsalgorithmus:
1. Unzip. Das entpackte Dokument "A" hat eine Größe von 20 MB, das Dokument "B" hat eine Größe von 0.4 MB
2. Laden des Dokuments in das Modell (Erstellen des Dokumentobjektmodells - DOM):
* Das Erstellen von DOM des ersten Dokuments "A" erfordert eine Größe von 49 MB
* Das Erstellen von DOM des zweiten Dokuments "B" erfordert nur eine Größe von 2 MB.
3. Messen der erforderlichen Speichermenge zum Rendern dieser Dokumente auf PDF. Für diesen Vorgang benötigt Aspose.Words:
  *  294 MB für Dokument "A"
  * 7 MB für Dokument "B"

Wie Sie sehen, gibt es also keine lineare Abhängigkeit von der Größe des Eingabedokuments. Es gibt viele Faktoren, die die erforderliche RAM –Größe beeinflussen können - das Dokumentformat, seine Komplexität und Struktur, die Anzahl der Bilder und ihr Format und viele andere Faktoren.

## So berechnen Sie den Speichermultiplikator am genauesten

Experimente mit Tausenden von realen Dokumenten zeigen, dass Aspose.Words normalerweise ein Vielfaches an Speicher benötigt als die durchschnittliche Dokumentgröße, um ein Dokumentmodell im Speicher zu erstellen und einfache Vorgänge wie die Konvertierung zwischen Flussformaten, mail merge, Parsen, Ersetzen usw. auszuführen auf. Manchmal sprechen wir von einem Multiplikator von 2 und manchmal von 20.

Komplexere Vorgänge wie Rendern (Konvertieren in feste Seitenformate), Aktualisieren von Feldern, Teilen von Seiten und andere erfordern bei einigen Dokumenten 20-mal mehr Ressourcen als der Speicher, der vom in Aspose.Words DOM geladenen Dokument zugewiesen wird.

Wenn Ihre Profilergebnisse auf ein mögliches Speicherproblem in Aspose.Words hinweisen, wenden Sie sich bitte an unseren [Supportteam](/words/java/technical-support/) und enthalten alle Diagnoseinformationen.

## Siehe auch

* [Rendering](/words/java/rendering/)
* [Mail Merge und Berichterstattung](/words/java/mail-merge-and-reporting/)
* [Arbeiten mit Feldern](/words/java/working-with-fields/)
