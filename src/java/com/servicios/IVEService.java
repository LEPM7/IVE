/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicios;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author luisperalta
 */
@WebService(serviceName = "IVEService")
public class IVEService {

    @WebMethod(operationName = "RegistrarRemesa")
    public String RegistrarRemesa(
            @WebParam(name = "usuario") String u, @WebParam(name = "contrasena") String c,
            @WebParam(name = "id_remesa") int i, @WebParam(name = "monto") double m,
            @WebParam(name = "nombre_emisor") String ne, @WebParam(name = "correo_emisor") String ce,
            @WebParam(name = "doc_identificacion_emisor") String die, @WebParam(name = "direccion_emisor") String de,
            @WebParam(name = "no_telefono_emisor") String nte, @WebParam(name = "nombre_receptor") String nr,
            @WebParam(name = "correo_receptor") String cr, @WebParam(name = "doc_identificacion_receptor") String dir,
            @WebParam(name = "direccion_receptor") String dr, @WebParam(name = "no_telefono_receptor") String ntr,
            @WebParam(name = "fecha_recepcion_remesa") String frr) {
        return new String();
    }

    @WebMethod(operationName = "ConsultaRemesasRegistradas")
    public String ConsultaRemesasRegistradas(@WebParam(name = "usuario") String u, @WebParam(name = "contrasena") String c,
            @WebParam(name = "id_remesa") int i, @WebParam(name = "monto") double monto,
            @WebParam(name = "nombre_emisor") String ne, @WebParam(name = "correo_emisor") String ce,
            @WebParam(name = "no_telefono_emisor") String nte, @WebParam(name = "nombre_receptor") String nr,
            @WebParam(name = "correo_receptor") String cr, @WebParam(name = "no_telefono_receptor") String ntr,
            @WebParam(name = "fecha_inicio") String fi, @WebParam(name = "fecha_fin") String ff
    ) {
        return new String();
    }

    @WebMethod(operationName = "ConsultaRemesaRegistrada")
    public String ConsultaRemesaRegistrada(@WebParam(name = "usuario") String u, @WebParam(name = "contrasena") String c,
            @WebParam(name = "id_remesa") int i, @WebParam(name = "monto") double monto,
            @WebParam(name = "nombre_emisor") String ne, @WebParam(name = "correo_emisor") String ce,
            @WebParam(name = "no_telefono_emisor") String nte, @WebParam(name = "nombre_receptor") String nr,
            @WebParam(name = "correo_receptor") String cr, @WebParam(name = "no_telefono_receptor") String ntr,
            @WebParam(name = "fecha_inicio") String fi, @WebParam(name = "fecha_fin") String ff
    ) {
        return new String();
    }

//    @WebMethod(operationName = "")     
//    @WebParam(name = "")
}
