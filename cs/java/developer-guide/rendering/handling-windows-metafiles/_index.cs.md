---
title: Zacházení Windows Metafily v Java
second_title: Aspose.Words místo Java
articleTitle: Zacházení Windows Metafily
linktitle: Zacházení Windows Metafily
description: "Aspose.Words místo Java provádí vlastní Windows Metafile player pro přehrávání formátu Metafile na všech platformách a podporuje manipulaci se základními metafile funkcemi a může provádět zálohování na jiný typ metafile přehrávače."
type: docs
weight: 30
url: /cs/java/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Windows Formát Metafile je formát souboru obrázku, který může obsahovat jak vektorovou grafiku, tak rastrovou grafiku. Tento formát slouží k ukládání grafických dat v paměti nebo na diskových souborech. Metafile ukládá seznam volání funkcí v Windows Grafické rozhraní zařízení (GDI), které musí být provedeno pro zobrazení obrázku na obrazovce. Systém interpretuje a provádí tyto příkazy v kontextu zobrazení.

Dříve, Windows Metafile byl jediný formát vektorového obrazu podporovaný Microsoft Word. Microsoft Word nyní také podporuje formát SVG, ale formát metafile je stále běžně používán v dokumentech Word. Metafile může být také výměnným formátem pro některé další aplikace, například Microsoft Visio. V podstatě je hlavním účelem Metafile zajistit výměnu grafických informací mezi Windows žádosti.

Existují 3 verze Windows Metafile:

- WMF obchody volají na 16bit GDI.
- EMF obchody volají na Win32/GDI.
- Obchody EMF+ Metafile volají na GDI+. EMF+ Metafile může být také dvojí, což popisuje stejnou grafiku jak s EMF, tak s EMF+ díly.

Stávající otázka Windows Metafile je, že není podporován většinou neword formátů, do kterých jsou dokumenty obvykle uloženy. Proto je nutné převést formát Metafile na jiné rastrové nebo vektorové formáty. Je snadné konvertovat Windows Metafile na rastrovém obrázku .NET pouhým předáním GDI+, ale není možné na jiných platformách, protože ani GDI+ neposkytuje funkci pro extrahování vektorové grafiky z Metafile. K vyřešení těchto problémů, Aspose.Words provádí vlastní Windows Metafile přehrávač, který je schopen přehrávat Metafile formát jak vektorové i rastrové grafiky na všech platformách.

## Řízení Aspose.Words Přehrávač metafilů

The [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) třída umožňuje ovládat přehrávač metafile. Můžete například určit, jak by měly být metafilní obrázky vykresleny pomocí [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) vlastnost, která má zvláštní význam při převodu na bitmaps (viz také [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) vlastnost).

## Podpora rastrových operací

Rastrové operace jsou komplexní metafilní funkce, která má v současné době omezenou podporu. Rastrové operace jsou k dispozici ve formátech WMF a EMF metafile. Formát metasouboru EMF+ nepoužívá přímo rastrové operace, ale může obsahovat EMF části, zabudované WMF nebo EMF metafily.

Existují binární a trinální rastrové operace:

- Binární rastrové operace jsou aplikovány na příkazy kreslení pera, jako jsou kreslení čar a křivky. Při kreslení čáry je barva pera kombinována s barvou destination bitmap (barva odpovídajícího pixelu na povrchu zařízení) pomocí zadaných bithwise logických operací s hodnotami hex barev. Příklad obrázku níže ilustruje účinek všech 16 binárních rastrových operací používaných na 20 různých barevných tyčí. Svislé barevné tyče se nakreslí jako první, po každém provedení binárního rastru se nakreslí vodorovné tyče. Pro jednoduché případy, R2_BLACK kreslí černou, R2- Ne inverzuje barvu. R2_NOP nemění pozadí a R2_WHITE kreslí bílé.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- Ternary rastrové operace se uplatňují při kreslení bitmapových snímků. Kombinují barvy odpovídajících bitmap obrazových pixelů, kartáč a destination bitmap pomocí bitwise logických operací s zadanými hodnotami hex barev. Jedním z nejčastějších účelů využití trinálních rastrových operací je emulace transparentnosti. Obrázek uvedený v následujícím příkladu ukazuje, jak lze emulovat transparentnost ikon. Existují dva typy bitmapů: b/w maska bitmapu a barevného bitmapu. Za prvé, maska bitmap je kreslena pomocí SRCAND rastr operace. Změní neprůhlednou oblast ikony na černobílou a průhlednou oblast ponechá beze změny. Pak je druhý bitmap nakreslen pomocí SRCINVERT rastrové operace. Zobrazuje barevné pixely na černé oblasti, přičemž transparentní oblast zůstává beze změny.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

Rastrové operace nelze přímo převést na vektorovou grafiku. Aspose.Words emuluje rastrové operace částečným zostřením povrchu zařízení postiženého rastrovými operacemi. Za tímto účelem [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) majetek se používá.

{{% alert color="primary" %}}

Zatímco binární rastrové operace nejsou v současné době podporovány a omezený počet triterárních rastrových operací je podporován Aspose.Words, může zvládnout základní případy konverze na vektorovou grafiku přímo, například, R2_BLACK, R2_WHITE, R2_NOP. Také zostření povrchu zařízení významně ovlivňuje výkon, zejména pokud jde o významný počet rastrových provozních záznamů.

{{% /alert %}}

Níže uvedený příklad ukazuje, jak Aspose.Words provede metasoubor do bitmapu, pokud není možné správně převést některé záznamy metasouborů do vektorové grafiky:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
