---
title: Zacházení Windows Metafily v C#
second_title: Aspose.Words místo .NET
articleTitle: Zacházení Windows Metafily
linktitle: Zacházení Windows Metafily
description: "Aspose.Words místo .NET provádí vlastní Windows Metafile přehrávač pro přehrávání formátu Metafile na všech platformách a podporuje manipulaci se základními metafilními funkcemi a může provádět zálohování na jiný typ metafile přehrávače pomocí C#."
type: docs
weight: 30
url: /cs/net/handling-windows-metafiles/
timestamp: 2024-07-10-14-38-57
---

Windows Formát Metafile je formát souboru s obrázkem, který může obsahovat grafiku vektoru i rastru. Tento formát slouží k ukládání grafických dat v paměti nebo na diskových souborech. Metafile ukládá seznam volání funkcí v Windows Grafické rozhraní zařízení (GDI), které musí být provedeno pro zobrazení obrázku na obrazovce. Systém interpretuje a provádí tyto příkazy v kontextu zobrazení.

Dříve, Windows Metafile byl jediný formát vektorového obrazu podporovaný Microsoft Word. Microsoft Word nyní podporuje také formát SVG, ale formát metafilu je stále běžně používán v dokumentech Word. Metafile by také mohl být výměnným formátem pro některé další aplikace, například Microsoft Visio. V podstatě je hlavním účelem Metafile zajistit výměnu grafických informací mezi Windows žádosti.

Existují 3 verze Windows Metafile:

- Prodejny WMF volají na 16bit GDI.
- Obchody EMF volají na Win32/GDI.
- Obchody EMF+ Metafile volají na GDI+. EMF+ Metafile může být také dvojí, popisující stejnou grafiku jak s EMF, tak s EMF+ díly.

Stávající otázka Windows Metafile je, že není podporován většinou ne-Word formátů, do kterých jsou dokumenty obvykle uloženy. Proto je nutné převést formát Metafile na jiné rastrové nebo vektorové formáty. Je snadné konvertovat Windows Metafile to rastre image on .NET pouhým předáním GDI+, ale na jiných platformách to není možné, protože ani GDI+ neposkytuje funkci pro extrahování vektorové grafiky z Metafile. K vyřešení těchto problémů, Aspose.Words provádí vlastní Windows Metafile přehrávač, který je schopen přehrávat Metafile formát jak vektorové, tak rastrové grafiky na všech platformách.

## Řízení Aspose.Words Přehrávač metafilů

• [MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/) třída umožňuje ovládat přehrávač metafile. Můžete například určit, jak by měly být metafilní obrázky vykresleny pomocí [RenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/renderingmode/) vlastnost, která má zvláštní význam při převodu na bitmaps (viz také [MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/) vlastnost).

Úspora na bitmap funguje jinak na platformách jiných než .NET. Zatímco .NET GDI+ renderování je reference, která funguje téměř perfektně i pro nejkomplexnější formát metafilu, na jiných platformách může způsobit problémy nebo není podporována vůbec.

## Podpora rastrových operací

Rastrové operace jsou komplexní metafilní funkce, která má v současné době omezenou podporu. Rastrové operace jsou dostupné ve formátech WMF a EMF metafile. Formát metafilu EMF+ nepoužívá přímo rastrové operace, ale může obsahovat EMF části, zabudované WMF nebo EMF metafily.

Existují binární a trinální rastrové operace:

- Binární rastrové operace jsou aplikovány na povely kreslení pera, jako jsou kreslení čar a křivky. Při kreslení čáry se barva pera kombinuje s barvou destination bitmap (barva odpovídajícího pixelu na povrchu zařízení) pomocí zadaných bithwise logických operací s hodnotami hex barev. Příklad obrázku níže ilustruje účinek všech 16 binárních rastrových operací na 20 různých barev. Svislé barevné tyče se nakreslí jako první, po každém provedení binárního rastru se nakreslí vodorovné tyče. Pro jednoduché případy, R2_BLACK kreslí černou, R2_NOT inverzuje barvu, R2_NOP nemění pozadí a R2_WITE kreslí bílou.

<img src="/words/net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-net-1" style="width:650px"/>

- Ternary rastrové operace se uplatňují při kreslení bitmapových snímků. Kombinují barvy odpovídajících bitmap obrazových pixelů, kartáč a destinační bitmap pomocí bitwise logických operací s zadanými hodnotami barvy hex. Jedním z nejčastějších účelů využití trinálních rastrových operací je emulace transparentnosti. Obrázek uvedený v následujícím příkladu ukazuje, jak lze emulovat transparentnost ikon. Existují dva typy bitmapů: b/w maska bitmap a barevné bitmap. Za prvé, maska bitmap je kreslen s SRCAND rastr operace. Změní neprůhlednou oblast ikony na černobílou a průhlednou oblast ponechá beze změny. Pak je druhý bitmap nakreslen pomocí SRCINVERT rastrové operace. Zobrazuje barevné pixely na černé oblasti, takže transparentní oblast zůstává beze změny.

<img src="/words/net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-net-2" style="width:650px"/>

Rastrové operace nelze přímo převést na vektorovou grafiku. Aspose.Words emuluje rastrové operace tím, že částečně zostřuje povrch zařízení ovlivněný rastrovými operacemi. Za tímto účelem [EmulateRasterOperations](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/) majetek se používá.

{{% alert color="primary" %}}

Zatímco binární rastrové operace nejsou v současné době podporovány a omezený počet triterárních rastrových operací je podporován Aspose.Words, zvládne základní případy konverze na vektorovou grafiku přímo, například, R2_BLACK, R2_WITE, R2_NOP. Rasterizace povrchu zařízení také významně ovlivňuje výkon, zejména pokud jde o významný počet rastrových provozních záznamů.

{{% /alert %}}

Níže uvedený příklad ukazuje, jak Aspose.Words udělá metasoubor do bitmapu, když není možné správně převést některé záznamy metasouborů do vektorové grafiky:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cs" >}}

## Nastavení Metafile Fallback

Aspose.Words nepodporuje řadu metafilních funkcí, které jsou nejsložitější nebo vzácné. Uživatelé mohou implementovat [IWarningCallBack](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) rozhraní a přijímat varovné zprávy. Pokud Aspose.Words narazí na nepodporované funkce v metafile, vydává upozornění s [WarningSource](https://reference.aspose.com/words/net/aspose.words/warningsource/).**Metafile**. V tomto případě Aspose.Words může provést zpětný návrat do jiného typu metafile přehrávače. Vydává se také varovný signál týkající se zpětného zásahu.

Zaprvé, Aspose.Words provádí ústup z vektorového metafile přehrávače na rastr, který je řízen [RenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/renderingmode/) majetek. Je-li funkce zpětné vazby vypnuta, Aspose.Words se snaží vytvořit grafiku substituce namísto funkcí, které nejsou podporovány.

Aspose.Words úspěšně přehrává metafile rastr pomocí GDI+ on .NET, což činí tuto možnost zpětného volání bezpečnou.

Zadruhé, existuje možnost pro EMF+ Dvojitý metasoubor k ústupu z přehrávání části EMF+ do části EMF. Je řízena [EmfPlusDualRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emfplusdualrenderingmode/). Pokud se při přehrávání EMF objeví některé problémy, pak může být provedena i záloha na rastr.

Pokud jde o rastrové operace, pokud [EmulateRasterOperations](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/) je vypnutý, pak jsou rastrové operace považovány za nepodporované, což spouští zpět na bitmap metafile přehrávač, pokud je povolen. Proto, pokud máte metasoubor s rastrovými operacemi, ale nechcete použít rastrové operace emulace a přesto chcete získat vektorový výstup s substituční grafikou, pak vyberte [MetafileRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingmode/).**Vector**.
