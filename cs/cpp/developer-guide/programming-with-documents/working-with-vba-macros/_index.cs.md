---
title: Práce s makry VBA v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s makry VBA
linktitle: Práce s makry VBA
description: "Práce s projekty dokumentu VBA Pomocí C++."
type: docs
weight: 410
url: /cs/cpp/working-with-vba-macros/
timestamp: 2024-01-30-16-22-34
---

Visual Basic pro aplikace (VBA) pro Microsoft Word je jednoduchý, ale výkonný programovací jazyk, který lze použít k rozšíření funkčnosti. Aspose.Words API poskytuje tři třídy pro získání přístupu ke zdrojovému kódu projektu VBA:

- Třída [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) poskytuje přístup k informacím o projektu VBA
- Třída [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) vrací kolekci modulů projektu VBA
- Třída [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) poskytuje přístup k modulu projektu VBA

## Vytvoření VBA projektu

Aspose.Words API poskytuje vlastnost `Document.VbaProject` pro získání nebo nastavení VbaProject v dokumentu.

Následující příklad kódu ukazuje, jak vytvořit projekt VBA a modul VBA spolu se základními vlastnostmi, např.:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Číst Makra

Aspose.Words také poskytuje uživatelům možnost číst VBA makra.

Následující příklad kódu ukazuje, jak číst VBA makra z dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Psát nebo upravovat makra

Pomocí Aspose.Words mohou uživatelé upravovat VBA makra.

Následující příklad kódu ukazuje, jak upravit makra VBA pomocí vlastnosti [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Klon VBA Projekt

Pomocí Aspose.Words je také možné klonovat projekty VBA.

Následující příklad kódu ukazuje, jak klonovat Projekt VBA pomocí vlastnosti [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/), která vytvoří kopii existujícího projektu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Klon VBA Modul

V případě potřeby můžete také klonovat moduly VBA.

Následující příklad kódu ukazuje, jak klonovat modul VBA pomocí vlastnosti [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/), která vytvoří kopii existujícího projektu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
