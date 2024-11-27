---
title: Klonuj dokument w C++
second_title: Aspose.Words dla C++
articleTitle: Sklonuj dokument
linktitle: Sklonuj dokument
type: docs
description: "Sklonuj dokument, aby uzyskać jego identyczną kopię za pomocą C++. Podczas tworzenia kopii klonowane są węzły i właściwości oryginalnego dokumentu."
weight: 70
url: /pl/cpp/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Klonowanie dokumentu to proces tworzenia identycznej kopii oryginalnego dokumentu, który może poprawić wydajność i uchronić Cię przed potencjalnymi wyciekami pamięci.

W tym artykule wyjaśniono główne przypadki użycia klonowania dokumentu i sposób tworzenia klonu dokumentu przy użyciu Aspose.Words.

## Operacje z klonowaniem dokumentów

Operacja klonowania pozwala przyspieszyć proces tworzenia dokumentów, ponieważ nie trzeba za każdym razem ładować i analizować dokumentu z pliku.

Po utworzeniu klonu dokumentu będziesz mógł go edytować i wykonywać na nim różne operacje, na przykład porównać go z oryginalnym dokumentem, dołączyć lub wstawić do innego dokumentu. Możesz także zmodyfikować sklonowane elementy lub ich zawartość przed wstawieniem ich do innego dokumentu.

## Tworzenie klonu dokumentu

Aspose.Words umożliwia sklonowanie dokumentu przy użyciu metody [Clone](https://reference.aspose.com/words/cpp/aspose.words/document/clone/), która wykonuje głęboką kopię dokumentu i zwraca go. Innymi słowy, otrzyma pełną kopię DOM. Metoda `Clone` przyspiesza generowanie dokumentów i potrzebujesz tylko jednego wiersza kodu, aby uzyskać kopię dokumentu.

Klonowanie tworzy nowy dokument o tej samej zawartości co oryginał, ale z unikalną kopią każdego z oryginalnych dokumentów [nodes](https://reference.aspose.com/words/cpp/class/aspose.words.node). Operację klonowania można również zastosować do węzła dokumentu przy użyciu metody node [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/), która umożliwia duplikowanie złożonych węzłów dokumentu z węzłami podrzędnymi i bez nich.

{{% alert color="primary" %}}

Należy pamiętać, że podczas stosowania metody klonowania wszystkie właściwości dokumentu zostaną sklonowane.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak sklonować dokument i utworzyć duplikat sekcji w tym dokumencie:
{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CloningDocument-CloningDocument.cpp" >}}
