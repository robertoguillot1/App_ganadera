# 🌾 Gestión de Fincas - Sistema Completo

Una aplicación móvil completa desarrollada en Flutter para la gestión integral de fincas agrícolas, incluyendo trabajadores, pagos quincenales y préstamos.

## 📱 Características Principales

### 🏡 **Gestión de Fincas**
- **Crear, editar y eliminar fincas** con información completa
- **Perfiles independientes** - cada finca funciona como un entorno separado
- **Personalización visual** con colores distintivos para cada finca
- **Información detallada**: nombre, ubicación, descripción, fecha de creación

### 👷‍♂️ **Módulo de Trabajadores**
- **Registro completo de trabajadores** con datos personales y laborales
- **Campos incluidos**:
  - Nombre completo
  - Cédula o identificación
  - Cargo o función en la finca
  - Salario quincenal o mensual
  - Fecha de ingreso
  - Estado (activo/inactivo)
- **Búsqueda avanzada** por nombre, cédula o cargo
- **Perfil individual** con historial completo de pagos y préstamos

### 💰 **Módulo de Pagos Quincenales**
- **Registro detallado de pagos** con múltiples tipos:
  - Pago completo
  - Anticipo
  - Pago parcial
- **Información incluida**:
  - Fecha del pago
  - Monto pagado
  - Observaciones
  - Tipo de pago
- **Historial cronológico** de todos los pagos
- **Cálculo automático** de totales por trabajador y mes

### 💵 **Módulo de Préstamos**
- **Registro completo de préstamos** a trabajadores
- **Campos incluidos**:
  - Fecha del préstamo
  - Monto prestado
  - Descripción o motivo
  - Estado (pendiente/pagado)
  - Fecha de pago (si aplica)
  - Notas adicionales
- **Impacto en salarios**: Los préstamos pendientes se reflejan en el cálculo del salario neto
- **Seguimiento completo** del estado de cada préstamo

### 📊 **Resumen Mensual y Estadísticas**
- **Dashboard completo** con métricas clave:
  - Total pagado en el mes
  - Total de préstamos pendientes
  - Número de trabajadores activos
  - Análisis financiero detallado
- **Gráficos interactivos**:
  - Pagos por trabajador (gráfico de barras)
  - Estado de préstamos (gráfico circular)
- **Análisis por trabajador** con resumen financiero individual

## 🛠️ **Tecnologías Utilizadas**

- **Flutter**: Framework de desarrollo móvil
- **Provider**: Gestión de estado de la aplicación
- **SharedPreferences**: Almacenamiento local de datos
- **FL Chart**: Gráficos y visualizaciones
- **Intl**: Formateo de fechas y monedas
- **Material Design 3**: Diseño moderno y consistente

## 📁 **Estructura del Proyecto**

```
lib/
├── models/
│   ├── farm.dart          # Modelo de finca
│   ├── worker.dart        # Modelo de trabajador
│   ├── payment.dart       # Modelo de pago
│   └── loan.dart          # Modelo de préstamo
├── providers/
│   └── farm_provider.dart # Gestión de estado
├── screens/
│   ├── farms_list_screen.dart        # Listado de fincas
│   ├── farm_form_screen.dart         # Formulario de fincas
│   ├── farm_profile_screen.dart      # Perfil de finca
│   ├── workers_list_screen.dart      # Listado de trabajadores
│   ├── worker_form_screen.dart       # Formulario de trabajadores
│   ├── worker_profile_screen.dart    # Perfil de trabajador
│   ├── payments_list_screen.dart     # Listado de pagos
│   ├── payment_form_screen.dart      # Formulario de pagos
│   ├── loans_list_screen.dart        # Listado de préstamos
│   ├── loan_form_screen.dart         # Formulario de préstamos
│   └── farm_statistics_screen.dart   # Estadísticas y análisis
└── widgets/
    ├── farm_card.dart      # Tarjeta de finca
    ├── worker_card.dart    # Tarjeta de trabajador
    ├── payment_card.dart   # Tarjeta de pago
    ├── loan_card.dart      # Tarjeta de préstamo
    └── summary_card.dart   # Tarjeta de resumen
```

## 🚀 **Funcionalidades Destacadas**

### **Sistema de Perfiles Independientes**
- Cada finca mantiene sus propios datos completamente separados
- Trabajadores, pagos y préstamos específicos por finca
- Configuración individual por finca

### **Gestión Financiera Avanzada**
- Cálculo automático de salarios netos (salario - préstamos pendientes)
- Seguimiento completo de pagos y préstamos
- Análisis financiero detallado con gráficos

### **Interfaz Intuitiva**
- Diseño moderno con Material Design 3
- Navegación fluida entre módulos
- Búsqueda y filtrado avanzado
- Confirmaciones de seguridad para acciones críticas

### **Persistencia de Datos**
- Almacenamiento local seguro con SharedPreferences
- Sincronización automática de datos
- Respaldos automáticos de información

## 📱 **Experiencia de Usuario**

### **Flujo Principal**
1. **Crear finca** con información básica
2. **Registrar trabajadores** con datos completos
3. **Registrar pagos** quincenales por trabajador
4. **Gestionar préstamos** cuando sea necesario
5. **Analizar estadísticas** y rendimiento financiero

### **Características de Usabilidad**
- **Pantallas de estado vacío** con guías para el usuario
- **Validación robusta** de formularios
- **Mensajes informativos** y confirmaciones
- **Navegación contextual** entre módulos relacionados
- **Búsqueda rápida** en listados extensos

## 🔧 **Instalación y Configuración**

1. **Clonar el repositorio**
2. **Instalar dependencias**: `flutter pub get`
3. **Ejecutar la aplicación**: `flutter run`

## 📊 **Métricas y Análisis**

La aplicación proporciona análisis completos incluyendo:
- **Resumen mensual** de pagos y gastos
- **Análisis por trabajador** con métricas individuales
- **Estado de préstamos** con seguimiento detallado
- **Gráficos visuales** para mejor comprensión de datos
- **Tendencias financieras** para toma de decisiones

## 🎯 **Casos de Uso**

- **Fincas agrícolas** que necesitan gestionar trabajadores
- **Empresas rurales** con personal temporal o permanente
- **Cooperativas** que manejan múltiples propiedades
- **Administradores** que requieren control financiero detallado

## 🔒 **Seguridad y Privacidad**

- **Datos locales**: Toda la información se almacena localmente
- **Sin conexión**: Funciona completamente offline
- **Confirmaciones**: Acciones críticas requieren confirmación
- **Validación**: Entrada de datos validada en tiempo real

---

**Desarrollado con Flutter** - Una solución completa para la gestión moderna de fincas agrícolas.