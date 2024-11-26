---
title: Aktualizovat pole C#
second_title: Aspose.Words místo .NET
articleTitle: Aktualizovat pole
linktitle: Aktualizovat pole
description: "Naučte se aktualizovat pole v C#. Aktualizovat pole programově nebo používat automatickou aktualizaci pole pomocí .NET API."
type: docs
weight: 30
url: /cs/net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Typicky, pole vložené do Microsoft Word již obsahuje aktuální hodnotu. Například pokud je pole vzorec nebo číslo stránky, bude obsahovat správnou vypočtenou hodnotu pro danou verzi dokumentu. Ale pokud máte aplikaci, která vytváří nebo modifikuje dokument s poli, jako je sloučení dvou dokumentů nebo jeho zalidnění s daty, pak musí být ideálně všechna pole aktualizována, aby byl dokument užitečný.

## Jak aktualizovat pole

Když je dokument naložen, Aspose.Words napodobuje chování Microsoft Word s možností automaticky aktualizovat pole se vypne. Chování lze shrnout následovně:

- když otevřete/zachráníte dokument, pole zůstanou neporušená
- můžete explicitně aktualizovat všechna pole v dokumentu, například obnovit `TOC`, když potřebujete
- při tisku/předložení do PDF nebo XPS jsou aktualizována pole týkající se počtu stránek v hlavičkách/nozích
- při popravě Mail Merge všechna pole jsou automaticky aktualizována

### Aktualizovat pole programově

Chcete-li výslovně aktualizovat pole v celém dokumentu, stačí zavolat [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) metoda. Pro aktualizaci polí obsažených v části dokumentu získáte [Range](https://reference.aspose.com/words/net/aspose.words/range/) Objekt a volání [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/) metoda. In Aspose.Words, můžete získat **Range** pro každý uzel ve stromu dokumentu, jako je [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) , [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), atd. [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) majetek. Výsledek jednoho pole můžete aktualizovat voláním [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/) metoda.

### Automatická aktualizace polí souvisejících se stránkami během renderování

Pokud provedete převod dokumentu do formátu pevné stránky, např. do PDF nebo XPS, pak Aspose.Words automaticky aktualizovat pole týkající se rozložení stránky `PAGE`, `PAGEREF` nachází se v hlavičkách/nohách dokumentu. Toto chování napodobuje chování Microsoft Word při tisku dokumentu.

Pokud chcete aktualizovat všechna ostatní pole v dokumentu, pak musíte zavolat [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) před předložením dokumentu.

Následující příklad kódu ukazuje, jak aktualizovat všechna pole před vydáním dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Automatická aktualizace pole v průběhu Mail Merge

Když provedete mail merge,? všechna pole v dokumentu budou automaticky aktualizována. To proto, že Mail Merge je případ aktualizace pole. Program potká Mail Merge pole a potřebuje aktualizovat svůj výsledek, který zahrnuje uchopení hodnoty ze zdroje dat a její vložení do pole. Logika je samozřejmě složitější, například když končí dokument/mail merge Oblast je dosažena, ale ještě existují další údaje, které je třeba sloučit, pak je třeba region duplikovat a aktualizovat nový soubor polí.

## Aktualizovat pole mající špinavý atribut

W:dirty je atribut úrovně pole, který obnoví pouze pole, které určíte při otevření dokumentu. Říká MS Word pouze obnovit toto pole, až se dokument otevře příště. Můžete použít [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) vlastnost určit, zda aktualizovat pole se špinavým atributem. Pokud hodnota **UpdateDirtyFields** je nastavena na *true*? všechna pole *true* hodnota [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) nebo [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) vlastnost je aktualizována při zatížení dokumentu.

Následující příklad kódu ukazuje, jak aktualizovat pole se špinavým atributem:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Aktualizace LastSavedTime Nemovitost před uložením

Můžete použít [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) vlastnost, zda aktualizovat odpovídající vestavěnou vlastnost dokumentu [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) při záchraně dokumentu.

Následující příklad kódu ukazuje, jak aktualizovat tuto vlastnost:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
