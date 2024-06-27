# **netepScript**

Este script instala Node, Express, TypeScript, ESLint y Prettier automáticamente. La idea de este script es ejecutar todas las instalaciones de dependencias y configuraciones de entorno con un solo comando, agilizando el inicio de proyectos desde cero.

## **Contenido**

- [Instalación](#instalación)
- [Scripts](#scripts)
- [Estructura del Proyecto](#estructura-del-proyecto)
- [Configuración](#configuración)
- [Contribuciones](#contribuciones)
- [Contacto](#contacto)

## **Instalación**

Para empezar con este proyecto, descarga el archivo, descomprímelo dentro de una nueva carpeta y abre la carpeta con tu editor de texto de preferencia o la terminal nativa de tu sistema operativo.

```bash
# Descargar y descomprimir el archivo

# Abrir la carpeta en tu terminal o editor
```

Luego ejecuta el script.

<!-- comando para ejecutar -->

**Scripts**

En este proyecto se han configurado varios scripts en el archivo package.json para facilitar el desarrollo y la producción:

npm run dev # Inicia el servidor en modo de desarrollo utilizando ts-node-dev.
npm run build # Compila el código TypeScript en JavaScript.
npm start # Inicia el servidor utilizando el código compilado.
npm run lint # Ejecuta ESLint para verificar la calidad del código.
npm run format# Ejecuta Prettier para formatear el código.

**Estructura del Proyecto**

- La estructura del proyecto es la siguiente:

.
├── src
│ ├── controllers
│ ├── middlewares
│ ├── routes
│ ├── services
│ ├── utils
│ └── index.ts
├── .eslintrc.json
├── .prettierrc
├── package.json
├── tsconfig.json
└── README.md

- src: Carpeta principal del código fuente.
- controllers: Controladores para manejar las solicitudes HTTP.
- middlewares: Middlewares personalizados.
- routes: Definiciones de rutas.
- services: Servicios de la aplicación.
- utils: Funciones y utilidades.
- index.ts: Archivo de entrada principal.

**Configuración**

A continuación se describen las configuraciones más importantes del proyecto.

- _TypeScript_

El archivo tsconfig.json contiene la configuración de TypeScript. Aquí tienes un ejemplo de configuración básica:

<!-- {
  "compilerOptions": {
    "target": "ES6",
    "module": "commonjs",
    "outDir": "./dist",
    "rootDir": "./src",
    "strict": true,
    "esModuleInterop": true
  }
} -->

- _ESLint_

El archivo .eslintrc.json contiene la configuración de ESLint. Aquí tienes un ejemplo de configuración básica:

<!-- {
  "env": {
    "node": true,
    "es6": true
  },
  "extends": [
    "eslint:recommended",
    "plugin:@typescript-eslint/recommended",
    "prettier"
  ],
  "parser": "@typescript-eslint/parser",
  "plugins": ["@typescript-eslint"],
  "rules": {
    "indent": ["error", 2],
    "quotes": ["error", "single"],
    "semi": ["error", "always"]
  }
} -->

- _Prettier_

El archivo .prettierrc contiene la configuración de Prettier. Aquí tienes un ejemplo de configuración básica:

<!-- {
  "singleQuote": true,
  "trailingComma": "all",
  "printWidth": 80,
  "tabWidth": 2
} -->

**Contribuciones**

Las contribuciones son bienvenidas. Si tienes alguna sugerencia o mejora, abre un issue o un pull request para discutir cualquier cambio que te gustaría hacer.

- Marcelo Robin:

* GitHub: marcelo-robin
* LinkedIn: Marcelo Robin

- Jesus García:

* GitHub: JAJesusGarcia
* LinkedIn: Jesus García

Sobre Nosotros

Somos dos amigos apasionados por la programación y hemos creado esta cuenta de GitHub para desarrollar proyectos juntos y compartir nuestras herramientas con la comunidad.
