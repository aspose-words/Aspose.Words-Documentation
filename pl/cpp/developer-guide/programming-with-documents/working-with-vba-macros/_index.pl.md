---
title: Praca z makrami VBA w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z makrami VBA
linktitle: Praca z makrami VBA
description: "Praca z projektami document VBA przy użyciu C++."
type: docs
weight: 410
url: /pl/cpp/working-with-vba-macros/
timestamp: 2024-01-30-16-22-34
---

Visual Basic for Applications (VBA) for Microsoft Word to prosty, ale potężny język programowania, którego można użyć do rozszerzenia funkcjonalności. Aspose.Words API zapewnia trzy klasy, aby uzyskać dostęp do kodu źródłowego projektu VBA:

- Klasa [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) zapewnia dostęp do informacji o projekcie VBA
- Klasa [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) zwraca kolekcję modułów projektu VBA
- Klasa [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) zapewnia dostęp do modułu projektu VBA

## Utwórz projekt VBA

Aspose.Words API zapewnia `Document.VbaProject` właściwość get lub set VbaProject w dokumencie.

Poniższy przykład kodu pokazuje, jak utworzyć projekt VBA i moduł VBA wraz z podstawowymi właściwościami, np.:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Czytaj Makra

Aspose.Words zapewnia również użytkownikom możliwość odczytu makr VBA.

Poniższy przykład kodu pokazuje, jak odczytać makra VBA z dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Napisz lub zmodyfikuj makra

Używając Aspose.Words, użytkownicy mogą modyfikować makra VBA.

Poniższy przykład kodu pokazuje, jak modyfikować makra VBA przy użyciu właściwości [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Klon VBA Projekt

Za pomocą Aspose.Words możliwe jest również klonowanie projektów VBA.

Poniższy przykład kodu pokazuje, jak sklonować Projekt VBA przy użyciu właściwości [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/), która tworzy kopię istniejącego projektu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Moduł Clone VBA

W razie potrzeby można również sklonować Moduły VBA.

Poniższy przykład kodu pokazuje, jak sklonować moduł VBA przy użyciu właściwości [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/), która tworzy kopię istniejącego projektu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
