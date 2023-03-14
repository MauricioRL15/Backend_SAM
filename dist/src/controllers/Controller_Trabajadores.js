"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.crear = exports.Controller_trabajadores = void 0;
const client_1 = require("@prisma/client");
const Controller_trabajadores = () => { };
exports.Controller_trabajadores = Controller_trabajadores;
const prisma = new client_1.PrismaClient();
// export async function main() {
const crear = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    console.log("BODYYYYYY", req.body);
    const { nombre, apellidos, numero_trabajador, id_area, estatus } = req.body;
    const tb_trabajadoress = yield prisma.tb_trabajadores.create({
        data: {
            nombre,
            apellidos,
            numero_trabajador,
            id_area,
            estatus
        },
    });
    res.status(200).json({
        menssage: "Creacion completa",
        success: true,
        data: tb_trabajadoress
    });
});
exports.crear = crear;
// }
// main()
//   .then(async () => {
//     await prisma.$disconnect()
//   })
//   .catch(async (e) => {
//     console.error(e)
//     await prisma.$disconnect()
//     process.exit(1)
//   })
/*export const Trabajadores = () => { }

function Editar() {
    
}

function Eliminar() {
    
}

function Actualizar() {
    
}*/ 
