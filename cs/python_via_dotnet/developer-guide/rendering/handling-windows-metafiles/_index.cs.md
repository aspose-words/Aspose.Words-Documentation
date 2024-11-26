---
title: Zacházení Windows Metafily
second_title: Aspose.Words místo Python via .NET
articleTitle: Zacházení Windows Metafily
linktitle: Zacházení Windows Metafily
description: "Aspose.Words místo Python via .NET provádí vlastní Windows Metafile přehrávač pro přehrávání formátu Metafile na všech platformách a podporuje manipulaci se základními metafile funkcemi a může provádět zálohování na jiný typ metafile přehrávače."
type: docs
weight: 30
url: /cs/python-net/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Windows Formát Metafile je formát souboru s obrázkem, který může obsahovat grafiku vektoru i rastru. Tento formát slouží k ukládání grafických dat v paměti nebo na diskových souborech. Metafile ukládá seznam volání funkcí v Windows Grafické rozhraní zařízení (GDI), které musí být provedeno pro zobrazení obrázku na obrazovce. Systém interpretuje a provádí tyto příkazy v kontextu zobrazení.

Dříve, Windows Metafile byl jediný formát vektorového obrazu podporovaný Microsoft Word. Microsoft Word nyní podporuje také formát SVG, ale formát metafilu je stále běžně používán v dokumentech Word. Metafile by také mohl být výměnným formátem pro některé další aplikace, například Microsoft Visio. V podstatě je hlavním účelem Metafile zajistit výměnu grafických informací mezi Windows žádosti.

Existují 3 verze Windows Metafile:

- Prodejny WMF volají na 16bit GDI.
- Obchody EMF volají na Win32/GDI.
- Obchody EMF+ Metafile volají na GDI+. EMF+ Metafile může být také dvojí, popisující stejnou grafiku jak s EMF, tak s EMF+ díly.

Stávající otázka Windows Metafile je, že není podporován většinou ne-Word formátů, do kterých jsou dokumenty obvykle uloženy. Proto je nutné převést formát Metafile na jiné rastrové nebo vektorové formáty. Je snadné konvertovat Windows Metafile to rastre image on .NET pouhým předáním GDI+, ale na jiných platformách to není možné, protože ani GDI+ neposkytuje funkci pro extrahování vektorové grafiky z Metafile. K vyřešení těchto problémů, Aspose.Words provádí vlastní Windows Metafile přehrávač, který je schopen přehrávat Metafile formát jak vektorové, tak rastrové grafiky na všech platformách.

## Řízení Aspose.Words Přehrávač metafilů

• [MetafileRenderingOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/) třída umožňuje ovládat přehrávač metafile. Můžete například určit, jak by měly být metafilní obrázky vykresleny pomocí [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/) vlastnost, která má zvláštní význam při převodu na bitmaps (viz také [ImageSaveOptions.metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/) vlastnost).

Úspora na bitmap funguje jinak na platformách jiných než .NET. Zatímco .NET GDI+ renderování je reference, která funguje téměř perfektně i pro nejkomplexnější formát metafilu, na jiných platformách může způsobit problémy nebo není podporována vůbec.

## Podpora rastrových operací

Rastrové operace jsou komplexní metafilní funkce, která má v současné době omezenou podporu. Rastrové operace jsou dostupné ve formátech WMF a EMF metafile. Formát metafilu EMF+ nepoužívá přímo rastrové operace, ale může obsahovat EMF části, zabudované WMF nebo EMF metafily.

Existují binární a trinální rastrové operace:

- Binární rastrové operace jsou aplikovány na povely kreslení pera, jako jsou kreslení čar a křivky. Při kreslení čáry se barva pera kombinuje s barvou destination bitmap (barva odpovídajícího pixelu na povrchu zařízení) pomocí zadaných bithwise logických operací s hodnotami hex barev. Příklad obrázku níže ilustruje účinek všech 16 binárních rastrových operací na 20 různých barev. Svislé barevné tyče se nakreslí jako první, po každém provedení binárního rastru se nakreslí vodorovné tyče. Pro jednoduché případy, R2_BLACK kreslí černou, R2_NOT inverzuje barvu, R2_NOP nemění pozadí a R2_WITE kreslí bílou.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-net-1" style="width:650px"/>

- Ternary rastrové operace se uplatňují při kreslení bitmapových snímků. Kombinují barvy odpovídajících bitmap obrazových pixelů, kartáč a destinační bitmap pomocí bitwise logických operací s zadanými hodnotami barvy hex. Jedním z nejčastějších účelů využití trinálních rastrových operací je emulace transparentnosti. Obrázek uvedený v následujícím příkladu ukazuje, jak lze emulovat transparentnost ikon. Existují dva typy bitmapů: b/w maska bitmap a barevné bitmap. Za prvé, maska bitmap je kreslen s SRCAND rastr operace. Změní neprůhlednou oblast ikony na černobílou a průhlednou oblast ponechá beze změny. Pak je druhý bitmap nakreslen pomocí SRCINVERT rastrové operace. Zobrazuje barevné pixely na černé oblasti, takže transparentní oblast zůstává beze změny.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-net-2" style="width:650px"/>

Rastrové operace nelze přímo převést na vektorovou grafiku. Aspose.Words emuluje rastrové operace tím, že částečně zostřuje povrch zařízení ovlivněný rastrovými operacemi. Za tímto účelem [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) majetek se používá.

{{% alert color="primary" %}}

Zatímco binární rastrové operace nejsou v současné době podporovány a omezený počet triterárních rastrových operací je podporován Aspose.Words, zvládne základní případy konverze na vektorovou grafiku přímo, například, R2_BLACK, R2_WITE, R2_NOP. Rasterizace povrchu zařízení také významně ovlivňuje výkon, zejména pokud jde o významný počet rastrových provozních záznamů.

{{% /alert %}}

Níže uvedený příklad ukazuje, jak Aspose.Words udělá metasoubor do bitmapu, když není možné správně převést některé záznamy metasouborů do vektorové grafiky:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir +  "Rendering.docx")

metafileRenderingOptions = aw.saving.MetafileRenderingOptions()
metafileRenderingOptions.emulate_raster_operations = False
metafileRenderingOptions.rendering_mode = aw.saving.MetafileRenderingMode.VECTOR_WITH_FALLBACK

saveOptions = aw.saving.PdfSaveOptions()
saveOptions.metafile_rendering_options = metafileRenderingOptions

doc.save(docs_base.artifacts_dir +"PdfSaveOptions.HandleRasterWarnings.pdf", saveOptions)
{{< /highlight >}}

## Nastavení Metafile Fallback

Aspose.Words nepodporuje řadu metafilních funkcí, které jsou nejsložitější nebo vzácné. V tomto případě Aspose.Words může provést zpětný návrat do jiného typu metafile přehrávače

Zaprvé, Aspose.Words provádí ústup z vektorového metafile přehrávače na rastr, který je řízen [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/) majetek. Je-li funkce zpětné vazby vypnuta, Aspose.Words se snaží vytvořit grafiku substituce namísto funkcí, které nejsou podporovány.

Aspose.Words úspěšně přehrává metafile rastr pomocí GDI+ on .NET, což činí tuto možnost zpětného volání bezpečnou.

Zadruhé, existuje možnost pro EMF+ Dvojitý metasoubor k ústupu z přehrávání části EMF+ do části EMF. Je řízena [emf_plus_dual_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emf_plus_dual_rendering_mode/). Pokud se při přehrávání EMF objeví některé problémy, pak může být provedena i záloha na rastr.

Pokud jde o rastrové operace, pokud [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) je vypnutý, pak jsou rastrové operace považovány za nepodporované, což spouští zpět na bitmap metafile přehrávač, pokud je povolen. Proto, pokud máte metasoubor s rastrovými operacemi, ale nechcete použít rastrové operace emulace a přesto chcete získat vektorový výstup s substituční grafikou, pak vyberte [MetafileRenderingMode.VECTOR](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingmode/#vector).
