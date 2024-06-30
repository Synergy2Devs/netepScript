#!/usr/bin/env bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BOLD='\033[1m'
NC='\033[0m' # No Color (for reset)

echo -e "${GREEN}=========================================================${NC}"
echo -e "${BLUE}  ${BOLD}netepScript${NC}"
echo -e "${BLUE}  Installation script for Node.js server${NC}"
echo -e "${YELLOW}  Including: Express.js, TypeScript, ESLint, and Prettier${NC}"
echo -e "${RED}${BOLD}  Author: Synergy2Devs${NC}"
echo -e "${YELLOW}${BOLD}  Developers: Marcelo Robin / Jesús García${NC}"
echo -e "${GREEN}=========================================================${NC}"
echo ""

echo -e "${YELLOW}\n1) We initialized the Node.js project (if it doesn't exist)${NC}"

if [ ! -f "package.json" ]; then
  npm init -y
fi

echo -e "${YELLOW}\n2) We installed dependencies${NC}"

npm install express dotenv

echo -e "${YELLOW}\n3) We installed development dependencies${NC}"

npm install -D morgan @types/morgan nodemon eslint@8.57.0 @typescript-eslint/eslint-plugin@7.13.1 @typescript-eslint/parser@7.13.1 typescript@4.9.5 @types/node @types/express ts-node prettier eslint-plugin-prettier eslint-config-prettier

echo -e "${YELLOW}\n4) We generated the tsconfig.json with default options${NC}"

npx tsc --init

sed -i.bak '
    s/\/\/ *"rootDir": *".\/"/"rootDir": "\.\/src"/g
    s/\/\/ *"outDir": *".\/"/"outDir": "\.\/dist"/g
' tsconfig.json && rm tsconfig.json.bak

# Function to add lines to the end of the file before the last curly brace
add_lines_before_last_brace() {
    file=$1
    tmpfile=$(mktemp)
    # Check if the lines already exist before adding them
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

# We adjust the tsconfig.json
add_lines_before_last_brace "tsconfig.json"

echo -e "${YELLOW}\n5) We created the nodemon.json with its corresponding configuration${NC}"

cat << EOF > nodemon.json
{
  "watch": ["src"],
  "ext": "ts,json",
  "ignore": ["src/tests/*", "node_modules"],
  "exec": "ts-node src/index.ts"
}
EOF

echo -e "${YELLOW}\n6) We created the .gitignore and .env files${NC}"

touch ./.env
cat <<EOF > .gitignore
node_modules
.env
dist
EOF

echo -e "${YELLOW}\n7) We created the project's folder structure${NC}"

mkdir -p src/{routes,controllers,config,interfaces,models,middlewares,services}
touch src/config/envs.ts
touch src/routes/indexRouter.ts
touch src/controllers/userRouter.ts

echo -e "${YELLOW}\n8) We added the files index.ts and server.ts${NC}"

touch src/index.ts
touch src/server.ts

echo -e "${YELLOW}\n9) We added the .prettierrc file with its configuration${NC}"

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

echo -e "${YELLOW}\n10) We added the .eslintrc.js file and its configuration${NC}"

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

# We set up the scripts in package.json
echo -e "${YELLOW}\n11) We set up the scripts in package.json${NC}"

npx json -I -f package.json -e 'this.main="./dist/index.js"'
npx json -I -f package.json -e 'this.scripts.start="nodemon"'
npx json -I -f package.json -e 'this.scripts.build="tsc"'
npx json -I -f package.json -e 'this.scripts.lint="eslint . --ext .ts"'
npx json -I -f package.json -e 'this.scripts["lint:fix"]="eslint . --ext .ts --fix"'

echo -e "${YELLOW}\n12) Choose your database engine:${NC}"
echo "1) PostgreSQL with Sequelize"
echo "2) MySQL with Sequelize"
echo "3) MongoDB with Mongoose"
echo "4) No database engine"
read -p "Enter your choice (1-4): " db_choice

case "$db_choice" in
    "1")
        echo "Installing PostgreSQL and Sequelize dependencies..."
        npm install pg sequelize
        npm install -D @types/pg @types/sequelize
        echo -e "\n# PostgreSQL Configuration\nDB_HOST=localhost\nDB_PORT=5432\nDB_NAME=your_database\nDB_USER=your_username\nDB_PASSWORD=your_password" >> .env
        ;;
    "2")
        echo "Installing MySQL and Sequelize dependencies..."
        npm install mysql2 sequelize
        npm install -D @types/mysql @types/sequelize
        echo -e "\n# MySQL Configuration\nDB_HOST=localhost\nDB_PORT=3306\nDB_NAME=your_database\nDB_USER=your_username\nDB_PASSWORD=your_password" >> .env
        ;;
    "3")
        echo "Installing MongoDB and Mongoose dependencies..."
        npm install mongodb mongoose
        npm install -D @types/mongodb @types/mongoose
        echo -e "\n# MongoDB Configuration\nMONGO_URI=mongodb://localhost:27017/your_database" >> .env
        ;;
    "4")
        echo "No database dependencies installed."
        ;;
    *)
        echo "Invalid choice. No database dependencies installed."
        ;;
esac

PACKAGE_JSON="./package.json"
sed -i 's/\^//g' "$PACKAGE_JSON"

echo -e "${GREEN}=========================================================${NC}"
echo -e "${RED}  ${BOLD}Follow us on GitHub:${NC}"
echo -e "${RED}  ${BOLD}https://github.com/Synergy2Devs${NC}"
echo -e "${YELLOW}  ${BOLD}https://github.com/mnibor${NC}"
echo -e "${YELLOW}  ${BOLD}https://github.com/JAJesusGarcia${NC}"
echo -e "${GREEN}=========================================================${NC}"

echo -e "${GREEN}\n${BOLD}READY!!! PROJECT CONFIGURED!!! LET'S CODE!!!${NC}"
echo ""
