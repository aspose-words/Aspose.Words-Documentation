---
title: Licencias y Suscripción
second_title: Aspose.Words para C++
articleTitle: Licencias y Suscripción
linktitle: Licencias y Suscripción
description: "Aspose.Words for С++ ofrece diferentes planes de compra u ofrece una Prueba Gratuita y una Licencia Temporal de 30 días para su evaluación utilizando Políticas de Licencias y Suscripción."
type: docs
weight: 60
url: /es/cpp/licensing/
---

A veces, para estudiar mejor el sistema, desea sumergirse en el código lo más rápido posible. Para facilitar esto, Aspose.Words ofrece diferentes planes de compra u ofrece una prueba gratuita y una Licencia Temporal de 30 días para su evaluación.

{{% alert color="primary" %}}

Tenga en cuenta que hay una serie de políticas y prácticas generales que lo guían sobre cómo evaluar, licenciar adecuadamente y comprar nuestros productos. Puedes encontrarlos en el [Políticas de Compra y Preguntas frecuentes](https://purchase.aspose.com/policies/) sección.

{{% /alert %}}

## Prueba Gratuita o Licencia Temporal

Aspose.Words es un software increíble que los desarrolladores pueden probar antes de comprarlo.

### Prueba Gratuita

La versión de evaluación es la misma que la comprada: la [Versión de prueba](https://releases.aspose.com/words/) simplemente adquiere una licencia cuando agrega algunas líneas de código para aplicar la licencia.

La versión de prueba de Aspose.Words sin la licencia especificada proporciona la funcionalidad completa del producto, pero inserta una marca de agua evaluativa en la parte superior del documento al cargarlo y guardarlo, y limita el tamaño máximo del documento a unos pocos cientos de párrafos.

### Licencia Temporal

Si desea probar Aspose.Words sin las limitaciones de la versión de prueba, también puede solicitar una Licencia Temporal de 30 días. Para obtener más detalles, consulte el [Obtenga una Licencia Temporal](https://purchase.aspose.com/temporary-license/) página.

## Licencia Adquirida

Después de la compra, debe aplicar el archivo de licencia o incluirlo como recurso incrustado. Esta sección describe las opciones de cómo se puede hacer esto y también comenta algunas preguntas comunes.

{{% alert color="primary" %}}

Necesita configurar la licencia:

* solo una vez por dominio de aplicación
* antes de usar cualquier otra clase Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Puede encontrar información sobre precios en el [Información de Precios](https://purchase.aspose.com/pricing/words/family/) página.

{{% /alert %}}

### Protección De Su Licencia Adquirida

Después de comprar una licencia, debe leer detenidamente la información en página [Protección De Su Licencia Adquirida](https://purchase.aspose.com/orders/protecting-your-license-file) para proteger su archivo de licencia. Tenga en cuenta que esta página solo está disponible para verla si tiene una licencia paga.

### Opciones de Solicitud de Licencia

Las licencias se pueden aplicar desde varias ubicaciones:

* Ruta explícita
* La carpeta que contiene el archivo `Aspose.Words_` \*.dll
* La carpeta que contiene el ensamblado que llamó a `Aspose.Words_`\*.dll
* La carpeta que contiene el conjunto de entrada (su *.exe*)
* Un recurso incrustado en el ensamblado se llama `Aspose.Words_`\*.dll

A menudo, la forma más sencilla de establecer una licencia es colocar el archivo de licencia en la misma carpeta que `Aspose.Words_` \*.dll y especificar solo el nombre del archivo sin la ruta.

{{% alert color="primary" %}}

Utilice el método [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) para licenciar un componente.

Llamar a **SetLicense** varias veces no es dañino, solo desperdicia tiempo del procesador.

{{% /alert %}}

#### Aplicar Licencia Mediante un Objeto de Archivo o Secuencia

Al desarrollar su aplicación, llame a **SetLicense** en su código de inicio antes de usar las clases Aspose.Words.

##### Cargar una licencia desde un archivo

Con el método [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/), puede intentar encontrar el archivo de licencia en las carpetas de recursos incrustados o ensamblados para usarlo más adelante.

El siguiente ejemplo de código muestra cómo inicializar una licencia desde una carpeta:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-file.h" >}}

##### Cargar una licencia desde un objeto Stream

El siguiente ejemplo de código muestra cómo inicializar una licencia desde una secuencia utilizando otro método [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-stream.h" >}}

#### Incluya el Archivo de licencia como Recurso Incrustado

Una forma ordenada de empaquetar una licencia con su aplicación y asegurarse de que no se pierda es incluirla como un recurso incrustado. La forma de incrustar y utilizar los recursos depende de su plataforma de destino.

##### Windows

Supongamos que ha agregado la licencia como recurso, como se muestra a continuación.

```
recurso.h
# definir IDR_ASPOSE_WORDS_LIC 101
```

```
recurso.rc
IDR_ASPOSE_WORDS_LIC RCDATA "Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

Puede leer sobre cómo trabajar con archivos de recursos en el [Trabajar con Archivos de Recursos](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) página.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo inicializar una licencia desde un recurso incrustado utilizando el método [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-windows.h" >}}

##### Linux

Existe una forma similar de incrustar recursos en Linux en un ejecutable.

{{% alert color="primary" %}}

Para obtener más información, consulte [Incrustación de recursos en ejecutables usando GCC](https://stackoverflow.com/questions/4158900/embedding-resources-in-executable-using-gcc/4158997#4158997).

{{% /alert %}}

El siguiente ejemplo de código de código muestra cómo inicializar una licencia desde un recurso incrustado utilizando el método [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-linux.h" >}}

### Cambiar el Nombre del Archivo de Licencia

El nombre de archivo de la licencia no tiene que ser " Aspose.Words.LIC". Puede cambiarle el nombre a su gusto y usar ese nombre al configurar una licencia en su aplicación.

### Excepción" No se puede encontrar el nombre de archivo de la licencia"

Cuando compra y descarga una licencia, el sitio web de Aspose nombra el archivo de licencia * " Aspose.Words.Lic."*. Descargue el archivo de licencia usando su navegador. En este caso, algunos navegadores reconocen el archivo de licencia como XML y lo anexan.extensión xml, por lo que el nombre completo del archivo en su computadora se convierte en * " Aspose.Words.lic.XML"*.

Cuando Microsoft Windows está configurado para ocultar extensiones para tipos de archivos conocidos (desafortunadamente, este es el valor predeterminado en la mayoría de las instalaciones de Windows), el archivo de licencia aparecerá como * " Aspose.Words. LIC " * en Windows Explorador. Probablemente pensarás que este es el nombre real del archivo y llamarás **SetLicense** pasándolo * " Aspose.Words.LIC"*, pero no existe tal archivo, de ahí la excepción.

Para resolver el problema, cambie el nombre del archivo para eliminar lo invisible .extensión xml. También le recomendamos que desactive la opción" ocultar extensiones " en Microsoft Windows.

## Uso de Varios Productos Aspose

Si usa varios productos Aspose en su aplicación, como Aspose.Words y `Aspose.Cells`, estos son algunos consejos útiles:

* Establezca la licencia para cada producto Aspose por separado. Incluso si tiene un único archivo de licencia para todos los componentes, por ejemplo, "Aspose.Total.lic", aún debe llamar a **SetLicense** por separado para cada producto Aspose que use en su aplicación.
* Utilice el Nombre de la Clase de Licencia Completa. Cada producto Aspose tiene una clase **License** en su propio espacio de nombres. Por ejemplo, Aspose.Words tiene [Aspose.Words.License](https://reference.aspose.com/words/cpp/aspose.words/license/) y `Aspose.Cells` tiene `Aspose.Cells`.Clase de licencia. El uso del nombre de clase completo le permite evitar confusiones sobre qué licencia se aplica a qué producto.
