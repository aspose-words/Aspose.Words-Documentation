---
title: Sledování změn v dokumentu v C++
second_title: Aspose.Words pro C++
articleTitle: Sledování změn v dokumentu
linktitle: Sledování změn v dokumentu
description: "Sledujte změny obsahu a formátování provedené vámi nebo jinými pomocí C++. Přistupujte k jednotlivým revizím v dokumentu a aplikujte na ně různé vlastnosti."
type: docs
weight: 270
url: /cs/cpp/track-changes-in-a-document/
timestamp: 2024-01-30-16-22-34
---

Funkce sledování změn, známá také jako kontrola, vám umožňuje sledovat změny obsahu a formátování provedené vámi nebo jinými uživateli. Tato funkce změny stopy s Aspose.Words podporuje změny stopy v Microsoft Word. Pomocí této funkce můžete přistupovat k jednotlivým revizím v dokumentu a aplikovat na ně různé vlastnosti.

Když povolíte funkci sledování změn, všechny vložené, odstraněné a upravené prvky dokumentu budou vizuálně zvýrazněny informacemi o tom, kdo, kdy a co bylo změněno. Objekty, které nesou informace o tom, co bylo změněno, se nazývají "sledování změn". Předpokládejme například, že chcete dokument zkontrolovat a provést důležité změny – to může znamenat, že je třeba provést revize. Možná budete muset také vložit komentáře, abyste diskutovali o některých změnách. To je místo, kde přichází sledování změn v dokumentech.

Tento článek vysvětluje, jak spravovat a sledovat změny vytvořené mnoha recenzenty ve stejném dokumentu, a také vlastnosti pro sledování změn.

{{% alert color="primary" %}}

Všimněte si, že funkce komentáře v Aspose.Words, stejně jako v Microsoft Word, může být spojena se sledováním změn. Pamatujte však, že komentáře jsou zcela nezávislé na sledování změn.

{{% /alert %}}

## Co je revize

Než se ponoříme do revizí, vysvětlíme význam revizí. [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/) je změna, ke které dochází v jednom uzlu dokumentu, zatímco skupina revizí, reprezentovaná třídou [RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/), je skupina sekvenčních revizí, ke kterým dochází v mnoha uzlech dokumentu. Revize je v zásadě nástroj pro sledování změn.

Revize se používají ve funkci sledování změn a ve funkci porovnat dokumenty, kde se revize objeví jako výsledek srovnání. Revize v rámci funkce sledování změn tedy ukazují, kým a co bylo změněno.

{{% alert color="primary" %}}

Všimněte si, že Microsoft Word neumožňuje zobrazit jednotlivé revize, umožňuje zobrazit pouze sekvenční revize jako jednu entitu. Ale Aspose.Words řeší toto omezení třídou **RevisionGroup**.

{{% /alert %}}

Aspose.Words podporuje různé typy revizí, stejně jako v Microsoft Word, jako je vkládání, mazání, FormatChange, StyleDefinitionChange a přesouvání. Všechny typy revizí jsou reprezentovány výčtem [RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Všimněte si, že revize mají výsledek podobný Microsoft Word, ale Aspose.Words nezjistí formátování během sledování změn.

{{% /alert %}}

## Spuštění a zastavení sledování změn

Úpravy dokumentu se obvykle nepočítají jako revize, dokud jej nezačnete sledovat. Aspose.Words umožňuje automaticky sledovat všechny změny v dokumentu pomocí jednoduchých kroků. Proces sledování změn můžete snadno spustit pomocí metody [StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/). Pokud potřebujete zastavit proces sledování změn, aby se budoucí úpravy nepovažovaly za revize, budete muset použít metodu [StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

Všimněte si, že metoda `StartTrackingRevisions` nemění stav vlastnosti [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/) a nepoužívá její hodnotu pro cíl sledování revizí. Kromě toho, pokud byl uzel přesunut z jednoho místa do druhého uvnitř sledovaného dokumentu, budou vytvořeny revize přesunu, včetně rozsahu přesunu z a přesunu do.

{{% /alert %}}

Na konci procesu sledování změn v dokumentu budete mít možnost dokonce přijmout všechny revize nebo je odmítnout a vrátit dokument do původní podoby. Toho lze dosáhnout buď pomocí metody [AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/) nebo [RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/). Kromě toho můžete každou revizi přijmout nebo odmítnout samostatně pomocí metody [Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/) nebo [Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/).

Všechny změny budou sledovány pro jednu iteraci od okamžiku, kdy proces zahájíte, do okamžiku, kdy jej zastavíte. Spojení mezi různými iteracemi je znázorněno jako následující scénář: dokončíte proces sledování, poté provedete některé změny a znovu začnete sledovat změny. V tomto scénáři se znovu zobrazí všechny změny, které jste nepřijali nebo neodmítli.

{{% alert color="primary" %}}

Všimněte si, že metoda `AcceptAllRevisions` je podobná metodě "přijmout všechny změny" v Microsoft Word.

{{% /alert %}}

Následující příklad kódu ukazuje, jak pracovat se sledováním změn:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

Následující příklad kódu ukazuje, jak jsou generovány revize při přesunutí uzlu v rámci sledovaného dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## Správa a ukládání změn jako revizí

Pomocí předchozí funkce sledování změn můžete pochopit, které změny byly ve vašem dokumentu provedeny a kdo tyto změny provedl. Zatímco s funkcí [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/) vynutíte, aby všechny změny v dokumentu byly uloženy jako revize.

Aspose.Words umožňuje zkontrolovat, zda má dokument revizi nebo ne, pomocí vlastnosti [HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/). Pokud nepotřebujete automaticky sledovat změny v dokumentu pomocí metod StartTrackRevisions a StopTrackRevisions, můžete pomocí vlastnosti `TrackRevisions` zkontrolovat, zda jsou změny sledovány při úpravách dokumentu v Microsoft Word a uloženy jako revize.

Funkce `TrackRevisions` provádí revize namísto skutečných změn DOM. Samotné revize jsou však oddělené. Pokud například odstraníte jakýkoli odstavec, Aspose.Words jej vytvořte jako revizi a místo odstranění jej označte jako odstranění.

Aspose.Words navíc umožňuje zkontrolovat, zda byl objekt vložen, odstraněn nebo změněn formátováním pomocí [IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), a [IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/) vlastnosti.

{{% alert color="primary" %}}

Všimněte si, že neexistuje žádná souvislost mezi samotnými revizemi a vlastností `TrackRevisions`. Kromě toho můžete přijímat/odmítat revize bez ohledu na funkci sledování změn.

{{% /alert %}}

Následující příklad kódu ukazuje, jak použít různé vlastnosti s revizemi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
