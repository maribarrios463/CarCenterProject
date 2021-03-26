using DataAccess.Contract;
using DataAccess.Repository;
using DataAccess.Utils;
using Entity_Layer;
using System;
using System.Collections.Generic;
using Oracle.ManagedDataAccess.Client;

namespace DataAccess
{
    public class daoSucursal : OracleConexion, IOperacionCrud<SucursalBO>
    {
        providerStoreProcedures providerStoreProcedure = new providerStoreProcedures();
        public string Actualizar(SucursalBO dto)
        {
            string result = string.Empty;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameSucursal, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2, 1)).Value = V_ACCION.U.ToString();
                        command.Parameters.Add(new OracleParameter("E_NOMBRE_SUCURSAL", OracleDbType.Varchar2)).Value = dto.NOMBRE_ALMACEN;
                        command.Parameters.Add(new OracleParameter("E_TELEFONO_CONTACTO", OracleDbType.Decimal)).Value = dto.TELEFONO_CONTACTO;
                        command.Parameters.Add(new OracleParameter("E_DIRECCION", OracleDbType.Varchar2)).Value = dto.DIRECCION;
                        command.Parameters.Add(new OracleParameter("E_CIUDAD", OracleDbType.Varchar2)).Value = dto.CIUDAD;

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
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameSucursal, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2)).Value = V_ACCION.D;
                        command.Parameters.Add(new OracleParameter("E_NOMBRE_SUCURSAL", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_TELEFONO_CONTACTO", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_DIRECCION", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_CIUDAD", OracleDbType.Varchar2)).Value = null;

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

        public string Insertar(SucursalBO dto)
        {
            string result = string.Empty;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameSucursal, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2, 1)).Value = V_ACCION.C.ToString();
                        command.Parameters.Add(new OracleParameter("E_NOMBRE_SUCURSAL", OracleDbType.Varchar2)).Value = dto.NOMBRE_ALMACEN;
                        command.Parameters.Add(new OracleParameter("E_TELEFONO_CONTACTO", OracleDbType.Decimal)).Value = dto.TELEFONO_CONTACTO;
                        command.Parameters.Add(new OracleParameter("E_DIRECCION", OracleDbType.Varchar2)).Value = dto.DIRECCION;
                        command.Parameters.Add(new OracleParameter("E_CIUDAD", OracleDbType.Varchar2)).Value = dto.CIUDAD;

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

        public List<SucursalBO> Listar()
        {
            List<SucursalBO> list = new List<SucursalBO>();
            SucursalBO dto = null;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameSucursal, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2)).Value = V_ACCION.R;
                        command.Parameters.Add(new OracleParameter("E_NOMBRE_SUCURSAL", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_TELEFONO_CONTACTO", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_DIRECCION", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_CIUDAD", OracleDbType.Varchar2)).Value = null;

                        command.Parameters.Add(new OracleParameter("S_CUR_CONSULTA_INFO", OracleDbType.RefCursor)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_N_COD_SAL", OracleDbType.Decimal)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_V_MSJ_SAL", OracleDbType.Varchar2, 4000)).Direction = System.Data.ParameterDirection.Output;

                        using (OracleDataReader dr = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection))
                        {
                            while (dr.Read())
                            {
                                dto = new SucursalBO();
                                dto.COD_SUCURSAL = Convert.ToInt32(dr["COD_SUCURSAL"].ToString());
                                dto.NOMBRE_ALMACEN = Convert.ToString(dr["E_NOMBRE_SUCURSAL"]);
                                dto.TELEFONO_CONTACTO = Convert.ToInt32(dr["TELEFONO_CONTACTO"]);
                                dto.DIRECCION = Convert.ToString(dr["DIRECCION"]);
                                dto.CIUDAD = Convert.ToString(dr["CIUDAD"]);
                                list.Add(dto);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                new Exception("Error el metodo Listar " + ex.Message);
            }
            return list;
        }
    }
}
