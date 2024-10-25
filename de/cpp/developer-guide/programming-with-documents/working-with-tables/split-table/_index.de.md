---
title: Tabelle aufteilen in C++
second_title: Aspose.Words für C++
articleTitle: Geteilte Tabelle
linktitle: Geteilte Tabelle
description: "Tabelle in C++ aufteilen. So teilen Sie eine Tabelle in zwei separate Tabellen C++ auf."
type: docs
weight: 100
url: /de/cpp/split-table/
---

Eine Tabelle, die im Aspose.Words -Dokumentobjektmodell dargestellt wird, besteht aus unabhängigen Zeilen und Zellen, wodurch es einfach ist, eine Tabelle zu teilen.

Um eine Tabelle zu manipulieren, um sie in zwei Tabellen aufzuteilen, müssen wir nur einige der Zeilen von der ursprünglichen Tabelle in die neue verschieben. Dazu müssen wir die Zeile auswählen, nach der wir die Tabelle teilen möchten.

Wir können zwei Tabellen aus der Originaltabelle erstellen, indem wir die folgenden einfachen Schritte ausführen:

1. Erstellen Sie einen Klon der Tabelle, ohne die untergeordneten Elemente zu klonen, um die verschobenen Zeilen beizubehalten, und fügen Sie sie nach der ursprünglichen Tabelle ein
2. Verschieben Sie ab der angegebenen Zeile alle nachfolgenden Zeilen in diese zweite Tabelle

Das folgende Codebeispiel zeigt, wie eine Tabelle in einer bestimmten Zeile in zwei Tabellen aufgeteilt wird:

{{< gist "aspose-words-gists" "29ce7710cab8c3ef18e912a5813e0d36" "split-table.h" >}}
