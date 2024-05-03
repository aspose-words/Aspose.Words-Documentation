---
title: Speicherbedarf
second_title: Aspose.Words für Java
articleTitle: Speicherbedarf
linktitle: Speicherbedarf
description: "Wie viel Speicher tut Aspose.Words für Java müssen mit Dokumenten arbeiten? Lernen Sie die Details."
type: docs
weight: 10
url: /de/java/memory-requirements/
---

Aspose.Words bietet eine breite Palette von Funktionen, um mit Dokumenten in verschiedenen Formaten zu arbeiten. Es ist wichtig zu beachten, dass die maximale Größe einer Dokumentdatei nicht begrenzt ist, Aspose.Words kann verarbeiten oder Rendern. Die einzige Einschränkung ist die Menge an RAM (Speicher) auf Ihrer Seite.

## Wie viel Speicher Aspose.Words Bedarf

Gewöhnlich Aspose.Words benötigt mehrmals mehr Speicher als die Dokumentengröße, um ein Modell des Dokuments im Speicher zu erstellen. Zum Beispiel, wenn Ihre Dokumentgröße 1 MB ist, Aspose.Words benötigt 10-20 MB RAM, um seine Document Object Model (DOM) im Gedächtnis. Der Multiplikator hängt vom Format ab, da einige Formate kompakter sind als andere. Zum Beispiel ist DOCX kompakter als DOC und RTF, und DOC ist kompakter als RTF.

Es gibt keine genaue Weise zu schätzen, wie viel Speicher Aspose.Words tatsächlich verbraucht während der Verarbeitung jede bestimmte Dokumentdatei. Wie Sie vielleicht wissen Java speichert Daten in Klassen, jede Klasseninstanz verwendet einen Speicher für JVM (Java virtuelle Maschine) interne Zwecke. Also jeder Absatz oder formatierte Text (auch es besteht aus einem Zeichen) nimmt einen zusätzlichen Speicher nach dem Laden in die DOM. Darüber hinaus die Java Müllsammler-Engine verwendet einen komplexen Algorithmus, um die beste Zeit zu bestimmen, um eine Speichersammlung durchzuführen, so dass es schwierig ist, den realen Speicherverbrauch zu bestimmen.

## Wie man die Menge des Gedächtnisses berechnet

Lassen Sie uns zwei Dokumente betrachten:

1. DOCX "A" Dokument – 0.35 MB Größe (2 Tausend Seiten), Text nur
2. DOCX "B" Dokument – 0.35 MB Größe (nur 1 Seite), mit PNG-Bild innen

Wie Sie wissen, sind viele moderne Formate wie DOCX, ODT, etc. einfache ZIP-Archive. So erhalten wir den folgenden Berechnungsalgorithmus:
1. Unzipping. Entpacktes Dokument "A" hat 20 MB Größe, Dokument "B" hat 0,4 MB Größe
2. Laden des Dokuments in das Modell (Bau seiner Document Object Model – DOM:
* Erstellen DOM des ersten Dokuments "A" erfordert 49 MB Größe
* Erstellen DOM des zweiten Dokuments "B" benötigt nur 2 MB Größe.
3. Messung der erforderlichen Speichermenge, um diese Dokumente auf PDF zu stellen. Für diesen Vorgang, Aspose.Words erfordert:
  * 294 MB für Dokument "A"
  * 7 MB für Dokument "B"

So gibt es, wie Sie sehen können, keine lineare Abhängigkeit von der Eingabedokumentgröße. Es gibt viele Faktoren, die die erforderliche RAM-Größe beeinflussen können – das Dokumentformat, seine Komplexität und Struktur, die Anzahl der Bilder und ihr Format und viele andere Faktoren.

## Wie Sie den Speicher Multiplier genau berechnen

Versuche mit tausenden realen Dokumenten zeigen, dass Aspose.Words erfordert mehrere Male mehr Speicher als die durchschnittliche Dokumentengröße, um ein Dokumentmodell im Speicher zu erstellen und einfache Operationen wie Umwandlung zwischen Flussformaten durchzuführen, mail merge, parse, ersetzen und so weiter. Manchmal reden wir über einen Multiplikator von 2, und manchmal 20.

Komplexere Operationen wie Rendering (Konvertierung auf feste Seitenformate), Aktualisierung von Feldern, Spaltungsseite und andere, für einige Dokumente benötigen 20 mal mehr Ressourcen als der Speicher, der durch das geladene Dokument zugewiesen wird Aspose.Words DOM.

Wenn Ihre Profilierungsergebnisse ein mögliches Speicherproblem angeben Aspose.Words, Bitte kontaktieren Sie uns [Technische Unterstützung](/words/de/java/technical-support/) und alle diagnostischen Informationen enthalten.

## Siehe auch

* [Rendering](/words/de/java/rendering/)
* [Mail Merge und Reporting](https://docs.aspose.com/words/java/mail-merge-and-reporting/)
* [Arbeiten mit Feldern](/words/de/java/working-with-fields/)