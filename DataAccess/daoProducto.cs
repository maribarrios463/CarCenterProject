using DataAccess.Contract;
using DataAccess.Repository;
using DataAccess.Utils;
using Entity_Layer;
using System;
using System.Collections.Generic;
using Oracle.ManagedDataAccess.Client;

namespace DataAccess
{
    public class daoProducto : OracleConexion, IOperacionCrud<ProductoBO>
    {
        providerStoreProcedures providerStoreProcedure = new providerStoreProcedures();
        public string Actualizar(ProductoBO dto)
        {
            string result = string.Empty;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameProducto, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2, 1)).Value = V_ACCION.U.ToString();
                        command.Parameters.Add(new OracleParameter("E_COD_PRODUCTO", OracleDbType.Decimal)).Value = dto.COD_PRODUCTO;
                        command.Parameters.Add(new OracleParameter("E_NOMBRE_PRODUCTO", OracleDbType.Varchar2)).Value = dto.NOMBRE_PRODUCTO;
                        command.Parameters.Add(new OracleParameter("E_VALOR_UNITARIO", OracleDbType.Decimal)).Value = dto.VALOR_UNITARIO;
                        command.Parameters.Add(new OracleParameter("E_CANTIDAD_PROD", OracleDbType.Decimal)).Value = dto.CANTIDAD_PROD;
                        command.Parameters.Add(new OracleParameter("E_DESCUENTO", OracleDbType.Decimal)).Value = dto.DESCUENTO;

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
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameProducto, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2)).Value = V_ACCION.D;
                        command.Parameters.Add(new OracleParameter("E_CODIGO_PRODUCTO", OracleDbType.Decimal)).Value = dto;
                        command.Parameters.Add(new OracleParameter("E_NOMBRE_PRODUCTO", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_VALOR_UNITARIO", OracleDbType.Decimal)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_CANTIDAD_PROD", OracleDbType.Decimal)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_DESCUENTO", OracleDbType.Decimal)).Value = null;

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

        public string Insertar(ProductoBO dto)
        {
            string result = string.Empty;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameProducto, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2, 1)).Value = V_ACCION.C.ToString();
                        command.Parameters.Add(new OracleParameter("E_COD_PRODUCTO", OracleDbType.Decimal)).Value = dto.COD_PRODUCTO;
                        command.Parameters.Add(new OracleParameter("E_NOMBRE_PRODUCTO", OracleDbType.Varchar2)).Value = dto.NOMBRE_PRODUCTO;
                        command.Parameters.Add(new OracleParameter("E_VALOR_UNITARIO", OracleDbType.Decimal)).Value = dto.VALOR_UNITARIO;
                        command.Parameters.Add(new OracleParameter("E_CANTIDAD_PROD", OracleDbType.Decimal)).Value = dto.CANTIDAD_PROD;
                        command.Parameters.Add(new OracleParameter("E_DESCUENTO", OracleDbType.Decimal)).Value = dto.DESCUENTO;

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

        public List<ProductoBO> Listar()
        {
            List<ProductoBO> list = new List<ProductoBO>();
            ProductoBO dto = null;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameProducto, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2)).Value = V_ACCION.R;
                        command.Parameters.Add(new OracleParameter("E_COD_PRODUCTO", OracleDbType.Decimal)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_NOMBRE_PRODUCTO", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_VALOR_UNITARIO", OracleDbType.Decimal)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_CANTIDAD_PROD", OracleDbType.Decimal)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_DESCUENTO", OracleDbType.Decimal)).Value = null;

                        command.Parameters.Add(new OracleParameter("S_CUR_CONSULTA_INFO", OracleDbType.RefCursor)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_N_COD_SAL", OracleDbType.Decimal)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_V_MSJ_SAL", OracleDbType.Varchar2, 4000)).Direction = System.Data.ParameterDirection.Output;

                        using (OracleDataReader dr = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection))
                        {
                            while (dr.Read())
                            {
                                dto = new ProductoBO();
                                dto.COD_PRODUCTO = Convert.ToInt32(dr["COD_PRODUCTO"].ToString());
                                dto.NOMBRE_PRODUCTO = Convert.ToString( dr["NOMBRE_PRODUCTO"]);
                                dto.CANTIDAD_PROD = Convert.ToInt32(dr["CANTIDAD_PROD"]);
                                dto.DESCUENTO = Convert.ToInt32(dr["DESCUENTO"]);
                                dto.VALOR_UNITARIO = Convert.ToInt64(dr["VALOR_UNITARIO"]);
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
