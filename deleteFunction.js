const pg = require('pg');

async function deleteData(client,id)
{
    try
    {
        const query = 'DELETE FROM mocksystem WHERE is_active = $1';
        const values = [id];
        const res = await client.query(query,values);
        console.log('Data deleted successfully');
        return res;

    } 
    catch(err)
    {
        console.error('Error deleting data:', err);
        throw err;
    }
}
module.exports = { deleteData };