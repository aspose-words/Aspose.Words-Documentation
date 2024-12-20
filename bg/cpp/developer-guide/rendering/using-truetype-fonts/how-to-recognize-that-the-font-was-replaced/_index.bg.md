﻿---
title: Как да разпознаете, че шрифтът е заменен в C++
second_title: Aspose.Words за C++
articleTitle: Как да разпознаете, че шрифтът е заменен
linktitle: Как да разпознаете, че шрифтът е заменен
description: "Ако не сте сигурни защо оформлението на документа се е променило или защо определен шрифт не изглежда според очакванията, предупредителните съобщения за заместване на шрифта могат да помогнат."
type: docs
weight: 13
url: /bg/cpp/how-to-recognize-that-the-font-was-replaced/
timestamp: 2024-09-24-14-35-44
---

Понякога може да не е ясно защо оформлението на документа се е променило или защо някои шрифтове не изглеждат според очакванията. В такива случаи предупрежденията за заместване на шрифта, изпълнявани от интерфейса IWarningCallback, идват на Помощ. Те имат предупредителен тип [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) и стандартен текстов формат за описание, "шрифт' <OriginalFont> ' не е намерен. Вместо това използвайте' <SubstitutionFont> ' шрифт. Причина: <Reason>", със следните причини::

- "алтернативно име от документа" – за заместване с [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "заместване на фонтонфиг" - за заместване с доверително правило на шрифта
- "заместване на таблица" – за заместване по правило на таблицата
- "заместване на информация за шрифта" - за заместване с Правило за информация за шрифта
- "заместване на шрифта по подразбиране" - за заместване по подразбиране на шрифта
- "първи Наличен шрифт" – за заместване с първи Наличен шрифт
