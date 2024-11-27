---
title: Mail Merge šablona z Mustache syntaxe v C#
second_title: Aspose.Words pro .NET
articleTitle: Mail Merge šablona z Mustache syntaxe
linktitle: Mail Merge šablona z Mustache syntaxe
type: docs
description: "Vytvořte šablony se syntaxí Mustache pomocí C#. Syntaxe Mustache je jedinou možností, kterou lze použít se šablonami, které neobsahují pole (HTML nebo TXT). U šablon Word máte dvě možnosti: pole nebo syntaxi Mustache."
keywords: "mail merge template mustache syntax c#"
weight: 40
url: /cs/net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words umožňuje vytvářet šablony se syntaxí mustache kromě známých šablon. Mustache je alternativní varianta syntaxe šablony, která se skládá z názvů značek uzavřených objektem modelu, který obsahuje data pro šablonu, a je podpořen objektem modelu.

Syntaxe Mustache je jedinou možností, kterou lze použít u šablon, které neobsahují pole, například šablony HTML a TXT. U šablon Word máte dvě možnosti buď použít pole, nebo syntaxi Mustache.

Syntaxe Mustache podporuje značku *foreach*, což je alternativa pro použití Mail Merge s regiony. Výhodou je, že můžete použít syntaxi mustache, Pokud z nějakého důvodu nejste schopni nebo jednoduše nechcete používat slučovací pole a slučovací oblasti.

Můžete také kombinovat pole Mail Merge s některými dalšími poli pomocí značky *foreach*, Jak je znázorněno na obrázku níže.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Vytvořte šablonu Mustache

Prvním důležitým bodem, který je třeba objasnit, je, že Mustache není šablonovací motor. Mustache je další varianta syntaxe, která je k dispozici pro jakoukoli šablonu v [load format](https://reference.aspose.com/words/net/aspose.words/loadformat/) podporované Aspose.Words. Proto můžete takovou šablonu vytvořit programově i prostřednictvím rozhraní, stačí zahrnout určitou syntaxi a vyhovět specifikaci Mustache.

Předpokládejme, že musíte poslat stejný e-mail 50 příjemcům, abyste si přizpůsobili pozdrav odpovídajícími křestními jmény. Křestní jméno příjemce můžete nahradit nějakým zástupným symbolem jako následující:

> Dear {{FirstName}}
>
> I hereby...

Otázka zde: jak můžete vytvořit 50 e-mailů z 1 jediné šablony Mustache? Chcete-li na to odpovědět, musíte provést Mail Merge s regiony, abyste vyplnili složené závorky pro zástupné symboly v šabloně skutečnými daty a vygenerovali výstupní dokument.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

Jak si všimnete z výše uvedeného příkladu, v Mustache musíte použít složené závorky pro zástupné symboly, které vypadají jako mustache, když otočíte složené závorky o 90 stupňů ve směru hodinových ručiček.

{{% /alert %}}

## Práce se syntaxí Mustache

Mustache je reprezentován jako řád bez logiky, protože postrádá jakékoli specifické příkazy řídicího toku, jako jsou *for* smyčky a *if* a *else* podmínky. Ale můžete použít sekci tagy zpracování seznamů a lambda k dosažení podmíněného vyhodnocení a opakování. Chcete-li tedy zahrnout syntaxi Mustache do operace Mail Merge, budete muset použít vlastnost [UseNonMergeFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/usenonmergefields/) a nastavit její hodnotu na *True*.

Následující příklad kódu ukazuje, jak nahradit značky Mustache konkrétními daty:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "mustache-syntax-using-data-table.cs" >}}

Rozdíl mezi dokumentem si můžete všimnout před provedením Mail Merge s regiony spolu s použitím vlastnosti **UseNonMergeFields**:

<img src="mustache-syntax-1.png" alt="mustache_syntax" style="width:400px"/>

{{% alert color="primary" %}}

Sekce začíná Librou a končí lomítkem. To znamená, že `{{#foreach list}}` začíná sekci "foreach", zatímco `{{/foreach list}}` ji končí.

{{% /alert %}}

A po použití Mail Merge s regiony:

<img src="mustache-syntax-2.png" alt="mustache_syntax_result" style="width:300px"/>

## Pomocí polí `IF` Vytvořte Mail Merge inteligentní

Aspose.Words umožňuje používat pole Mail Merge a značky Mustache s příkazem `IF`. Pole `IF` lze použít v jakémkoli dokumentu Mail Merge k potlačení nežádoucích mezer a čárek, pokud je pole prázdné.

Vzorec pole `IF` je uveden níže:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Zde může být podmínkou buď slučovací pole, nebo značka Mustache.

Pole `IF` můžete například použít, pokud potřebujete vložit "jeho", "její", " on "nebo" ona " v závislosti na pohlaví jako následující:

**{ IF { MERGEFIELD Gender } = "MALE" "true text" "false text"}**

**{ IF "{{ GENDER }}" = "MALE" "true text" "false text"}**

Následující příklad kódu ukazuje, jak provést operaci Mail Merge se značkami Mustache a poli `IF`:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "use-if-else-mustache.cs" >}}

Rozdíl mezi dokumentem si můžete všimnout před použitím vlastnosti **UseNonMergeFields**:

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

A po použití vlastnosti **UseNonMergeFields**:

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
