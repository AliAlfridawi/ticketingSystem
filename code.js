const { Client } = require('pg');
const { deleteData } = require('./deleteFunction');
const { uploadData} = require('./uploadFunction');
require('dotenv').config();


const client = new Client({
    user: 'ali',
    host: 'localhost',
    database: 'ticketingdatabase',
    password: process.env.clientPassword,
    port: 5432,
});

const dataToUpload = {
    name: 'ali',
    description: 'i broke my computer',
    priority: 'high',
};

async function main() {
    try {
        await client.connect();
        //await uploadData(client, dataToUpload);
        await deleteData(client,true);
    } catch (err) {
        console.error('Error in main:', err);
    } finally {
        await client.end();
    }
}

main();
