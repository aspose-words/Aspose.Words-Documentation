---
title: TrueType -Schriftarten in C++ bearbeiten und ersetzen
second_title: Aspose.Words für C++
articleTitle: TrueType-Schriftarten bearbeiten und ersetzen
linktitle: TrueType-Schriftarten bearbeiten und ersetzen
description: "Aspose.Words für C++ kann die korrekten TrueType-Schriftarten in das resultierende Dokument einbetten, um sicherzustellen, dass es korrekt angezeigt wird. Wenn eine Schriftart oder ein bestimmtes Zeichen nicht verfügbar ist, sucht Aspose.Words nach einem geeigneten Schriftartenersatz oder verwendet den Schriftarten-Fallback-Mechanismus."
type: docs
weight: 10
url: /de/cpp/manipulate-and-substitute-truetype-fonts/
---

Aspose.Words benötigt TrueType-Schriftarten für eine Vielzahl von Aufgaben, einschließlich der Darstellung von Dokumenten in Festseitenformaten, z. B. PDF oder XPS. Wenn Aspose.Words ein Dokument rendert, muss es das Einbetten und Einbetten von Teilmengen von TrueType -Schriftarten in das resultierende Dokument durchführen, was bei der Dokumenterstellung üblich ist, einschließlich gängiger PDF - oder XPS-Formate. Dadurch wird sichergestellt, dass das Dokument für jeden Betrachter gleich aussieht. Darüber hinaus erfordert die XPS -Spezifikation, dass Schriftarten immer in das Dokument eingebettet sind.

Um sicherzustellen, dass Aspose.Words die Zeichen genau misst und relevante Schriftarten erfolgreich einbettet, müssen die folgenden Bedingungen erfüllt sein:

1. Aspose.Words sollte in der Lage sein, TrueType -Schriftdateien auf dem System zu finden und darauf zuzugreifen.
1. Es müssen genügend TrueType-Schriftarten für Aspose.Words verfügbar sein, vorzugsweise mit denselben Schriftfamiliennamen wie die im Dokument verwendeten.

Beachten Sie, dass die Schriftart im Dokument eine Entität darstellt, z. B. Familienname, Stil, Größe, Farbe, die sich von der Entität `TrueType` Schriftart (physische Schriftart) unterscheidet. Aspose.Words löst die Schriftart im Dokument zu einem bestimmten Zeitpunkt der Verarbeitung in eine physische Schriftart auf. Dies ermöglicht bestimmte Aufgaben, am häufigsten die Berechnung der Textgröße während der Layoutkonstruktion und das Einbetten / Unterteilen in feste Seitenformate. Eine Reihe anderer weniger beliebter Aufgaben, wie z. B. Schriftauflösung und -ersetzung beim Laden von HTML oder Einbetten / Unterteilen in einige Flow-Formate, sind ebenfalls aktiviert.

## Wobei Aspose.Words nach Schriftarten sucht

Aspose.Words versucht automatisch, TrueType Schriftarten im Dateisystem zu finden. Normalerweise können Sie sich auf das Standardverhalten von Aspose.Words verlassen, um die `TrueType` -Schriftarten zu finden, aber manchmal müssen Sie Ihre eigenen Ordner angeben, die TrueType -Schriftarten enthalten. Der [Geben Sie den Speicherort für TrueType Schriftarten an](/words/cpp/specify-truetype-fonts-location/) in diesem Thema wird beschrieben, wie und wo Aspose.Words nach Schriftarten sucht und wie Sie Ihre eigenen Schriftpositionen angeben.

## Unterschiede in der Verarbeitung von Schriftformaten in Aspose.Words und Microsoft Word

Es gibt einige Unterschiede bei der Verarbeitung von Schriftformaten in Aspose.Words und Microsoft Word, wie in der folgenden Tabelle gezeigt:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType Schriftarten und OpenType Schriftarten mit TrueType Konturen | Unterstützte. | Unterstützte. |
| OpenType Schriftarten mit PostScript Konturen | Wird für die meisten Szenarien unterstützt. Das Einbetten in feste Seitenformate wie PDF und XPS wird nicht unterstützt. Der Text wird durch Bitmap-Bilder ersetzt. | Wird für die meisten Szenarien unterstützt, einschließlich der Einbettung in Formate mit fester Seite. |
| OpenType Schriftvarianten | Nur benannte Instanzen werden unterstützt. Kontinuierliche Variationen werden nicht unterstützt. | Wird für die einzige Standardinstanz unterstützt. Benannte Instanzen und kontinuierliche Variationen werden nicht unterstützt. |
| Type1 Schriftarten | Wird von Windows-Versionen vor 2013 und von macOS-Versionen unterstützt. Die Unterstützung für Windows -Versionen ab 2013 wird eingestellt. | Nicht unterstützt. |


