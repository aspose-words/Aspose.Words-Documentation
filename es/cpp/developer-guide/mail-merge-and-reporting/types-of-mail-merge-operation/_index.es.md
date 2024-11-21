---
title: Tipos de Operación Mail Merge en C++
second_title: Aspose.Words para C++
articleTitle: Tipos de Mail Merge Operación
linktitle: Tipos de Mail Merge Operación
type: docs
description: "Realice dos tipos diferentes de operaciones mail merge: mail merge simples y mail merge con regiones usando C++. Simple mail merge repite todo el documento por cada registro de origen de datos, mientras que mail merge con regiones repite solo las regiones designadas por registro.."
keywords: "how to execute mail merge c++"
weight: 20
url: /es/cpp/types-of-mail-merge-operations/
timestamp: 2024-09-24-14-35-44
---

La idea principal de mail merge es crear automáticamente un documento o varios documentos en función de su plantilla y los datos obtenidos de su fuente de datos. Aspose.Words le permite realizar dos tipos diferentes de operaciones mail merge: mail merge simple y mail merge con regiones.

El ejemplo más común de uso de simple mail merge es cuando desea enviar un documento para diferentes clientes incluyendo sus nombres al principio del documento. Para hacer esto, debe crear campos de combinación como *First Name* y *Last Name* en su plantilla y luego completarlos con datos de su fuente de datos. Mientras que el ejemplo más común de usar mail merge con regions es cuando desea enviar un documento que incluya pedidos específicos con la lista de todos los artículos dentro de cada pedido. Para hacer esto, deberá crear regiones de combinación dentro de su propia región de plantilla para cada pedido, a fin de completarlo con todos los datos requeridos para los artículos.

La principal diferencia entre ambas operaciones de combinación es que mail merge simple (sin regiones) repite todo el documento por cada registro de origen de datos, mientras que mail merge con regiones repite solo las regiones designadas por registro. Puede pensar en una operación simple mail merge como un caso particular de fusión con regiones donde la única región es todo el documento.

{{% alert color="primary" %}}

La clase [MailMerge](https://reference.aspose.com/words/cpp/class/aspose.words.mailmerging/mailmerge/) representa una funcionalidad mail merge. Con sus propiedades, puede personalizar el comportamiento requerido antes de ejecutar una operación mail merge.

{{% /alert %}}

