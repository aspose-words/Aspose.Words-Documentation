---
title: Praca z VBA Macros w Java
second_title: Aspose.Words zamiast Java
articleTitle: Współpraca z VBA Macros
linktitle: Współpraca z VBA Macros
description: "Praca z dokumentami VBA projektów przy użyciu Java."
type: docs
weight: 410
url: /pl/java/working-with-vba-macros/
---

Visual Basic dla wniosków (VBA) Microsoft Word jest prostym, ale potężnym językiem programowania, który może być użyty do rozszerzenia funkcjonalności. Aspose.Words API zapewnia trzy klasy dostępu do kodu źródłowego projektu VBA:

- [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) klasa zapewnia dostęp do informacji o projekcie VBA
- [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) klasa zwraca kolekcję modułów projektu VBA
- [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) klasa zapewnia dostęp do modułu projektu VBA

## Utwórz projekt VBA

Aspose.Words API zapewnia [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) właściwość do uzyskania lub ustawienia VbaProject w dokumencie.

Poniższy przykład kodu pokazuje jak stworzyć projekt VBA i moduł VBA wraz z podstawowymi właściwościami np. Nazwa i typ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Przeczytaj Macros

Aspose.Words zapewnia również użytkownikom możliwość odczytu makro VBA.

Poniższy przykład kodu pokazuje, jak odczytać Macros VBA z dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Modyfikuj makro

Stosowanie Aspose.Words, użytkownicy mogą modyfikować makro VBA.

Poniższy przykład kodu pokazuje jak zmodyfikować VBA Macros za pomocą [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode) nieruchomość:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Klon VBA Projekt

Z Aspose.Words można również sklonować projekty VBA.

Poniższy przykład kodu pokazuje jak sklonować projekt VBA używając [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) nieruchomość, która tworzy kopię istniejącego projektu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Klon VBA Moduł

W razie potrzeby można również sklonować moduły VBA.

Poniższy przykład kodu pokazuje jak sklonować moduł VBA za pomocą [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) nieruchomość, która tworzy kopię istniejącego projektu

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
