---
title: Arbeiten mit Listen in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Listen
linktitle: Arbeiten mit Listen
description: "Einführung in die Nummerierungsformatierungsfunktion in Aspose.Words für C++."
type: docs
weight: 200
url: /de/cpp/working-with-lists/
---

Eine Liste in einem Microsoft Word-Dokument besteht aus einer Reihe von Listenformatierungseigenschaften. Listen können in Ihren Dokumenten verwendet werden, um Text zu formatieren, anzuordnen und hervorzuheben. Listen sind eine großartige Möglichkeit, Daten in Dokumenten zu organisieren, und sie erleichtern es den Lesern, wichtige Punkte zu verstehen.

Jede Liste kann bis zu 9 Ebenen haben und Formatierungseigenschaften wie Zahlenstil, Startwert, Einzug, Tabulatorposition usw. werden für jede Ebene separat definiert.

In Aspose.Words wird das Arbeiten mit Listen durch den [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/)-Namespace dargestellt. Das [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) -Objekt gehört jedoch immer zur [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/) -Sammlung.

In diesem Thema wird beschrieben, wie Sie programmgesteuert mit Listen mit Aspose.Words arbeiten.

## Angeben der Formatierung für eine Listenebene

Objekte auf Listenebene werden automatisch erstellt, wenn eine Liste erstellt wird. Verwenden Sie die Eigenschaften und Methoden der Klasse [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/), um die Formatierung einzelner Ebenen einer Liste zu steuern.

## Neustartliste für jeden Abschnitt

Sie können eine Liste für jeden Abschnitt mit der Eigenschaft [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/) neu starten. Beachten Sie, dass diese Option nur in den Dokumentformaten RTF, DOC und DOCX unterstützt wird. Diese Option wird nur dann in DOCX geschrieben, wenn OoxmlCompliance höher als Ecma376 ist.

Das folgende Codebeispiel zeigt, wie Sie eine Liste erstellen und für jeden Abschnitt neu starten:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
