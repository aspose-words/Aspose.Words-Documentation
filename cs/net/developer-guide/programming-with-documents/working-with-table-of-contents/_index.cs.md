---
title: Práce s obsahem C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s obsahem
linktitle: Práce s obsahem
description: "Obsah pole v detailech. Jak vytvořit a upravit `TOC` použití pole C#. Vložit `TOC` C#."
type: docs
weight: 170
url: /cs/net/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Často budete pracovat s dokumenty obsahujícími obsah (TOC). Použití Aspose.Words můžete vložit svůj vlastní obsah nebo zcela obnovit stávající obsah v dokumentu pomocí několika řádků kódu. Tento článek nastiňuje, jak pracovat s obsahem pole a ukazuje:

- Jak vložit zbrusu nový `TOC`
- Aktualizace nových nebo existujících TOC v dokumentu.
- Specifikujte přepínače pro ovládání formátování a celkové struktury f TOC.
- Jak upravit styly a vzhled obsahu.
- Jak odstranit celý `TOC` pole spolu se všemi záznamy tvoří dokument.

## Vložit obsah programově

Můžete vložit `TOC` (obsah) pole do dokumentu na aktuální pozici voláním [InsertTableOfContents](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttableofcontents/) metoda.

Tabulka obsahu v dokumentu Word lze vybudovat různými způsoby a formátovat pomocí různých možností. Pole přepíná, které přecházíte na metodu ovládání způsobu, jakým je tabulka postavena a zobrazena ve vašem dokumentu.

Výchozí spínače, které jsou použity v `TOC` vloženo do Microsoft Word jsou **"\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa**. Popisy těchto přepínačů i seznam podporovaných přepínačů naleznete později v článku. Můžete buď použít tento návod získat správné přepínače nebo pokud již máte dokument obsahující podobné `TOC` že chcete zobrazit kódy polí (*ALT+F9*) a zkopírovat přepínače přímo z pole.

Následující příklad kódu ukazuje, jak vložit pole Obsah:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-DocumentBuilderInsertTOC.cs" >}}

Následující příklad kódu ukazuje, jak vložit obsahovou tabulku (TOC) do dokumentu s použitím stylu záhlaví jako položky.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTableOfContents.cs" >}}

{{% alert color="primary" %}}

Bez metod použitých v příkladu, když otevřete výstupní dokument, najdete `TOC` pole, ale bez viditelného obsahu. To proto, že `TOC` pole bylo vloženo, ale dosud není obsazeno, dokud není aktualizováno v dokumentu. Další informace o tom jsou uvedeny v následující části.

{{% /alert %}}

## Aktualizovat Obsah

Aspose.Words umožňuje kompletně aktualizovat `TOC` s několika řádky kódu. To může být provedeno k osídlení nově vložené `TOC` nebo aktualizovat existující `TOC` po provedení změn dokumentu. Pro aktualizaci musí být použity tyto dvě metody: `TOC` Pole v dokumentu:

1. [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/)
1. [UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/updatepagelayout/)

Vezměte prosím na vědomí, že tyto dvě metody aktualizace musí být v tomto pořadí povolány. Pokud se obsah obrátí, bude obsah obsazen, ale nezobrazí se žádná čísla stránek. Lze aktualizovat libovolný počet různých TOC. Tyto metody automaticky aktualizují všechny TOC nalezené v dokumentu.

Následující příklad kódu ukazuje, jak kompletně obnovit `TOC` pole v dokumentu zavoláním aktualizace pole:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-UpdateFields.cs" >}}

První výzva **UpdateFields** bude stavět <span notrans="<span notrans=" `TOC`"=""></span>,? všechny textové záznamy jsou obsazeny a `TOC` Vypadá to skoro kompletní. Jediné, co chybí, jsou čísla stránek, které jsou nyní zobrazeny s?? Druhý hovor **UpdatePageLayout** vytvoří uspořádání dokumentu v paměti. To je třeba udělat pro shromažďování čísel stránek položek. Správná čísla stránek vypočtená z tohoto hovoru se pak vkládají do TOC.

## Použít přepínače k ovládání obsahu Chování

Stejně jako u jiných polí, `TOC` pole může přijímat přepínače definované v kódu pole, které řídí stavbu tabulky obsahu. Některé spínače se používají k ovládání, které položky jsou zahrnuty, a na jaké úrovni, zatímco jiné jsou používány pro kontrolu vzhledu TOC. Přepínače lze kombinovat dohromady tak, aby byla vytvořena složitá tabulka obsahu.

![working-with-table-of-contents-aspose-words-net](/words/net/working-with-table-of-contents/working-with-table-of-contents-1.png)


Ve výchozím nastavení jsou tyto přepínače zahrnuty při vkládání výchozí hodnoty `TOC` v dokumentu. A `TOC` bez výhybek bude obsahovat obsah vestavěných tvarů kursu (jako když je nastaven \O switch). Dostupné `TOC` přepínače, které jsou podporovány Aspose.Words jsou uvedeny níže a jejich použití je podrobně popsáno. Mohou být rozděleny do samostatných sekcí podle svého typu. Přepínače v první části definují, jaký obsah má obsahovat `TOC` a přepínače ve druhé části ovládají vzhled TOC. Pokud zde není uveden spínač, není v současné době podporován. Všechny spínače budou podporovány v budoucích verzích. S každou verzí přidáváme další podporu.

### Spínače značení vstupu

|  Přepnout | Popis zboží |
|  :-  |  :-  |
| **Heading Styles** <br/>*(\O Switch) * | <p>Tento spínač definuje, že `TOC` by měla být postavena z vestavěných tvarů kursu. In Microsoft Word jsou definovány v čísle 1 9. Aspose.Words Tyto styly jsou reprezentovány odpovídajícím stylemIdentifier počet. Tato číslice představuje lokální nezávislý identifikátor stylu, například `StyleIdentifier.Heading1` představuje styl záhlaví 1. Díky tomu lze formátování a vlastnosti stylu získat ze sbírky stylu dokumentu. Odpovídající styl třídy lze získat z `Document.Styles` sběr pomocí indexované vlastnosti typu StyleIdentifier.</p>

<p>![working-with-table-of-contents-styles](/words/net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p>

<p>Jakýkoli obsah upravený těmito styly je zahrnut v obsahu. Úroveň čísla bude definovat odpovídající hierarchickou úroveň vstupu v TOC. Například odstavec s číslem 1 bude považován za první úroveň v `TOC` zatímco odstavec s číslem 2 bude považován za další úroveň v hierarchii a tak dále.</p>
 |
| **Outline Levels** <br/>*(\U switch) * | <p>Každý odstavec může definovat úroveň obrysu podle možností odstavce.</p>

<p>![working-with-table-of-contents-paragraph](/words/net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p>

<p>Toto nastavení určuje, která úroveň tohoto odstavce by měla být zpracována v hierarchii dokumentů. To je běžně používaný postup používaný pro snadnou strukturu uspořádání dokumentu. Tuto hierarchii lze prohlížet přechodem na Outline View v Microsoft Word. Stejně jako ve stylu záhlaví, může být 1 a 9 obrysových úrovní navíc k úrovni Outline úrovně 1? 9 se objeví v `TOC` v odpovídající úrovni hierarchie <br/>Jakýkoliv obsah s obrysovou úrovní buď stanovenou v odstavci, nebo přímo na samotném odstavci je zahrnut do TOC. In Aspose.Words úroveň obrysu představuje `ParagraphFormat.OutlineLevel` vlastnictví uzel odstavce. Úroveň obrysu odstínu představuje stejným způsobem `Style.ParagraphFormat` majetek.</p>

<p>{{% alert color="primary" %}}</p>

<p>Všimněte si, že vestavěné styly kursu, jako je položka 1, mají úroveň obrysu povinnou nastavenou v nastavení stylu.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/>*(\ T switch) * | <p>Tento spínač umožní použití vlastních stylů při shromažďování položek v TOC. To se často používá ve spojení s \O přepínačem, aby zahrnoval vlastní styly spolu s vestavěným kurzovým stylem v TOC. <br/>Parametry přepínače by měly být uvedeny ve znacích řeči. Mnoho vlastní styly mohou být zahrnuty, pro každý styl by měl být uveden název následuje čárka následuje úroveň, že styl by se měl objevit v `TOC` a. Další styly jsou také odděleny čárkou. <br/>Například</p>

<p>{{< highlight csharp >}}

<p>  { TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"} </p><p>{{< /highlight >}}</p>

<p>bude používat obsah ve stylu CustomHeading1 jako obsah úrovně 1 v `TOC` a VlastníHeading2 jako úroveň 2.</p>
 |
| **Use TC Fields** <br/>*(\F a \L přepínače) * | <p>Ve starších verzích Microsoft Word, Jediný způsob, jak postavit `TOC` bylo použití TC polí. Tato pole jsou vložena do dokumentu, i když jsou zobrazeny kódy polí. Obsahují text, který by měl být zobrazen v záznamu a `TOC` je z nich postaven. Tato funkce se nyní nepoužívá velmi často, ale může být stále užitečné v některých případech zahrnout položky do `TOC` které nejsou označeny jako viditelné v dokumentu. <br/>Při vložení se tato pole objeví skrytá, i když jsou zobrazeny kódy polí. Nemůžou být vidět, aniž by ukázali skrytý obsah. Pro zobrazení těchto polí je třeba zvolit formátování odstavce.</p>

<p>![working-with-table-of-contents-paragraph-settings](/words/net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p>Tato pole mohou být vložena do dokumentu v jakékoli pozici, jako je jakékoli jiné pole a jsou zastoupena `FieldType.FieldTOCEntry` výčtu. <br/>\F přepínač v `TOC` se používá k upřesnění, že TC pole by měla být použita jako položky. Přepínač sám o sobě bez jakéhokoliv dalšího identifikátoru znamená, že bude zahrnuto jakékoliv TC pole v dokumentu. Jakýkoli další parametr, často jedno písmeno, určí, že do TOC budou zahrnuta pouze TC pole, která mají odpovídající \f switch. Například *<p>{{< highlight csharp >}}

<p>  { TOC \f t } </p><p>{{< /highlight >}}</p>

<p>budou zahrnovat pouze TC pole jako např.</p>

<p>{{< highlight csharp >}}
p> {   TC \f t }</p><p>{{< /highlight >}}</p>

<p>• `TOC` pole má také související spínač, spínač</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p>

<p>• `TC` pole sama o sobě mohou mít {several, `multiple`, a few, `many`, numerous} přepínače nastaveny. Jedná se o:</p>

<p>- Vysvětlováno výše. *</p>

<p>- *\L Ş Určuje, která úroveň v `TOC` Tohle TC pole se objeví. A `TOC` který používá stejný spínač, bude obsahovat toto TC pole pouze tehdy, pokud se nachází ve stanoveném rozsahu. *</p>

<p>- Ne. Číslování této stránky `TOC` záznam není zobrazen. Vzorový kód, jak vložit TC pole, naleznete v následující sekci.</p>
 |

### Spínače týkající se vzhledu

|  Přepnout | Popis zboží |
|  :-  |  :-  |
| **Omit Page Numbers** <br/>*(\N Switch) * | <p>Tento spínač se používá ke skrytí čísel stránek pro určité úrovně TOC. Například můžete definovat</p>

<p>{{< highlight csharp >}}
<p>  {TOC \o "1-4" \n "3-4" } </p><p>{{< /highlight >}}</p>

<p>a čísla stránek na položky úrovně 3 a čtyři budou skryty spolu s body vůdce (pokud tam jsou). Pro upřesnění pouze jedné úrovně by měl být stále použit rozsah, např. 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 3 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - 1 - <br/>Dodání žádné úrovně rozsah bude vynechat čísla stránek pro všechny úrovně v TOC. To je užitečné nastavit při exportu dokumentu do HTML nebo podobného formátu. To je proto, že formáty založené na HTML mají jakoukoliv koncepci stránky, a proto donné potřebují jakékoli číslování stránky.</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p>
 |
| **Insert As Hyperlinks** <br/>*(\H Switch) * | <p>Tento spínač udává, že `TOC` položky se vkládají jako hypertextové odkazy. Při pohledu na dokument v Microsoft Word tyto položky se stále objeví jako normální text uvnitř `TOC` but are hyperlinked and them can be used to above to the position of the original entry in the document by using *Ctrl + Left Click* in Microsoft Word. Když je tento spínač součástí, jsou tyto odkazy zachovány i v jiných formátech. Například ve formátech založených na HTML včetně EPUB a interpretovaných formátů jako PDF a XPS budou exportovány jako pracovní odkazy. <br/>Bez tohoto spínače nastavte `TOC` ve všech těchto výstupech bude exportován jako prostý text a nebude demonstrovat toto chování. Pokud je dokument otevřen v MS Word, text záznamů nebude také možné kliknout tímto způsobem, ale čísla stránek mohou být stále použita k navigaci na původní záznam.</p>

<p>![working-with-table-of-contents-titles](/words/net/working-with-table-of-contents/working-with-table-of-contents-7.png)</p>
 |
| **Set Separator Character** <br/>*(\P Switch) * | <p>Tento spínač umožňuje snadno změnit obsah oddělení názvu záznamu a číslování stránek v TOC. Oddělovač, který má být použit, by měl být specifikován za tímto přepínačem a uveden ve známkách řeči. <br/>Na rozdíl od toho, co je zdokumentováno v dokumentaci úřadu, může být použit pouze jeden znak místo až pět. To platí jak pro MS Word a Aspose.Words. <br/>Použití tohoto přepínače se nedoporučuje, protože neumožňuje mnoho kontroly nad tím, co použil k oddělení položek a čísel stránek v TOC. Místo toho se doporučuje upravit vhodné `TOC` styl jako je `StyleIdentifier.TOC1` a odtud editovat styl vůdce s přístupem ke konkrétním členům písma atd. Další podrobnosti o tom, jak to udělat, najdeme později v článku.</p>

<p>![working-with-table-of-contents-toc](/words/net/working-with-table-of-contents/working-with-table-of-contents-8.png)</p>
 |
| **Preserve Tab Entries** <br/>*(\W switch) * | <p>Pomocí tohoto přepínače se stanoví, že všechny položky, které mají znak záložky, například nadpis, který má kartu na konci řádku, budou zachovány jako správný znak karty při obsazení TOC. To znamená, že funkce znaku karty bude přítomna v `TOC` a lze jej použít pro formátování záznamu. Například některé položky mohou použít záložky a znaky záložky, aby se text rovnoměrně vyčistil. Tak dlouho jako odpovídající `TOC` úroveň definuje ekvivalentní kartu zastaví pak generované `TOC` položky se objeví s podobným odstupem. <br/><br/>Ve stejné situaci, pokud tento přepínač nebyl definován, pak by znaky záložky byly převedeny na bílý prostor ekvivalentní jako nefunkční karty. Výstup by pak nevypadal podle očekávání.</p>

<p>![working-with-table-of-contents-aspose](/words/net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p>
 |
| **Preserve New Line Entries** <br/>*(\ X Switch) * | <p>Podobně jako výše uvedený přepínač, tento spínač udává, že položky, které se pohybují přes více řádků (pomocí nových řádkových znaků, které nejsou odděleny odstavci), budou zachovány, protože jsou ve generovaném TOC. Například nadpis, který se má šířit přes více řádků, může použít nový znak řádku (Ctrl + Enter nebo `ControlChar.LineBreak`) oddělit obsah přes různé řádky. S tímto přepínačem uvedeným, položka v `TOC` zachová tyto nové znaky, jak je uvedeno níže. <br/><br/>V této situaci, pokud není spínač definován, pak jsou nové znaky řádku převedeny na jediný bílý prostor.</p>

<p>![working-with-table-of-contents-aspose-words](/words/net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p>
 |

## Vložit TC pole

Nové TC pole můžete vložit do aktuální polohy [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) voláním [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) způsob a uvedení názvu pole jako

Následující příklad kódu ukazuje, jak vložit `TC` pole do dokumentu pomocí **DocumentBuilder**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCField-DocumentBuilderInsertTCField.cs" >}}

Často je zvláštní text určen pro `TOC` a je označena `TC` pole. Jednoduchý způsob, jak to udělat Microsoft Word je zvýraznit text a stisknout *ALT+SHIFT+O*. To automaticky vytvoří a `TC` pole pomocí vybraného textu. Stejnou techniku lze provést pomocí kódu. Níže uvedený kód najde text odpovídající vstupu a vloží `TC` pole ve stejné poloze s textem. Kód je založen na stejné technice používané v článku.

Následující příklad kódu ukazuje, jak najít a vložit `TC` pole v textu v dokumentu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cs" >}}

## Upravit obsah

Formátování záznamů v `TOC` nepoužívejte původní styly označených položek, místo toho je každá úroveň formátována podle ekvivalentních `TOC` Styl. Například první úroveň v `TOC` je formátován pomocí **TOC1** styl, druhá úroveň formátovaná s **TOC2** Styl a tak dále. To znamená, že změnit vzhled `TOC` Tyto styly musí být upraveny. In Aspose.Words Tyto styly jsou zastoupeny locale nezávislé `StyleIdentifier.TOC1` až do `StyleIdentifier.TOC9` a lze získat z [Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) sběr pomocí těchto identifikátorů.

Jakmile je příslušný styl dokumentu načten formátování pro tento styl lze upravit. Veškeré změny těchto stylů se automaticky odrazí na TOC v dokumentu.

Následující příklad kódu mění vlastnost formátování použitou v první úrovni `TOC` styl:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cs" >}}

Je také užitečné poznamenat, že jakékoli přímé formátování odstavce (definované v samotném odstavci a nikoli ve stylu), které mají být zahrnuty `TOC` bude zkopírován v záznamu v TOC. Například pokud je pro označení obsahu použit styl čísla 1 `TOC` a tento styl má odvážný formátování, zatímco odstavec má také kurzívu formátování přímo aplikovat na něj. Výsledek `TOC` vstup nebude troufalý, protože to je součástí formátování stylu, ale bude to kurzíva, jak je to přímo formátováno v odstavci.

Můžete také ovládat formátování oddělovačů použitých mezi jednotlivými položkami a číslem stránky. Ve výchozím nastavení se jedná o tečkovanou čáru, která je rozložena do číslování stránky pomocí znakové karty a pravé záložky zastavit seřazené v blízkosti správného okraje.

Použití [Style](https://reference.aspose.com/words/net/aspose.words/style/) třída získaná pro konkrétní `TOC` úroveň, kterou chcete upravit, můžete také upravit, jak se objeví v dokumentu. Abych změnil, jak to vypadá, [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/style/paragraphformat/) musí být vyzván k získání odstavce formátování pro styl. Z toho lze záložka zastavit pomocí volání [TabStops](https://reference.aspose.com/words/net/aspose.words/paragraphformat/tabstops/) a odpovídajícím zastavením karty. Pomocí stejné techniky lze kartu přesunout nebo odstranit společně.

Následující příklad kódu ukazuje, jak upravit pozici pravé karty zastavit v `TOC` související odstavce:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cs" >}}

## Odstranit obsah dokumentu

Obsah lze z dokumentu odstranit odstraněním všech uzlů nalezených mezi `FieldStart` a FieldEnd uzel `TOC` pole. Níže uvedený kód to dokazuje. Odstranění `TOC` pole je jednodušší než normální pole, protože nesledujeme hnízdiště. Místo toho zkontrolujeme [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) Uzel typu [FieldType.FieldTOC](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) Což znamená, že jsme se setkali s koncem současného TOC. Tato technika může být použita v tomto případě bez obav o vnořená pole, protože můžeme předpokládat, že žádný řádně vytvořený dokument nebude mít plně hnízdit `TOC` pole uvnitř jiného `TOC` pole.

Nejprve [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) uzly každého `TOC` jsou shromažďovány a skladovány. Zadané `TOC` je pak vyjmenován, takže všechny uzly v poli jsou navštíveny a uloženy. Uzely jsou pak z dokumentu odstraněny.

Následující příklad kódu ukazuje, jak odstranit zadané `TOC` z dokumentu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cs" >}}

## Obsah výpisu

Pokud chcete z jakéhokoli dokumentu Word extrahovat tabulku obsahu, lze použít tento vzorek kódu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ExtractTableOfContents-ExtractTableOfContents.cs" >}}
