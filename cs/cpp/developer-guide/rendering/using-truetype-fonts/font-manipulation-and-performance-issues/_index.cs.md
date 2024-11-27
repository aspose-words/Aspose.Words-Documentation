---
title: Manipulace s Písmem a problémy s výkonem v C++
second_title: Aspose.Words pro C++
articleTitle: Manipulace s Písmem a problémy s výkonem
linktitle: Manipulace s Písmem a problémy s výkonem
description: "Aspose.Words pro C++ používá celé jméno písma, příjmení, verzi, styl k nalezení požadovaných dat písma nebo vhodné náhrady požadovaného písma. FontSettings umožňuje urychlit načítání dokumentů."
type: docs
weight: 11
url: /cs/cpp/font-manipulation-and-performance-issues/
timestamp: 2024-09-24-14-35-44
---

Všechny dostupné mechanismy manipulace s písmy jsou obsaženy ve třídě [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings). Tato třída je zodpovědná za načítání písem v rámci definovaných zdrojů písem a také za proces nahrazování písem, jak je popsáno níže.

## Analýza vyřešených písem

Písma jsou analyzována v několika krocích:

1. Získání informací pro písmo, řešení ze všech dostupných písem.
1. Analýza vyřešených písem pro získání dostupných glyfů a metrik (horizontální a vertikální).
1. Analýza vyřešených písem pro vkládání a podmnožství.

Když Aspose.Words narazí na písmo v dokumentu poprvé, pokusí se získat základní informace o písmu, jako je celé jméno písma, příjmení, verze, styl, ze souborů písem umístěných v každém zdroji písma. Po načtení všech písem Aspose.Words použije tyto podrobnosti k nalezení požadovaných dat písma nebo vhodné náhrady požadovaného písma.

## Problém S Výkonem Při Výměně Písem

Vzhledem k tomu, že výše popsaný postup je časově náročný, může negativně ovlivnit výkon aplikace při prvním spuštění. Každá instance **FontSettings** má však svou vlastní mezipaměť, což by mohlo zkrátit dobu zpracování následujících dokumentů. Můžete například sdílet instanci třídy **FontSettings** mezi různými dokumenty, což vám umožní urychlit načítání dokumentů. Následující příklad to ukazuje:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

V případě, že **FontSettings** není explicitně definován, Aspose.Words použije výchozí instanci **FontSettings**. Tato instance je také automaticky sdílena mezi dokumenty a lze ji extrahovat následujícím způsobem:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## Použití výchozí Instance FontSettings

Pokud jste si jisti, že všechny dokumenty pro zpracování vyžadují stejné nastavení písma, doporučujeme nastavit a použít výchozí instanci **FontSettings**. Předpokládejme, že pro všechny dokumenty musíte použít stejné zdroje písma. V takovém případě můžete výchozí instanci změnit následujícím způsobem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

Vlastní **FontSettings** mají vyšší prioritu než výchozí instance.

{{% /alert %}}
