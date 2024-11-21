---
title: Avisos ao salvar em PDF/A e PDF/UA
second_title: Aspose.Words para Java
articleTitle: Avisos de Problemas de Acessibilidade Ao Salvar em PDF/A e PDF/UA
linktitle: Avisos de Problemas de Acessibilidade Ao Salvar em PDF/A e PDF/UA
description: "PDF/A e PDF/UA impõem requisitos de acessibilidade relacionados com o conteúdo do documento. Ao salvar em PDF/A ou PDF/UA Java e o problema viola a conformidade, um aviso é emitido."
type: docs
weight: 29
url: /pt/java/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

Os formatos PDF/A e PDF/UA impõem uma série de requisitos de acessibilidade relacionados com o conteúdo do documento que não pode ser cumprido durante a conversão automática do Word para PDF. Estes requisitos são descritos no artigo anterior * "Trabalhar com PDF/A ou PDF/UA"*. Agora os avisos são emitidos para alguns desses problemas.

Os avisos são emitidos ao salvar para um dos formatos PDF/A ou PDF/UA e o problema viola a conformidade. Por exemplo, o aviso sobre o título do documento em falta será emitido ao salvar para PDF/UA e não será emitido ao salvar para PDF/A.

Todos os avisos são de [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**.MinorFormattingLoss** e [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/)**. Pdf**. Aqui está uma lista dos novos valores de aviso Descrição:

|  Descrição valor de aviso |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "O título da documentação desapareceu. Isso viola os requisitos de conformidade. O documento de saída não será totalmente compatível." |                          |   {{< emoticons/tick >}}  |
|  "O documento contém títulos que não são consecutivos. Isso viola os requisitos de conformidade. O documento de saída não será totalmente compatível." |                          |   {{< emoticons/tick >}}  |
|  "Há formas sem texto alternativo no documento. Isso viola os requisitos de conformidade. O documento de saída não será totalmente compatível." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Há tabelas sem texto alternativo no documento. Isso viola os requisitos de conformidade. O documento de saída não será totalmente compatível." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Há hiperlinks sem texto alternativo no documento. Isso viola os requisitos de conformidade. O documento de saída não será totalmente compatível." |                          |   {{< emoticons/tick >}}  |
|  "Há tabelas sem fila de cabeçalho/coluna no documento. Isso viola os requisitos de conformidade. O documento de saída não será totalmente compatível." |                          |   {{< emoticons/tick >}}  |
|  "O documento contém caracteres Unicode PUA. Isso viola os requisitos de conformidade. O documento de saída não será totalmente compatível." |   {{< emoticons/tick >}}  |                          |
|  "O documento contém .notdef glyphS. Isso viola os requisitos de conformidade. O documento de saída não será totalmente compatível." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
