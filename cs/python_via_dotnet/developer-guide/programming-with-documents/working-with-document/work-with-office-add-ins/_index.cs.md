---
title: Práce s doplňky Office Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s kancelářskými doplňky
linktitle: Práce s kancelářskými doplňky
description: "Aspose.Words místo Python via .NET poskytuje různé třídy pro práci s doplňky Office. Můžete přidat Task Panel přes webové rozšíření a přizpůsobit paletu a vlastnosti rozšíření."
type: docs
weight: 50
url: /cs/python-net/work-with-office-add-ins/
---

Někdy můžete chtít umožnit přístup k ovládacím prvkům rozhraní, které spustí kód pro úpravu dokumentů. Aspose.Words API poskytuje [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/) modul, který poskytuje různé třídy pro přizpůsobení prvků a atributů rozšíření XML slovníku pro reprezentaci Office Add-ins.

WebExtensions namespace lze podmínečně rozdělit na:

* Objekty pro práci s panelem úkolů
* Objekty pro práci s webovými rozšířeními

## Použití panelů úkolů

Panely úkolů jsou plochy rozhraní, které jsou zobrazeny na pravé straně okna v Microsoft Word. Tabule úloh umožňuje uživatelům přístup k ovládacím prvkům rozhraní, které mohou spustit kód pro úpravu dokumentů.

Například použití Aspose.Words API, můžete přidat add-in a přizpůsobit jeho vzhled.

## Používání webových rozšíření

Webová rozšíření jsou nástroje, které rozšiřují možnosti aplikací Office a ovlivňují obsah dokumentů Office. Webová rozšíření poskytují klientům Office další funkce pro zlepšení uživatelských zkušeností.

Aspose.Words poskytuje možnost přidat Web rozšíření typu Task Pane pomocí [WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/) a [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/) třídy, a také umožňuje přizpůsobit panel a rozšíření vlastnosti.

Následující příklad kódu ukazuje, jak vytvořit tabule úloh a přidat do webového rozšíření tabule úloh se základními vlastnostmi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

Chcete- li vidět seznam přídavných panelů úloh, použijte [web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/) majetek.

Následující příklad kódu ukazuje, jak získat takový seznam doplňků:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}
