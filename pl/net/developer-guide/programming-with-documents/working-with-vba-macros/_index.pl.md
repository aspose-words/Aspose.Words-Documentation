---
title: Praca z makrami VBA w C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z makrami VBA
linktitle: Praca z makrami VBA
description: "Praca z dokumentacyjnymi projektami VBA przy użyciu C#."
type: docs
weight: 410
url: /pl/net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic for Applications (VBA) for Microsoft Word to prosty, ale potężny język programowania, którego można użyć do rozszerzenia funkcjonalności. Aspose.Words API udostępnia trzy klasy umożliwiające uzyskanie dostępu do kodu źródłowego projektu VBA:

- Klasa [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) zapewnia dostęp do informacji o projekcie VBA
- Klasa [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) zwraca kolekcję modułów projektu VBA
- Klasa [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/) zapewnia dostęp do modułu projektu VBA
- Wyliczenie [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) definiuje typy modelu w projekcie VBA. Moduł może być modułem proceduralnym, modułem dokumentu, modułem klasy lub modułem projektanta

## Utwórz projekt VBA

Aspose.Words API udostępnia właściwość [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) umożliwiającą pobranie lub ustawienie projektu VbaProject w dokumencie.

Poniższy przykład kodu demonstruje sposób tworzenia projektu VBA i modułu VBA wraz z podstawowymi właściwościami, np. Nazwą i Typem:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Przeczytaj makra

Aspose.Words zapewnia także użytkownikom możliwość odczytu makr VBA.

Poniższy przykład kodu pokazuje, jak czytać makra VBA z dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Napisz lub zmodyfikuj makra

Korzystając z Aspose.Words, użytkownicy mogą modyfikować makra VBA.

Poniższy przykład kodu pokazuje, jak modyfikować makra VBA przy użyciu właściwości [SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## Klonuj projekt VBA

Dzięki Aspose.Words możliwe jest również klonowanie projektów VBA.

Poniższy przykład kodu pokazuje, jak sklonować projekt VBA przy użyciu właściwości [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/), która tworzy kopię istniejącego projektu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## Klonuj moduł VBA

W razie potrzeby możesz także klonować moduły VBA.

Poniższy przykład kodu pokazuje, jak sklonować moduł VBA przy użyciu właściwości [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/), która tworzy kopię istniejącego projektu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## Pracuj z referencjami projektu VBA

Aspose.Words API udostępnia klasę [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) do pracy z referencjami projektu VBA reprezentującymi zbiór odniesień do projektów VBA.

Poniższy przykład kodu pokazuje, jak usunąć niektóre odniesienia ze zbioru odniesień z projektu VBA:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}
