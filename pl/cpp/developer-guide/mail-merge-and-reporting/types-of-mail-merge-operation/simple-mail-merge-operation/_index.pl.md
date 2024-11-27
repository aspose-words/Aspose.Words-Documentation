---
title: Prosta operacja Mail Merge W C++
second_title: Aspose.Words dla C++
articleTitle: Prosta Operacja Mail Merge
linktitle: Prosta Operacja Mail Merge
type: docs
description: "Prosty Mail Merge służy do wypełnienia pól Mail Merge w szablonie wymaganymi danymi ze źródła danych – jest podobny do klasycznego Mail Merge w Microsoft Word. Dodaj jedno lub więcej pól scalania w szablonie, a następnie wykonaj prostą operację Mail Merge."
keywords: "how to execute Mail Merge c++"
weight: 10
url: /pl/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

Prosty Mail Merge służy do wypełnienia pól Mail Merge w szablonie wymaganymi danymi ze źródła danych (reprezentacja pojedynczej tabeli). Jest więc podobny do klasycznego Mail Merge w Microsoft Word.

Możesz dodać jedno lub więcej pól scalania w szablonie, a następnie wykonać prostą operację Mail Merge. Zaleca się użycie go, jeśli szablon nie zawiera żadnych regionów scalania.

Głównym ograniczeniem używania tego typu jest to, że cała zawartość dokumentu zostanie powtórzona dla każdego rekordu w źródle danych.

## Jak wykonać prostą operację Mail Merge

Gdy szablon będzie gotowy, możesz rozpocząć wykonywanie prostej operacji Mail Merge. Aspose.Words umożliwia wykonanie prostej operacji Mail Merge przy użyciu różnych metod [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/), które akceptują różne obiekty danych jako źródło danych.

Poniższy przykład kodu pokazuje, jak wykonać prostą operację Mail Merge przy użyciu jednej z metod [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

Możesz zauważyć różnicę między dokumentem przed wykonaniem prostego mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

I po wykonaniu prostego mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## Jak utworzyć wiele scalonych dokumentów

W Aspose.Words standardowa operacja Mail Merge wypełnia tylko jeden dokument treścią ze źródła danych. Tak więc będziesz musiał wykonać operację Mail Merge wiele razy, aby utworzyć kilka scalonych dokumentów jako dane wyjściowe.

Poniższy przykład kodu pokazuje, jak wygenerować kilka scalonych dokumentów podczas operacji Mail Merge z [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
