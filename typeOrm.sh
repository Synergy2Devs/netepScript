echo "Installing TypeORM dependencies..."
npm install typeorm reflect-metadata pg


#Typescript config file modification
sed -i.bak '
    s/\/\/ *"emitDecoratorMetadata": *true,/"emitDecoratorMetadata": true,/g
    s/\/\/ *"experimentalDecorators": *true,/"experimentalDecorators": true,/g
    s/\/\/ *"lib": *\[\],/"lib": ["ES6"],/g
    s/\/\/ *"strictPropertyInitialization": *true,/"strictPropertyInitialization": false,/g
' tsconfig.json && rm tsconfig.json.bak


cat << EOF > src/config/data-source.ts
import { DataSource } from 'typeorm';

export const AppDataSource = new DataSource({
  type: 'postgres',
  host: 'localhost',
  port: 5432,
  username: 'postgres',
  password: 'postgres',
  database: 'new_database', //This database must be created before initialize the typeorm
  dropSchema: false, //Erase database content when the server starts
  synchronize: true,
  logging: false, // Don't log queries in the console
  entities: [],
  subscribers: [],
  migrations: [],
});
EOF
