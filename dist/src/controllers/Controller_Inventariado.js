"use strict";
/*import { PrismaClient, tb_inventariado } from '@prisma/client'

const prisma = new PrismaClient()


async function main() {
   const tb_inventariado = await prisma.tb_inventariado.create({
    data: {
   
        id:    1,
        numero_serie: '',
        descripcion: '',
        marca:  '',
        color: '',
        observaciones: '',
        numero_etiqueta: 2,
        tipo: 'EquipoComputo',
        estatus: false,
    },
   })

  }
  
  main()
    .then(async () => {
      await prisma.$disconnect()
    })
    .catch(async (e) => {
      console.error(e)
      await prisma.$disconnect()
      process.exit(1)
      
})



/*export const Inventariado = () => { }

function Editar() {
    
}

function Eliminar() {
    
}

function Actualizar() {
    
}*/ 
