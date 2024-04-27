---
title: Klonowanie dokumentu Java
second_title: Aspose.Words zamiast Java
articleTitle: Klon dokumentu
linktitle: Klon dokumentu
type: docs
description: "Klonować dokument, aby uzyskać jego identyczną kopię. Przy tworzeniu kopii, węzły i właściwości oryginalnego dokumentu są sklonowane przy użyciu Java."
weight: 70
url: /pl/java/clone-a-document/
---

Klonowanie dokumentu jest procesem tworzenia identycznej kopii oryginalnego dokumentu, który może poprawić wydajność i zapisać z potencjalnych wycieków pamięci.

Ten artykuł wyjaśni główne przypadki użycia klonowania dokumentu i jak utworzyć klon dokumentu za pomocą Aspose.Words.

## Operacje z dokumentami klonowania

Operacja klonu pozwala przyspieszyć proces tworzenia dokumentów, ponieważ za każdym razem nie trzeba wczytywać i przeglądać dokumentu z pliku.

Po utworzeniu klona dokumentu, będziesz mógł go edytować i wykonywać różne operacje na nim, na przykład porównywać go z oryginalnym dokumentem, dołączyć lub wprowadzić go do innego dokumentu. Można również zmodyfikować sklonowane elementy lub ich zawartość przed umieszczeniem ich w innym dokumencie.

## Tworzenie klonu dokumentów

Aspose.Words pozwala na sklonowanie dokumentu za pomocą [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) metoda, która wykonuje głęboką kopię dokumentu i zwraca go. Innymi słowy, otrzyma pełną kopię DOM. W `Clone` metoda przyspiesza generowanie dokumentów i potrzebujesz tylko jednej linii kodu, aby otrzymać kopię dokumentu.

Klonowanie tworzy nowy dokument z taką samą zawartością jak oryginał, ale z unikalną kopią każdego oryginalnego dokumentu [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/). Można również zastosować operację klonu do węzła dokumentu za pomocą węzła [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) metoda, która pozwala na powielanie złożonych węzłów dokumentów z i bez węzłów dziecięcych.

{{% alert color="primary" %}}

Zauważ, że podczas stosowania metody klonowania wszystkie właściwości dokumentu zostaną sklonowane.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak sklonować dokument i utworzyć duplikat sekcji w tym dokumencie:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
