---
title: So erkennen Sie, dass die Schriftart in C++ ersetzt wurde
second_title: Aspose.Words für C++
articleTitle: So erkennen Sie, dass die Schriftart ersetzt wurde
linktitle: So erkennen Sie, dass die Schriftart ersetzt wurde
description: "Wenn Sie nicht sicher sind, warum sich das Layout eines Dokuments geändert hat oder warum eine bestimmte Schriftart nicht wie erwartet aussieht, können Warnmeldungen zum Ersetzen von Schriftarten hilfreich sein."
type: docs
weight: 13
url: /de/cpp/how-to-recognize-that-the-font-was-replaced/
---

Manchmal ist es möglicherweise unklar, warum sich das Dokumentlayout geändert hat oder warum eine Schriftart nicht wie erwartet aussieht. In solchen Fällen helfen Warnmeldungen zum Ersetzen von Schriftarten, die von der IWarningCallback -Schnittstelle implementiert werden. Sie haben den Warnungstyp [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) und das Standardbeschreibungstextformat "Schriftart '<OriginalFont>' wurde nicht gefunden. Verwenden Sie stattdessen die Schriftart '<SubstitutionFont>'. Grund: <Reason>", mit den folgenden Gründen:

- "alternativer Name aus dem Dokument" - zur Ersetzung durch [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "fontconfig-Ersetzung" - zur Ersetzung durch Font-Konfigurationsregel
- "Tabellenersetzung" - für die Ersetzung durch Tabellenregel
- "font-Info-Ersetzung" - zur Ersetzung durch Font-Info-Regel
- "Standardschriftartenersetzung" - für die Ersetzung durch Standardschriftartregel
- "erste verfügbare Schriftart" - zum Ersetzen durch die erste verfügbare Schriftart
