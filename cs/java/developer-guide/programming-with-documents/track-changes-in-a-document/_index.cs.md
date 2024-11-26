---
title: Změna stopy v dokumentu Java
second_title: Aspose.Words místo Java
articleTitle: Změna stopy v dokumentu
linktitle: Změna stopy v dokumentu
description: "Sledujte změny obsahu a formátování provedené vámi nebo jinými. Přístup k jednotlivým revizím v dokumentu a použití různých vlastností Java."
type: docs
weight: 270
url: /cs/java/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Funkce změn dráhy, známý také jako přezkum, umožňuje sledovat změny obsahu a formátování provedené vámi nebo jinými uživateli. Tato funkce změn trati s Aspose.Words podporuje změny dráhy v Microsoft Word. S touto funkcí můžete ve svém dokumentu přistupovat k jednotlivým revizím a aplikovat na ně různé vlastnosti.

Když povolíte funkci změn trati, budou všechny vloženy, vymazány a upraveny prvky dokumentu vizuálně zvýrazněny informacemi o tom, kdo, kdy a co se změnilo. Objekty, které obsahují informace o tom, co bylo změněno, se nazývají změny ve sledování. Předpokládejme například, že chcete dokument přezkoumat a provést důležité změny. Také budete muset vložit připomínky k projednání některých změn. To je místo, kde dochází ke stopování změn v dokumentech.

Tento článek vysvětluje, jak spravovat a sledovat změny vytvořené mnoha recenzenty na stejném dokumentu, stejně jako vlastnosti pro sledování změn.

{{% alert color="primary" %}}

Všimněte si, že komentář v Aspose.Words, stejně jako v Microsoft Word, mohou být spojeny se změnami sledování. Pamatujte však, že komentáře jsou zcela nezávislé na stopovacích změnách.

{{% /alert %}}

## Co je revize

Než se ponoří do revizí, nechť vysvětlí význam revizí. A [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) je změna, k níž dochází v jednom uzlu dokumentu, zatímco skupina revizí zastoupená [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) třída, je skupina sekvenčních revizí, které se vyskytují v mnoha uzlech dokumentu. Revize je nástroj pro sledování změn.

Revize se používají ve funkci změn sledování a v rámci porovnání dokumentů, kde se revize objevují v důsledku srovnání. Takže revize v rámci změn sledování ukazují kdo a co bylo změněno.

{{% alert color="primary" %}}

Všimněte si, že Microsoft Word neumožní vám zobrazit jednotlivé revize, pouze vám umožní vidět následné revize jako jedinou entitu. Ale... Aspose.Words řeší toto omezení s **RevisionGroup** třída.

{{% /alert %}}

Aspose.Words podporuje různé typy revizí, stejně jako v Microsoft Word, jako je vložení, delece, formát Změna, stylDefinice Změna a stěhování. Všechny typy revizí jsou zastoupeny [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) výčtu.

{{% alert color="primary" %}}

Všimněte si, že revize mají podobný výsledek jako Microsoft Word ale Aspose.Words nedetekuje formátování během sledování změn.

{{% /alert %}}

## Začít a přestat sledovat změny

Editace dokumentu se obvykle nepočítá jako revize, dokud ho nezačnete sledovat. Aspose.Words umožňuje automaticky sledovat všechny změny ve vašem dokumentu jednoduchými kroky. Můžete snadno spustit proces sledování změn pomocí [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) metoda. Pokud potřebujete zastavit proces sledování změn tak, aby žádné budoucí úpravy nebyly považovány za revize, budete muset použít [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) metoda.

{{% alert color="primary" %}}

Všimněte si, že `StartTrackingRevisions` metoda nemění status [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) vlastnost a nepoužívá její hodnotu pro účely sledování revizí. Kromě toho, pokud byl uzel přesunut z jednoho místa do druhého uvnitř sledovaného dokumentu, pak budou vytvořeny změny pohybu, včetně pohybu-z a přesunout-do rozsahu.

{{% /alert %}}

Na konci procesu sledování změn ve vašem dokumentu budete mít možnost dokonce přijmout všechny revize nebo je odmítnout vrátit dokument do původní podoby. Toho lze dosáhnout buď použitím [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) nebo [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) metoda. Kromě toho můžete přijmout nebo odmítnout každou revizi samostatně pomocí [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) nebo [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) metoda.

Všechny změny budou vysledovány pro jednu iteraci od okamžiku, kdy začnete proces do okamžiku, kdy ho zastavíte. Spojení mezi různými iteracemi je reprezentováno jako následující scénář: dokončíte proces sledování, pak provedete nějaké změny a začnete znovu sledovat změny. S tímto scénářem se všechny změny, které jste nepřijali nebo neodmítli, znovu zobrazí.

{{% alert color="primary" %}}

Všimněte si, že `AcceptAllRevisions` Všechny změny jsou podobné jako u Microsoft Word.

{{% /alert %}}

Následující příklad kódu ukazuje, jak pracovat se změnami sledování:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

Následující příklad kódu ukazuje, jak jsou revize generovány, když je uzel přesunut v rámci sledovaného dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## Spravovat a ukládat změny jako revize

S předchozím sledování změn funkce, můžete pochopit, které změny byly provedeny ve vašem dokumentu a kdo udělal tyto změny. Zatímco s [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) funkce, budete nutit jakékoliv změny ve vašem dokumentu, aby byly uloženy jako revize.

Aspose.Words umožňuje zkontrolovat, zda dokument má nebo nemá revizi pomocí [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) majetek. Pokud nemusíte automaticky sledovat změny ve vašem dokumentu pomocí metod StartTrackRevisions a StopTrackRevisions, pak můžete použít `TrackRevisions` vlastnost zkontrolovat, zda jsou změny sledovány při editaci dokumentu v Microsoft Word a uloženy jako revize.

The `TrackRevisions` funkce dělá revize místo skutečné DOM změny. Ale samotné revize jsou oddělené. Například, Pokud smažete jakýkoli odstavec, Aspose.Words místo aby ji smazala.

Kromě toho Aspose.Words umožňuje zkontrolovat, zda byl objekt vložen, smazán nebo změněn formátování pomocí [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), a [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) vlastnosti.

{{% alert color="primary" %}}

Všimněte si, že mezi samotnými revizemi neexistuje žádná souvislost `TrackRevisions` majetek. Kromě toho můžete přijmout/odmítnout revize bez ohledu na funkci změn sledování.

{{% /alert %}}

Následující příklad kódu ukazuje, jak použít různé vlastnosti s revizemi:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
