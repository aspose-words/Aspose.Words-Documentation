---
title: Praca z makrami VBA w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z makrami VBA
linktitle: Praca z makrami VBA
description: "Twórz, czytaj, zapisuj, klonuj i zarządzaj makrami VBA w dokumencie za pomocą Python."
type: docs
weight: 410
url: /pl/python-net/working-with-vba-macros/
---

Visual Basic for Applications (VBA) for Microsoft Word to prosty, ale potężny język programowania, którego można użyć do rozszerzenia funkcjonalności. Aspose.Words API udostępnia trzy klasy umożliwiające uzyskanie dostępu do kodu źródłowego projektu VBA:

- Klasa [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) zapewnia dostęp do informacji o projekcie VBA
- Klasa [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) zwraca kolekcję modułów projektu VBA
- Klasa [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) zapewnia dostęp do modułu projektu VBA
- Wyliczenie [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) definiuje typy modelu w projekcie VBA. Moduł może być modułem proceduralnym, modułem dokumentu, modułem klasy lub modułem projektanta

## Utwórz projekt VBA

Aspose.Words API udostępnia właściwość [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) umożliwiającą pobranie lub ustawienie formatu [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) w dokumencie.

Poniższy przykład kodu demonstruje sposób tworzenia projektu VBA i modułu VBA wraz z podstawowymi właściwościami, np. [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) i [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Przeczytaj makra

Aspose.Words zapewnia także użytkownikom możliwość odczytu makr VBA.

Poniższy przykład kodu pokazuje, jak czytać makra VBA z dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Napisz lub zmodyfikuj makra

Korzystając z Aspose.Words, użytkownicy mogą modyfikować makra VBA.

Poniższy przykład kodu pokazuje, jak modyfikować makra VBA przy użyciu właściwości [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Klonuj projekt VBA

Dzięki Aspose.Words możliwe jest również klonowanie projektów VBA.

Poniższy przykład kodu pokazuje, jak sklonować projekt VBA przy użyciu właściwości [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/), która tworzy kopię istniejącego projektu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Klonuj moduł VBA

W razie potrzeby możesz także klonować moduły VBA.

Poniższy przykład kodu pokazuje, jak sklonować moduł VBA przy użyciu właściwości [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/), która tworzy kopię istniejącego projektu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Pracuj z referencjami projektu VBA

Aspose.Words API udostępnia klasę [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) do pracy z referencjami projektu VBA reprezentującymi zbiór odniesień do projektów VBA.

Poniższy przykład kodu pokazuje, jak usunąć niektóre odniesienia ze zbioru odniesień z projektu VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}