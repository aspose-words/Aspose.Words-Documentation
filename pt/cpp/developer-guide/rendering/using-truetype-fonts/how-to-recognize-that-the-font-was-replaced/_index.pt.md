---
title: Como reconhecer que a fonte foi substituída em C++
second_title: Aspose.Words para C++
articleTitle: Como reconhecer que a fonte foi substituída
linktitle: Como reconhecer que a fonte foi substituída
description: "Se você não sabe por que o layout de um documento foi alterado ou por que uma determinada fonte não tem a aparência esperada, as mensagens de avisos de substituição de fonte podem ajudar."
type: docs
weight: 13
url: /pt/cpp/how-to-recognize-that-the-font-was-replaced/
timestamp: 2024-09-24-14-35-44
---

Às vezes, pode não estar claro por que o layout do documento foi alterado ou por que alguma fonte não parece o esperado. Nesses casos, as mensagens de avisos de substituição de fontes implementadas pela interface IWarningCallback são resgatadas. Eles têm o tipo de aviso [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) e o formato de texto de descrição padrão, "a fonte '<OriginalFont>' não foi encontrada. Usando a fonte ' <SubstitutionFont>'. Motivo: <Reason>", com as seguintes razões:

- "nome alternativo do documento" – para substituição por [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "fontconfig replacement" – para substituição por regra de configuração de fonte
- "substituição de mesa" – para substituição pela regra da mesa
- "substituição de informação de fonte" – para substituição por regra de informação de fonte
- "substituição de fonte padrão" – para substituição pela regra de fonte padrão
- "primeira fonte disponível" – para substituição pela primeira fonte disponível
