---
title: Avisos ao salvar em PDF/A e PDF/UA
second_title: Aspose.Words para Java
articleTitle: Avisos de emissão de acessibilidade ao salvar em PDF/A e PDF/UA
linktitle: Avisos de emissão de acessibilidade ao salvar em PDF/A e PDF/UA
description: "PDF/A e PDF/UA impõem requisitos de acessibilidade relacionados com o conteúdo do documento. Ao salvar em PDF/A ou PDF/UA em Java e o problema violar a conformidade, um aviso é emitido."
type: docs
weight: 29
url: /pt/java/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

Os formatos PDF/A e PDF/UA impõem uma série de requisitos de acessibilidade relacionados com o conteúdo do documento que não podem ser cumpridos durante a conversão automática do Word para PDF. Estes requisitos são descritos no artigo anterior *"Working with PDF/A or PDF/UA"*. Agora são emitidos avisos para alguns destes problemas.

Avisos são emitidos ao salvar em um dos formatos PDF/A ou PDF/UA e o problema viola a conformidade. Por exemplo, o Aviso sobre a falta de título do documento será emitido ao salvar em PDF/UA e não será emitido ao salvar em PDF/A.

Todos os avisos são de [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**.MinorFormattingLoss** e [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/) **.Pdf**. Aqui está uma lista dos novos valores de aviso de descrição:

| Descrição valor de advertência | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "O título do documento está em falta. Isso viola os requisitos de Conformidade. O documento de saída não será totalmente compatível." |  | {{< emoticons/tick >}} |
| "O documento contém títulos cujos níveis não são consecutivos. Isso viola os requisitos de Conformidade. O documento de saída não será totalmente compatível." |  | {{< emoticons/tick >}} |
| "Há formas sem texto alternativo no documento. Isso viola os requisitos de Conformidade. O documento de saída não será totalmente compatível." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Há tabelas sem texto alternativo no documento. Isso viola os requisitos de Conformidade. O documento de saída não será totalmente compatível." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Há hiperlinks sem texto alternativo no documento. Isso viola os requisitos de Conformidade. O documento de saída não será totalmente compatível." |  | {{< emoticons/tick >}} |
| "Existem tabelas sem linha/coluna de cabeçalho no documento. Isso viola os requisitos de Conformidade. O documento de saída não será totalmente compatível." |  | {{< emoticons/tick >}} |
| "O documento contém caracteres Unicode PUA. Isso viola os requisitos de Conformidade. O documento de saída não será totalmente compatível." | {{< emoticons/tick >}} |  |
| "O documento contém .glifos notdef. Isso viola os requisitos de Conformidade. O documento de saída não será totalmente compatível." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
