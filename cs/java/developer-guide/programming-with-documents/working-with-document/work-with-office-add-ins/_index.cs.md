---
title: Práce s kancelářskými doplňky Java
second_title: Aspose.Words místo Java
articleTitle: Práce s doplňky Office
linktitle: Práce s doplňky Office
description: "Aspose.Words místo Java poskytuje různé třídy pro práci s doplňky Office. Můžete přidat Task Panel přes webové rozšíření a přizpůsobit paletu a vlastnosti rozšíření."
type: docs
weight: 50
url: /cs/java/work-with-office-add-ins/
---

Někdy můžete chtít umožnit přístup k ovládacím prvkům rozhraní, které spustí kód pro úpravu dokumentů. Aspose.Words API poskytuje `WebExtensions` namespace, který poskytuje různé třídy pro přizpůsobení prvků a atributů rozšíření XML slovníku pro reprezentaci Office Add-ins.

WebExtensions namespace lze podmínečně rozdělit na:

* Objekty pro práci s panelem úkolů
* Objekty pro práci s webovými rozšířeními

## Použití panelů úkolů

Panely úkolů jsou plochy rozhraní, které jsou zobrazeny na pravé straně okna v Microsoft Word. Tabule úloh umožňuje uživatelům přístup k ovládacím prvkům rozhraní, které mohou spustit kód pro úpravu dokumentů.

Například použití Aspose.Words API, můžete přidat add-in a přizpůsobit jeho vzhled.

## Používání webových rozšíření

Webová rozšíření jsou nástroje, které rozšiřují možnosti aplikací Office a ovlivňují obsah dokumentů Office. Webová rozšíření poskytují klientům Office další funkce pro zlepšení uživatelských zkušeností.

Aspose.Words poskytuje možnost přidat Web rozšíření typu Task Pane pomocí [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) a [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) třídy, a také umožňuje přizpůsobit panel a rozšíření vlastnosti.

Následující příklad kódu ukazuje, jak vytvořit tabule úloh a přidat do webových prodlužovacích tabulí se základními vlastnostmi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Chcete- li vidět seznam přídavných panelů úloh, použijte [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) majetek.

Následující příklad kódu ukazuje, jak získat takový seznam doplňků:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

