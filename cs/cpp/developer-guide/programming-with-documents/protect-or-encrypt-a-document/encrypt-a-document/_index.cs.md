---
title: Šifrování dokumentu v C++
second_title: Aspose.Words pro C++
articleTitle: Šifrování dokumentu
linktitle: Šifrování dokumentu
description: "Zašifrujte dokument pomocí vhodných šifrovacích algoritmů pro konkrétní formáty dokumentů."
type: docs
weight: 20
url: /cs/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Šifrování je proces, který překládá čitelný text do nesmyslných sekvencí bajtů, takže jej může číst pouze osoba, která má dešifrovací klíč nebo tajný kód. Tento proces hraje důležitou roli při zabezpečení vašeho obsahu. Pomáhá zakódovat obsah, ověřit původ dokumentu, prokázat, že obsah nebyl po odeslání změněn, a zajistit, aby data z dokumentu byla v bezpečí.

Tento článek vysvětluje, jak Aspose.Words umožňuje zašifrovat dokument a jak zkontrolovat, zda má dokument šifrování nebo ne.

## Šifrování pomocí hesla

Chcete-li zašifrovat dokument, použijte vlastnost **Password** k zadání hesla, které funguje jako šifrovací klíč. Tím se upraví obsah vašeho dokumentu a bude nečitelný. Zašifrovaný dokument bude vyžadovat zadání tohoto hesla před jeho otevřením.

{{% alert color="primary" %}}

Můžete najít příslušnou vlastnost **Password** pro požadovaný formát. Každý formát uložení dokumentu v [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving) má odpovídající třídu obsahující možnosti uložení pro tento formát. Například Vlastnost [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) ve třídě [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) pro DOC nebo vlastnost [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/) ve třídě [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) Pro DOCX, DOCM, DOTX, DOTM, a FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Upozorňujeme, že šifrování podporují pouze určité formáty dokumentů. Například RTF nepodporuje šifrování.

{{% /alert %}}

Níže uvedená tabulka uvádí formáty a šifrovací algoritmy podporované Aspose.Words:

| Formát | Podporované šifrování při načítání | Podporované šifrování při ukládání |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR encryption40-bit RC4 EncryptionCryptoAPI RC4 Encryption | RC4 šifrování (40-bit) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 Standardní EncryptionECMA-376 Agilní Šifrování | ECMA-376 Standardní Šifrování (AES128 + SHA1) |
| ODT, OTT | ODF Šifrování (Blowfish/AES) | ODF šifrování (AES256 + SHA256) |
| PDF | RC4 šifrování (40/128 bitů) |

Následující příklad kódu ukazuje, jak zašifrovat dokument pomocí hesla:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## Zkontrolujte, zda je dokument šifrován

V některých případech můžete mít nečitelný dokument a chcete mít jistotu, že je dokument zašifrovaný a není poškozen nebo komprimován.

Chcete-li zjistit, zda je dokument zašifrován a zda je vyžadováno heslo, můžete použít vlastnost [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) třídy [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo). Tato vlastnost vám také umožní provést nějakou akci před načtením dokumentu, například informovat uživatele o zadání hesla.

Následující příklad kódu ukazuje, jak zjistit šifrování dokumentu:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## Otevření dokumentu s heslem nebo bez něj

Když jsme se ujistili, že je dokument šifrován, můžeme se pokusit tento dokument otevřít bez hesla, což by mělo vést k výjimce.

Následující příklad kódu ukazuje, jak zkusit otevřít šifrovaný dokument bez hesla:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

Poté, co jsme viděli, že šifrovaný dokument nelze otevřít bez hesla, můžeme se pokusit jej otevřít zadáním hesla.

Následující příklad kódu ukazuje, jak zkusit otevřít šifrovaný dokument pomocí hesla:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
