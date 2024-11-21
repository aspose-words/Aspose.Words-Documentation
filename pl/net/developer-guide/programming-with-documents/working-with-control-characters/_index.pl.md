---
title: Praca ze znakami kontrolnymi
second_title: Aspose.Words dla .NET
articleTitle: Praca ze znakami kontrolnymi
linktitle: Praca ze znakami kontrolnymi
description: "Wprowadzenie do pracy ze znakami kontrolnymi w Aspose.Words dla .NET."
type: docs
weight: 400
url: /pl/net/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Dokumenty Microsoft Word mogą zawierać różne znaki o specjalnym znaczeniu. Zwykle są one używane do celów formatowania i nie są rysowane w trybie normalnym. Możesz je wyświetlić, klikając przycisk Pokaż/Ukryj znaczniki formatowania znajdujący się na pasku narzędzi Standard.

Czasami może być konieczne dodanie lub usunięcie znaków do/z tekstu. Na przykład, gdy programowo uzyskujesz tekst z dokumentu, Aspose.Words zachowuje większość znaków kontrolnych, więc jeśli musisz pracować z tym tekstem, prawdopodobnie powinieneś usunąć lub zastąpić te znaki.

Klasa [ControlChar](https://reference.aspose.com/words/net/aspose.words/controlchar/) jest repozytorium stałych reprezentujących znaki sterujące często spotykane w dokumentach. Zapewnia wersje char i string tych samych stałych. Na przykład ciąg [LineBreak](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreak/) i znak [LineBreakChar](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreakchar) mają tę samą wartość.

Poniższy przykład kodu pokazuje, jak używać znaków kontrolnych:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cs" >}}/words/net/working-with-content-control-sdt/)
