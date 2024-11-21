---
title: Vybraný obsah mezi uzely v Java
second_title: Aspose.Words místo Java
articleTitle: Extrahovat obsah mezi uzely v dokumentu
linktitle: Obsah výpisu mezi uzely
type: docs
description: "Extrahování obsahu dokumentu v jiném použití Java."
weight: 140
url: /cs/java/extract-selected-content-between-nodes/
timestamp: 2024-01-27-14-07-04
---

Při práci s dokumenty je důležité, aby bylo možné snadno extrahovat obsah z určitého rozsahu v dokumentu. Obsah se však může skládat ze složitých prvků, jako jsou odstavce, tabulky, obrázky atd.

Bez ohledu na to, jaký obsah je třeba extrahovat, metoda extrahování tohoto obsahu bude vždy určena podle toho, které uzly jsou vybrány k získání obsahu mezi. Mohou to být celé textové těla nebo jednoduché textové runy.

Existuje mnoho možných situací, a proto mnoho různých typů uzlů zvážit při získávání obsahu. Například můžete chtít extrahovat obsah mezi:

- Dva konkrétní odstavce
- Specifické průběhy textu
- Pole různých typů, jako například pole sloučení
- Start a konec rozsahu záložky nebo komentář
- Různé části textu obsažené v oddělených sekcích

V některých situacích můžete dokonce potřebovat kombinovat různé typy uzlů, jako je například získávání obsahu mezi odstavcem a polem, nebo mezi spuštěním a záložkou.

Tento článek poskytuje implementaci kódu pro získávání textu mezi různými uzly, stejně jako příklady běžných scénářů.

{{% alert color="primary" %}}

Tyto příklady jsou jen několika ukázkami mnoha možností. Plánujeme, že funkce extrakce textu bude součástí veřejnosti API v budoucnu, a žádný další kód nebude nutné. Mezitím, neváhejte umístit své požadavky týkající se této funkce na [Aspose.Words fórum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Proč obsah extraktu

Často je cílem extrakce obsahu duplikovat nebo uložit samostatně v novém dokumentu. Například můžete extrahovat obsah a:

- Zkopírovat do samostatného dokumentu
- Převést určitou část dokumentu na PDF nebo obrázek
- Duplikovat obsah v dokumentu mnohokrát
- Práce s extrahovaným obsahem odděleně od zbytku dokumentu

Toho lze snadno dosáhnout použitím Aspose.Words a provádění kódu níže.

## Extrakční obsah Algoritmus

Kód v tomto oddíle se zabývá všemi možnými výše popsanými situacemi jednou zobecněnou metodou a metodou opětovného použití. Obecný obrys této techniky zahrnuje:

1. Shromažďování uzlů, které diktují obsah, který bude extrahován z vašeho dokumentu. Získávání těchto uzlů je řízeno uživatelem v jejich kódu, na základě toho, co chtějí být extrahovány.
1. Předání těchto uzlů do **ExtractContent** metoda uvedená níže. Musíte také projít boolean parametr, který uvádí, zda tyto uzly, působící jako markery, by měly být zahrnuty do extrakce nebo ne.
1. Získávání seznamu klonovaného obsahu (kopírovaných uzlů), který má být extrahován. Tento seznam uzlů můžete použít jakýmkoli způsobem, například vytvoření nového dokumentu obsahujícího pouze vybraný obsah.

## Jak extrahovat obsah

V tomto článku budeme pracovat s níže uvedeným dokumentem. Jak můžete vidět, obsahuje celou řadu obsahu. Dokument také obsahuje druhou část začínající uprostřed první stránky. Záložka a komentář jsou také uvedeny v dokumentu, ale nejsou viditelné v screenshotu níže.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

Pro získání obsahu z vašeho dokumentu musíte zavolat `ExtractContent` metoda níže a předat příslušné parametry.

Základem této metody je nalezení uzlů na úrovni bloků (odstavce a tabulky) a jejich klonování za účelem vytvoření stejných kopií. Pokud jsou prošlé značkovací uzly blokovou úrovní, pak je metoda schopna jednoduše zkopírovat obsah na této úrovni a přidat jej do pole.

Nicméně, pokud jsou markerové uzly inline (dítě odstavce) pak se situace stává složitější, protože je nutné rozdělit odstavec na inline uzlu, ať už je to běh, záložky pole atd. Obsah klonovaných mateřských uzlů, které nejsou přítomny mezi markery, se odstraní. Tento proces se používá k zajištění toho, aby inline uzly stále zachovaly formátování základního odstavce.

Metoda bude také provádět kontroly uzlů, které prošly jako parametry, a hodit výjimku, pokud je buď uzel neplatný. Parametry, které mají být předány této metodě jsou:

1. **StartNode** a **EndNode**. Prvními dvěma parametry jsou uzly, které definují, kde má být extrakce obsahu zahájena a končí. Tyto uzly mohou být oba blokové úrovně ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) , [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) ) nebo inline úroveň (např. [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) , [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) , [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) atd.:
   1. Chcete-li projít pole byste měli projít odpovídající **FieldStart** objekt.
   1. Chcete-li projít záložky, **BookmarkStart** a [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) Uzel by měl projít.
   1. Chcete-li předat připomínky, [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) a [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) Měly by se používat uzly.
1. **IsInclusive**. Určuje, zda jsou značky zahrnuty do extrakce nebo nikoli. Pokud je tato volba nastavena false a projdou stejným uzlem nebo po sobě jdoucími uzly, poté bude vrácen prázdný seznam:

      1. Pokud a **FieldStart** Uzel je schválen a tato volba definuje, zda má být celé pole zahrnuto nebo vyloučeno.
      1. Pokud a **BookmarkStart** nebo **BookmarkEnd** Uzel je schválen, tato volba definuje, zda je záložka zahrnuta nebo pouze obsah mezi záložek rozsah.
      1. Pokud a **CommentRangeStart** nebo **CommentRangeEnd** Uzel je předán, tato volba definuje, zda má být komentář sám o sobě zahrnut nebo pouze obsah v rozsahu komentáře.

Provádění **ExtractContent** metoda, kterou můžete najít [Tady](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). Tato metoda bude uvedena ve scénářích uvedených v tomto článku.

Budeme také definovat vlastní metodu snadno generovat dokument z extrahovaných uzlů. Tato metoda se používá v mnoha níže uvedených scénářích a jednoduše vytváří nový dokument a do něj dováží extrahovaný obsah.

Následující příklad kódu ukazuje, jak vzít seznam uzlů a vloží je do nového dokumentu:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Obsah výpisu mezi odstavci

To ukazuje, jak použít výše uvedenou metodu k získání obsahu mezi konkrétními odstavci. V tomto případě chceme získat tělo dopisu nalezeného v první polovině dokumentu. Můžeme říci, že to je mezi 7. a 11. odstavci.

Tento úkol plní následující kód. Příslušné odstavce jsou extrahovány pomocí [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) metoda na dokumentu a předání stanovených indexů. Pak předáme tyto uzly do **ExtractContent** metoda a uvést, že tyto jsou zahrnuty do extrakce. Tato metoda vrátí zkopírovaný obsah mezi tyto uzly, které jsou pak vloženy do nového dokumentu.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi konkrétními odstavci pomocí `ExtractContent` metoda výše:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Výstupový dokument obsahuje dva odstavce, které byly extrahovány.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## Obsah výpisu mezi různými typy uzlů

Můžeme extrahovat obsah mezi libovolnými kombinacemi blokové nebo inline uzlů. V následujícím scénáři budeme extrahovat obsah mezi prvním odstavcem a tabulkou v druhé části včetně. Dostaneme značkovací uzly voláním [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) a [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) metoda na druhém oddíle dokumentu pro získání vhodného **Paragraph** a **Table** uzly. Pro mírnou variaci nechť místo toho zdvojí obsah a vloží jej pod originál.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi odstavcem a tabulkou pomocí **ExtractContent** metoda:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Obsah mezi odstavcem a tabulkou byl duplikován níže je výsledek.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## Obsah výpisu mezi odstavci Na základě stylu

Možná budete muset extrahovat obsah mezi odstavci stejného nebo odlišného stylu, například mezi odstavci označenými stylu záhlaví.

Níže uvedený kód ukazuje, jak toho dosáhnout. Jedná se o jednoduchý příklad, který bude extrahovat obsah mezi prvními instancemi hlavice 1 a 1 a 3, bez extrahování čísel. K tomu nastavíme poslední parametr na false, který určuje, že by neměly být zahrnuty značkovací uzly.

Ve správném provedení by to mělo probíhat ve smyčce, aby se z dokumentu získal obsah mezi všemi odstavci těchto stylů. Extrahovaný obsah je zkopírován do nového dokumentu.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi odstavci se specifickými styly pomocí **ExtractContent** metoda:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Níže je výsledek předchozí operace.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## Obsah výpisu mezi konkrétními výsledky

Můžete extrahovat obsah mezi inline uzly, jako je **Run** Taky. **Runs** z různých odstavců lze předat jako markery. Níže uvedený kód ukazuje, jak extrahovat konkrétní text mezi stejným **Paragraph** Uzel.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi konkrétními výsledky stejného odstavce pomocí **ExtractContent** metoda:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Na konzoli je zobrazen extrahovaný text

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## Obsah výpisu pomocí pole

Pro použití pole jako značky, `FieldStart` Uzel by měl projít. Poslední parametr k `ExtractContent` metoda definuje, zda má být celé pole zahrnuto nebo nikoli. Nechť extrahují obsah mezi polem sloučení FullName a odstavcem v dokumentu. Používáme [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) třída. Tohle vrátí **FieldStart** Uzel od jména pole sloučení přešel na něj.

V našem případě nechť nastavit poslední parametr přešel na **ExtractContent** metoda false vyloučit pole z těžby. Vytěžíme obsah do PDF.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi určitým polem a odstavcem v dokumentu pomocí **ExtractContent** metoda:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Extrahovaný obsah mezi polem a odstavcem bez pole a bodových značkovacích uzlů do PDF.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## Extrahovat obsah ze záložky

V dokumentu je obsah definovaný v záložce zapouzdřen `BookmarkStart` a záložku End uzly. Obsah nalezený mezi těmito dvěma uzly tvoří záložku. Obou z těchto uzlů můžete předat jako jakýkoli marker, a to i ty z různých záložek, pokud se startovní značka objeví před koncovou značkou v dokumentu.

V našem ukázkovém dokumentu máme jednu záložku s názvem "Záložka 1." Obsah této záložky je zdůrazněn v našem dokumentu:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

Tento obsah budeme extrahovat do nového dokumentu pomocí níže uvedeného kódu. The **IsInclusive** možnost parametru ukazuje, jak záložku uchovávat nebo vyřadit.

Následující příklad kódu ukazuje, jak extrahovat obsah odkazovaný na záložku pomocí **ExtractContent** metoda:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Extrahovaný výstup s `IsInclusive` parametr nastavený na true. Kopie si také ponechá záložku.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

Extrahovaný výstup s **IsInclusive** parametr nastavený na false. Kopie obsahuje obsah, ale bez záložky.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## Extrahovat obsah z komentáře

Komentář se skládá z CommentRangeStart, CommentRangeEnd a Komentovat uzly. Všechny tyto uzly jsou inline. První dva uzly zapoutají obsah v dokumentu, na který odkazuje komentář, jak je vidět ve screenshotu níže.

The **Comment** Uzel sám o sobě je [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) který může obsahovat odstavce a běží. Představuje poselství komentáře, jak je vnímáno jako komentační bublina v tabulce recenze. Vzhledem k tomu, že tento uzel je inline a potomek těla můžete také extrahovat obsah zevnitř této zprávy.

V našem dokumentu máme jednu poznámku. Nechť ji zobrazí zobrazením markupu v záložce Review:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

V komentáři je uveden nadpis, první odstavec a tabulka ve druhém oddíle. Nechť tuto poznámku extrahují do nového dokumentu. The **IsInclusive** možnost diktuje, zda je komentář sám o sobě zachován nebo vyřazen.

Následující příklad kódu ukazuje, jak to udělat, je níže:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Za prvé, extrahovaný výstup s `IsInclusive` parametr nastavený na true. Kopie bude obsahovat i komentář.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

Za druhé, extrahovaný výstup s **isInkluzivní** nastaveno na false. Kopie obsahuje obsah, ale bez komentáře.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## Obsah výpisu pomocí aplikace DocumentVisitor

Aspose.Words lze použít nejen pro vytváření Microsoft Word dokumenty dynamicky nebo sloučit šablony s daty, ale také pro analýzu dokumentů s cílem získat samostatné prvky dokumentů, jako jsou hlavičky, zápatí, odstavce, tabulky, obrázky a další. Dalším možným úkolem je najít text konkrétního formátování nebo stylu.

Použijte [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) třída k provedení tohoto scénáře využití. Tato třída odpovídá známému designu návštěvníka. S [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/), můžete definovat a provádět vlastní operace, které vyžadují výčtu nad stromem dokumentu.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) poskytuje soubor **VisitXXX** metody, které se používají v případě, že se nachází určitý prvek dokumentu (noda). Například, [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) volá, když je nalezen začátek textového odstavce a [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) volá, když je nalezen konec textového odstavce. Každý **DocumentVisitor.VisitXXX** metoda akceptuje odpovídající objekt, na který se setká, takže jej můžete použít podle potřeby (například načíst formátování), např. obojí [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) a [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) přijmout [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) objekt.

Každý **DocumentVisitor.VisitXXX** metoda vrací a **VisitorAction** hodnota, která řídí počet uzlů. Můžete požádat buď pokračovat v výčtu, přeskočit aktuální uzel (ale pokračovat v výčtu), nebo zastavit počet uzlů.

Toto jsou kroky, které byste měli sledovat programově určit a extrahovat různé části dokumentu:

- Vytvořit třídu odvozenou od [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- Přepsat a poskytnout implementace pro některé nebo všechny **DocumentVisitor.VisitXXX** metody provádění některých vlastních operací.
- Dorovnávám. [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) na uzel, odkud chcete začít s vyjmenováváním. Například, pokud chcete vyčíslit celý dokument, použijte [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) poskytuje výchozí implementace pro všechny **DocumentVisitor.VisitXXX** metody. Díky tomu je snazší vytvořit nové návštěvníky dokumentů, protože pouze metody potřebné pro konkrétního návštěvníka je třeba přepsat. Není nutné překračovat všechny návštěvnické metody.

Následující příklad ukazuje, jak použít vzor Návštěvníka k přidání nových operací do Aspose.Words model objektu. V tomto případě vytvoříme jednoduchý konvertor dokumentu do textového formátu:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## Text výpisu Pouze

Způsoby, jak získat text z dokumentu jsou:

- Použít [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) s [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) uložit jako prostý text do souboru nebo streamu
- Použít [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) a projít `SaveFormat.Text` parametr. Interně to vyvolá uložení textu do paměti a vrací výsledný řetězec
- Použít [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) získat text se všemi Microsoft Word kontrolní znaky včetně kódů polí
- Provádět zvyk [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) provádět vlastní extrakci

### Použití `Node.GetText` a `Node.ToString`

A Slovní dokument může obsahovat kontrolní znaky, které označují zvláštní prvky jako pole, konec buňky, konec sekce atd. Úplný seznam možných znaků kontroly Word je definován v **ControlChar** třída. The [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) metoda vrací text se všemi znaky ovládacího znaku přítomnými v uzlu.

Volání ToString vrací prostý text reprezentace dokumentu pouze bez kontrolních znaků. Další informace o vývozu jako prostém textu viz **Using SaveFormat.Text**.

Následující příklad kódu ukazuje rozdíl mezi voláním **GetText** a [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) metody na uzel:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### Použití `SaveFormat.Text`

Tento příklad uloží dokument takto:

- Filtruje znaky pole a kódy pole, tvar, poznámka pod čarou, poznámka pod čarou a odkazy na komentář
- nahrazuje konec odstavce [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) Znaky s [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) kombinace
- Používá kódování UTF8

Následující příklad kódu ukazuje, jak uložit dokument ve formátu TXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Extrahovat obrázky z tvarů

Možná budete potřebovat extrahovat obrazy dokumentů, abyste mohli provádět některé úkoly. Aspose.Words umožňuje vám to také udělat.

Následující příklad kódu ukazuje, jak extrahovat obrázky z dokumentu:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}
