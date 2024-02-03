---
title: Avisos ao salvar em PDF/A e PDF/UA
second_title: Aspose.Words para .NET
articleTitle: Avisos de problemas de acessibilidade ao salvar em PDF/A e PDF/UA
linktitle: Avisos de problemas de acessibilidade ao salvar em PDF/A e PDF/UA
description: "PDF/A e PDF/UA impõem requisitos de acessibilidade relacionados ao conteúdo do documento. Ao salvar em PDF/A ou PDF/UA em C# e o problema violar a conformidade, um aviso será emitido."
type: docs
weight: 29
url: /pt/net/warnings-when-saving-to-pdfa-and-pdfua/
---

Os formatos PDF/A e PDF/UA impõem uma série de requisitos de acessibilidade relacionados ao conteúdo do documento que não podem ser atendidos durante a conversão automática de Word para PDF. Esses requisitos estão descritos no artigo anterior *"Trabalhar com PDF/A ou PDF/UA"*. Agora são emitidos avisos para alguns desses problemas.

Avisos são emitidos ao salvar em um dos formatos PDF/A ou PDF/UA e o problema viola a conformidade. Por exemplo, o aviso sobre a falta do título do documento será emitido ao salvar em PDF/UA e não será emitido ao salvar em PDF/A.

Todos os avisos são de [WarningType](https://reference.aspose.com/words/net/aspose.words/warningtype/)**.MinorFormattingLoss** e [WarningSource](https://reference.aspose.com/words/net/aspose.words/warningsource/)**.Pdf**. Aqui está uma lista dos novos valores de aviso de descrição:

|  Valor de aviso da descrição |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Falta o título do documento. Isso viola os requisitos de conformidade. O documento de saída não será totalmente compatível." |                          |   {{< emoticons/tick >}}  |
|  "O documento contém títulos cujos níveis não são consecutivos. Isto viola os requisitos de conformidade. O documento de saída não será totalmente compatível." |                          |   {{< emoticons/tick >}}  |
|  "Existem formas sem texto alternativo no documento. Isso viola os requisitos de conformidade. O documento de saída não será totalmente compatível." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Existem tabelas sem texto alternativo no documento. Isso viola os requisitos de conformidade. O documento de saída não será totalmente compatível." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Existem hiperlinks sem texto alternativo no documento. Isso viola os requisitos de conformidade. O documento de saída não será totalmente compatível." |                          |   {{< emoticons/tick >}}  |
|  "Existem tabelas sem linha/coluna de cabeçalho no documento. Isso viola os requisitos de conformidade. O documento de saída não será totalmente compatível." |                          |   {{< emoticons/tick >}}  |
|  "O documento contém caracteres Unicode PUA. Isso viola os requisitos de conformidade. O documento de saída não será totalmente compatível." |   {{< emoticons/tick >}}  |                          |
|  "O documento contém glyphs .notdef. Isso viola os requisitos de conformidade. O documento de saída não será totalmente compatível." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |