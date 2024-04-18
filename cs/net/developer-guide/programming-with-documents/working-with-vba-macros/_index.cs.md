---
title: Práce s VBA Macros C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s VBA Macros
linktitle: Práce s VBA Macros
description: "Práce s dokumentem VBA projekty využívající C#."
type: docs
weight: 410
url: /cs/net/working-with-vba-macros/
---

Visual Basic pro aplikace (VBA) pro Microsoft Word je jednoduchý, ale výkonný programovací jazyk, který lze použít k rozšíření funkčnosti. Aspose.Words API poskytuje tři třídy pro přístup ke zdrojovému kódu projektu VBA:

- The [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) třída poskytuje přístup k informacím o projektu VBA
- The [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) třída vrací kolekci projektových modulů VBA
- The [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/) třída poskytuje přístup k modulu projektu VBA
- The [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) počet definuje typy modelu v projektu VBA. Modul může být procesní modul, modul dokumentů, modul třídy nebo modul návrháře

## Vytvořit projekt VBA

Aspose.Words API poskytuje [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) vlastnost získat nebo nastavit VbaProject v dokumentu.

Následující příklad kódu ukazuje, jak vytvořit projekt VBA a modul VBA spolu se základními vlastnostmi např. Název a typ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Čti Macros

Aspose.Words také poskytuje uživatelům možnost číst VBA makra.

Následující příklad kódu ukazuje, jak číst VBA Macros z dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Napsat nebo upravit makra

Použití Aspose.Words, uživatelé mohou upravit VBA makra.

Následující příklad kódu ukazuje, jak upravit VBA Macros pomocí [SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/) vlastnost:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## Klon VBA Projekt

S Aspose.Words je také možné naklonovat VBA projekty.

Následující příklad kódu ukazuje, jak naklonovat projekt VBA pomocí [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/) vlastnost, která vytváří kopii stávajícího projektu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## Klon VBA Modul

Můžete také klonovat VBA moduly v případě potřeby.

Následující příklad kódu ukazuje, jak naklonovat VBA modul pomocí [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/) vlastnost, která vytváří kopii stávajícího projektu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## Práce s Referencemi projektu VBA

Aspose.Words API poskytuje [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) třída pro práci s projektem VBA Reference představující sbírku referencí na projekt VBA.

Následující příklad kódu ukazuje, jak odstranit některé odkazy ze sběru odkazů z projektu VBA:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}