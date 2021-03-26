using DataAccess.Contract;
using DataAccess.Repository;
using DataAccess.Utils;
using Entity_Layer;
using System;
using System.Collections.Generic;
using Oracle.ManagedDataAccess.Client;

namespace DataAccess
{
    public class daoVehiculo : OracleConexion, IOperacionCrud<VehiculoBO>
    {
        providerStoreProcedures providerStoreProcedure = new providerStoreProcedures();
        public string Actualizar(VehiculoBO dto)
        {
            string result = string.Empty;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameVehiculo, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2, 1)).Value = V_ACCION.U.ToString();
                        command.Parameters.Add(new OracleParameter("E_NOMBRE", OracleDbType.Varchar2)).Value = dto.NOMBRE;
                        command.Parameters.Add(new OracleParameter("E_MODELO", OracleDbType.Varchar2)).Value = dto.MODELO;
                        command.Parameters.Add(new OracleParameter("E_MARCA", OracleDbType.Varchar2)).Value = dto.MARCA;
                    
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
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameVehiculo, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2)).Value = V_ACCION.D;
                        command.Parameters.Add(new OracleParameter("E_NOMBRE", OracleDbType.Varchar2)).Value = dto;
                        command.Parameters.Add(new OracleParameter("E_MODELO", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_MARCA", OracleDbType.Varchar2)).Value = null;

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

        public string Insertar(VehiculoBO dto)
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
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2, 1)).Value = V_ACCION.C.ToString();
                        command.Parameters.Add(new OracleParameter("E_NOMBRE", OracleDbType.Varchar2)).Value = dto.NOMBRE;
                        command.Parameters.Add(new OracleParameter("E_MODELO", OracleDbType.Varchar2)).Value = dto.MODELO;
                        command.Parameters.Add(new OracleParameter("E_MARCA", OracleDbType.Varchar2)).Value = dto.MARCA;

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

        public List<VehiculoBO> Listar()
        {
            List<VehiculoBO> list = new List<VehiculoBO>();
            VehiculoBO dto = null;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameClient, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2)).Value = V_ACCION.R;
                        command.Parameters.Add(new OracleParameter("E_NOMBRE", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_MODELO", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_MARCA", OracleDbType.Varchar2)).Value = null;

                        command.Parameters.Add(new OracleParameter("S_CUR_CONSULTA_INFO", OracleDbType.RefCursor)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_N_COD_SAL", OracleDbType.Decimal)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_V_MSJ_SAL", OracleDbType.Varchar2, 4000)).Direction = System.Data.ParameterDirection.Output;

                        using (OracleDataReader dr = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection))
                        {
                            while (dr.Read())
                            {
                                dto = new VehiculoBO();
                                dto.COD_VEHICULO = Convert.ToInt32(dr["COD_VEHICULO"].ToString());
                                dto.NOMBRE = Convert.ToString( dr["NOMBRE"]);
                                dto.MARCA = Convert.ToString(dr["MARCA"]);
                                dto.MODELO = Convert.ToString(dr["MODELO"]);
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
