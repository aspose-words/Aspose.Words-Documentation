---
title: Licencias
second_title: Aspose.Words para Java
articleTitle: Licencias
linktitle: Licencias
description: "Licencias Aspose.Words para Android via Java."
type: docs
weight: 60
url: /es/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

A veces, para estudiar mejor el sistema, desea bucear en el código lo más rápido posible. Para facilitarlo, Aspose.Words proporciona diferentes planes para la compra o ofrece una prueba gratuita y una licencia temporal de 30 días para la evaluación.

{{% alert color="primary" %}}

Tenga en cuenta que hay una serie de políticas y prácticas generales que le guían sobre cómo evaluar, licenciar correctamente y comprar nuestros productos. Puedes encontrarlos en el [Políticas de compra y preguntas frecuentes](https://purchase.aspose.com/policies/) sección.

{{% /alert %}}

## Prueba gratuita o licencia temporal

Aspose.Words es un software increíble que los desarrolladores pueden intentar antes de comprar. Puede descargar/instalar fácilmente Aspose.Words para Java y Aspose.Words para Android via Java [desde la página de descarga](https://releases.aspose.com/words/androidjava/) para la evaluación.

La versión de evaluación es la misma que la comprada – la versión de prueba simplemente se convierte en licencia cuando se agregan algunas líneas de código para aplicar la licencia.

{{% alert color="primary" %}}

Más información sobre la prueba gratuita o la licencia temporal para Aspose.Words para Android via Java on [Licencias y Suscripción](/words/es/java/licensing/).

{{% /alert %}}

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
* Un recurso integrado
* Como Licencia Medida – un nuevo mecanismo de licencias

#### Carga del archivo Licencia

In Aspose.Words para Android via Java, la licencia puede ser [Licencias y Suscripción](/words/es/java/licensing/), o cargado de un flujo:

1. Ponga el archivo de licencia en cualquier lugar en **/mnt/sdcard/**.
1. Crear un flujo que referencia archivo.
1. Pase el flujo (contiene el archivo de licencia) en el `SetLicense` método.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

Aplicar una Licencia de un Recursos Incrustados. Para acceder a la licencia como recurso por nombre de un Android paquete file:

1. Añadir el archivo de licencia como recurso a la aplicación **res/raw** carpeta.
   El archivo de licencia debe ser visible en el **res/raw** carpeta.
1. Accede/carga la licencia del recurso con la siguiente muestra de código.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Apply Metered License

Aspose.Words permite a los desarrolladores aplicar la clave medidora. Es un nuevo mecanismo de licencias. El nuevo mecanismo de concesión de licencias se utilizará junto con el método de concesión de licencias existente. Los clientes que quieren ser facturados basado en el uso del API las características pueden utilizar la licencia de medición.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### Cambiar el nombre del archivo de licencia

El nombre del archivo de licencia no tiene que ser 'Aspose.Words.Android.Java.lic'. Puedes renombrarlo a cualquier cosa que quieras y usar ese nombre cuando llamas `License.SetLicense`.

### Excepciones - No se puede encontrar el nombre de archivo de licencia

Cuando descargas una licencia que has comprado, el archivo de licencia se llama **Aspose.Words.Android.Java.lic** por defecto. El archivo de licencia se descarga a través de su navegador y algunos navegadores reconocen el archivo de licencia como XML y anexan una extensión .xml al nombre. El archivo descargado se convierte **Aspose.Words.Android.Java.lic.XML**.

Cuando Microsoft Windows está configurado para ocultar extensiones de tipos de archivos conocidos (desafortunadamente esto es predeterminado en la mayoría Windows instalaciones), el archivo de licencia se enumera como **Aspose.Words.Android.Java.lic** dentro Windows Explorador. Parece el nombre de archivo esperado. Si llamas `License.SetLicense` y pasarAspose.Words.Android.Java.lic', verás y excepción porque no hay tal archivo

Para solucionar el problema, renombra el archivo para eliminar la extensión invisible .xml. Recomendamos que usted deshabilita la opción "extensiones ocultas" en Microsoft Windows.

## Utilizando Múltiples Productos de Aspose

Si utiliza varios productos de Aspose en una aplicación, por ejemplo Aspose.Words y `Aspose.Cells`, Aquí hay algunos consejos útiles.

- Establecer la licencia para cada producto Aspose por separado.
  Incluso si usted tiene un único archivo de licencia para todos los componentes, por ejemplo 'Aspose. Total.Android.Java.lic', todavía tienes que llamar al `License.SetLicense` método por separado para cada producto Aspose.
- Usar el nombre completo de clase de Licencia.
  Cada uno El producto de la forma tiene un `License` clase en su espacio de nombres. Por ejemplo, Aspose.Words tiene com.aspose.words. Licencia y `Aspose.Cells` tiene com.aspose.cells. Clase de licencia. Usando el nombre de clase plenamente calificado le permite evitar cualquier confusión sobre qué licencia se aplica a qué producto.
