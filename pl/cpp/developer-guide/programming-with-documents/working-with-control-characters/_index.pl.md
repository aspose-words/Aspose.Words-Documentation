---
title: Praca Ze Znakami Kontrolnymi
second_title: Aspose.Words dla C++
articleTitle: Praca Ze Znakami Kontrolnymi
linktitle: Praca Ze Znakami Kontrolnymi
description: "Wprowadzenie do pracy ze znakami kontrolnymi w Aspose.Words dla C++."
type: docs
weight: 400
url: /pl/cpp/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word dokumenty mogą zawierać różne znaki, które mają specjalne znaczenie. Zwykle są one używane do celów formatowania i nie są rysowane w trybie normalnym. Możesz je uwidocznić, klikając przycisk Pokaż / Ukryj Znaczniki formatowania znajdujący się na standardowym pasku narzędzi.

Czasami może być konieczne dodanie lub usunięcie znaków do / z tekstu. Na przykład podczas programowego uzyskiwania tekstu z dokumentu Aspose.Words zachowuje większość znaków kontrolnych, więc jeśli chcesz pracować z tym tekstem, prawdopodobnie powinieneś usunąć lub zastąpić znaki.

Klasa [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) jest repozytorium stałych reprezentujących znaki kontrolne często spotykane w dokumentach. Zapewnia zarówno wersje znaków, jak i ciągów tych samych stałych. Na przykład string [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) i char **ControlChar.LineBreakChar** mają tę samą wartość.

Poniższy przykład kodu pokazuje, jak używać znaków kontrolnych:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}
