---
title: Aktualizace polí Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Aktualizovat pole
linktitle: Aktualizovat pole
description: "Aktualizovat pole v dokumentu různými způsoby a pomocí různých možností v Python."
type: docs
weight: 30
url: /cs/python-net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Typicky, pole vložené do Microsoft Word již obsahuje aktuální hodnotu. Například pokud je pole vzorec nebo číslo stránky, bude obsahovat správnou vypočtenou hodnotu pro danou verzi dokumentu. Ale pokud máte aplikaci, která vytváří nebo modifikuje dokument s poli, jako je sloučení dvou dokumentů nebo jeho zalidnění s daty, pak musí být ideálně všechna pole aktualizována, aby byl dokument užitečný.

## Jak aktualizovat pole

Když je dokument naložen, Aspose.Words napodobuje chování Microsoft Word s možností automaticky aktualizovat pole se vypne. Chování lze shrnout následovně:

- když otevřete/zachráníte dokument, pole zůstanou neporušená
- můžete explicitně aktualizovat všechna pole v dokumentu (např. obnovit TOC), když potřebujete
- při tisku/předložení do PDF nebo XPS jsou aktualizována pole týkající se počtu stránek v hlavičkách/nozích
- při popravě Mail Merge všechna pole jsou automaticky aktualizována

### Aktualizovat pole programově

Chcete-li výslovně aktualizovat pole v celém dokumentu, jednoduše zavolejte [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). Pro aktualizaci polí obsažených v části dokumentu získáte [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) Objekt a volání [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/) metoda. In Aspose.Words, můžete získat **Range** pro každý uzel ve stromu dokumentu, jako je [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), atd. [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) majetek. Výsledek jednoho pole můžete aktualizovat voláním [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/) metoda.

### Automatická aktualizace polí souvisejících se stránkami během renderování

Pokud provedete převod dokumentu do formátu pevné stránky, např. do PDF nebo XPS, pak Aspose.Words automaticky aktualizovat pole týkající se rozložení stránky `PAGE`, `PAGEREF` nachází se v hlavičkách/nohách dokumentu. Toto chování napodobuje chování Microsoft Word při tisku dokumentu.

Pokud chcete aktualizovat všechna ostatní pole v dokumentu, pak musíte zavolat [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) před předložením dokumentu.

Následující příklad kódu ukazuje, jak aktualizovat všechna pole před vydáním dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Automatická aktualizace pole v průběhu Mail Merge

Když provedete mail merge,? všechna pole v dokumentu budou automaticky aktualizována. To proto, že Mail Merge je případ aktualizace pole. Program potká Mail Merge pole a potřebuje aktualizovat svůj výsledek, který zahrnuje uchopení hodnoty ze zdroje dat a její vložení do pole. Logika je samozřejmě složitější, například když končí dokument/mail merge Oblast je dosažena, ale ještě existují další údaje, které je třeba sloučit, pak je třeba region duplikovat a aktualizovat nový soubor polí.

## Aktualizovat pole mající špinavý atribut

W:dirty je atribut úrovně pole, který obnoví pouze pole, které určíte při otevření dokumentu. Říká MS Word pouze obnovit toto pole, až se dokument otevře příště. Můžete použít [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) vlastnost určit, zda aktualizovat pole se špinavým atributem. Pokud hodnota **update_dirty_fields** je nastavena na `True`,? všechna pole `True` hodnota [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) nebo [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) vlastnost je aktualizována při zatížení dokumentu.

Následující příklad kódu ukazuje, jak aktualizovat pole se špinavým atributem:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Aktualizace LastSavedTime Nemovitost před uložením

Můžete použít [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) vlastnost, zda aktualizovat odpovídající vestavěnou vlastnost dokumentu [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) při záchraně dokumentu.

Následující příklad kódu ukazuje, jak aktualizovat tuto vlastnost:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

