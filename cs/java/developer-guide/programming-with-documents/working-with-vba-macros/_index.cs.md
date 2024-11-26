---
title: Práce s VBA Macros v Java
second_title: Aspose.Words místo Java
articleTitle: Práce s VBA Macros
linktitle: Práce s VBA Macros
description: "Práce s dokumentem VBA projekty využívající Java."
type: docs
weight: 410
url: /cs/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic pro aplikace (VBA) pro Microsoft Word je jednoduchý, ale výkonný programovací jazyk, který lze použít k rozšíření funkčnosti. Aspose.Words API poskytuje tři třídy pro přístup ke zdrojovému kódu projektu VBA:

- The [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) třída poskytuje přístup k informacím o projektu VBA
- The [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) třída vrací kolekci projektových modulů VBA
- The [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) třída poskytuje přístup k modulu projektu VBA

## Vytvořit projekt VBA

Aspose.Words API poskytuje [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) vlastnost získat nebo nastavit VbaProject v dokumentu.

Následující příklad kódu ukazuje, jak vytvořit VBA projekt a VBA modul spolu se základními vlastnostmi např. Název a typ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Čti Macros

Aspose.Words také poskytuje uživatelům schopnost číst makra VBA.

Následující příklad kódu ukazuje, jak číst VBA Macros z dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Změnit makros

Použití Aspose.Words, uživatelé mohou upravit VBA makra.

Následující příklad kódu ukazuje, jak upravit VBA Macros pomocí [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode) vlastnost:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Klon VBA Projekt

S Aspose.Words je také možné naklonovat projekty VBA.

Následující příklad kódu ukazuje, jak naklonovat projekt VBA pomocí [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) vlastnost, která vytváří kopii stávajícího projektu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Klon VBA Modul

V případě potřeby můžete také naklonovat VBA moduly.

Následující příklad kódu ukazuje, jak naklonovat VBA modul pomocí [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) vlastnost, která vytváří kopii stávajícího projektu

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
