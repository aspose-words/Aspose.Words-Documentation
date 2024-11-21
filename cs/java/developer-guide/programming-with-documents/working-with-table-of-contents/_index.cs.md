---
title: Práce s obsahem Java
second_title: Aspose.Words místo Java
articleTitle: Práce s obsahem
linktitle: Práce s obsahem
description: "Obsah pole v detailech. Jak vytvořit a upravit `TOC` použití pole Java."
type: docs
weight: 170
url: /cs/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Často budete pracovat s dokumenty obsahujícími obsah (TOC). Použití Aspose.Words můžete vložit vlastní tabulku obsahu nebo kompletně obnovit stávající tabulku obsahu v dokumentu pomocí několika řádků kódu.

Tento článek nastiňuje, jak pracovat s obsahem pole a ukazuje:

- Jak vložit nový TOC.
- Aktualizovat nové nebo stávající TOC v dokumentu.
- Specifikujte přepínače pro ovládání formátování a celkové struktury TOC.
- Jak upravit styly a vzhled obsahu.
- Jak odstranit celý `TOC` pole spolu se všemi záznamy z dokumentu.

## Vložit obsah programově

Můžete vložit `TOC` (obsah) pole do dokumentu na aktuální pozici voláním [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) metoda.

Tabulka obsahu v dokumentu Word lze vytvořit několika způsoby a formátovat pomocí různých možností. Pole přepíná, které přecházíte na metodu ovládání způsobu, jakým je tabulka postavena a zobrazena ve vašem dokumentu.

Výchozí spínače, které jsou použity v `TOC` vloženo do Microsoft Word jsou **"To je ono**. Popisy těchto přepínačů a seznam podporovaných přepínačů naleznete později v článku. Můžete buď použít tento návod k získání správných přepínačů nebo pokud již máte dokument obsahující podobné `TOC` že chcete zobrazit kódy polí (*ALT+F9*) a zkopírovat přepínače přímo z pole.

Následující příklad kódu ukazuje, jak vložit pole Obsah:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

Následující příklad kódu ukazuje, jak vložit tabulku obsahu (TOC) do dokumentu s použitím stylů záhlaví jako položky:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

Kód ukazuje, že nová tabulka obsahu je vložena do prázdného dokumentu. The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) třída se pak používá k vložení určitého obsahu vzorku formátování s příslušnými styly záhlaví, které se používají k označení obsahu, který má být zařazen do TOC. Další linie pak zalidnit `TOC` aktualizací polí a rozložení stránky dokumentu.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Bez metod použitých v příkladu, když otevřete výstupní dokument, najdete `TOC` pole, ale bez viditelného obsahu. To proto, že `TOC` pole bylo vloženo, ale dosud není obsazeno, dokud není aktualizováno v dokumentu. Další informace o tom jsou diskutovány v následující části.

{{% /alert %}}

## Aktualizovat Obsah

Aspose.Words umožňuje kompletně aktualizovat `TOC` jen pár řádků kódu. To se dá udělat, aby se nově vložené populace `TOC` nebo aktualizovat existující `TOC` po provedení změn dokumentu.

Pro aktualizaci musí být použity tyto dvě metody: `TOC` Pole v dokumentu:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Upozorňujeme, že tyto dvě metody aktualizace musí být v tomto pořadí volány. V případě obrácení tabulky obsahu bude obsazena, ale nezobrazí se žádná čísla stránek. Lze aktualizovat libovolný počet různých TOC. Tyto metody automaticky aktualizují všechny TOC nalezené v dokumentu.

Následující příklad kódu ukazuje, jak kompletně obnovit `TOC` pole v dokumentu zavoláním aktualizací polí:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

První hovor [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) bude stavět <span notrans="<span notrans=" `TOC`"=""></span>, všechny textové záznamy jsou obsazeny a `TOC` Vypadá to skoro kompletní. Jediné, co chybí, jsou čísla stránek, které jsou nyní zobrazeny s??

Druhý hovor [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) vytvoří uspořádání dokumentu v paměti. To je třeba udělat pro shromažďování čísel stránek záznamů. Správná čísla stránky vypočtená z tohoto hovoru se pak vloží do TOC.

## Použít přepínače k ovládání obsahu Chování

Stejně jako u jiných polí, `TOC` pole může přijmout přepínače definované v kódu pole, které řídí, jak je obsah postaven. Některé spínače se používají k řízení, které položky jsou zahrnuty, a na jaké úrovni, zatímco ostatní jsou používány pro kontrolu vzhledu TOC. Přepínače lze kombinovat dohromady, aby se vytvořila složitá tabulka obsahu.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


Ve výchozím nastavení jsou tyto přepínače zahrnuty při vkládání výchozí hodnoty `TOC` v dokumentu. A `TOC` bez výhybek bude obsahovat obsah ze vestavěných stylů (jako když je nastaven \O switch).

Dostupné `TOC` přepínače, které jsou podporovány Aspose.Words jsou uvedeny níže a jejich použití je podrobně popsáno. Mohou být rozděleny do samostatných sekcí podle svého typu. Přepínače v první části definují, jaký obsah má obsahovat `TOC` a přepínače ve druhém úseku ovládají vzhled TOC.

Pokud zde není uveden spínač, není v současné době podporován. Všechny přepínače budou podporovány v budoucích verzích. Přidáváme další podporu každému vydání.

### Spínače vstupních značek

|  Přepnout | Popis zboží |
|  :-  |  :-  |
| **Heading Styles** <br/> *(\O Switch) * <br/> | <p>Tento spínač definuje, že `TOC` by měly být postaveny mimo vestavěný směrový styl. In Microsoft Word, jsou definovány v čísle 1 9. Aspose.Words tyto styly jsou reprezentovány odpovídajícím stylemIdentifier počet. Tato číslice představuje lokální nezávislý identifikátor stylu, například: `StyleIdentifier.Heading1` představuje styl záhlaví 1. Díky tomu lze formátování a vlastnosti stylu získat ze sbírky stylu dokumentu. Odpovídající styl třídy lze získat z `Document.Styles` sběr pomocí indexované vlastnosti typu StyleIdentifier.</p>

<p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p>

<p><br/><br/>Jakýkoli obsah upravený těmito styly je zahrnut v obsahu. Úroveň záhlaví bude definovat odpovídající hierarchickou úroveň vstupu v TOC. Například odstavec s číslem 1 bude považován za první úroveň v `TOC` Zatímco odstavec s číslem 2 bude považován za další úroveň v hierarchii a tak dále.</p>
 |
| **Outline Levels** <br/> *(\U switch) * <br/> | <p>Každý odstavec může definovat úroveň obrysu podle možností odstavce.</p>

<p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p>

<p><br/><br/>Toto nastavení určuje, která úroveň by měla být v hierarchii dokumentu upravena. Jedná se o běžně používanou praxi používanou pro snadnou strukturu uspořádání dokumentu. Tuto hierarchii lze prohlížet přechodem na Outline View Microsoft Word. Podobně jako ve stylu záhlaví, může být kromě úrovně "Body Text" 1 a 9 obrysových úrovní. Východiska úrovně 1 a 9 se objeví v `TOC` v odpovídající úrovni hierarchie <br/>Jakýkoliv obsah s obrysovou úrovní buď stanovenou v odstavci, nebo přímo na samotném odstavci je zahrnut do TOC. In Aspose.Words úroveň obrysu představuje `ParagraphFormat.OutlineLevel` vlastnictví uzel odstavce. Nastavovací úroveň odstínu představuje stejným způsobem `Style.ParagraphFormat` majetek.</p>

<p>{{% alert color="primary" %}}</p>

<p>Všimněte si, že vestavěné styly záhlaví, jako je položka 1, mají úroveň obrysu povinnou nastavenou v nastavení stylu.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/> *(\ T switch) * <br/> | <p>Tento spínač umožní použití vlastních stylů při shromažďování položek v TOC. Často se používá ve spojení s \O přepínačem, aby zahrnoval vlastní styly spolu s vestavěným kurzovým stylem v TOC. <br/>Parametry přepínače by měly být uvedeny ve znacích řeči. Mnoho vlastních stylů může být zahrnuto, pro každý styl, název by měl být uveden následuje čárka následuje úroveň, že styl by se měl objevit v `TOC` a. Další styly jsou také odděleny čárkou. <br/>Například</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>bude používat obsah ve stylu CustomHeading1 jako obsah úrovně 1 v `TOC` a CustomHeading2 jako úroveň 2.</p>
 |
| Použít TC pole <br/> *(\F a \L přepínače) * <br/> | <p>Ve starších verzích Microsoft Word, Jediný způsob, jak postavit `TOC` bylo použití TC polí. Tato pole jsou vložena do dokumentu, i když jsou zobrazeny kódy polí. Zahrnuje text, který by měl být zobrazen v záznamu a `TOC` je z nich postaven. Tato funkce se nyní nepoužívá velmi často, ale může být stále užitečné v některých případech zahrnout položky do `TOC` které nejsou označeny jako viditelné v dokumentu. <br/>Při vložení se tato pole objeví skrytá i při zobrazení kódů polí. Nemůžou být vidět, aniž by ukázali skrytý obsah. Pro zobrazení těchto polí je třeba zvolit formátování odstavce.</p>

<p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p>

<p>Tato pole mohou být vložena do dokumentu v jakékoli pozici, jako je jakékoli jiné pole a jsou zastoupena `FieldType.FieldTOCEntry` výčtu.<br/>\F přepínač v `TOC` se používá k upřesnění, že TC pole by měla být použita jako položky. Přepínač sám o sobě bez jakéhokoliv dalšího identifikátoru znamená, že bude zahrnuto jakékoliv TC pole v dokumentu. Jakýkoli další parametr, často jedno písmeno, určí, že do TOC budou zahrnuta pouze TC pole, která mají odpovídající \f switch. Například *</p>

<p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p>

<p>budou zahrnovat pouze TC pole jako např.</p>

<p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p>

<p>The `TOC` pole má také související spínač, spínač</p>

<p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p>

<p><br/><br/>The `TC` Pole sama o sobě mohou mít {several, `multiple`, a few, `many`, numerous} přepínače nastaveny. Jedná se o:</p>

<p>- Vysvětlováno výše. *</p>

<p>Určuje, na jaké úrovni `TOC` Tohle TC pole se objeví. A `TOC` který používá stejný spínač, bude obsahovat toto TC pole pouze tehdy, pokud se nachází ve stanoveném rozsahu.</p>

<p>- Ne. Číslování této stránky `TOC` záznam není zobrazen. Vzorový kód, jak vložit TC pole, naleznete v následující sekci.</p>
 |

### Spínače týkající se vzhledu

|  Přepnout | Popis zboží |
|  :-  |  :-  |
| **Omit Page Numbers** <br/> *(\N Switch) * | <p>Tento spínač se používá ke skrytí čísel stránek pro určité úrovně TOC. Například, můžete definovat</p>

<p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>a čísla stránek na položky úrovně 3 a čtyři budou skryty spolu s body vůdce (pokud existují). Pro upřesnění pouze jedné úrovně by měl být stále použit rozsah, například ~1-1 ~1 - ~ bude vyloučeno číslo stránky pouze pro první úroveň. <br/>Dodání žádné úrovně rozsah bude vynechat čísla stránek pro všechny úrovně v TOC. To je užitečné nastavit při exportu dokumentu do HTML nebo podobného formátu. To je proto, že formáty založené na HTML nemají žádnou koncepci stránky, a proto donnot potřebují jakékoliv číslování stránky.</p>

<p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p>
 |
| Vložit jako hypertextové odkazy <br/> *(\H Switch) * | <p>Tento spínač udává, že `TOC` položky se vkládají jako hypertextové odkazy. Při pohledu na dokument Microsoft Word tyto položky se stále objeví jako normální text uvnitř `TOC` ale jsou hyperlinkované a lze je tedy použít k navigaci do polohy původního záznamu v dokumentu pomocí *Ctrl + Left Click* v Microsoft Word. Pokud je tento spínač součástí, pak jsou tyto odkazy zachovány i v jiných formátech. Například ve formátech založených na HTML, včetně EPUB a interpretovaných formátů jako PDF a XPS, budou exportovány jako pracovní odkazy. <br/>Bez tohoto přepínače `TOC` ve všech těchto výstupech bude exportován jako prostý text a nebude demonstrovat toto chování. Pokud je dokument otevřen v MS Word, text záznamů nebude také možné kliknout tímto způsobem, ale čísla stránek mohou být stále použita k navigaci na původní záznam.</p>

<p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p>
 |
| **Set Separator Character** <br/> *(\P Switch) * <br/> | <p>Tento přepínač umožňuje snadno změnit obsah oddělení názvu záznamu a číslování stránek v TOC. Oddělovač, který má být použit, by měl být za tímto přepínačem uveden a uveden ve známkách řeči. <br/>Na rozdíl od toho, co je zdokumentováno v dokumentaci úřadu, může být použit pouze jeden znak namísto pěti. To platí jak pro MS Word a Aspose.Words. <br/>Použití tohoto přepínače se nedoporučuje, protože neumožňuje mnoho kontroly nad tím, co použil k oddělení položek a čísel stránek v TOC. Místo toho se doporučuje upravit vhodné `TOC` styl, jako je `StyleIdentifier.TOC1` a odtud editovat styl vůdce s přístupem ke konkrétním členům písma atd. Další podrobnosti o tom, jak to udělat, najdeme později v článku.</p>

<p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p>
 |
| **Preserve Tab Entries** <br/> *(\W Switch) * | <p>Pomocí tohoto přepínače bude uvedeno, že všechny položky, které mají znak záložky, například nadpis, který má kartu na konci řádku, budou zachovány jako správný znak karty při zalidnění TOC. To znamená, že funkce znaku karty bude přítomna v `TOC` a lze jej použít pro formátování záznamu. Například některé položky mohou použít záložky a znaky záložky k rovnoměrnému vyškrtnutí textu. Tak dlouho jako odpovídající `TOC` úroveň definuje ekvivalentní kartu zastaví pak generované `TOC` položky se objeví s podobným odstupem. <br/><br/>Ve stejné situaci, pokud tento přepínač nebyl definován, pak by znaky záložky byly převedeny na bílý ekvivalent místa jako nefunkční záložky. Výstup by pak nevypadal podle očekávání.</p>

<p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p>
 |
| **Preserve New Line Entries** <br/> *(\ X Switch) * <br/> | <p>Podobně jako výše uvedený přepínač, tento spínač udává, že položky sahající přes více řádků (pomocí nových znaků, nikoli samostatných odstavců) budou zachovány tak, jak jsou ve generovaném TOC. Například nadpis, který se má šířit přes více řádků, může použít nový znak řádku (Ctrl + Enter nebo `ControlChar.LineBreak`) oddělit obsah přes různé řádky. S tímto přepínačem stanoveným, položka v `TOC` zachová tyto nové znaky, jak je uvedeno níže. <br/><br/>V této situaci, pokud přepínač není definován, pak nové znaky řádku jsou převedeny na jediný bílý prostor.</p>

<p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p>
 |

## Vložit pole TC

Nové TC pole můžete vložit do aktuální polohy `DocumentBuilder` voláním `DocumentBuilder.InsertField` způsob a uvedení názvu pole jako

Následující příklad kódu ukazuje, jak vložit `TC` pole do dokumentu pomocí [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

Často je zvláštní text určen pro `TOC` a je označena `TC` pole. Snadný způsob, jak to udělat v MS Word je zvýraznit text a stisknout *ALT+SHIFT+O*. To automaticky vytvoří a `TC` pole pomocí vybraného textu. Stejnou techniku lze provést pomocí kódu. Níže uvedený kód najde text odpovídající vstupu a vloží `TC` pole ve stejné pozici jako text. Kód je založen na stejné technice používané v článku. Následující příklad kódu ukazuje, jak najít a vložit `TC` pole v textu v dokumentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Upravit obsah

### Změnit formátování stylů

Formátování záznamů v `TOC` nepoužívá původní styly označených položek, místo toho je každá úroveň formátována za použití rovnocenného `TOC` Styl. Například první úroveň `TOC` je formátován s **TOC1** styl, druhá úroveň formátovaná s **TOC2** styl a tak dále. To znamená, že změnit vzhled `TOC` Tyto styly musí být upraveny. In Aspose.Words Tyto styly jsou reprezentovány locale-nezávislý `StyleIdentifier.TOC1` až do `StyleIdentifier.TOC9` a lze získat z `Document.Styles` sběr pomocí těchto identifikátorů.

Jakmile bude příslušný styl dokumentu vybrán, formátování tohoto stylu lze upravit. Veškeré změny těchto stylů se automaticky projeví v TOC v dokumentu.

Následující příklad kódu mění vlastnost formátování použitou v první úrovni `TOC` Styl.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

Je rovněž užitečné poznamenat, že jakékoli přímé formátování odstavce (definované v samotném odstavci a nikoli ve stylu), které mají být zahrnuty do `TOC` bude zkopírován v záznamu v TOC. Například, pokud se používá styl záhlaví 1 k označení obsahu `TOC` a tento styl má odvážný formátování, zatímco odstavec má také kurzívu formátování přímo aplikovat na něj. Výsledek `TOC` vstup nebude troufalý, protože je součástí formátování stylu, ale bude italický, protože je přímo formátován na odstavci.

Můžete také ovládat formátování oddělovačů použitých mezi jednotlivými položkami a číslem stránky. Ve výchozím nastavení se jedná o tečkovanou čárku, která je rozložena do číslování stránky pomocí znakové karty a pravé záložky zastavit seřazené v blízkosti správného okraje.

Použití `Style` třída získaná pro konkrétní `TOC` úroveň, kterou chcete upravit, můžete také upravit, jak se objeví v dokumentu.

Abych změnil, jak to vypadá, `Style.ParagraphFormat` musí být vyzván, aby získal odstavec formátování pro styl. Z toho lze záložka zastavit voláním `ParagraphFormat.TabStops` a odpovídajícím zastavením karty. Pomocí stejné techniky lze kartu úplně přesunout nebo úplně odstranit.

Následující příklad kódu ukazuje, jak upravit pozici pravé záložky zastavit v `TOC` související odstavce.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Odstranit obsah dokumentu

Obsah lze z dokumentu odstranit odstraněním všech uzlů nalezených mezi `FieldStart` a FieldEnd uzel `TOC` pole.

Níže uvedený kód to dokazuje. Odstranění `TOC` pole je jednodušší než normální pole, protože nesledujeme hnízdiště. Místo toho zkontrolujeme `FieldEnd` Uzel typu `FieldType.FieldTOC` Což znamená, že jsme narazili na konec současného TOC. Tato technika může být použita v tomto případě bez obav o vnořená pole, protože můžeme předpokládat, že žádný řádně vytvořený dokument nebude mít plně hnízdit `TOC` pole uvnitř jiného `TOC` pole.

Zaprvé: `FieldStart` uzly každého `TOC` jsou shromažďovány a skladovány. Zadané `TOC` je pak vyjmenován, takže všechny uzly v poli jsou navštíveny a uloženy. Uzely jsou pak z dokumentu odstraněny. Následující příklad kódu ukazuje, jak odstranit zadané `TOC` z dokumentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## Obsah výpisu

Pokud chcete z jakéhokoli dokumentu Word extrahovat tabulku obsahu, můžete použít následující vzorek kódu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
