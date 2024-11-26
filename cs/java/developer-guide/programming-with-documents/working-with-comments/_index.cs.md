---
title: Práce s Comments in Java
second_title: Aspose.Words místo Java
articleTitle: Práce s komentáři
linktitle: Práce s komentáři
description: "Práce s komentáři pomocí Java."
type: docs
weight: 260
url: /cs/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Zkuste online**

Tuto funkci můžete zkusit s naší [Ždarma online odstranit anotace](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words umožňuje uživatelům pracovat s komentáři v dokumentu Aspose.Words jsou zastoupeny [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) třída. Také použijte [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) a [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) tříd pro upřesnění oblasti textu, která by měla být spojena s poznámkou.

## Přidat komentář

Aspose.Words umožňuje přidat komentáře několika způsoby:

1. Použití [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) třída
2. Použití [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) a [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) třídy

Následující příklad kódu ukazuje, jak přidat komentář k odstavci pomocí **Comment** třída:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

Následující příklad kódu ukazuje, jak přidat komentář k odstavci pomocí oblasti textu a **CommentRangeStart** a **CommentRangeEnd** třídy:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Extrahovat nebo odstranit komentáře

Použití komentářů v dokumentu Word (kromě změn stopy) je běžná praxe při přezkumu dokumentů, zejména pokud existuje více recenzentů. Mohou nastat situace, kdy jediné, co potřebujete z dokumentu, jsou komentáře. Řekněte, že chcete vytvořit seznam zjištění přezkumu, nebo jste možná shromáždili všechny užitečné informace z dokumentu a chcete jednoduše odstranit zbytečné komentáře. Můžete chtít zobrazit nebo odstranit připomínky konkrétního recenzenta.

V tomto vzorku se podíváme na některé jednoduché metody shromažďování informací z připomínek v dokumentu a na odstranění připomínek z dokumentu. Konkrétně se postaráme o to, jak:

- Vyjádřit všechny připomínky z dokumentu nebo pouze ty, které učinil konkrétní autor.
- Odstraňte všechny připomínky z dokumentu nebo pouze od konkrétního autora.

### Jak extrahovat nebo odstranit komentáře

Kód v tomto vzorku je poměrně jednoduchý a všechny metody jsou založeny na stejném přístupu. Komentář v dokumentu Word představuje `Comment` objekt v Aspose.Words model objektu dokumentu. Pro sběr všech připomínek v dokumentu použijte [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) metoda s prvním parametrem nastaveným na `NodeType.Comment`. Ujistěte se, že druhý parametr **GetChildnodes** metoda je nastavena na true: to nutí **GetChildnodes** vybrat ze všech dětských uzlů rekurzivně, spíše než pouze sbírat okamžité děti.

Abychom ukázali, jak získat a odstranit připomínky z dokumentu, projdeme těmito kroky:

1. Otevřít dokument Word pomocí [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) třída
1. Získat všechny připomínky z dokumentu do sbírky
1. Chcete-li získat připomínky:
   1. Projděte sbírku pomocí operátora
   1. Výpis a výpis autora jméno, datum a čas a text všech komentářů
   1. Výpis a seznam autora, datum a čas a text komentářů napsaných konkrétním autorem, v tomto případě autora
1. Pro odstranění připomínek:
   1. Přejít zpět přes sbírku pomocí pro operátora
   1. Odstranit připomínky
1. Uložit změny.

Pro toto cvičení použijeme následující dokument Word:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Jak můžete vidět, obsahuje několik komentářů od dvou autorů s iniciály pm a aks.

### Jak extrahovat všechny komentáře

The [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) metoda je velmi užitečná a můžete ji použít pokaždé, když potřebujete získat seznam uzlů dokumentu jakéhokoli typu. Výsledná sbírka nevytváří bezprostřední nadmořská výška, protože uzly jsou vybrány do této sbírky pouze tehdy, když v ní vyjmenováváte nebo získáte přístupové položky.

Následující příklad kódu ukazuje, jak extrahovat jméno autora, datum a čas a text všech komentářů v dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Jak získat připomínky určitého autora

Poté, co jste vybrali Comment uzly do sbírky, vše, co musíte udělat, je extrahovat informace, které potřebujete. V tomto vzorku jsou iniciály autora, datum, čas a prostý text komentáře kombinovány do jednoho řetězce; místo toho si můžete vybrat, zda jej uložíte jiným způsobem.

Přetížená metoda, která vyjímá Komentáře od konkrétního autora, je téměř stejná, jen kontroluje jméno autora před přidáním informací do pole.

Následující příklad kódu ukazuje, jak extrahovat jméno autora, datum a čas a text připomínek zadaného autora:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Jak odstranit komentáře

Pokud odstraňujete všechny komentáře, není třeba se přes sbírku mazat komentáře jeden po druhém; můžete je odstranit voláním [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) ke sbírce připomínek.

Následující příklad kódu ukazuje, jak odstranit všechny připomínky v dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Když potřebujete selektivní odstranění komentářů, proces se stává více podobný kódu, který jsme použili pro získávání komentářů.

Následující příklad kódu ukazuje, jak odstranit komentáře zadaného autora:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Hlavním bodem k zdůraznění zde je použití pro operátora. Na rozdíl od jednoduché extrakce, zde chcete smazat komentář. Vhodným trikem je iterovat kolekci pozpátku od posledního Komentáře k prvnímu. Důvodem je to, když začnete od konce a posunete se dozadu, index předchozích položek zůstává nezměněn a můžete se vrátit k první položce ve sbírce.

Následující příklad kódu uvádí metody pro výpis a odstranění připomínek:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

Při spuštění zobrazí vzorek následující výsledky. Nejprve uvádí všechny komentáře všech autorů, pak uvádí komentáře pouze vybraného autora. Nakonec kód odstraní všechny komentáře.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

Výstup Word dokument má nyní připomínky odstraněny z něj:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### Jak odstranit text mezi CommentRangeStart a CommentRangeEnd

Použití Aspose.Words můžete také odstranit komentáře mezi CommentRangeStart a CommentRangeEnd uzly.

Následující příklad kódu ukazuje, jak odstranit text mezi CommentRangeStart a CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Přidat nebo odstranit odpověď komentáře

The [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) metoda přidává odpověď na tuto poznámku. Upozorňujeme, že vzhledem ke stávajícím omezením MS Office je v dokumentu povolena pouze jedna (1) úroveň odpovědí. Výjimku typu NeplatnáOperaceVýjimka bude zvýšena, pokud je tato metoda vyvolána na existující komentář Odpověď.

Můžete použít [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) způsob odstranění zadané odpovědi na tento komentář.

Následující příklad kódu ukazuje, jak přidat odpověď na komentář a odstranit odpověď na komentář:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Přečtěte si komentář

Aspose.Words podporu čtení odpovědi komentáře. The [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) majetek vrací soubor [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) předměty, které jsou okamžitými dětmi uvedeného komentáře.

Následující příklad kódu ukazuje, jak iterovat prostřednictvím odpovědí na komentář a vyřešil je:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
