---
title: Licencias y Suscripción
second_title: Aspose.Words para Java
articleTitle: Licencias y Suscripción
linktitle: Licencias y Suscripción
description: "Aspose.Words para Java proporciona diferentes planes para la compra o ofrece una prueba gratuita y una licencia temporal de 30 días para la evaluación mediante políticas de licencia y suscripción."
type: docs
weight: 60
url: /es/java/licensing/
timestamp: 2024-01-31-14-23-37
---

A veces, para estudiar mejor el sistema, desea bucear en el código lo más rápido posible. Para facilitarlo, Aspose.Words proporciona diferentes planes para la compra o ofrece una prueba gratuita y una licencia temporal de 30 días para la evaluación.

{{% alert color="primary" %}}

Tenga en cuenta que hay una serie de políticas y prácticas generales que le guían sobre cómo evaluar, licenciar correctamente y comprar nuestros productos. Puedes encontrarlos en el [Políticas de compra y preguntas frecuentes](https://purchase.aspose.com/policies/) sección.

{{% /alert %}}

## Prueba gratuita o licencia temporal

Aspose.Words es un software increíble que los desarrolladores pueden intentar antes de comprar. Puede descargar/instalar fácilmente Aspose.Words para Java y Aspose.Words para Android via Java [desde Maven](https://releases.aspose.com/words/java/) para la evaluación.

### Juicio libre

La versión de evaluación es la misma que la comprada – la versión de prueba simplemente se convierte en licencia cuando se agregan algunas líneas de código para aplicar la licencia.

La versión de prueba Aspose.Words para Java y Aspose.Words para Android via Java sin la licencia especificada proporciona plena funcionalidad de producto, pero inserta una marca de agua evaluativa en la parte superior del documento al cargar y guardar y limita el tamaño máximo del documento a unos pocos cientos párrafos.

### Licencia temporal

Si desea probar Aspose.Words para Java y Aspose.Words para Android via Java sin las limitaciones de la versión de prueba, también puede solicitar una licencia temporal de 30 días. Para más detalles, vea el [Obtenga una licencia temporal](https://purchase.aspose.com/temporary-license/) página.

## Licencia adquirida

Después de la compra, debe aplicar el archivo de licencia o incluir el archivo de licencia como recurso incrustado. Esta sección describe opciones de cómo se puede hacer esto, y también comentarios sobre algunas preguntas comunes.

{{% alert color="primary" %}}

Una licencia es un archivo XML de texto claro que contiene detalles tales como nombre de producto, número de desarrolladores autorizados, fecha de expiración de suscripción, etc.

El archivo está firmado digitalmente, así que no modifique el archivo. Incluso la adición inadvertida de una ruptura de línea extra en el archivo lo invalidará.

{{% /alert %}}

{{% alert color="primary" %}}

Necesita establecer la licencia:

* sólo una vez por dominio de aplicación
* antes de usar cualquier otro Aspose.Words clases

{{% /alert %}}

{{% alert color="primary" %}}

Usted puede encontrar información de precios en [Información sobre precios](https://purchase.aspose.com/pricing/words/family/) página.

{{% /alert %}}

### Protección de su licencia comprada

Después de comprar una licencia, necesita leer cuidadosamente la información en la página [Protección de su licencia comprada](https://purchase.aspose.com/orders/protecting-your-license-file) para proteger su archivo de licencia. Tenga en cuenta que esta página está disponible para ver sólo si tiene una licencia pagada.

### Opciones de aplicación de licencias

Las licencias se pueden aplicar desde diferentes lugares:

* Camino explícito
* La carpeta que contiene el *Aspose.Words JAR* file
* Un recurso integrado en el JAR se llama *Aspose.Words JAR*
* Como Licencia Medida – un nuevo mecanismo de licencias

A menudo la forma más fácil de establecer una licencia es colocar el archivo de licencia en la misma carpeta que *Aspose.Words JAR* y especificar sólo el nombre de archivo sin la ruta.

{{% alert color="primary" %}}

Usar el [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) método para licenciar un componente.

Llamada **SetLicense** múltiples veces no es dañino, sólo desperdicia el tiempo del procesador.

Llamada [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) múltiples veces tampoco es dañino, pero sólo desperdicia tiempo del procesador y puede acumular el consumo inadecuadamente.

{{% /alert %}}

#### Solicitar Licencia Usando un Objeto de Archivo o Stream

{{% alert color="primary" %}}

Call **SetLicense** en su código de inicio antes de usar Aspose.Words clases.

{{% /alert %}}

Al desarrollar una biblioteca de clases, puedes llamar **SetLicense** del constructor estático de su clase que utiliza Aspose.Words. El constructor estático será ejecutado antes de instantánear su clase para asegurar que el Aspose.Words La licencia está instalada correctamente.

##### Cargar una licencia de un archivo

Usando el [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String) método, puede intentar encontrar el archivo de licencia en los recursos o carpeta incrustados que contienen el JARs de su solicitud para su uso posterior.

El siguiente ejemplo de código muestra cómo inicializar una licencia de una carpeta:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### Cargar una Licencia de una `Stream` Objeto

El siguiente ejemplo de código muestra cómo inicializar una licencia de un flujo usando otro [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) método:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### Incluya el archivo de licencia como recurso incorporado

Una manera correcta de empaquetar una licencia con su aplicación y asegurarse de que no se perderá es incluirla como un recurso incrustado. Simplemente puede copiar el archivo LIC a la carpeta de recursos de su proyecto.

Reconstruir el proyecto debe incrustar el archivo .lic en aplicación .jar archivo. Después de eso, puede solicitar una licencia usando el siguiente código:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### Apply Metered License

Aspose.Words permite a los desarrolladores aplicar una clave medidora. Este es un nuevo mecanismo de licencias.

El nuevo mecanismo de concesión de licencias se utilizará junto con el método existente de concesión de licencias. Los clientes que quieren ser facturados basado en el uso de API Las características pueden usar la Licencia Meterizada.

Después de completar todos los pasos necesarios para obtener este tipo de licencia, recibirá las claves, no el archivo de licencia. Esta llave medidora se puede aplicar utilizando [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) clase especialmente introducida para este propósito.

No llames a la **SetMeteredKey** método frecuentemente para que este método de licencia acumula adecuadamente el consumo y nos lo reporte. Sólo instantáneamente el Aspose.Words biblioteca, llama **SetMeteredKey** una vez, luego dejar la biblioteca instantánea y reutilizarla.

El siguiente ejemplo de código muestra cómo establecer claves públicas y privadas medidoras:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

Tenga en cuenta que debe tener una conexión estable a Internet para el uso correcto de la licencia Metered, ya que el mecanismo Metered requiere la interacción constante con nuestros servicios para los cálculos correctos

Para más detalles, consulte el [Preguntas frecuentes sobre Licencias Medidas](https://purchase.aspose.com/faqs/licensing/metered/) sección.

{{% /alert %}}

### Cambiar el nombre del archivo de licencia

El nombre de archivo de licencia no tiene que ser "Aspose.Words.LIC". Puede renombrarlo a su gusto y utilizar ese nombre al establecer una licencia en su aplicación.

### "No se puede encontrar el nombre de archivo de licencia" Excepciones

Cuando compra y descarga una licencia, el sitio web de Aspose indica el archivo de licencia *"Aspose.Words.LIC"*. Usted descarga el archivo de licencia usando su navegador. En este caso, algunos navegadores reconocen el archivo de licencia como XML y anexan la extensión .xml a él, por lo que el nombre completo de archivo en su computadora se convierte en *"Aspose.Words.lic.XML"*.

Cuando Microsoft Windows está configurado para ocultar extensiones para tipos de archivos conocidos (desafortunadamente, este es el predeterminado en la mayoría Windows instalaciones), el archivo de licencia aparecerá como *"Aspose.Words. LIC"* en Windows Explorador. Usted probablemente pensará que este es el nombre de archivo real y la llamada **SetLicense** pasarlo *Aspose.Words.LIC"*, pero no hay tal archivo, por lo tanto la excepción.

Para solucionar el problema, renombra el archivo para eliminar la extensión invisible .xml. También te recomendamos deshabilitar la opción "extensiones de tráfico" en Microsoft Windows.

## Utilizando Múltiples Productos de Aspose

Si utiliza varios productos de Aspose en su aplicación, como Aspose.Words y `Aspose.Cells`, aquí son algunos consejos útiles:

* Establezca la Licencia para cada producto Aspose por separado. Incluso si usted tiene un único archivo de licencia para todos los componentes, por ejemplo, "Aspose.Total.lic", todavía necesita llamar **SetLicense** por separado para cada producto Aspose que utiliza en su aplicación.
* Utilice el nombre completo de clase de licencia calificada. Cada uno El producto de la forma tiene un `License` clase en su propio espacio de nombres. Por ejemplo, Aspose.Words tiene **com.aspose.words.Licencia** y `Aspose.Cells` tiene com.aspose.cells. Clase de licencia. Utilizar el nombre de clase plenamente calificado le permite evitar confusión en cuanto a qué licencia se aplica a qué producto.
