---
title: Praca z listami w C++
second_title: Aspose.Words dla C++
articleTitle: Praca Z Listami
linktitle: Praca Z Listami
description: "Wprowadzenie do funkcji formatowania numeracji w Aspose.Words dla C++."
type: docs
weight: 200
url: /pl/cpp/working-with-lists/
timestamp: 2024-01-30-16-22-34
---

Lista w dokumencie Microsoft Word to zestaw właściwości formatowania listy. Listy mogą być używane w dokumentach do formatowania, porządkowania i podkreślania tekstu. Listy to świetny sposób na uporządkowanie danych w dokumentach i ułatwiają czytelnikom zrozumienie kluczowych punktów.

Każda lista może mieć do 9 poziomów, a właściwości formatowania, takie jak styl numeru, wartość początkowa, wcięcie, pozycja karty itp., są definiowane osobno dla każdego poziomu.

W Aspose.Words Praca z listami jest reprezentowana przez [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/) przestrzeń nazw. Jednak obiekt [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) zawsze należy do kolekcji [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/).

W tym temacie opisano, jak programowo pracować z listami przy użyciu Aspose.Words.

## Określ Formatowanie dla poziomu listy

Obiekty na poziomie listy są tworzone automatycznie po utworzeniu listy. Użyj właściwości i metod klasy [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/), aby kontrolować formatowanie poszczególnych poziomów listy.

## Uruchom ponownie Listę dla każdej sekcji

Możesz ponownie uruchomić listę dla każdej sekcji za pomocą właściwości [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/). Zauważ, że ta opcja jest obsługiwana tylko w formatach dokumentów RTF, DOC i DOCX. Ta opcja zostanie zapisana do DOCX tylko wtedy, gdy OoxmlCompliance jest wyższa niż Ecma376.

Poniższy przykład kodu pokazuje, jak utworzyć listę i ponownie uruchomić ją dla każdej sekcji:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
