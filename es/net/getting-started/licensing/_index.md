---
title: Licencia y suscripción
second_title: Aspose.Words para .NET
articleTitle: Licencia y suscripción
linktitle: Licencia y suscripción
description: "Aspose.Words para .NET ofrece diferentes planes de compra u ofrece una Prueba Gratuita y una Licencia Temporal de 30 días para evaluación utilizando políticas de Licencia y Suscripción en C#."
type: docs
weight: 55
url: /es/net/licensing/
---

A veces, para estudiar mejor el sistema, es necesario profundizar en el código lo más rápido posible. Para facilitar esto, Aspose.Words ofrece diferentes planes de compra u ofrece una prueba gratuita y una licencia temporal de 30 días para evaluación.

{{% alert color="primary" %}}

Tenga en cuenta que existe una serie de políticas y prácticas generales que le guían sobre cómo evaluar, licenciar adecuadamente y comprar nuestros productos. Puedes encontrarlos en la sección ["Políticas de compra y preguntas frecuentes"](https://purchase.aspose.com/policies/).

{{% /alert %}}

## Prueba gratuita o licencia temporal

Aspose.Words es un software increíble que los desarrolladores pueden probar antes de comprarlo.

### Prueba gratis

La versión de evaluación es la misma que la comprada: el [Versión de prueba](https://releases.aspose.com/words/) simplemente obtiene la licencia cuando agrega algunas líneas de código para aplicar la licencia.

La versión de prueba de Aspose.Words sin la licencia especificada proporciona funcionalidad completa del producto, pero inserta una marca de agua de evaluación en la parte superior del documento al cargarlo y guardarlo y limita el tamaño máximo del documento a unos pocos cientos de párrafos.

### Licencia Temporal

Si deseas probar Aspose.Words sin las limitaciones de la versión de prueba, también puedes solicitar una Licencia Temporal de 30 días. Para obtener más detalles, consulte la página ["Obtenga una licencia temporal"](https://purchase.aspose.com/temporary-license/).

## Licencia comprada

Después de la compra, debe aplicar el archivo de licencia o incluirlo como un recurso integrado. Esta sección describe opciones sobre cómo se puede hacer esto y también comenta algunas preguntas comunes.

{{% alert color="primary" %}}

Necesitas configurar la licencia:

* solo una vez por dominio de aplicación

* antes de usar cualquier otra clase Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Puede encontrar información sobre precios en la página ["Información de precio"](https://purchase.aspose.com/pricing/words/family).

{{% /alert %}}

### Proteger su licencia comprada

Después de comprar una licencia, debe leer atentamente la información en la página ["Protección de su licencia adquirida"](https://purchase.aspose.com/orders/protecting-your-license-file) para proteger su archivo de licencia. Tenga en cuenta que esta página está disponible para su visualización solo si tiene una licencia paga.

### Opciones de solicitud de licencia

Las licencias se pueden solicitar desde varias ubicaciones:

* Ruta explícita
* La carpeta que contiene el archivo *Aspose.Words.dll*.
* La carpeta que contiene el ensamblado que llamó *Aspose.Words.dll*
* La carpeta que contiene el ensamblaje de entrada (tu *.exe*)
* Un recurso incrustado en el ensamblado se llama *Aspose.Words.dll*.
* Como licencia medida: un nuevo mecanismo de concesión de licencias

Cuando hace referencia a *Aspose.Words.dll* en la aplicación, la biblioteca se copia en su directorio de salida (a menos que *Copiar local* en las propiedades de esa entrada esté establecido en falso). A menudo, la forma más sencilla de configurar una licencia es colocar el archivo de licencia en la misma carpeta que *Aspose.Words.dll* y especificar sólo el nombre del archivo sin la ruta.

{{% alert color="primary" %}}

Utilice el método [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/#setlicense) para obtener la licencia de un componente.

Llamar a **SetLicense** varias veces no es perjudicial, sólo desperdicia tiempo del procesador.

Llamar a [SetMeteredKey](https://reference.aspose.com/words/net/aspose.words/metered/setmeteredkey/) varias veces tampoco es perjudicial, pero sólo desperdicia tiempo del procesador y puede acumular consumo de forma inadecuada.

{{% /alert %}}

#### Aplicar licencia utilizando un archivo o un objeto de transmisión

Al desarrollar su aplicación, llame a **SetLicense** en su código de inicio antes de usar las clases Aspose.Words.

##### Cargar una licencia desde un archivo

Con el método [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/), puede intentar encontrar el archivo de licencia en los recursos integrados o en las carpetas de ensamblaje para su uso posterior.

El siguiente ejemplo de código muestra cómo inicializar una licencia desde una carpeta:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-file.cs" >}}

##### Cargar una licencia desde un objeto Stream

El siguiente ejemplo de código muestra cómo inicializar una licencia desde una secuencia utilizando otro método [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-stream.cs" >}}

#### Incluir el archivo de licencia como recurso integrado

Una buena forma de empaquetar una licencia con su aplicación y asegurarse de que no se pierda es incluirla como un recurso integrado en uno de los ensamblados que llaman a Aspose.Words. Para incluir un archivo como recurso incrustado, siga estos pasos:

1. En Visual Studio, incluya el archivo .lic en el proyecto usando el menú "**Archivo | Agregar artículo existente...**".
2. Seleccione el archivo en el Explorador de soluciones y configure "**Construir acción para incorporar recursos"** en la ventana Propiedades.
3. En su código, invoque **SetLicense** que pasa solo el nombre corto del archivo de recursos.

#### Aplicar licencia medida

Aspose.Words permite a los desarrolladores aplicar una clave medida. Se trata de un nuevo mecanismo de concesión de licencias.

El nuevo mecanismo de concesión de licencias se utilizará junto con el método de concesión de licencias existente. Aquellos clientes que quieran que se les facture según el uso de las funciones API pueden utilizar la licencia medida.

Después de completar todos los pasos necesarios para obtener este tipo de licencia, recibirá las claves, no el archivo de licencia. Esta clave medida se puede aplicar utilizando la clase [Metered](https://reference.aspose.com/words/net/aspose.words/metered/) especialmente introducida para este propósito.

No llame al método **SetMeteredKey** con frecuencia para que este método de licencia acumule adecuadamente el consumo y nos lo informe. Simplemente cree una instancia de la biblioteca Aspose.Words, llame a **SetMeteredKey** una vez, luego deje la biblioteca creada y reutilícela.

El siguiente ejemplo de código muestra cómo configurar claves públicas y privadas limitadas:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-metered-license.cs" >}}

Normalmente es suficiente aplicar la licencia medida una vez al inicio de la solicitud. Sin embargo, si el mecanismo de licencia medida no logra comunicarse con los servidores de Aspose durante 24 horas, Aspose.Words saldrá del modo de licencia y cambiará al modo de evaluación. Para evitar este caso, debe verificar periódicamente el estado de la licencia; si Aspose.Words entra en modo de evaluación, aplique nuevamente la licencia medida.

{{% alert color="primary" %}}

Tenga en cuenta que debe tener una conexión a Internet estable para el uso correcto de la licencia Medida, ya que el mecanismo Medido requiere la interacción constante con nuestros servicios para realizar cálculos correctos. Para obtener más detalles, consulte la sección ["Preguntas frecuentes sobre licencias medidas"](https://purchase.aspose.com/faqs/licensing/metered/).

{{% /alert %}}

### Cambiar el nombre del archivo de licencia

El nombre del archivo de licencia no tiene que ser "Aspose.Words.LIC". Puede cambiarle el nombre a su gusto y utilizar ese nombre al configurar una licencia en su aplicación.

### Excepción "No se puede encontrar el nombre del archivo de licencia"

Cuando compra y descarga una licencia, el sitio web de Aspose nombra el archivo de licencia *"Aspose.Words.LIC"*. Descarga el archivo de licencia usando su navegador. En este caso, algunos navegadores reconocen el archivo de licencia como XML y le añaden la extensión .xml, por lo que el nombre completo del archivo en su computadora se convierte en *"Aspose.Words.lic.XML"*.

Cuando Microsoft Windows está configurado para ocultar extensiones para tipos de archivos conocidos (desafortunadamente, este es el valor predeterminado en la mayoría de las instalaciones de Windows), el archivo de licencia aparecerá como *"Aspose.Words. LIC"* en Windows Explorer. Probablemente pensará que este es el nombre de archivo real y llamará a **SetLicense** pasándole *"Aspose.Words.LIC"*, pero no existe tal archivo, de ahí la excepción.

Para resolver el problema, cambie el nombre del archivo para eliminar la extensión invisible .xml. También te recomendamos desactivar la opción "ocultar extensiones" en Microsoft Windows.

## Uso de múltiples productos Aspose

Si utiliza varios productos Aspose en su aplicación, como Aspose.Words y `Aspose.Cells`, aquí tiene algunos consejos útiles:

* Configure la Licencia para cada producto Aspose por separado. Incluso si tiene un único archivo de licencia para todos los componentes, por ejemplo, "Aspose.Total.lic", aún deberá llamar a **SetLicense** por separado para cada producto Aspose que utilice en su aplicación.
* Utilice el nombre de clase de licencia totalmente calificado. Cada producto Aspose tiene una clase **License** en su propio espacio de nombres. Por ejemplo, Aspose.Words tiene [Aspose.Words.License](https://reference.aspose.com/words/net/aspose.words/license/) y `Aspose.Cells` tiene la clase `Aspose.Cells`.License. El uso del nombre de clase completo le permite evitar confusiones sobre qué licencia se aplica a qué producto.
