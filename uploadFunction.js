const pg = require('pg');
const { sendEmail} = require('./sendEmail');

async function uploadData(client,dataToInsert)
{
    try
    {
        const query = "INSERT INTO mocksystem VALUES($1,$2,$3,true)";
        const values = [dataToInsert.name,dataToInsert.description,dataToInsert.priority]
        const res = await client.query(query,values);
        console.log('Data successfully uploaded');
        await sendEmail(dataToInsert);
        return res
    }
    catch(err)
    {
        console.log('Error uploading data', err);
    }
}
module.exports = { uploadData };