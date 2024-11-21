---
title: Включване на функции на OpenType в Java
second_title: Aspose.Words вместо Java
articleTitle: Включване на функции на OpenType
linktitle: Включване на функции на OpenType
description: "Разширена типография в Aspose.Words вместо Java."
type: docs
weight: 25
url: /bg/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType е формат на шрифта, въведен, за да осигури по-добра поддръжка за международни езици и системи за писане в сравнение с PostScript и TrueType. Характеристиките на разположението на OpenType са известни като OpenType функции. Aspose.Words.. Shaping.HarfBuzz пакет осигурява подкрепа за функции на OpenType в Aspose.Words с помощта на `HarfBuzz` двигател, оформящ текст.

Aspose.Words е в състояние да използва обекти с текстова форма отвън. Формататор на текст представлява шрифт и изчислява оформянето на информация за текст. Документът обикновено се отнася до няколко шрифта, като по този начин е необходима фабрика за текстови формировачи. Този пакет съдържа прилагане на текстов формат фабрика, използвана от Aspose.Words..Layot.LayoutOptions.TextShaperFactory собственост.

{{% alert color="primary" %}}

Образуването на текст се извършва само при износ в PDF или XPS формати.

{{% /alert %}}

В един типичен пример за приложение на текстилна фабрика се споделя между всички документи инстанции. Всеки път, когато се създава текстов форматиращ файл с шрифтове е достъпен. Прегледът на файл с шрифт е скъпа операция, като по този начин се препоръчва кеширане. Aspose.Words Приложения BasicTextShaper Клас кеш, който увива текстов формат фабрика за внедряване и cashes текстов формат инстанции върнати от обвита фабрика.

Следният пример за код показва как да включите поддръжката на OpenType функции.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
