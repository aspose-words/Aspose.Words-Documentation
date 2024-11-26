---
title: Práce s doplňky Office v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s doplňky Office
linktitle: Práce s doplňky Office
description: "Aspose.Words pro C++ poskytuje různé třídy pro práci s doplňky Office. Podokno úloh můžete přidat pomocí webového rozšíření a přizpůsobit vlastnosti podokna a rozšíření."
type: docs
weight: 50
url: /cs/cpp/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Někdy možná budete chtít povolit přístup k ovládacím prvkům rozhraní, které spouštějí kód pro úpravu dokumentů. Aspose.Words API poskytuje obor názvů `WebExtensions`, který uděluje různým třídám přizpůsobení prvků a atributů rozšiřujících slovní zásobu XML pro reprezentaci doplňků Office.

WebExtensions jmenný prostor lze podmíněně rozdělit na:

* Objekty pro práci s podoknem úloh
* Objekty pro práci s webovými rozšířeními

## Použití Podoken Úkolů

Podokna úloh jsou plochy rozhraní, které jsou zobrazeny na pravé straně okna v Microsoft Word. Podokno úloh umožňuje uživatelům přístup k ovládacím prvkům rozhraní, které mohou spouštět kód pro úpravu dokumentů.

Například pomocí Aspose.Words API můžete přidat doplněk podokna úloh a přizpůsobit jeho vzhled.

## Používání Webových Rozšíření

Webová rozšíření jsou nástroje, které rozšiřují možnosti aplikací Office a interagují s obsahem dokumentů Office. Webová rozšíření poskytují klientům Office další funkce pro zlepšení uživatelského prostředí.

Aspose.Words poskytuje možnost přidávat Webová rozšíření typu podokna úloh pomocí tříd [WebExtension](https://reference.aspose.com/words/cpp/aspose.words.webextensions/webextension/) a [TaskPane](https://reference.aspose.com/words/cpp/aspose.words.webextensions/taskpane/) a také umožňuje přizpůsobit vlastnosti podokna a rozšíření.

Následující příklad kódu ukazuje, jak vytvořit podokna úloh a přidat do podoken úloh webového rozšíření se základními vlastnostmi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cpp" >}}

Chcete-li zobrazit seznam doplňků podokna úloh, použijte vlastnost [WebExtensionTaskPanes](https://reference.aspose.com/words/cpp/aspose.words/document/get_webextensiontaskpanes/).

Následující příklad kódu ukazuje, jak získat takový seznam doplňků:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-GetListOfAddins.cpp" >}}
