---
title: Aktualizovat pole v C++
second_title: Aspose.Words pro C++
articleTitle: Aktualizovat Pole
linktitle: Aktualizovat Pole
description: "Přečtěte si, jak aktualizovat pole v C++. Aktualizujte pole programově nebo použijte automatickou aktualizaci pole pomocí C++ API."
type: docs
weight: 30
url: /cs/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

Pole vložené do Microsoft Word obvykle již obsahuje aktuální hodnotu. Pokud je například pole Vzorec nebo číslo stránky, bude obsahovat správnou vypočítanou hodnotu pro danou verzi dokumentu. Pokud však máte aplikaci, která generuje nebo upravuje dokument pomocí polí, jako je sloučení dvou dokumentů nebo jeho naplnění daty, musí být v ideálním případě všechna pole aktualizována, aby byl dokument užitečný.

## Jak aktualizovat pole

Když je dokument načten, Aspose.Words napodobuje chování Microsoft Word s možností automatické aktualizace polí je vypnuta. Chování lze shrnout následovně:

- když otevřete / uložíte dokument, pole zůstanou nedotčena
- můžete explicitně aktualizovat všechna pole v dokumentu, například znovu vytvořit `TOC`, když potřebujete
- při vykreslení do PDF nebo XPS se aktualizují pole související s číslováním stránek v záhlaví/zápatí
- při spuštění Mail Merge se všechna pole aktualizují automaticky

### Programově Aktualizovat Pole

Chcete-li explicitně aktualizovat pole v celém dokumentu, jednoduše zavolejte metodu [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/). Chcete-li aktualizovat pole obsažená v části dokumentu, získejte objekt [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) a zavolejte metodu [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/). V Aspose.Words můžete získat **Range** pro libovolný uzel ve stromu dokumentů, například [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), atd. použití vlastnosti [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/).Výsledek jednoho pole můžete aktualizovat voláním metody [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/).

### Automatická aktualizace polí souvisejících se stránkami během Vykreslování

Když provedete převod dokumentu do formátu s pevnou stránkou, např. do PDF nebo XPS, pak Aspose.Words automaticky aktualizuje pole související s rozložením stránky `PAGE`, `PAGEREF` nalezená v záhlaví/zápatí dokumentu. Toto chování napodobuje chování Microsoft Word při tisku dokumentu.

Pokud chcete aktualizovat všechna ostatní pole v dokumentu, musíte před vykreslením dokumentu zavolat [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/).

Následující příklad kódu ukazuje, jak aktualizovat všechna pole před vykreslením dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Automatická Aktualizace Pole Během Mail Merge

Když spustíte mail merge, všechna pole v dokumentu budou automaticky aktualizována. Je to proto, že Mail Merge je případ aktualizace pole. Program narazí na pole Mail Merge a potřebuje aktualizovat svůj výsledek, což zahrnuje uchopení hodnoty ze zdroje dat a její vložení do pole. Logika je samozřejmě složitější, například když je dosaženo konce oblasti dokumentu/mail merge, ale stále existují další data, která mají být sloučena, pak je třeba oblast duplikovat a aktualizovat novou sadu polí.

## Před Uložením Aktualizujte Vlastnost LastSavedTime

Můžete použít vlastnost [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/), zda chcete při ukládání dokumentu aktualizovat odpovídající vestavěnou vlastnost dokumentu [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/).

Následující příklad kódu ukazuje, jak tuto vlastnost aktualizovat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


