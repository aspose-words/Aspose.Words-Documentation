﻿---
title: Sintaxis de Mail Merge Plantilla a partir de Mustache
second_title: Aspose.Words por Java
articleTitle: Sintaxis de Mail Merge Plantilla a partir de Mustache
linktitle: Sintaxis de Mail Merge Plantilla a partir de Mustache
type: docs
description: "Cree plantillas con sintaxis Mustache. La sintaxis Mustache es la única opción que se puede usar con plantillas que no contienen campos (HTML o TXT). Con las plantillas de Word, tiene dos opciones: campos o sintaxis Mustache usando Java."
keywords: "mail merge template mustache syntax java, Mail Merge java, mustache syntax java"
weight: 40
url: /es/java/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words le permite crear plantillas con sintaxis mustache además de las plantillas familiares. A Mustache es una variante alternativa de la sintaxis de la plantilla que consta de nombres de etiquetas encerrados y respaldados por un objeto modelo que contiene los datos de la plantilla.

La sintaxis Mustache es la única opción que se puede usar con plantillas que no contienen campos, como las plantillas HTML y TXT. Con las plantillas de Word, tiene dos opciones para usar campos o sintaxis Mustache.

La sintaxis Mustache admite la etiqueta *foreach*, que es una alternativa para usar Mail Merge con regiones. Entonces, el beneficio es que puede usar la sintaxis mustache si por alguna razón no puede o simplemente no desea usar campos de combinación y regiones de combinación.

También puede combinar los campos Mail Merge con algunos campos adicionales utilizando la etiqueta *foreach* como se muestra en la imagen a continuación.

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax.png" alt="mustache_syntax_aspose_words_java" style="width:800px"/>

## Crear una plantilla Mustache

El primer punto importante a aclarar es que Mustache no es un motor de plantillas. Mustache es otra variante de sintaxis que está disponible para cualquier plantilla en un [formato de carga](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) compatible con Aspose.Words. Por lo tanto, puede crear dicha plantilla tanto mediante programación como a través de una interfaz, solo necesita incluir cierta sintaxis y cumplir con la especificación Mustache.

Supongamos que necesita enviar el mismo correo electrónico a 50 destinatarios para personalizar el saludo con sus nombres correspondientes. Puede reemplazar el nombre del destinatario por un marcador de posición como el siguiente:

> Dear {{FirstName}}
>
> I hereby...

La pregunta aquí: ¿cómo puede crear 50 correos electrónicos a partir de 1 sola plantilla Mustache? Para responder a eso, debe realizar un Mail Merge con regiones para llenar las llaves para los marcadores de posición en la plantilla con datos reales y generar un documento de salida.

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-template.png" alt="mustache_template_aspose_words_java" style="width:650px"/>

{{% alert color="primary" %}}

Como observa en el ejemplo anterior, en Mustache necesita usar llaves para los marcadores de posición que se ven como mustache cuando gira las llaves 90 grados en el sentido de las agujas del reloj.

{{% /alert %}}

## Trabajar con la sintaxis Mustache

Mustache se representa como un orden sin lógica, ya que carece de declaraciones de flujo de control específicas, como *for* bucles y *if* y *else* condiciones. Pero puede usar las etiquetas de sección procesando listas y lambdas para lograr una evaluación condicional y un bucle. Entonces, para incluir la sintaxis Mustache dentro de la operación Mail Merge, deberá usar la propiedad [UseNonMergeFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getUseNonMergeFields) y establecer su valor en *True*.

El siguiente ejemplo de código muestra cómo reemplazar las etiquetas Mustache con datos específicos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeUsingMustacheTemplateSyntax-MustacheSyntaxUsingDataTable.java" >}}

Puede notar la diferencia entre el documento antes de ejecutar Mail Merge con regiones junto con la aplicación de la propiedad **UseNonMergeFields**:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax-1.png" alt="mustache_syntax_aspose_words_java" style="width:400px"/>

{{% alert color="primary" %}}

Una sección comienza con una libra y termina con una barra inclinada. Es decir, `{{#foreach list}}` comienza una sección "foreach" mientras que `{{/foreach list}}` la finaliza.

{{% /alert %}}

Y después de aplicar el Mail Merge con regiones:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax-2.png" alt="mustache_syntax_result_aspose_words_java" style="width:300px"/>

## Use los campos `IF` para Hacer que Mail Merge Sea Inteligente

Aspose.Words le permite usar Mail Merge campos y Mustache etiquetas con la instrucción `IF`. Los campos `IF` se pueden usar en cualquier documento Mail Merge para suprimir espacios y comas no deseados si un campo está en blanco.

La fórmula del campo `IF` se muestra a continuación:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Aquí, la Condición puede ser un campo de combinación o una etiqueta Mustache.

Por ejemplo, puede usar los campos `IF` si necesita insertar "su", "ella", " él " o "ella" según el género de la siguiente manera:

**{ IF { MERGEFIELD Gender } = "MALE" "texto verdadero" " texto falso"}**

**{ IF "{{ GENDER }}" = "MALE" "texto verdadero" " texto falso"}**

El siguiente ejemplo de código muestra cómo realizar una operación Mail Merge con Mustache etiquetas y `IF` campos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeUsingMustacheTemplateSyntax-UseOfIfElseMustacheSyntax.java" >}}

Puede notar la diferencia entre el documento antes de aplicar la propiedad **UseNonMergeFields**:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-if-field-1.png" alt="mustache_if_field_aspose_words_java" style="width:800px"/>

Y después de aplicar la propiedad **UseNonMergeFields**:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-if-field-2.png" alt="mustache_if_field_2_aspose_words_java" style="width:800px"/>
