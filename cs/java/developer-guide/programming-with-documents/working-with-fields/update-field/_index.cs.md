---
title: Aktualizovat pole v Java
second_title: Aspose.Words místo Java
articleTitle: Aktualizovat pole
linktitle: Aktualizovat pole
description: "Naučte se aktualizovat pole v Java. Aktualizovat pole programově nebo používat automatickou aktualizaci pole pomocí Java API"
type: docs
weight: 30
url: /cs/java/update-field/
timestamp: 2024-01-27-14-07-04
---

Typicky, pole vložené do Microsoft Word již obsahuje aktuální hodnotu. Například pokud je pole vzorec nebo číslo stránky, bude obsahovat správnou vypočtenou hodnotu pro danou verzi dokumentu. Ale pokud máte aplikaci, která vytváří nebo modifikuje dokument s poli, jako je sloučení dvou dokumentů nebo jeho zalidnění s daty, pak musí být ideálně všechna pole aktualizována, aby byl dokument užitečný.

## Jak aktualizovat pole

Při načtení dokumentu, Aspose.Words napodobuje chování Microsoft Word s možností automaticky aktualizovat pole se vypne. Chování lze shrnout takto:

- když otevřete/zachráníte dokument, pole zůstanou neporušená
- můžete explicitně aktualizovat všechna pole v dokumentu, např. obnovit `TOC` když potřebujete
- při tisku/předložení do PDF nebo XPS jsou aktualizována pole týkající se počtu stran v hlavičkách/nozích
- při popravě mail merge všechna pole jsou automaticky aktualizována

### Aktualizovat pole programově

Chcete-li výslovně aktualizovat pole v celém dokumentu, stačí zavolat [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) metoda. Pro aktualizaci polí obsažených v části dokumentu získáte [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) Objekt a volání [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) metoda. In Aspose.Words, můžete získat **Range** pro jakýkoli uzel ve stromu dokumentu, jako je [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), atd. [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) majetek. Můžete aktualizovat výsledek jednoho pole voláním [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) metoda.

### Automatická aktualizace polí souvisejících se stránkami během renderování

Pokud provedete konverzi dokumentu na formát pevné stránky, např. na PDF nebo XPS, pak Aspose.Words bude automaticky aktualizovat pole týkající se rozložení stránky `PAGE`, `PAGEREF` nalezeno v hlavičkách/nohách dokumentu. Toto chování napodobuje chování Microsoft Word při tisku dokumentu.

Pokud chcete aktualizovat všechna ostatní pole v dokumentu, pak musíte zavolat [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) před předložením dokumentu.

Následující příklad ukazuje, jak aktualizovat všechna pole před vydáním dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Automatická aktualizace pole během Mail Merge

Když provedete <span notrans="<span notrans=" mail merge"=""></span>, všechna pole v dokumentu budou automaticky aktualizována. To proto, že mail merge je případ aktualizace pole. Program potká mail merge pole a potřebuje aktualizovat svůj výsledek, který zahrnuje uchopení hodnoty ze zdroje dat a její vložení do pole. Logika je samozřejmě složitější, například když končí dokument/mail merge region je dosažen, ale stále existují další údaje, které je třeba sloučit, pak je třeba region duplikovat a aktualizovat nový soubor polí.

## Aktualizovat pole s špinavým atributem

W:dirty je atribut úrovně pole, který obnoví pouze pole, které určíte při otevření dokumentu. Říká MS Word pouze obnovit toto pole, až bude dokument otevřen. Můžete použít vlastnost LoadOptions.setUpdateDirtyFields() k určení, zda má pole aktualizovat s špinavým atributem. Je-li hodnota LoadOptions.setUpdateDirtyFields() nastavena na <span notrans="<span notrans=" *true*"=""></span>, všechna pole s *true* hodnota pro `Field.IsDirty` nebo `FieldChar.IsDirty` vlastnost je aktualizována při zatížení dokumentu

Následující příklad kódu ukazuje, jak aktualizovat pole se špinavým atributem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Update LastSavedTime Property Before Saving

Můžete použít [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) vlastnost, zda aktualizovat odpovídající vestavěnou vlastnost dokumentu [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) při záchraně dokumentu.

Následující příklad kódu ukazuje, jak aktualizovat tuto vlastnost:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
