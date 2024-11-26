---
title: Praca ze znakami kontrolnymi
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca ze znakami kontrolnymi
linktitle: Praca ze znakami kontrolnymi
description: "Wprowadzenie do pracy ze znakami kontrolnymi w Aspose.Words dla Python."
type: docs
weight: 400
url: /pl/python-net/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Dokumenty Microsoft Word mogą zawierać różne znaki o specjalnym znaczeniu. Zwykle są one używane do celów formatowania i nie są rysowane w trybie normalnym. Możesz je wyświetlić, klikając przycisk Pokaż/Ukryj znaczniki formatowania znajdujący się na pasku narzędzi Standard.

Czasami może być konieczne dodanie lub usunięcie znaków do/z tekstu. Na przykład, gdy programowo uzyskujesz tekst z dokumentu, Aspose.Words zachowuje większość znaków kontrolnych, więc jeśli musisz pracować z tym tekstem, prawdopodobnie powinieneś usunąć lub zastąpić te znaki.

Klasa [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) jest repozytorium stałych reprezentujących znaki sterujące często spotykane w dokumentach. Zapewnia wersje char i string tych samych stałych. Na przykład ciąg [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) i znak [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) mają tę samą wartość.

Poniższy przykład kodu demonstruje sposób użycia znaków kontrolnych:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}
