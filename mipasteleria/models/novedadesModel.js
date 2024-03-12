var pool = require('./bd');


async function getNovedades(){
        var query = "select * from recetas";
        var rows = await pool.query(query);
        return rows;
    } 

    async function deleteNovedadesById(id){
        var query = "delete  from recetas where id = ?";
        var rows = await pool.query(query, [id]);
        return rows;
    }    

    async function insertNovedad(obj){
        try{
            var query = "insert into recetas set ?";
            var rows = await pool.query(query, [obj])
            return rows;
        }catch (error) {
            console.log (error);
            throw error;
        }
    }

    async function getNovedadById(id){
        var query = "select * from recetas where id =?"
        var rows = await pool.query(query, [id]);
        return rows [0];
    }

    async function modificarNovedadById (obj, id){
        try {
            var query = "update recetas set ? where id=? ";
            var rows = await pool.query(query, [obj, id]);
            return rows;
        }catch(error){
            throw error;
        }
    }

module.exports = { getNovedades, deleteNovedadesById, insertNovedad, getNovedadById, modificarNovedadById}