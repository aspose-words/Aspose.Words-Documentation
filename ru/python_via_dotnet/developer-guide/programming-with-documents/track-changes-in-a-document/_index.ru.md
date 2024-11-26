---
title: Отслеживать изменения в документе
second_title: Aspose.Words для Python via .NET
articleTitle: Отслеживать изменения в документе
linktitle: Отслеживать изменения в документе
description: "Отслеживайте изменения содержимого и форматирования, внесенные вами или другими пользователями, с помощью Python. Получайте доступ к отдельным редакциям документа и применяйте к ним различные свойства."
type: docs
weight: 270
url: /ru/python-net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Функция отслеживания изменений, также известная как проверка, позволяет отслеживать изменения в содержании и форматировании, внесенные вами или другими пользователями. Эта функция отслеживания изменений с помощью Aspose.Words поддерживает отслеживание изменений с помощью Microsoft Word. С помощью этой функции вы можете получить доступ к отдельным редакциям вашего документа и применить к ним различные свойства.

Когда вы включите функцию отслеживания изменений, все вставленные, удаленные и измененные элементы документа будут визуально выделены с информацией о том, кем, когда и что было изменено. Объекты, которые содержат информацию о том, что было изменено, называются "отслеживаемыми изменениями". Например, предположим, что вы хотите просмотреть документ и внести в него важные изменения – это может означать, что вам необходимо внести правки. Кроме того, вам может потребоваться вставить комментарии для обсуждения некоторых изменений. Вот где пригодится отслеживание изменений в документах.

В этой статье объясняется, как управлять изменениями, внесенными многими рецензентами в один и тот же документ, и отслеживать их, а также свойства для отслеживания изменений.

{{% alert color="primary" %}}

Обратите внимание, что функция комментариев в Aspose.Words, так же как и в Microsoft Word, может быть связана с отслеживанием изменений. Однако помните, что комментарии полностью независимы от отслеживания изменений.

{{% /alert %}}

## Что такое Пересмотр

Прежде чем перейти к рассмотрению изменений, давайте объясним значение изменений. [Revision](https://reference.aspose.com/words/python-net/aspose.words/revision/) - это изменение, которое происходит в одном узле документа, в то время как группа изменений, представленная классом [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/), представляет собой группу последовательных изменений, которые происходят во многих узлах документа. По сути, revision - это инструмент для отслеживания изменений.

Изменения используются в функции отслеживания изменений и в функции сравнения документов, где изменения отображаются в результате сравнения. Таким образом, изменения в функции отслеживания изменений показывают, кем и что было изменено.

{{% alert color="primary" %}}

Обратите внимание, что Microsoft Word не позволяет просматривать отдельные ревизии, а только последовательные ревизии как единое целое. Но Aspose.Words устраняет это ограничение с помощью класса [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/).

{{% /alert %}}

Aspose.Words поддерживает различные типы редакций, как и в Microsoft Word, такие как вставка, удаление, FormatChange, StyleDefinitionChange и перемещение. Все типы редакций представлены перечислением [RevisionType](https://reference.aspose.com/words/python-net/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Обратите внимание, что изменения приводят к результату, аналогичному Microsoft Word, но Aspose.Words не определяет форматирование при отслеживании изменений.

{{% /alert %}}

## Запуск и остановка отслеживания изменений

Редактирование документа обычно не считается доработкой, пока вы не начнете его отслеживать. Aspose.Words позволяет автоматически отслеживать все изменения в вашем документе с помощью простых шагов. Вы можете легко запустить процесс отслеживания изменений, используя метод [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/). Если вам нужно остановить процесс отслеживания изменений, чтобы любые будущие правки не считались ревизиями, вам нужно будет использовать метод [stop_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/stop_track_revisions/).

{{% alert color="primary" %}}

Обратите внимание, что метод [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) не изменяет статус свойства [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) и не использует его значение для отслеживания изменений. Кроме того, если узел был перемещен из одного местоположения в другое внутри отслеживаемого документа, то будут созданы изменения перемещения, включая диапазон перемещения от и до.

{{% /alert %}}

В конце процесса отслеживания изменений в вашем документе у вас будет возможность даже принять все изменения или отклонить их, чтобы вернуть документ к его первоначальному виду. Этого можно достичь, используя метод [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) или [reject_all](https://reference.aspose.com/words/python-net/aspose.words/revisioncollection/reject_all/). Кроме того, вы можете принять или отклонить каждую редакцию отдельно, используя метод [accept](https://reference.aspose.com/words/python-net/aspose.words/revision/accept/) или [reject](https://reference.aspose.com/words/python-net/aspose.words/revision/reject/).

Все изменения будут отслеживаться в течение одной итерации с момента запуска процесса до момента его остановки. Связь между различными итерациями представлена в следующем сценарии: вы завершаете процесс отслеживания, затем вносите некоторые изменения и снова начинаете отслеживать изменения. В этом случае все изменения, которые вы не приняли или отклонили, будут отображены снова.

{{% alert color="primary" %}}

Обратите внимание, что метод [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) аналогичен методу "Принять все изменения" в Microsoft Word.

{{% /alert %}}

В следующем примере кода показано, как работать с отслеживанием изменений:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-AcceptAllRevisions.py" >}}

В следующем примере кода показано, как генерируются изменения при перемещении узла в отслеживаемом документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-MoveNodeInTrackedDocument.py" >}}

## Управление изменениями и их хранение в виде ревизий

С помощью функции отслеживания предыдущих изменений вы можете понять, какие изменения были внесены в ваш документ и кто внес эти изменения. В то время как с помощью функции [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) вы принудительно сохраняете любые изменения в вашем документе в виде ревизий.

Aspose.Words позволяет проверить, есть ли в документе редакция или нет, используя свойство [has_revision](https://reference.aspose.com/words/python-net/aspose.words/document/has_revisions/). Если вам не нужно автоматически отслеживать изменения в вашем документе с помощью методов start_track_revisions и stop_track_revisions, вы можете использовать свойство [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/), чтобы проверить, отслеживаются ли изменения при редактировании документа в Microsoft Word и сохраняются ли они в виде изменений.

Функция [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) вносит правки вместо реальных изменений DOM. Но сами правки являются отдельными. Например, если вы удаляете какой-либо абзац, Aspose.Words внесите его в качестве правки, пометив как удаленный, вместо того, чтобы удалять его.

Кроме того, Aspose.Words позволяет проверить, был ли объект вставлен, удален или изменено форматирование, используя свойства [is_delete_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_delete_revision/), [is_format_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_format_revision/), [is_insert_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_insert_revision/), [is_move_from_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_from_revision/), и [is_move_to_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_to_revision/).

{{% alert color="primary" %}}

Обратите внимание, что между самими изменениями и свойством [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) нет никакой связи. Кроме того, вы можете принимать/отклонять изменения независимо от функции отслеживания изменений.

{{% /alert %}}

В следующем примере кода показано, как применять различные свойства с изменениями:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShapeRevision.py" >}}
