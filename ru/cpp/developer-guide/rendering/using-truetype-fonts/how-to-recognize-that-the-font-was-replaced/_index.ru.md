---
title: Как распознать, что Шрифт Был Заменен в C++
second_title: Aspose.Words для C++
articleTitle: Как распознать, Что Шрифт Был Заменен
linktitle: Как распознать, Что Шрифт Был Заменен
description: "Если вы не уверены, почему изменился формат документа или почему определенный шрифт выглядит не так, как ожидалось, вам могут помочь сообщения с предупреждениями о замене шрифта."
type: docs
weight: 13
url: /ru/cpp/how-to-recognize-that-the-font-was-replaced/
timestamp: 2024-09-24-14-35-44
---

Иногда может быть непонятно, почему изменился формат документа или почему какой-то шрифт выглядит не так, как ожидалось. В таких случаях на помощь приходят сообщения о замене шрифта, реализованные в интерфейсе IWarningCallback. Они имеют тип предупреждения [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) и стандартный текстовый формат описания "Шрифт '<OriginalFont>' не найден. Используя '<SubstitutionFont>' шрифт вместо этого. Причина: <Reason>", по следующим причинам:

- "альтернативное название из документа" – для замены на [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "подстановка fontconfig" – для подстановки по правилу настройки шрифта
- "подстановка в таблицу" – для подстановки по правилу таблицы
- "подстановка информации о шрифте" – для подстановки по правилу информации о шрифте
- "замена шрифта по умолчанию" – для замены по правилу шрифта по умолчанию
- "первый доступный шрифт" – для замены на первый доступный шрифт
