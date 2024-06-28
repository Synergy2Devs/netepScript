#!/bin/bash

VERDE='\033[0;32m'
AZUL='\033[0;34m'
AMARILLO='\033[1;33m'
ROJO='\033[0;31m'
NEGRITA='\033[1m'
NC='\033[0m' # No Color (para resetear)

echo -e "${VERDE}=========================================================${NC}"
echo -e "${AZUL}  ${NEGRITA}netepScript - V 0.8.9${NC}"
echo -e "${AZUL}  Script de instalación para servidor Node.js${NC}"
echo -e "${AMARILLO}  Incluye: Express.js, TypeScript, ESLint y Prettier${NC}"
echo -e "${ROJO}${NEGRITA}  Autores: Marcelo Robin / Jesús García${NC}"
echo -e "${VERDE}=========================================================${NC}"
echo ""

echo -e "${AZUL}\n1) Inicializamos el proyecto de NodeJS (si no existe)${NC}"

if [ ! -f "package.json" ]; then
  npm init -y
fi

echo -e "${AZUL}\n2) Instalamos dependencias${NC}"

npm install express dotenv

echo -e "${AZUL}\n3) Instalamos dependencias de desarrollo${NC}"

npm install -D morgan @types/morgan nodemon eslint@8.57.0 @typescript-eslint/eslint-plugin@7.13.1 @typescript-eslint/parser@7.13.1 typescript@4.9.5 @types/node @types/express ts-node prettier eslint-plugin-prettier eslint-config-prettier

echo -e "${AZUL}\n4) Generamos el tsconfig.json con las opciones por defecto${NC}"

npx tsc --init

# Función para agregar líneas al final del archivo antes de la última llave
add_lines_before_last_brace() {
    file=$1
    tmpfile=$(mktemp)
    # Verificar si las líneas ya existen antes de agregarlas
    if ! grep -q '"include": \["src/\*\*/\*.ts"\]' "$file" || ! grep -q '"exclude": \["node_modules"\]' "$file"; then
        awk '
        BEGIN {
            include_added = 0
            exclude_added = 0
        }
        {
            if ($0 ~ /}$/ && !include_added && !exclude_added) {
                sub(/}$/, "},")
                print
                print "  \"include\": [\"src/**/*.ts\"],"
                print "  \"exclude\": [\"node_modules\"]"
                include_added = 1
                exclude_added = 1
            } else if ($0 ~ /}$/ && include_added && !exclude_added) {
                sub(/}$/, "},")
                print
                print "  \"exclude\": [\"node_modules\"]"
                exclude_added = 1
            } else {
                print
            }
        }
        ' "$file" > "$tmpfile"
        mv "$tmpfile" "$file"
    fi
}

# Ajustamos el tsconfig.json
add_lines_before_last_brace "tsconfig.json"

echo -e "${AZUL}\n5) Creamos el nodemon.json con su configuración correspondiente${NC}"

cat << EOF > nodemon.json
{
  "watch": ["src"],
  "ext": "ts,json",
  "ignore": ["src/tests/*", "node_modules"],
  "exec": "ts-node src/index.ts"
}
EOF

echo -e "${AZUL}\n6) Creamos el archivo .gitignore${NC}"

cat <<EOF > .gitignore
node_modules
.env
dist
EOF

echo -e "${AZUL}\n7) Creamos la estructura de carpetas del proyecto${NC}"

mkdir -p src/{routes,controllers,config,interfaces,models,middlewares,services}
touch src/config/envs.ts
touch src/routes/indexRouter.ts
touch src/routes/userRouter.ts
touch src/routes/appointmentRouter.ts
touch src/controllers/userRouter.ts
touch src/controllers/appointmentRouter.ts

echo -e "${AZUL}\n8) Agregamos los archivos index.ts y server.ts${NC}"

touch src/index.ts
touch src/server.ts

echo -e "${AZUL}\n9) Agregamos el archivo .prettierrc con su configuración${NC}"

touch ./.prettierrc
cat << EOF > .prettierrc
{
  "singleQuote": true,
  "trailingComma": "all",
  "semi": true,
  "tabWidth": 2,
  "bracketSpacing": true,
  "arrowParens": "always",
  "endOfLine": "lf"
}
EOF

echo -e "${AZUL}\n10) Agregamos el archivo .eslintrc.js y su configuración${NC}"

touch ./.eslintrc.js
cat << EOF > .eslintrc.js
module.exports = {
  parser: "@typescript-eslint/parser",
  plugins: ["@typescript-eslint", "prettier"],
  extends: [
    "eslint:recommended",
    "plugin:@typescript-eslint/recommended",
    "plugin:prettier/recommended"
  ],
  parserOptions: {
    ecmaVersion: "latest",
  },
  env: {
    es6: true,
  },
  rules: {
    "prettier/prettier": "error"
  }
};
EOF

# Configuramos los scripts en package.json
echo -e "${AZUL}\n11) Configuramos los scripts en package.json${NC}"

npx json -I -f package.json -e 'this.scripts.start="nodemon"'
npx json -I -f package.json -e 'this.scripts.build="tsc"'
npx json -I -f package.json -e 'this.scripts.lint="eslint . --ext .ts"'
npx json -I -f package.json -e 'this.scripts["lint:fix"]="eslint . --ext .ts --fix"'

echo -e "${VERDE}=========================================================${NC}"
echo -e "${ROJO}  ${NEGRITA}Seguinos en Github:${NC}"
echo -e "${ROJO}  ${NEGRITA}https://github.com/mnibor${NC}"
echo -e "${ROJO}  ${NEGRITA}https://github.com/JAJesusGarcia${NC}"
echo -e "${VERDE}=========================================================${NC}"

echo -e "${VERDE}\n${NEGRITA}LISTO!!! PROYECTO CONFIGURADO!!! A PROGRAMAR!!!${NC}"
echo ""
