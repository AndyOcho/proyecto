const router = require('express').Router()
const conexion = require('./config/conexion')

//---------- agregamos rutas--------
//get equipos
router.get('/',(req, res)=>{
    let sql ='select * from personas'
    conexion.query(sql,(err, rows, fields)=>{
        if(err) throw err;
        else{
            res.json(rows)
        }
    })

})

// get un equipo
router.get('/:id',(req, res)=>{
    const {id} = req.params
    let sql ='select * from personas where id_equipo = ?'
    conexion.query(sql,[id],(err, rows, fields)=>{
        if(err) throw err;
        else{
            res.json(rows)
        }
    })
})

//agregar equipo
router.post('/',( req, res)=>{
    const{cedula,nombre,apellidos, logo,fechanacimiento,fechavacunacion,correo,direccion,telefono,estadovacunacion,tipovacuna,numerodosis} = req.body
    console.log(req.body)
    let sql = `insert into personas(cedula, nombre, apellidos,logo,fechanacimiento,correo,direccion,telefono,estadovacunacion,fechavacunacion,tipovacuna,numerodosis) values('${cedula}','${nombre}','${apellidos}','${logo}','${fechanacimiento}','${correo}','${direccion}','${telefono}','${estadovacunacion}','${fechavacunacion}','${tipovacuna}','${numerodosis}')`
    conexion.query(sql, (err, rows, fields)=>{
        if(err) throw err
        else{
            res.json({status: 'equipo agregado'})
        }
    })
})

//eliminar 
router.delete('/:id',(req, res)=>{
    const{id} = req.params

    let sql =`delete from personas where id_equipo = '${id}'`
    conexion.query(sql, (err, rows, fields)=>{
        if(err) throw err
        else{
            res.json({status: 'equipo eliminado'})
        }
    })
});

//modificar
router.put('/:id',(req, res)=>{
    const{id}=req.params
    const{nombre, apellidos} = req.body

    let sql = `update personas set 
                nombre ='${nombre}',
                apellidos='${apellidos}'
                where id_equipo = '${id}'`
    
    conexion.query(sql, (err, rows, fields)=>{
        if(err) throw err
        else{
            res.json({status: 'equipo modificado'})
        }
    })

})
//----------------------------------

module.exports = router