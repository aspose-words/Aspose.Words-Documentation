---
title: Obsah výpisu mezi uzely dokumentu
second_title: Aspose.Words místo Python
articleTitle: Obsah výpisu mezi uzely v dokumentu
linktitle: Obsah výpisu mezi uzely
description: "Jak extrahovat specifický obsah z rozsahu v rámci dokumentu snadno pomocí Python."
type: docs
weight: 140
url: /cs/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
---

Při práci s dokumenty je důležité být schopen snadno extrahovat obsah z určitého rozsahu v dokumentu. Obsah se však může skládat ze složitých prvků, jako jsou odstavce, tabulky, obrázky atd.

Bez ohledu na to, jaký obsah je třeba extrahovat, bude metoda extrahování tohoto obsahu vždy určena tím, které uzly jsou vybrány pro extrahování obsahu mezi. Mohou to být celé textové těla nebo jednoduché textové runy.

Existuje mnoho možných situací, a proto mnoho různých typů uzlů zvážit při získávání obsahu. Například, možná budete chtít extrahovat obsah mezi:

- Dva konkrétní odstavce
- Specifické průběhy textu
- Pole různých typů, jako například pole sloučení
- Spustit a ukončit rozsah záložky nebo komentář
- Různé části textu obsažené v oddělených sekcích

V některých situacích můžete dokonce potřebovat kombinovat různé typy uzlů, jako je například získávání obsahu mezi odstavcem a polem, nebo mezi spuštěním a záložkou.

Tento článek poskytuje implementaci kódu pro získávání textu mezi různými uzly, stejně jako příklady běžných scénářů.

{{% alert color="primary" %}}

Tyto příklady jsou jen několika ukázkami mnoha možností. Plánujeme, aby funkce extrakce textu byla součástí veřejnosti API v budoucnu a žádný další kód nebude nutný. Mezitím, neváhejte umístit své požadavky týkající se této funkce na [Aspose.Words fórum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Proč obsah výpisu

Často je cílem výpisu obsahu duplikovat nebo uložit samostatně v novém dokumentu. Například můžete extrahovat obsah a:

- Zkopírujte to do samostatného dokumentu
- Převést určitou část dokumentu na PDF nebo obrázek
- Duplikovat obsah v dokumentu mnohokrát
- Práce s extrahovaným obsahem odděleně od zbytku dokumentu

Toho lze snadno dosáhnout použitím Aspose.Words a provádění kódu níže.

## Extrakční obsah Algoritmus

Kód v tomto oddíle řeší všechny výše popsané možné situace jednou zobecněnou a opakovaněnou metodou. Obecný přehled této techniky zahrnuje:

1. Shromažďování uzlů, které diktují obsah, který bude extrahován z vašeho dokumentu. Získávání těchto uzlů je řízeno uživatelem v jejich kódu, na základě toho, co chtějí být extrahovány.
1. Předání těchto uzlů **ExtractContent** metoda uvedená níže. Musíte také projít boolean parametr, který uvádí, zda tyto uzly, působící jako markery, by měly být zahrnuty do extrakce nebo ne.
1. Získávání seznamu klonovaného obsahu (kopírovaných uzlů), který má být extrahován. Tento seznam uzlů můžete použít jakýmkoliv způsobem, například vytvoření nového dokumentu obsahujícího pouze vybraný obsah.

## Jak extrahovat obsah

Chcete-li získat obsah z vašeho dokumentu musíte volat **extract_content** metoda níže a předat příslušné parametry. Základem této metody je nalezení uzlů na úrovni bloků (odstavce a tabulky) a jejich klonování k vytvoření stejných kopií. Pokud jsou prošlé značkovací uzly blokovou úrovní, pak je metoda schopna obsah na této úrovni jednoduše zkopírovat a přidat do pole.

Pokud jsou však markerové uzly inline (dítě odstavce) pak se situace stává složitější, protože je nutné rozdělit odstavec v inline uzlu, ať už je to run, záložková pole atd. Obsah klonovaných mateřských uzlů, které nejsou mezi markery přítomny, se odstraní. Tento proces se používá k zajištění toho, aby inline uzly stále zachovaly formátování základního odstavce. Metoda bude také provádět kontroly uzlů, které prošly jako parametry, a hodit výjimku, pokud je buď uzel neplatný. Parametry, které mají být předány této metodě, jsou:

1. **startNode** a **endNode**. Prvními dvěma parametry jsou uzly, které definují, kde má být extrakce obsahu zahájena, resp. skončit. Tyto uzly mohou být oba blok úrovně ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) nebo inline úroveň (např. [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) atd.:
   1. Chcete-li projít pole byste měli projít odpovídající [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) objekt.
   1. Chcete-li projít záložky, [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) a [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) Uzel by měl projít.
   1. Chcete-li předat připomínky, [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) a [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) Měly by být použity uzly.
1. **isInkluzivní**. Určuje, zda jsou značky zahrnuty do extrakce nebo nikoli. Pokud je tato volba nastavena false a projdou stejným uzlem nebo po sobě jdoucími uzly, poté bude vrácen prázdný seznam:
   1. Pokud a [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) Uzel je schválen pak tato volba definuje, zda má být celé pole zahrnuto nebo vyloučeno.
   1. Pokud a [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) nebo [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) Uzel je předán, tato volba definuje, zda je záložka zahrnuta nebo pouze obsah mezi záložek rozsah.
   1. Pokud a [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) nebo [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) Uzel je předán, tato volba definuje, zda má být komentář sám o sobě zahrnut nebo pouze obsah v rozsahu komentáře.

Provádění **extract_content** metoda, kterou můžete najít [Tady](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). Tato metoda bude uvedena ve scénářích uvedených v tomto článku.

Budeme také definovat vlastní metodu snadno generovat dokument z extrahovaných uzlů. Tato metoda se používá v mnoha níže uvedených scénářích a jednoduše vytváří nový dokument a do něj dováží extrahovaný obsah.

Následující příklad kódu ukazuje, jak vzít seznam uzlů a vloží je do nového dokumentu:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Obsah výpisu mezi odstavci

To ukazuje, jak použít výše uvedenou metodu k získání obsahu mezi konkrétními odstavci. V tomto případě chceme získat tělo dopisu nalezeného v první polovině dokumentu. Můžeme říci, že to je mezi 7. a 11. odstavec.

Tento úkol plní následující kód. Příslušné odstavce jsou extrahovány pomocí [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) metoda na dokumentu a předávání stanovených indexů. Pak předáme tyto uzly do **extract_content** metoda a uvést, že jsou zahrnuty do extrakce. Tato metoda vrátí zkopírovaný obsah mezi tyto uzly, které jsou pak vloženy do nového dokumentu.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi konkrétními odstavci pomocí **extract_content** metoda výše:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Obsah výpisu mezi různými typy uzlů

Můžeme extrahovat obsah mezi libovolnými kombinacemi úrovně bloku nebo inline uzlů. V tomto scénáři níže budeme extrahovat obsah mezi prvním odstavcem a tabulkou v druhé části včetně. Získáme značky uzlů voláním [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) a [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) způsob, jakým lze získat příslušné údaje o druhém oddíle dokumentu [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) a [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) uzly. Pro malou variaci nechť místo toho zdvojí obsah a vloží jej pod originál.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi odstavcem a tabulkou pomocí **extract_content** metoda:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Obsah výpisu mezi odstavci Na základě stylu

Možná budete muset extrahovat obsah mezi odstavci stejného nebo odlišného stylu, například mezi odstavci označenými stylem záhlaví.

Níže uvedený kód ukazuje, jak toho dosáhnout. Jedná se o jednoduchý příklad, který bude extrahovat obsah mezi prvními stupni ¶Heading 1¶ a ¶Header 3¶ styly, aniž by také extrahoval položky. K tomu nastavíme poslední parametr na false, která stanoví, že by neměly být zahrnuty značky.

Ve správném provedení by se to mělo spustit ve smyčce k získání obsahu mezi všemi odstavci těchto stylů z dokumentu. Extrahovaný obsah je zkopírován do nového dokumentu.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi odstavci se specifickými styly pomocí **extract_content** metoda:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Obsah výpisu mezi konkrétními výsledky

Můžete extrahovat obsah mezi inline uzly, jako je [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) Taky. Běhy z různých odstavců mohou být předány jako značky. Níže uvedený kód ukazuje, jak extrahovat konkrétní text mezi stejným [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) Uzel.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi konkrétními kroky téhož odstavce pomocí **extract_content** metoda:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Obsah výpisu pomocí pole

K použití pole jako značky, [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) Uzel by měl být předán. Poslední parametr k **extract_content** metoda definuje, zda má být celé pole zahrnuto nebo nikoli. Nechť extrahují obsah mezi polem sloučení FullName a odstavcem v dokumentu. Používáme [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) způsob [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) třída. Tohle vrátí [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) Uzel z názvu pole sloučení přešel na něj.

V našem případě nechte nastavit poslední parametr, který byl předán **extract_content** metoda k `False` vyloučit pole z těžby. Získáme extrahovaný obsah do PDF.

Následující příklad kódu ukazuje, jak extrahovat obsah mezi konkrétním polem a odstavcem v dokumentu pomocí **extract_content** metoda:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extrahovat obsah ze záložky

V dokumentu je obsah definovaný v záložce zapouzdřen [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) a [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) uzly. Obsah nalezený mezi těmito dvěma uzly tvoří záložku. Můžete předat některý z těchto uzlů jako jakýkoli marker, a to i ty z různých záložek, pokud se počáteční značka objeví před koncovou značkou v dokumentu. Tento obsah budeme extrahovat do nového dokumentu pomocí níže uvedeného kódu. • **isInkluzivní** volba parametru ukazuje, jak záložku uchovávat nebo vyřadit.

Následující příklad kódu ukazuje, jak extrahovat obsah odkazovaný na záložku pomocí **extract_content** metoda:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Obsah výpisu z komentáře

Komentář se skládá z [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) a [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) uzly. Všechny tyto uzly jsou inline. První dva uzly zapoutají obsah v dokumentu, na který odkazuje komentář, jak je vidět v screenshotu níže. • [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) Uzel samotný je [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) který může obsahovat odstavce a běží. Představuje poselství komentáře, jak je vnímáno jako bublina komentáře v přehledové tabuli. Protože tento uzel je inline a potomek těla můžete také extrahovat obsah zevnitř této zprávy.

V komentáři je uveden nadpis, první odstavec a tabulka ve druhém oddíle. Nechť tuto poznámku extrahují do nového dokumentu. • **isInkluzivní** možnost diktuje, zda je komentář sám o sobě zachován nebo vyřazen.

Následující příklad kódu ukazuje, jak to udělat:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Jak extrahovat pouze text

Způsoby, jak získat text z dokumentu jsou:

- Použít [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) uložit jako prostý text do souboru nebo streamu
- Použít [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) a projít [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text) parametr. Interně to vyvolá uložení textu do paměti a vrací výsledný řetězec
- Použít [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) získat text se všemi Microsoft Word kontrolní znaky včetně kódů polí

### Použití Node.get_text a Node.to_string

A Slovní dokument může obsahovat kontrolní znaky, které označují zvláštní prvky jako pole, konec buňky, konec sekce atd. Úplný seznam možných znaků Word control je definován v [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) třída. • [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) metoda vrací text se všemi znaky ovládacího znaku přítomnými v uzlu.

Volání [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) vrací prostý text zobrazující dokument pouze bez kontrolních znaků. Další informace o vývozu jako prostý text viz Using [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)

Následující příklad kódu ukazuje rozdíl mezi voláním [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) a [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) metody na uzel:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### Použití `SaveFormat.Text`

Tento příklad uloží dokument takto:

- Filtruje znaky pole a kódy pole, tvar, poznámka pod čarou, poznámka pod čarou a poznámky
- nahrazuje konec odstavce **ControlChar.Cr** Znaky s **ControlChar.CrLf** kombinace
- Používá kódování UTF8

Následující příklad kódu ukazuje, jak uložit dokument ve formátu TXT:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Extrahovat obrázky z tvarů

Možná budete muset extrahovat obrázky dokumentů, abyste mohli plnit některé úkoly. Aspose.Words umožňuje vám to také udělat.

Následující příklad kódu ukazuje, jak extrahovat obrázky z dokumentu:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
