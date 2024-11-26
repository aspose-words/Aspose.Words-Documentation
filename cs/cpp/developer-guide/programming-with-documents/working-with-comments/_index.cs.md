---
title: Práce s komentáři v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s komentáři
linktitle: Práce s komentáři
description: "Práce s komentáři pomocí C++."
type: docs
weight: 260
url: /cs/cpp/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Vyzkoušejte online**

Tuto funkci můžete vyzkoušet pomocí našeho [Zdarma online odstranit anotace](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words umožňuje uživatelům pracovat s komentáři-komentáře v dokumentu v Aspose.Words jsou reprezentovány třídou [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/). Také použijte třídy [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) a [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/) k určení oblasti textu, která by měla být spojena s komentářem.

## Přidat komentář

Aspose.Words umožňuje přidávat komentáře několika způsoby:

1. Použití třídy [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)
2. Použití tříd [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) a [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)

Následující příklad kódu ukazuje, jak přidat komentář k odstavci pomocí třídy **Comment**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AddComments-AddComments.cpp" >}}

Následující příklad kódu ukazuje, jak přidat komentář k odstavci pomocí oblasti textu a tříd **CommentRangeStart** a **CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AnchorComment-AnchorComment.cpp" >}}

## Extrahujte nebo odeberte Komentáře

Používání komentářů v Word dokumentu (kromě sledování změn) je běžnou praxí při kontrole dokumentů, zejména pokud existuje více recenzentů. Mohou nastat situace, kdy jediné, co od dokumentu potřebujete, jsou komentáře. Řekněme, že chcete vygenerovat seznam zjištění recenze, nebo jste možná shromáždili všechny užitečné informace z dokumentu a jednoduše chcete odstranit zbytečné komentáře. Možná budete chtít zobrazit nebo odstranit komentáře konkrétního recenzenta.

V této ukázce se podíváme na několik jednoduchých metod jak pro shromažďování informací z komentářů v dokumentu, tak pro odstraňování komentářů z dokumentu. Konkrétně se budeme zabývat tím, jak:

- Extrahujte všechny komentáře z dokumentu nebo pouze ty, které vytvořil konkrétní autor.
- Odstraňte všechny komentáře z dokumentu nebo pouze od konkrétního autora.

### Jak extrahovat nebo odstranit komentáře

Kód v tomto vzorku je ve skutečnosti poměrně jednoduchý a všechny metody jsou založeny na stejném přístupu. Komentář v dokumentu Word je reprezentován objektem [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) v modelu objektu Aspose.Words dokumentu. Chcete-li shromáždit všechny komentáře v dokumentu, použijte metodu [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) s prvním parametrem nastaveným na [NodeType.Comment](https://reference.aspose.com/words/cpp/aspose.words/nodetype/). Ujistěte se, že druhý parametr metody **GetChildNodes** je nastaven na hodnotu true: to nutí **GetChildNodes** rekurzivně vybírat ze všech podřízených uzlů, spíše než shromažďovat pouze bezprostřední podřízené.

Pro ilustraci, jak extrahovat a odstranit komentáře z dokumentu, projdeme následujícími kroky:

1. Otevřete dokument Word pomocí třídy [Document](https://reference.aspose.com/words/cpp/aspose.words/document/)
1. Získejte všechny komentáře z dokumentu do sbírky
1. Chcete-li extrahovat Komentáře:
   1. Projděte sbírku pomocí operátora foreach
   1. Extrahujte a uveďte jméno autora, datum a čas a text všech komentářů
   1. Extrahujte a uveďte jméno autora, datum a čas a text komentářů napsaných konkrétním autorem, v tomto případě autorem 'ks'
1. Chcete-li odstranit komentáře:
   1. Vraťte se zpět do sbírky pomocí pro operátora
   1. Odstranit komentáře
1. Uložte změny

### Jak extrahovat všechny komentáře

Metoda **GetChildNodes** je velmi užitečná a můžete ji použít pokaždé, když potřebujete získat seznam uzlů dokumentů jakéhokoli typu. Výsledná kolekce nevytváří okamžitou režii, protože uzly jsou vybrány do této kolekce pouze při výčtu nebo přístupu k položkám v ní.

Následující příklad kódu ukazuje, jak extrahovat jméno autora, datum a čas a text všech komentářů v dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractComments.cpp" >}}

### Jak extrahovat Komentáře zadaného autora

Po výběru uzlů komentářů do kolekce stačí extrahovat potřebné informace. V této ukázce jsou iniciály autora, datum, čas a prostý text komentáře sloučeny do jednoho řetězce; místo toho se můžete rozhodnout jej uložit jinými způsoby.

Přetížená metoda, která extrahuje komentáře od konkrétního autora, je téměř stejná, pouze zkontroluje jméno autora před přidáním informací do pole.

Následující příklad kódu ukazuje, jak extrahovat jméno autora, datum a čas a text komentářů zadaného autora:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cpp" >}}

### Jak odstranit komentáře

Pokud odstraňujete všechny komentáře, není třeba procházet kolekcí a mazat komentáře jeden po druhém; můžete je odstranit voláním `NodeCollection.Clear` v kolekci komentářů.

Následující příklad kódu ukazuje, jak odstranit všechny komentáře v dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveComments.cpp" >}}

Když potřebujete selektivně odstranit komentáře, proces se více podobá kódu, který jsme použili pro extrakci komentářů.

Následující příklad kódu ukazuje, jak odstranit komentáře zadaného autora:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cpp" >}}

Hlavním bodem, který je zde třeba zdůraznit, je použití operátora for. Na rozdíl od jednoduché extrakce zde chcete smazat komentář. Vhodným trikem je iterovat sbírku zpět od posledního komentáře k prvnímu. Důvod pro to pokud začnete od konce a posunete se zpět, index předchozích položek zůstane nezměněn a můžete se vrátit zpět k první položce v kolekci.

Následující příklad kódu ukazuje metody pro extrakci a odstranění komentářů:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ProcessComments.cpp" >}}

{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Jak odstranit komentář mezi CommentRangeStart a CommentRangeEnd

Pomocí Aspose.Words můžete také odstranit komentáře mezi uzly **CommentRangeStart** a **CommentRangeEnd**.

Následující příklad kódu ukazuje, jak odstranit text mezi **CommentRangeStart** a **CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cpp" >}}

## Přidat a odebrat odpověď Komentáře

Metoda [AddReply](https://reference.aspose.com/words/cpp/aspose.words/comment/addreply/) přidá odpověď na tento komentář. Vezměte prosím na vědomí, že vzhledem k existujícím omezením Microsoft Office je v dokumentu povolena pouze 1 úroveň odpovědí. Výjimka typu *InvalidOperationException* bude vyvolána, pokud je tato metoda vyvolána u existujícího komentáře odpovědi.

K odstranění zadané odpovědi na tento komentář můžete použít metodu [RemoveReply](https://reference.aspose.com/words/cpp/aspose.words/comment/removereply/).

Následující příklad kódu ukazuje, jak přidat odpověď na komentář a odstranit odpověď Komentáře:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cpp" >}}

## Přečtěte si Odpověď komentáře

Vlastnost [Replies](https://reference.aspose.com/words/cpp/aspose.words/comment/get_replies/) vrací kolekci objektů **Comment**, které jsou bezprostředními podřízenými zadaného Komentáře.

Následující příklad kódu ukazuje, jak iterovat odpovědi komentáře a vyřešit je:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cpp" >}}
