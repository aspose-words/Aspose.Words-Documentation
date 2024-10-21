﻿---
title: Манипулирование шрифтами и проблемы с производительностью в C++
second_title: Aspose.Words для C++
articleTitle: Манипулирование шрифтами и проблемы с производительностью
linktitle: Манипулирование шрифтами и проблемы с производительностью
description: "Aspose.Words для C++ использует полное название шрифта, фамилию, версию, стиль для поиска необходимых данных о шрифте или подходящей замены запрашиваемого шрифта. FontSettings позволяет ускорить загрузку документов."
type: docs
weight: 11
url: /ru/cpp/font-manipulation-and-performance-issues/
---

Все доступные механизмы манипулирования шрифтами содержатся в классе [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings). Этот класс отвечает за выборку шрифтов из определенных источников, а также за процесс замены шрифта, как описано ниже.

## Разбор разрешенных шрифтов

Анализ шрифтов выполняется в несколько этапов:

1. Получение информации о шрифте, выбор из всех доступных шрифтов.
1. Разбор разрешенных шрифтов для получения доступных глифов и метрик (горизонтальных и вертикальных).
1. Разбор разрешенных шрифтов для встраивания и подстановки.

Когда Aspose.Words впервые встречает шрифт в документе, он пытается получить основную информацию о шрифте, такую как полное название шрифта, фамилия, версия, стиль, из файлов шрифтов, расположенных в каждом источнике шрифта. После извлечения всех шрифтов Aspose.Words использует эти сведения для поиска требуемых данных шрифта или подходящей замены запрошенного шрифта.

## Проблема с Производительностью При Замене Шрифтов

Поскольку описанная выше процедура занимает много времени, это может негативно сказаться на производительности приложения при его первом запуске. Однако каждый экземпляр **FontSettings** имеет свой собственный кэш, что может сократить время обработки последующих документов. Например, вы можете совместно использовать экземпляр класса **FontSettings** для разных документов, что позволяет ускорить загрузку документов. Следующий пример демонстрирует это:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

В случае, когда **FontSettings** не определено явно, Aspose.Words использует экземпляр по умолчанию **FontSettings**. Этот экземпляр также автоматически распределяется между документами и может быть извлечен следующим образом:

**С++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## Использование экземпляра по умолчанию FontSettings

Если вы уверены, что для всех обрабатываемых документов требуются одинаковые настройки шрифта, рекомендуется настроить и использовать экземпляр по умолчанию **FontSettings**. Предположим, что вам нужно использовать одинаковые источники шрифтов для всех ваших документов. В этом случае вы можете просто изменить экземпляр по умолчанию следующим образом:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

Пользовательский экземпляр **FontSettings** имеет более высокий приоритет, чем экземпляр по умолчанию.

{{% /alert %}}