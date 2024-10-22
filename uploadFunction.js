const pg = require('pg');
async function uploadData(client,dataToInsert)
{
    /*client.query(query,values)
        .then(res => {
            console.log('Data inserted successfully');
        })
        .catch(err =>
        {
            console.error('Error inserting data:', err);
        })*/
    try
    {
        
        client.query(query,values);
    }
    catch(err)
    {
        console.log('Error uploading data', err);
    }
}
module.exports = { uploadData };