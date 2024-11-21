---
title: Práce s komentáři v C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s komentáři
linktitle: Práce s komentáři
description: "Práce s komentáři pomocí C#."
type: docs
weight: 260
url: /cs/net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Zkuste online**

Tuto funkci můžete zkusit s naší [Zdarma online odstranit anotace](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words umožňuje uživatelům pracovat s komentáři v dokumentu Aspose.Words jsou zastoupeny [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) třída. Také použijte [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) a [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) tříd pro upřesnění oblasti textu, která by měla být spojena s poznámkou.

## Přidat komentář

Aspose.Words umožňuje přidat komentáře několika způsoby:

1. Použití [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) třída
2. Použití [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) a [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) třídy

Následující příklad kódu ukazuje, jak přidat komentář k odstavci pomocí **Comment** třída:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

Následující příklad kódu ukazuje, jak přidat komentář k odstavci pomocí oblasti textu a **CommentRangeStart** a **CommentRangeEnd** třídy:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## Extrahovat nebo odstranit komentáře

Použití komentářů v dokumentu Word (kromě změn stopy) je běžnou praxí při přezkumu dokumentů, zejména pokud existuje více recenzentů. Mohou nastat situace, kdy jediné, co potřebujete z dokumentu, jsou komentáře. Řekněte, že chcete vytvořit seznam zjištění přezkumu, nebo jste možná shromáždili všechny užitečné informace z dokumentu a chcete jednoduše odstranit zbytečné komentáře. Můžete chtít zobrazit nebo odstranit připomínky konkrétního recenzenta.

V tomto vzorku se podíváme na některé jednoduché metody shromažďování informací z komentářů v dokumentu a na odstranění připomínek z dokumentu. Konkrétně se postaráme o to, jak:

- Vyjádřit všechny připomínky z dokumentu nebo pouze ty, které učinil konkrétní autor
- Odstranit všechny připomínky z dokumentu nebo pouze od konkrétního autora

### Jak extrahovat nebo odstranit komentáře

Kód v tomto vzorku je vlastně docela jednoduchý a všechny metody jsou založeny na stejném přístupu. Komentář v dokumentu Word představuje [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) objekt v Aspose.Words model objektu dokumentu. Pro sběr všech připomínek v dokumentu použijte [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) metoda s prvním parametrem nastaveným na [NodeType.Comment](https://reference.aspose.com/words/net/aspose.words/nodetype/). Ujistěte se, že druhý parametr **GetChildNodes** metoda je nastavena na true: to nutí **GetChildNodes** vybrat ze všech dětských uzlů rekurzivně, spíše než pouze sbírat okamžité děti.

Abychom ukázali, jak získat a odstranit připomínky z dokumentu, projdeme těmito kroky:

1. Otevřít dokument Word pomocí [Document](https://reference.aspose.com/words/net/aspose.words/document/) třída
2. Získat všechny připomínky z dokumentu do sbírky
3. Chcete-li získat připomínky:
   1. Projděte sbírku pomocí každého provozovatele
   2. Výpis a výpis autora jméno, datum a čas a text všech komentářů
   3. Výpis a výpis jména autora, datum a čas a text komentářů napsaných konkrétním autorem, v tomto případě autora
4. Odstranit komentáře:
   1. Přejít zpět přes sbírku pomocí pro operátora
   2. Odstranit připomínky
5. Uložit změny

### Jak extrahovat všechny komentáře

• **GetChildNodes** metoda je velmi užitečná a můžete ji použít pokaždé, když potřebujete získat seznam dokumentových uzlů jakéhokoli typu. Výsledný sběr nevytváří bezprostřední nadmořskou moc, protože uzly jsou vybrány do této sbírky pouze tehdy, když v ní vyjmenováváte nebo získáte přístupové položky.

Následující příklad kódu ukazuje, jak extrahovat jméno autora, datum a čas a text všech komentářů v dokumentu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### Jak získat připomínky určitého autora

Po výběru **Comment** uzly do sbírky, vše, co musíte udělat, je získat informace, které potřebujete. V tomto vzorku jsou iniciály autora, datum, čas a prostý text komentáře kombinovány do jednoho řetězce; místo toho se můžete rozhodnout jej uložit jiným způsobem.

Přetížená metoda, která vyjímá Komentáře od konkrétního autora, je téměř stejná, jen kontroluje jméno autora před přidáním informací do pole.

Následující příklad kódu ukazuje, jak extrahovat jméno autora, datum a čas a text připomínek uvedeného autora:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### Jak odstranit komentáře

Pokud odstraňujete všechny komentáře, není třeba se pohybovat přes sbírku mazání komentářů jeden po druhém. Můžete je odstranit voláním [Clear](https://reference.aspose.com/words/net/aspose.words/nodecollection/clear/) způsob sběru připomínek.

Následující příklad kódu ukazuje, jak odstranit všechny připomínky v dokumentu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

Když potřebujete selektivní odstranění komentářů, proces se stává více podobný kódu, který jsme použili pro získávání komentářů.

Následující příklad kódu ukazuje, jak odstranit komentáře zadaného autora:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

Hlavním bodem pro zdůraznění je použití pro obsluhu. Na rozdíl od jednoduché extrakce, zde chcete smazat komentář. Vhodným trikem je iterovat kolekci zpět od posledního Komentáře k prvnímu. Důvodem je, že pokud začnete od konce a posunete se dozadu, index předchozích položek zůstává nezměněn a můžete se vrátit k první položce ve sbírce.

Následující příklad kódu uvádí metody pro výpis a odstranění připomínek:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Jak odstranit komentář mezi CommentRangeStart a CommentRangeEnd

Použití Aspose.Words můžete také odstranit komentáře mezi **CommentRangeStart** a **CommentRangeEnd** uzly.

Následující příklad kódu ukazuje, jak odstranit text mezi **CommentRangeStart** a **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## Přidat nebo odstranit odpověď komentáře

• [AddReply](https://reference.aspose.com/words/net/aspose.words/comment/addreply/) metoda přidává odpověď na tuto poznámku. Vezměte prosím na vědomí, že vzhledem k existující Microsoft V dokumentu je povolena pouze 1 úroveň odpovědí. Výjimku typu *InvalidOperationException* bude vznesena, pokud je tato metoda vyzvána ke stávající komentáři k odpovědi.

Můžete použít [RemoveReply](https://reference.aspose.com/words/net/aspose.words/comment/removereply/) způsob odstranění specifikované odpovědi na tento komentář.

Následující příklad kódu ukazuje, jak přidat odpověď na komentář a odstranit odpověď komentáře:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## Přečtěte si komentář

• [Replies](https://reference.aspose.com/words/net/aspose.words/comment/replies/) majetek vrací soubor [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) předměty, které jsou okamžitými dětmi uvedeného komentáře.

Následující příklad kódu ukazuje, jak iterovat prostřednictvím odpovědí na komentář a vyřešil je:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
