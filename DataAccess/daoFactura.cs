using DataAccess.Contract;
using DataAccess.Repository;
using DataAccess.Utils;
using Entity_Layer;
using System;
using System.Collections.Generic;
using Oracle.ManagedDataAccess.Client;

namespace DataAccess
{
    public class daoFactura : OracleConexion
    {
        providerStoreProcedures providerStoreProcedure = new providerStoreProcedures();
        
        public string InsertarFactura(FacturaBO dto)
        {
            string result = string.Empty;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameFactura, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2, 1)).Value = V_ACCION.C.ToString();
                        command.Parameters.Add(new OracleParameter("E_FECHA_FACTURA", OracleDbType.Date)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_PLACA", OracleDbType.Varchar2)).Value = dto.PLACA;
                        command.Parameters.Add(new OracleParameter("E_FORMA_PAGO", OracleDbType.Varchar2)).Value = dto.FORMA_PAGO;
                        command.Parameters.Add(new OracleParameter("E_MEDIO_PAGO", OracleDbType.Varchar2)).Value = dto.MEDIO_PAGO;
                        command.Parameters.Add(new OracleParameter("E_IVA", OracleDbType.Decimal)).Value = dto.IVA;
                        command.Parameters.Add(new OracleParameter("E_NUM_IDENT_CLI", OracleDbType.Varchar2)).Value = dto.NUM_IDENT_CLI;
                        command.Parameters.Add(new OracleParameter("E_COD_SUCURSAL", OracleDbType.Decimal)).Value = dto.COD_SUCURSAL;
                        command.Parameters.Add(new OracleParameter("E_VALOR_MINIMO", OracleDbType.Decimal)).Value = dto.VALOR_MINIMO;
                        command.Parameters.Add(new OracleParameter("E_VALOR_MAXIMO", OracleDbType.Decimal)).Value = dto.VALOR_MAXIMO;

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

        public List<FacturaBO> Listar()
        {
            List<FacturaBO> list = new List<FacturaBO>();
            FacturaBO dto = null;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameFactura, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_V_ACCION", OracleDbType.Varchar2)).Value = V_ACCION.R;
                        command.Parameters.Add(new OracleParameter("E_FECHA_FACTURA", OracleDbType.Date)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_PLACA", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_FORMA_PAGO", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_MEDIO_PAGO", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_IVA", OracleDbType.Decimal)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_NUM_IDENT_CLI", OracleDbType.Varchar2)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_COD_SUCURSAL", OracleDbType.Decimal)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_VALOR_MINIMO", OracleDbType.Decimal)).Value = null;
                        command.Parameters.Add(new OracleParameter("E_VALOR_MAXIMO", OracleDbType.Decimal)).Value = null;

                        command.Parameters.Add(new OracleParameter("S_CUR_CONSULTA_INFO", OracleDbType.RefCursor)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_N_COD_SAL", OracleDbType.Decimal)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_V_MSJ_SAL", OracleDbType.Varchar2, 4000)).Direction = System.Data.ParameterDirection.Output;

                        using (OracleDataReader dr = command.ExecuteReader(System.Data.CommandBehavior.CloseConnection))
                        {
                            while (dr.Read())
                            {
                                dto = new FacturaBO();
                                dto.NUM_FACTURA = Convert.ToInt32(dr["NUM_FACTURA"].ToString());
                                dto.FECHA_FACTURA = Convert.ToDateTime(dr["FECHA_FACTURA"]);
                                dto.FORMA_PAGO = Convert.ToString(dr["FORMA_PAGO"]);
                                dto.MEDIO_PAGO = Convert.ToString(dr["MEDIO_PAGO"]);
                                dto.PLACA = Convert.ToString(dr["PLACA"]);
                                dto.NUM_IDENT_CLI = Convert.ToString(dr["NUM_IDENT_CLI"]);
                                dto.VALOR_TOTAL_FACT = Convert.ToInt32(String.IsNullOrEmpty(dr["VALOR_TOTAL_FACT"].ToString()) ? "0" : dr["VALOR_TOTAL_FACT"].ToString());
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

        public string InsertarDetalleProducto(Factura_ProductoBO dto)
        {
            string result = string.Empty;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameDetalleProd, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_COD_PRODUCTO", OracleDbType.Decimal)).Value = dto.COD_PRODUCTO;
                        command.Parameters.Add(new OracleParameter("E_CAN_PRODUCTO_VENDIDO", OracleDbType.Decimal)).Value = dto.CAN_PRODUCTO_VENDIDO;

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

        public string InsertarDetalleServicio(Factura_ServicioBO dto)
        {
            string result = string.Empty;
            try
            {
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameDetalleServ, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_COD_SERVICIO", OracleDbType.Decimal)).Value = dto.COD_SERVICIO;

                        command.Parameters.Add(new OracleParameter("S_N_COD_SAL", OracleDbType.Decimal)).Direction = System.Data.ParameterDirection.Output;
                        command.Parameters.Add(new OracleParameter("S_V_MSJ_SAL", OracleDbType.Varchar2, 4000)).Direction = System.Data.ParameterDirection.Output;
                        command.ExecuteNonQuery();
                        result = Convert.ToString(command.Parameters["S_V_MSJ_SAL"].Value);
                    }
                    cn.Close();
                }
                ActualizarValoresFactura();
            }
            catch (Exception e)
            {
                throw e;
            }
            return result;
        }

        public string ActualizarValoresFactura()
        {
            string result = string.Empty;
            try
            {
                int NumFactura = FindMaxNumFact(Listar());
                using (OracleConnection cn = new OracleConnection(strOracle))
                {
                    cn.Open();
                    using (OracleCommand command = new OracleCommand(providerStoreProcedure.spNameActualizarValoresFact, cn))
                    {
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new OracleParameter("E_NUM_FACTURA", OracleDbType.Decimal)).Value = NumFactura;

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

        public int FindMaxNumFact(List<FacturaBO> list)
        {
            if (list.Count == 0)
            {
                throw new InvalidOperationException("Empty list");
            }
            int maxNumFact = int.MinValue;
            foreach (FacturaBO type in list)
            {
                if (type.NUM_FACTURA > maxNumFact)
                {
                    maxNumFact = type.NUM_FACTURA;
                }
            }
            return maxNumFact;
        }
    }
}
