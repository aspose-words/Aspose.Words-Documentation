---
title: Práce s doplňky Office C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s kancelářskými doplňky
linktitle: Práce s kancelářskými doplňky
description: "Aspose.Words místo .NET poskytuje různé třídy pro práci s doplňky Office pomocí C#. Můžete přidat Task Panel přes webové rozšíření a přizpůsobit paletu a vlastnosti rozšíření."
type: docs
weight: 50
url: /cs/net/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Někdy můžete chtít umožnit přístup k ovládacím prvkům rozhraní, které spustí kód pro úpravu dokumentů. Aspose.Words API poskytuje `WebExtensions` namespace, který poskytuje různé třídy přizpůsobení prvků a atributů rozšiřujících XML slovní zásobu pro reprezentaci Office Add-ins.

WebExtensions namespace lze podmínečně rozdělit na:

* Objekty pro práci s panelem úkolů
* Objekty pro práci s webovými rozšířeními

## Použití panelů úkolů

Panely úkolů jsou plochy rozhraní, které jsou zobrazeny na pravé straně okna v Microsoft Word. Tabule úloh umožňuje uživatelům přístup k ovládacím prvkům rozhraní, které mohou spustit kód pro úpravu dokumentů.

Například použití Aspose.Words API, můžete přidat add-in a přizpůsobit jeho vzhled.

## Používání webových rozšíření

Webová rozšíření jsou nástroje, které rozšiřují možnosti aplikací Office a ovlivňují obsah dokumentů Office. Webová rozšíření poskytují klientům Office další funkce pro zlepšení uživatelských zkušeností.

Aspose.Words poskytuje možnost přidat Web rozšíření typu Task Pane pomocí [WebExtension](https://reference.aspose.com/words/net/aspose.words.webextensions/webextension/) a [TaskPane](https://reference.aspose.com/words/net/aspose.words.webextensions/taskpane/) třídy, a také umožňuje přizpůsobit panel a rozšíření vlastnosti.

Následující příklad kódu ukazuje, jak vytvořit tabule úloh a přidat do webového rozšíření tabule úloh se základními vlastnostmi:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

Chcete- li vidět seznam přídavných panelů úloh, použijte [WebExtensionTaskPanes](https://reference.aspose.com/words/net/aspose.words/document/webextensiontaskpanes/) majetek.

Následující příklad kódu ukazuje, jak získat takový seznam doplňků:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
