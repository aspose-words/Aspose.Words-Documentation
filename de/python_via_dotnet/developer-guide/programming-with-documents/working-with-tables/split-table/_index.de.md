---
title: Geteilte Tabelle in Python
second_title: Aspose.Words für Python
articleTitle: Geteilter Tisch
linktitle: Geteilter Tisch
description: "Geteilte Tabelle in Python. So teilen Sie eine Tabelle in zwei separate Tabellen auf Python."
type: docs
weight: 100
url: /de/python-net/split-table/
timestamp: 2024-01-27-14-07-04
---

Eine im Aspose.Words Document Object Model dargestellte Tabelle besteht aus unabhängigen Zeilen und Zellen, sodass eine Tabelle leicht geteilt werden kann.

Um eine Tabelle so zu manipulieren, dass sie in zwei Tabellen aufgeteilt wird, müssen wir lediglich einige Zeilen von der ursprünglichen Tabelle in die neue verschieben. Dazu müssen wir die Zeile auswählen, nach der wir die Tabelle teilen möchten.

Mit diesen einfachen Schritten können wir aus der Originaltabelle zwei Tabellen erstellen:

1. Erstellen Sie einen Klon der Tabelle, ohne die untergeordneten Elemente zu klonen, um die verschobenen Zeilen beizubehalten und sie nach der Originaltabelle einzufügen
2. Verschieben Sie beginnend bei der angegebenen Zeile alle nachfolgenden Zeilen in diese zweite Tabelle

Das folgende Codebeispiel zeigt, wie eine Tabelle in einer bestimmten Zeile in zwei Tabellen aufgeteilt wird:

{{< gist "aspose-words-gists" "d31be78b25b463dd4eb31c85c60fc549" "split-table.py" >}}
