---
title: Změna stopy v dokumentu
second_title: Aspose.Words místo Python via .NET
articleTitle: Změna stopy v dokumentu
linktitle: Změna stopy v dokumentu
description: "Sledovat změny obsahu a formátování provedené vámi nebo jinými pomocí Python. Přístup k jednotlivým revizím v dokumentu a aplikovat různé vlastnosti na ně."
type: docs
weight: 270
url: /cs/python-net/track-changes-in-a-document/
---

Funkce změn dráhy, známý také jako přezkum, umožňuje sledovat změny obsahu a formátování provedené vámi nebo jinými uživateli. Tato funkce změn dráhy s Aspose.Words podporuje změny dráhy v Microsoft Word. S touto funkcí můžete přistupovat k jednotlivým revizím ve vašem dokumentu a aplikovat na ně různé vlastnosti.

Když povolíte funkci změn dráhy, všechny vložené, smazané a modifikované prvky dokumentu budou vizuálně zvýrazněny informacemi o tom, kdo, kdy a co se změnilo. Objekty, které obsahují informace o tom, co bylo změněno, se nazývají změny ve sledování. Předpokládejme například, že chcete dokument přezkoumat a provést důležité změny, což může znamenat, že musíte provést revize. Také budete muset vložit připomínky k projednání některých změn. To je místo, kde dochází ke stopování změn v dokumentech.

Tento článek vysvětluje, jak spravovat a sledovat změny vytvořené mnoha recenzenty na stejném dokumentu, stejně jako vlastnosti pro sledování změn.

{{% alert color="primary" %}}

Všimněte si, že komentář funkce v Aspose.Words, stejně jako v Microsoft Word, mohou být spojeny se změnami sledování. Pamatujte však, že poznámky jsou zcela nezávislé na stopovacích změnách.

{{% /alert %}}

## Co je revize

Před ponořením do revizí, nechť vysvětlit význam revizí. A [Revision](https://reference.aspose.com/words/python-net/aspose.words/revision/) je změna, která nastane v jednom uzlu dokumentu, zatímco skupina revizí, zastoupená [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/) třída, je skupina sekvenčních revizí, které se vyskytují v mnoha uzlech dokumentu. V podstatě je revize nástrojem pro sledování změn.

Revize se používají ve funkci změn sledování a v rámci porovnání dokumentů, kde se revize objevují v důsledku srovnání. Takže revize v rámci sledovacích změn ukazují, kdo a co se změnilo.

{{% alert color="primary" %}}

Všimněte si, že Microsoft Word neumožní vám zobrazit jednotlivé revize, pouze vám umožní vidět následné revize jako jedinou entitu. Ale... Aspose.Words řeší toto omezení s [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/) třída.

{{% /alert %}}

Aspose.Words podporuje různé typy revizí, jakož i Microsoft Word, jako je vložení, delece, formát Změna, stylDefinice Změna a stěhování. Všechny typy revizí jsou zastoupeny [RevisionType](https://reference.aspose.com/words/python-net/aspose.words/revisiontype/) výčtu.

{{% alert color="primary" %}}

Všimněte si, že revize mají podobný výsledek jako Microsoft Word ale Aspose.Words nedetekuje formátování během sledování změn.

{{% /alert %}}

## Začít a přestat sledovat změny

Editace dokumentu se obvykle nepočítá jako revize, dokud ho nezačnete sledovat. Aspose.Words umožňuje automaticky sledovat všechny změny ve vašem dokumentu jednoduchými kroky. Můžete snadno spustit proces sledování změn pomocí [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) metoda. Pokud potřebujete zastavit proces sledování změn tak, aby žádné budoucí úpravy nebyly považovány za revize, budete muset použít [stop_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/stop_track_revisions/) metoda.

{{% alert color="primary" %}}

Všimněte si, že [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) metoda nemění status [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) vlastnost a nepoužívá její hodnotu pro účely sledování revizí. Kromě toho, pokud byl uzel přesunut z jednoho místa do druhého uvnitř sledovaného dokumentu, pak budou vytvořeny změny pohybu, včetně posunu-z a přesunout-do rozsahu.

{{% /alert %}}

Na konci procesu sledování změn ve vašem dokumentu budete mít možnost dokonce přijmout všechny revize nebo je odmítnout vrátit dokument do původní podoby. Toho lze dosáhnout buď použitím [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) nebo [reject_all](https://reference.aspose.com/words/python-net/aspose.words/revisioncollection/reject_all/) metoda. Kromě toho, můžete přijmout nebo odmítnout každou revizi samostatně pomocí [accept](https://reference.aspose.com/words/python-net/aspose.words/revision/accept/) nebo [reject](https://reference.aspose.com/words/python-net/aspose.words/revision/reject/) metoda.

Všechny změny budou vysledovány pro jednu iteraci od okamžiku, kdy začnete proces do okamžiku, kdy ho zastavíte. Spojení mezi různými iteracemi je reprezentováno jako následující scénář: dokončíte proces sledování, pak provedete nějaké změny a začnete znovu sledovat změny. S tímto scénářem budou všechny změny, které jste nepřijali nebo neodmítli, zobrazeny znovu.

{{% alert color="primary" %}}

Všimněte si, že [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) Metoda je podobná jako metoda Všechny změny Microsoft Word.

{{% /alert %}}

Následující příklad kódu ukazuje, jak pracovat se změnami sledování:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-AcceptAllRevisions.py" >}}

Následující příklad kódu ukazuje, jak jsou revize generovány, když je nód přesunut do sledovaného dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-MoveNodeInTrackedDocument.py" >}}

## Správa a ukládání změn jako revize

S předchozí funkcí sledování změn, můžete pochopit, které změny byly provedeny ve vašem dokumentu a kdo udělal tyto změny. Zatímco s [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) funkce, budete nutit jakékoliv změny ve vašem dokumentu, aby byly uloženy jako revize.

Aspose.Words umožňuje zkontrolovat, zda dokument má nebo nemá revizi pomocí [has_revision](https://reference.aspose.com/words/python-net/aspose.words/document/has_revisions/) majetek. Pokud nemusíte automaticky sledovat změny ve vašem dokumentu přes start_track_revisions a stop_track_revisions metody, pak můžete použít [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) vlastnost zkontrolovat, zda jsou změny sledovány při editaci dokumentu v Microsoft Word a uloženy jako revize.

• [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) funkce dělá revize místo skutečné DOM změny. Ale samotné revize jsou oddělené. Například: Pokud smažete jakýkoli odstavec, Aspose.Words udělat to jako revizi, označit to jako smazání, místo aby to smazali.

Kromě toho Aspose.Words umožňuje zkontrolovat, zda byl objekt vložen, smazán nebo změněn formátování pomocí [is_delete_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_delete_revision/), [is_format_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_format_revision/), [is_insert_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_insert_revision/), [is_move_from_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_from_revision/), a [is_move_to_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_to_revision/) vlastnosti.

{{% alert color="primary" %}}

Všimněte si, že neexistuje žádná souvislost mezi samotnými revizemi a [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) majetek. Kromě toho můžete přijmout/odmítnout revize bez ohledu na funkci změn sledování.

{{% /alert %}}

Následující příklad kódu ukazuje, jak uplatnit různé vlastnosti s revizemi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShapeRevision.py" >}}
