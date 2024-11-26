---
title: Práce se seznamy v C++
second_title: Aspose.Words pro C++
articleTitle: Práce Se Seznamy
linktitle: Práce Se Seznamy
description: "Úvod do funkce formátování číslování v Aspose.Words pro C++."
type: docs
weight: 200
url: /cs/cpp/working-with-lists/
timestamp: 2024-01-30-16-22-34
---

Seznam v dokumentu Microsoft Word je sada vlastností formátování seznamu. Seznamy lze v dokumentech použít k formátování, uspořádání a zdůraznění textu. Seznamy jsou skvělým způsobem, jak uspořádat data v dokumentech, a čtenářům usnadňují pochopení klíčových bodů.

Každý seznam může mít až 9 úrovní a vlastnosti formátování, jako je styl čísla, počáteční hodnota, odsazení, pozice karty atd., jsou definovány samostatně pro každou úroveň.

V Aspose.Words je práce se seznamy reprezentována jmenným prostorem [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/). Objekt [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) však vždy patří do kolekce [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/).

Toto téma popisuje, jak programově pracovat se seznamy pomocí Aspose.Words.

## Určení formátování pro úroveň seznamu

Objekty na úrovni seznamu se vytvářejí automaticky při vytváření seznamu. Pomocí vlastností a metod třídy [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) můžete řídit formátování jednotlivých úrovní seznamu.

## Seznam restartu pro každou sekci

Seznam pro každou sekci můžete restartovat pomocí vlastnosti [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/). Tato možnost je podporována pouze ve formátech dokumentů RTF, DOC a DOCX. Tato volba bude zapsána do DOCX pouze v případě, že OoxmlCompliance je vyšší než Ecma376.

Následující příklad kódu ukazuje, jak vytvořit seznam a restartovat jej pro každou sekci:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
