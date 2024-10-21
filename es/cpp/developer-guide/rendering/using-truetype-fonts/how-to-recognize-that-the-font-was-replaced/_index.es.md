---
title: Cómo Reconocer Que la Fuente Fue Reemplazada en C++
second_title: Aspose.Words para C++
articleTitle: Cómo Reconocer Que la Fuente Fue Reemplazada
linktitle: Cómo Reconocer Que la Fuente Fue Reemplazada
description: "Si no está seguro de por qué ha cambiado el diseño de un documento o por qué una determinada fuente no se ve como se esperaba, los mensajes de advertencia de sustitución de fuentes pueden ayudarlo."
type: docs
weight: 13
url: /es/cpp/how-to-recognize-that-the-font-was-replaced/
---

A veces, puede no estar claro por qué ha cambiado el diseño del documento o por qué alguna fuente no se ve como se esperaba. En tales casos, los mensajes de advertencia de sustitución de fuentes implementados por la interfaz IWarningCallback vienen al rescate. Tienen el tipo de advertencia [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) y el formato de texto de descripción estándar, " Fuente '<OriginalFont>' no se ha encontrado. Usando '<SubstitutionFont>' fuente en su lugar. Motivo: <Reason>", con las siguientes razones:

- "nombre alternativo del documento" - para la sustitución por [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "sustitución de fontconfig" - para la sustitución por la regla de configuración de fuentes
- "sustitución de tabla" - para la sustitución por regla de tabla
- "sustitución de información de fuente" - para la sustitución por la regla de información de fuente
- "sustitución de fuente predeterminada": para la sustitución de la regla de fuente predeterminada
- "primera fuente disponible" – para sustituirla por la primera fuente disponible
