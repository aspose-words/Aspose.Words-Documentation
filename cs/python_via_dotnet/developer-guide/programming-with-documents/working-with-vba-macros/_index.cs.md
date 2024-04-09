---
title: Práce s VBA Macros Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s VBA Macros
linktitle: Práce s VBA Macros
description: "Vytvořit, číst, psát, klonovat a spravovat VBA makra v dokumentu pomocí Python."
type: docs
weight: 410
url: /cs/python-net/working-with-vba-macros/
---

Visual Basic pro aplikace (VBA) pro Microsoft Word je jednoduchý, ale výkonný programovací jazyk, který lze použít k rozšíření funkčnosti. Aspose.Words API poskytuje tři třídy pro přístup ke zdrojovému kódu projektu VBA:

- The [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) třída poskytuje přístup k informacím o projektu VBA
- The [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) třída vrací kolekci projektových modulů VBA
- The [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) třída poskytuje přístup k modulu projektu VBA
- The [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) počet definuje typy modelu v projektu VBA. Modul může být procesní modul, modul dokumentů, modul třídy nebo modul návrháře

## Vytvořit projekt VBA

Aspose.Words API poskytuje [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) vlastnost pro získání nebo nastavení [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) v dokumentu.

Následující příklad kódu ukazuje, jak vytvořit projekt VBA a modul VBA spolu se základními vlastnostmi např. [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) a [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Čti Macros

Aspose.Words také poskytuje uživatelům možnost číst VBA makra.

Následující příklad kódu ukazuje, jak číst VBA Macros z dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Napsat nebo upravit makra

Použití Aspose.Words, uživatelé mohou upravit VBA makra.

Následující příklad kódu ukazuje, jak upravit VBA Macros pomocí [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/) vlastnost:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Klon VBA Projekt

S Aspose.Words je také možné naklonovat VBA projekty.

Následující příklad kódu ukazuje, jak naklonovat projekt VBA pomocí [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) vlastnost, která vytváří kopii stávajícího projektu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Klon VBA Modul

Můžete také klonovat VBA moduly v případě potřeby.

Následující příklad kódu ukazuje, jak naklonovat VBA modul pomocí [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) vlastnost, která vytváří kopii stávajícího projektu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Práce s Referencemi projektu VBA

Aspose.Words API poskytuje [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) třída pro práci s projektem VBA Reference představující sbírku referencí na projekt VBA.

Následující příklad kódu ukazuje, jak odstranit některé odkazy ze sběru odkazů z projektu VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}