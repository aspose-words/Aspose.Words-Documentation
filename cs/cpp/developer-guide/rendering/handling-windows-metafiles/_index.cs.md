---
title: Manipulace s Windows Metafiles v C++
second_title: Aspose.Words pro C++
articleTitle: Manipulace S Metasoubory Windows
linktitle: Manipulace S Metasoubory Windows
description: "Aspose.Words pro C++ implementuje svůj vlastní Windows Metafile player pro přehrávání formátu Metafile na všech platformách a podporuje manipulaci se základními funkcemi metafile a může provádět záložní řešení pro jiný typ přehrávače metafile."
type: docs
weight: 30
url: /cs/cpp/handling-windows-metafiles/
timestamp: 2024-01-30-16-22-34
---

Windows Formát Metafile je formát obrazového souboru, který může obsahovat vektorovou i rastrovou grafiku. Tento formát se používá k ukládání grafických dat do paměti nebo souborů na disku. Metafile ukládá seznam volání funkcí v rozhraní grafického zařízení Windows (GDI), které musí být provedeno, aby se zobrazil obrázek na obrazovce. Systém interpretuje a provádí tyto příkazy v kontextu zobrazení.

Dříve byl metasoubor Windows jediným formátem vektorového obrázku podporovaným Microsoft Word. Microsoft Word nyní také podporuje formát SVG, ale formát metafile se stále běžně používá v dokumentech Word. Metafile může být také výměnným formátem pro některé další aplikace, například Microsoft Visio. Hlavním účelem Metafile je v zásadě zajistit výměnu grafických informací mezi aplikacemi Windows.

Existují 3 verze Windows Metafile:

- WMF - obchody volají na 16bit GDI.
- EMF - obchody volají na Win32 / GDI.
- EMF + Metafile ukládá volání na GDI+. EMF+ Metafile může být také duální a popisuje stejnou grafiku s částmi EMF I EMF+.

Existující problém s Windows Metafile spočívá v tom, že není podporován většinou formátů jiných nežWord, do kterých se obvykle ukládají dokumenty. Proto je nutné převést formát Metafile na jiné rastrové nebo vektorové formáty. Je snadné převést Windows Metafile na rastrový obrázek na .NET jednoduchým předáním do GDI+, ale na jiných platformách to není možné, protože ani GDI+ neposkytuje funkci pro extrahování vektorové grafiky z Metafile. K vyřešení těchto problémů Aspose.Words implementuje svůj vlastní Windows Metafile player, který je schopen přehrávat formát Metafile jak vektorovou, tak rastrovou grafiku na všech platformách.

## Ovládání přehrávače Metasouborů Aspose.Words

Třída [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/) vám umožňuje ovládat přehrávač metafile. Můžete například určit, jak by měly být obrázky metafile vykresleny pomocí vlastnosti [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/), která má zvláštní význam při převodu na bitmapy (viz také vlastnost [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/)).

Ukládání do bitmapy funguje jinak na jiných platformách než .NET. Zatímco .NET GDI+ rendering je reference, která funguje téměř dokonale i pro nejsložitější formát metasouboru, na jiných platformách může způsobit problémy nebo nemusí být vůbec podporována.

## Podpora Rastrových Operací

Rastrové operace je komplexní metafile funkce, která má v současné době omezenou podporu. Rastrové operace jsou k dispozici ve formátech metasouboru WMF a EMF. Formát metasouboru EMF + nepoužívá přímo rastrové operace, ale může obsahovat části EMF, Vložené metasoubory WMF nebo EMF.

Existují binární a ternární rastrové operace:

- Binární rastrové operace se aplikují na příkazy kreslení perem, jako jsou čáry kreslení a křivky. Při kreslení čáry je barva pera kombinována s cílovou bitmapovou barvou (barva odpovídajícího pixelu na povrchu zařízení) pomocí specifikovaných bitových logických operací s hodnotami hex barev. Příklad obrázku níže ilustruje účinek všech 16 binárních rastrových operací aplikovaných na 20 různých barevných pruhů. Nejprve se nakreslí svislé barevné pruhy, vodorovné pruhy se nakreslí po každé binární rastrové operaci. Pro jednoduché případy R2_BLACK kreslí černou, R2_NOT převrací barvu, R2_NOP nemění pozadí a R2_WHITE kreslí bílou.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- Ternární rastrové operace se používají při kreslení bitmapových obrázků. Kombinují barvy odpovídajících bitmapových obrazových pixelů, štětce a cílové bitmapy pomocí bitových logických operací se zadanými hodnotami hexadecimálních barev. Jedním z nejběžnějších účelů použití ternárních rastrových operací je emulace transparentnosti. Obrázek uvedený v níže uvedeném příkladu ukazuje, jak lze emulovat průhlednost ikon. Existují dva typy bitmap: bitmapa B / w masky a barevná bitmapa. Nejprve se pomocí rastrové operace SRCAND nakreslí bitmapa masky. Změní oblast neprůhledné ikony na černobílou a průhlednou oblast ponechá beze změny. Poté se nakreslí druhá bitmapa pomocí rastrové operace SRCINVERT. Zobrazuje barevné pixely v černé oblasti a ponechává průhlednou oblast beze změny.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

Rastrové operace nelze přímo převést na vektorovou grafiku. Aspose.Words emuluje rastrové operace částečnou rastrováním povrchu zařízení ovlivněného rastrovými operacemi. Pro tento účel se používá vlastnost [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/).

{{% alert color="primary" %}}

Zatímco binární rastrové operace nejsou v současné době podporovány a omezený počet ternárních rastrových operací je podporován Aspose.Words, zvládne základní případy převodu na vektorovou grafiku přímo, například, R2_BLACK, R2_WHITE, R2_NOP. Rasterizace povrchu zařízení také významně ovlivňuje výkon, zejména pokud se jedná o značný počet záznamů o rastrových operacích.

{{% /alert %}}

Níže uvedený příklad ukazuje, jak Aspose.Words vykresluje metafile na bitmapu, když není možné správně vykreslit některé záznamy metafile do vektorové grafiky:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## Nastavení Záložního Souboru Metafile

Aspose.Words nepodporuje řadu funkcí metafile, které jsou nejsložitější nebo vzácné. Uživatelé mohou implementovat rozhraní [IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) a přijímat varovné zprávy. Pokud Aspose.Words narazí na nepodporované funkce v metafile, vydá varovnou zprávu s [WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/).**Metafile**. V tomto případě Aspose.Words může provést záložní na jiný typ metafile přehrávače. Je také vydána varovná zpráva týkající se nouzového stavu.

Za prvé, Aspose.Words provádí záložní z přehrávače vektorových metafile na rastr, který je řízen vlastností [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/). Pokud je funkce fallback zakázána, Aspose.Words se pokusí vykreslit nějakou substituční grafiku místo funkcí, které nejsou podporovány.

Aspose.Words úspěšně přehraje metafile na rastr pomocí GDI+ na .NET, což činí tuto možnost zpětného volání bezpečnou.

Za druhé, existuje možnost, že EMF + duální metafile ustoupí od přehrávání části EMF+ na část EMF. Je řízen [EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/). Pokud se při přehrávání části EMF vyskytnou nějaké problémy, může být také provedeno záložní rastr.

Pokud jde o rastrové operace, pokud je [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) deaktivován, pak jsou rastrové operace považovány za nepodporované, což spustí záložní Bitmapový metafile player, pokud je povolen. Pokud tedy máte metasoubor s rastrovými operacemi, ale nechcete používat emulaci rastrových operací a přesto chcete získat vektorový výstup s substituční grafikou, vyberte [MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/).**Vector**.
