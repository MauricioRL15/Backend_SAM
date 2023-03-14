"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.rutas_trabajadores = void 0;
const Controller_trabajadores_1 = require("../controllers/Controller_trabajadores");
const express_1 = require("express");
exports.rutas_trabajadores = (0, express_1.Router)();
exports.rutas_trabajadores.post('/crear', Controller_trabajadores_1.crear);
// RUTA.get('/conectar',  Trabajadores)
// RUTA.delete('/conectar',  Trabajadores)
// RUTA.put('/conectar',  Trabajadores)
exports.default = exports.rutas_trabajadores;
