using DataAccess.Contract;
using DataAccess.Repository;
using DataAccess.Utils;
using Entity_Layer;
using System;
using System.Collections.Generic;
using Oracle.ManagedDataAccess.Client;

namespace DataAccess
{
    public class daoServicio : OracleConexion, IOperacionCrud<ServicioBO>
    {
        providerStoreProcedures providerStoreProcedure = new providerStoreProcedures();
        public string Actualizar(ServicioBO dto)
        {
            string result = string.Empty;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameServicio, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2, 1)).Value = V_ACCION.U.ToString();
                        command.Parameters.Add(new OracleParameter("E_VALOR_MANO_OBRA", OracleDbType.Decimal)).Value = dto.VALOR_MANO_OBRA;
                        command.Parameters.Add(new OracleParameter("E_DESCUENTO", OracleDbType.Decimal)).Value = dto.DESCUENTO;
                        command.Parameters.Add(new OracleParameter("E_OBSERVACION", OracleDbType.Varchar2)).Value = dto.OBSERVACION;
                        command.Parameters.Add(new OracleParameter("E_NOM_PRODUCTO", OracleDbType.Varchar2)).Value = dto.NOMBRE;
                        command.Parameters.Add(new OracleParameter("E_CANT_VENDIDO", OracleDbType.Decimal)).Value = dto.CAN_PRODUCTO_VENDIDO;
                        command.Parameters.Add(new OracleParameter("E_NUM_IDENT_MEC", OracleDbType.Varchar2)).Value = dto.NUM_IDENT_MEC;

                        command.Parameters.Add(new OracleParameter("S_CUR_CONSULTA_INFO", OracleDbType.RefCursor)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_N_COD_SAL", OracleDbType.Decimal)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_V_MSJ_SAL", OracleDbType.Varchar2, 4000)).Direction = System.Data.ParameterDirection.Output;
                        command.ExecuteNonQuery();
                        result = Convert.ToString(command.Parameters["S_V_MSJ_SAL"].Value);
                    }
                    cn.Close();
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            return result;
        }

        public string Eliminar(string dto)
        {
            string result = string.Empty;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameClient, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2)).Value = V_ACCION.D;
                        command.Parameters.Add(new OracleParameter("E_VALOR_MANO_OBRA", OracleDbType.Decimal)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_DESCUENTO", OracleDbType.Decimal)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_OBSERVACION", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_NOM_PRODUCTO", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_CANT_VENDIDO", OracleDbType.Decimal)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_NUM_IDENT_MEC", OracleDbType.Varchar2)).Value = dto;

                        command.Parameters.Add(new OracleParameter("S_CUR_CONSULTA_INFO", OracleDbType.RefCursor)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_N_COD_SAL", OracleDbType.Decimal)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_V_MSJ_SAL", OracleDbType.Varchar2, 4000)).Direction = System.Data.ParameterDirection.Output;
                        command.ExecuteNonQuery();
                        result = Convert.ToString(command.Parameters["S_V_MSJ_SAL"].Value);
                    }
                    cn.Close();
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            return result;
        }

        public string Insertar(ServicioBO dto)
        {
            string result = string.Empty;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameServicio, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2, 1)).Value = V_ACCION.C.ToString();
                        command.Parameters.Add(new OracleParameter("E_VALOR_MANO_OBRA", OracleDbType.Decimal)).Value = dto.VALOR_MANO_OBRA;
                        command.Parameters.Add(new OracleParameter("E_DESCUENTO", OracleDbType.Decimal)).Value = dto.DESCUENTO;
                        command.Parameters.Add(new OracleParameter("E_OBSERVACION", OracleDbType.Varchar2)).Value = dto.OBSERVACION;
                        command.Parameters.Add(new OracleParameter("E_NOM_PRODUCTO", OracleDbType.Varchar2)).Value = dto.NOMBRE;
                        command.Parameters.Add(new OracleParameter("E_CANT_VENDIDO", OracleDbType.Decimal)).Value = dto.CAN_PRODUCTO_VENDIDO;
                        command.Parameters.Add(new OracleParameter("E_NUM_IDENT_MEC", OracleDbType.Varchar2)).Value = dto.NUM_IDENT_MEC;

                        command.Parameters.Add(new OracleParameter("S_CUR_CONSULTA_INFO", OracleDbType.RefCursor)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_N_COD_SAL", OracleDbType.Decimal)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_V_MSJ_SAL", OracleDbType.Varchar2, 4000)).Direction = System.Data.ParameterDirection.Output;
                        command.ExecuteNonQuery();
                        result = Convert.ToString(command.Parameters["S_V_MSJ_SAL"].Value);
                    }
                    cn.Close();
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            return result;
        }

        public List<ServicioBO> Listar()
        {
            List<ServicioBO> list = new List<ServicioBO>();
            ServicioBO dto = null;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameServicio, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2)).Value = V_ACCION.R;
                        command.Parameters.Add(new OracleParameter("E_VALOR_MANO_OBRA", OracleDbType.Decimal)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_DESCUENTO", OracleDbType.Decimal)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_OBSERVACION", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_NOM_PRODUCTO", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_CANT_VENDIDO", OracleDbType.Decimal)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_NUM_IDENT_MEC", OracleDbType.Varchar2)).Value = null;

                        command.Parameters.Add(new OracleParameter("S_CUR_CONSULTA_INFO", OracleDbType.RefCursor)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_N_COD_SAL", OracleDbType.Decimal)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_V_MSJ_SAL", OracleDbType.Varchar2, 4000)).Direction = System.Data.ParameterDirection.Output;

                        using (OracleDataReader dr = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection))
                        {
                            while (dr.Read())
                            {
                                dto = new ServicioBO();
                                dto.COD_SERVICIO = Convert.ToInt32(dr["COD_SERVICIO"].ToString());
                                dto.NUM_IDENT_MEC = Convert.ToString( dr["NUM_IDENT_MEC"]);
                                dto.CAN_PRODUCTO_VENDIDO = Convert.ToInt32(dr["CAN_PRODUCTO_VENDIDO"]);
                                dto.VALOR_MANO_OBRA = Convert.ToInt32(dr["VALOR_MANO_OBRA"]);
                                dto.DESCUENTO = Convert.ToInt32(dr["DESCUENTO"]);
                                dto.OBSERVACION = Convert.ToString(dr["OBSERVACION"]);
                                list.Add(dto);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                new Exception("Error el metodo Listar "+  ex.Message);
            }
            return list;
        }
    }
}
