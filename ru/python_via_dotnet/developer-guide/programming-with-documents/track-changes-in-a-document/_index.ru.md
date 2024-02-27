---
title: Отслеживать изменения в документе
second_title: Aspose.Words для Python via .NET
articleTitle: Отслеживать изменения в документе
linktitle: Отслеживать изменения в документе
description: "Отслеживайте изменения в содержимом и форматировании, внесенные вами или другими лицами с помощью Python. Получайте доступ к отдельным редакциям документа и применяйте к ним различные свойства."
type: docs
weight: 270
url: /ru/python-net/track-changes-in-a-document/
---

Функция отслеживания изменений, также известная как просмотр, позволяет отслеживать изменения контента и форматирования, внесенные вами или другими пользователями. Эта функция отслеживания изменений с Aspose.Words поддерживает отслеживание изменений в Microsoft Word. Благодаря этой функции вы можете получить доступ к отдельным редакциям вашего документа и применить к ним различные свойства.

Когда вы включаете функцию отслеживания изменений, все вставленные, удаленные и измененные элементы документа будут визуально выделены с информацией о том, кем, когда и что было изменено. Объекты, несущие информацию о том, что было изменено, называются "отслеживающими изменениями". Например, предположим, что вы хотите просмотреть документ и внести важные изменения — это может означать, что вам необходимо внести изменения. Также вам может потребоваться вставить комментарии для обсуждения некоторых изменений. Вот тут-то и пригодится отслеживание изменений в документах.

В этой статье объясняется, как управлять и отслеживать изменения, созданные многими рецензентами в одном документе, а также свойства для отслеживания изменений.

{{% alert color="primary" %}}

Обратите внимание, что функция комментариев в Aspose.Words, как и в Microsoft Word, может быть связана с отслеживанием изменений. Однако помните, что комментарии совершенно не зависят от отслеживания изменений.

{{% /alert %}}

## Что такое ревизия

Прежде чем углубиться в ревизии, давайте объясним значение ревизий. [Revision](https://reference.aspose.com/words/python-net/aspose.words/revision/) — это изменение, которое происходит в одном узле документа, а группа редакций, представленная классом [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/), представляет собой группу последовательных редакций, которые происходят во многих узлах документа. По сути, ревизия — это инструмент отслеживания изменений.

Редакции используются в функции отслеживания изменений и в функции сравнения документов, где редакции появляются в результате сравнения. Таким образом, изменения в функции отслеживания изменений показывают, кем и что было изменено.

{{% alert color="primary" %}}

Обратите внимание, что Microsoft Word не позволяет просматривать отдельные версии, а только позволяет просматривать последовательные версии как единый объект. Но Aspose.Words решает это ограничение с помощью класса [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/).

{{% /alert %}}

Aspose.Words поддерживает различные типы изменений, как и Microsoft Word, такие как вставка, удаление, FormatChange, StyleDefinitionChange и Moving. Все типы ревизий представлены перечислением [RevisionType](https://reference.aspose.com/words/python-net/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Обратите внимание, что версии имеют результат, аналогичный Microsoft Word, но Aspose.Words не обнаруживает форматирование во время отслеживания изменений.

{{% /alert %}}

## Запуск и остановка отслеживания изменений

Редактирование документа обычно не считается исправлением, пока вы не начнете его отслеживать. Aspose.Words позволяет автоматически отслеживать все изменения в документе с помощью простых шагов. Вы можете легко начать процесс отслеживания изменений, воспользовавшись методом [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/). Если вам необходимо остановить процесс отслеживания изменений, чтобы любые будущие правки не считались ревизиями, вам нужно будет использовать метод [stop_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/stop_track_revisions/).

{{% alert color="primary" %}}

Обратите внимание, что метод [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) не меняет состояние свойства [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) и не использует его значение для отслеживания изменений. Кроме того, если узел был перемещен из одного места в другое внутри отслеживаемого документа, будут созданы изменения перемещения, включая диапазон перемещения из и перемещения.

{{% /alert %}}

В конце процесса отслеживания изменений в вашем документе у вас будет возможность даже принять все изменения или отклонить их, чтобы вернуть документ в исходную форму. Этого можно добиться, используя метод [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) или [reject_all](https://reference.aspose.com/words/python-net/aspose.words/revisioncollection/reject_all/). Кроме того, вы можете принять или отклонить каждую редакцию отдельно, используя метод [accept](https://reference.aspose.com/words/python-net/aspose.words/revision/accept/) или [reject](https://reference.aspose.com/words/python-net/aspose.words/revision/reject/).

Все изменения будут отслеживаться за одну итерацию с момента запуска процесса до момента его остановки. Связь между различными итерациями представляется в виде следующего сценария: вы завершаете процесс отслеживания, затем вносите некоторые изменения и снова начинаете отслеживать изменения. В этом сценарии все изменения, которые вы не приняли или отклонили, будут отображены снова.

{{% alert color="primary" %}}

Обратите внимание, что метод [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) аналогичен методу "Принять все изменения" в Microsoft Word.

{{% /alert %}}

В следующем примере кода показано, как работать с отслеживанием изменений:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-AcceptAllRevisions.py" >}}

В следующем примере кода показано, как генерируются версии при перемещении узла внутри отслеживаемого документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-MoveNodeInTrackedDocument.py" >}}

## Управляйте изменениями и сохраняйте их как версии

С помощью предыдущей функции отслеживания изменений вы можете понять, какие изменения были внесены в ваш документ и кто внес эти изменения. Используя функцию [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/), вы принудительно сохраняете любые изменения в документе как версии.

Aspose.Words позволяет вам проверить, есть ли у документа редакция, используя свойство [has_revision](https://reference.aspose.com/words/python-net/aspose.words/document/has_revisions/). Если вам не нужно автоматически отслеживать изменения в вашем документе через методы start_track_revisions и stop_track_revisions, то вы можете использовать свойство [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/), чтобы проверить, отслеживаются ли изменения при редактировании документа в Microsoft Word и сохраняются ли они как ревизии.

Функция [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) вносит изменения вместо реальных DOM изменений. Но сами ревизии отдельные. Например, если вы удалите какой-либо абзац, Aspose.Words сделает его исправленным, пометив его как удаленный, а не удалив.

Кроме того, Aspose.Words позволяет проверить, был ли объект вставлен, удален или изменено форматирование, используя свойства [is_delete_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_delete_revision/), [is_format_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_format_revision/), [is_insert_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_insert_revision/), [is_move_from_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_from_revision/) и [is_move_to_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_to_revision/).

{{% alert color="primary" %}}

Обратите внимание, что между самими редакциями и свойством [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) нет никакой связи. Кроме того, вы можете принимать/отклонять изменения независимо от функции отслеживания изменений.

{{% /alert %}}

В следующем примере кода показано, как применять различные свойства с редакциями:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShapeRevision.py" >}}
